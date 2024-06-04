import React, { useLayoutEffect, useState } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, ScrollView, Alert } from 'react-native';
import { useNavigation, useFocusEffect } from '@react-navigation/native';
import axios from 'axios';

//const urlGetHorasReservadas = 'http://192.168.1.139:5098/Api/GetHorasReservadas';
const urlGetHorasReservadas = 'http://api.padelmatch.elitepadelformation.com/Api/GetHorasReservadas';

const HorasDisponiblesPista = ({ route, navigation }) => {
  const { fechaUsuario, nombre, idpista, idclub, tipopista, ubicacionpista, urlimagenes } = route.params;
  const [reservedHoras, setReservedHoras] = useState([]);

  // fechaUsuario
  const currentDate = new Date(fechaUsuario);
  console.log("fechaUsuario " + currentDate);
  console.log("urlpista en horas " + urlimagenes);

  const fechaNormal = fechaUsuario.toISOString();


  // Generar horas desde 07:00 hasta 23:00
  const generateTimeSlots  = () => {
    const slots = [];
    for (let i = 7; i <= 23; i++) {
      const hour = i < 10 ? `0${i}` : `${i}`;
      slots.push(`${hour}:00`);
      if(hour != 23) slots.push(`${hour}:30`);
    }
    return slots;
  };
  useLayoutEffect(() => {
    navigation.setOptions({
      headerShown: true,
      title: `Horas pista ${idpista}`,
      headerTitleStyle: {
        fontSize: 20,
        fontWeight: "bold",
        color: "white",
      },
      headerStyle: {
        backgroundColor: "#1877e3",
        height: 80,
        borderBottomColor: "transparent",
        shadowColor: "transparent",
      },
    });
  }, []);
  const timeSlots = generateTimeSlots();

  // Horas reservadas
  const reservedHours = ['09:00']; // horas ya reservadas (recuperar con endpoint)

  useFocusEffect(
    React.useCallback(() => {
      console.log('Buscando h reservadas para pista:', idpista);
      const GetReservedHours = async () => {
        //const idpista = idpista;
      try {
        const response = await axios.post(urlGetHorasReservadas, {}, {
          headers: {
            fecha: fechaNormal,
            idPista: idpista
          }
        });
        const horas = response.data;
        console.log('Horas reservadas:', horas);
        setReservedHoras(horas);
        console.log('reservedarr:', reservedHoras);
      } catch (error) {
        console.error(`Error :`, error);
      }
    }
    GetReservedHours();
    }, []));

  const [selectedHour, setSelectedHour] = useState(null);

  const handleSelectHour = (hour) => {
    if (!reservedHoras.includes(hour)) {
      setSelectedHour(hour);
      startReservationProcess(hour);
    } else {
      Alert.alert('Hora no disponible', 'Por favor, selecciona otra hora.');
    }
  };

  const startReservationProcess = (hour) => {
    //añadir a fechaUsuario la hora seleccionada
    const fechaDecisiva = new Date(fechaUsuario);
    fechaDecisiva.setHours(hour.split(':')[0]);
    fechaDecisiva.setMinutes(hour.split(':')[1]);
    console.log("fechaDecisiva " + fechaDecisiva);

    Alert.alert(
      `Reservar 1h pista ${idpista} en ${nombre}`,
      `Ir a pestaña pago reserva`,
      [
        {
          text: 'Cancelar',
          onPress: () => setSelectedHour(null),
          style: 'cancel',
        },
        {
          text: 'Confirmar',
          onPress: () => {
            navigation.navigate('PagarReserva', { selectedHour: hour, fechaDecisiva, nombre, idpista, idclub, tipopista, ubicacionpista, urlimagenes});
          },
        },
      ]
    );
  };

  const getHighlightedHours = (date) => {
    const highlightedHours = [];
    const hour = date.getHours();
    const minute = date.getMinutes();

    // Add selected hora
    const hourString = hour.toString().padStart(2, '0');
    const minuteString = minute === 0 ? '00' : '30';
    highlightedHours.push(`${hourString}:${minuteString}`);

    // Add prev media hora
    const previousDate = new Date(date);
    previousDate.setMinutes(minute === 0 ? 30 : 0);
    previousDate.setHours(minute === 0 ? hour - 1 : hour);
    const previousHourString = previousDate.getHours().toString().padStart(2, '0');
    const previousMinuteString = previousDate.getMinutes() === 0 ? '00' : '30';
    highlightedHours.push(`${previousHourString}:${previousMinuteString}`);//añadir ph con push al []

    // Add next media hora
    const nextDate = new Date(date);
    nextDate.setMinutes(minute === 0 ? 30 : 0);
    nextDate.setHours(minute === 0 ? hour : hour + 1);
    const nextHourString = nextDate.getHours().toString().padStart(2, '0');
    const nextMinuteString = nextDate.getMinutes() === 0 ? '00' : '30';
    highlightedHours.push(`${nextHourString}:${nextMinuteString}`);//añadir nh con push al []

    return highlightedHours;
  };

  const highlightedHours = getHighlightedHours(currentDate);

  return (
    <ScrollView contentContainerStyle={styles.container}>
      <Text style={styles.title}>Horas disponibles día {currentDate.getDate()}</Text>
      <View style={styles.hoursContainer}>
        {timeSlots.map((time) => {
          const isReserved = reservedHoras.includes(time);
          const isSelected = selectedHour === time;
          const isHighlighted = highlightedHours.includes(time);

          return (
            <TouchableOpacity
              key={time}
              style={[
                styles.hourButton,
                isReserved && styles.reservedHour,
                isSelected && !isReserved && styles.selectedHour,
                isHighlighted && !isReserved && !isSelected && styles.highlightedHour,
              ]}
              onPress={() => handleSelectHour(time)}
              disabled={isReserved}
            >
              <Text style={styles.hourText}>{time}</Text>
            </TouchableOpacity>
          );
        })}
      </View>
      {selectedHour !== null && !reservedHours.includes(selectedHour) && (
        <Text style={styles.selectedHourText}>
          Hora seleccionada: {selectedHour}
        </Text>
      )}
    </ScrollView>
  );
};

export default HorasDisponiblesPista;

const styles = StyleSheet.create({
  container: {
    flexGrow: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#e3f2fd',
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#1877e3',
    marginBottom: 20,
  },
  hoursContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'center',
  },
  hourButton: {
    width: 80,
    height: 80,
    borderRadius: 40,
    justifyContent: 'center',
    alignItems: 'center',
    margin: 10,
    backgroundColor: '#1877e3',
  },
  reservedHour: {
    backgroundColor: 'gray',
  },
  selectedHour: {
    backgroundColor: 'green',
  },
  highlightedHour: {
    borderWidth: 4,
    borderColor: '#1DF5DE',
    backgroundColor: 'blue',
  },
  hourText: {
    color: '#FFFFFF',
    fontSize: 16,
  },
  selectedHourText: {
    marginTop: 20,
    fontSize: 18,
    color: '#1877e3',
  },
});

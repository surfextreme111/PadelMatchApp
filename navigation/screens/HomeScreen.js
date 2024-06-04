import { ScrollView, Pressable, StyleSheet, Text, TextInput, View, TouchableOpacity, Modal } from 'react-native';
import React, { useLayoutEffect, useState, useEffect } from 'react';
import { useNavigation, useRoute } from '@react-navigation/native';
import { Ionicons } from '@expo/vector-icons';
import Header from '../../components/Header';
import { Feather } from '@expo/vector-icons';
import DateTimePickerModal from "react-native-modal-datetime-picker";
import { StatusBar } from 'react-native-web';
import { SelectList } from 'react-native-dropdown-select-list'
import axios from 'axios';


// HomeScreen
const HomeScreen = () => {
  // Fecha y hora actual
  const now = new Date();
  const route = useRoute();
  //const input = route.params.input;

  const navigation = useNavigation();

  //variables datepicker
  const today = new Date();
  const minimumDate = new Date(today);
  const [selectedDate, setSelectedDate] = useState(null);
  const [selectedTime, setSelectedTime] = useState(null);
  const [fechaUsuario, setFechaUsuario] = useState("");

  minimumDate.setDate(today.getDate()); // suma un día a la fecha actual

  //variables buscar provincia
  const [selected, setSelected] = useState("");
  const [data, setData] = useState([]);
  const [activeTab, setActiveTab] = useState('Clubs'); // Estado para rastrear la pestaña activa

  //const URL = 'http://192.168.1.139:5098/Api/GetProvincias';
  const URL = 'http://api.padelmatch.elitepadelformation.com/Api/GetProvincias';

  useEffect(() => {
    { console.log("estamos Home") }

    // función async para obtener los datos de las provincias
    const GetProvincias = async () => {
      try {
        const response = await axios.get(URL);
        // Mapear datos
        const newData = response.data.map((provincia) => ({
          key: provincia.idprovincia,
          value: provincia.nombre
        }));
        // Actualizar el estado de los datos
        setData(newData);
      } catch (error) {
        console.error('Error al obtener las provincias:', error);
      }
    };
    // Llamar GetProvincias cuando el componente se monta
    GetProvincias();
  }, []);

  const [isDatePickerVisible, setDatePickerVisibility] = useState(false);
  const [isTimePickerVisible, setTimePickerVisibility] = useState(false);
  const showDatePicker = () => {
    setDatePickerVisibility(true);
  };
  const handleTabPress = (tabName) => {
    setActiveTab(tabName);
  };

  const hideDatePicker = () => {
    setDatePickerVisibility(false);
  };

  const showTimePicker = () => {
    setTimePickerVisibility(true);
  };

  const hideTimePicker = () => {
    setTimePickerVisibility(false);
  };

  const handleConfirmDate = (selectedDate) => {
    // Verificar si la fecha seleccionada es igual a la fecha actual
    const isCurrentDate = selectedDate.toDateString() === now.toDateString();

    // Si la fecha seleccionada es la misma que la fecha actual, establecer selectedTime en null
    if (isCurrentDate) {
      setSelectedTime(null);
    }
    // Formatear la fecha seleccionada
    setSelectedDate(selectedDate);
    hideDatePicker();

  };

  const handleConfirmTime = (selectedTime) => {
    const selectedHour = selectedTime.getHours();
    const selectedMinute = selectedTime.getMinutes();

    // Obtener hora y minutos actuales
    const currentHour = now.getHours();
    const currentMinute = now.getMinutes();
    // Verificar si selectedtime es antes de las 07
    const antessiete = selectedHour < 7;
    const despuesoncetreinta = selectedHour > 23 || (selectedHour === 23 && selectedMinute >= 30);
    //este workss
    if (selectedDate === null) {
      //alert
      alert("Por favor selecciona una fecha antes de seleccionar una hora.");
      hideTimePicker();
      return;
    }

    // Comprobar si la hora seleccionada es posterior a la hora actual

    if (selectedDate.getDate() === now.getDate()) {//si es hoy

      if (antessiete) {
        console.log("No se permiten reservas antes de las 07:00");
        alert("No se permiten reservas antes de las 07:00");
        setSelectedTime(null);
        hideTimePicker();
        return;
      }
      if (despuesoncetreinta) {
        console.log("No se permiten reservas a partir de las 23:30");
        alert("No se permiten reservas a partir de las 23:30");
        setSelectedTime(null);
        hideTimePicker();
        return;
      }

      if (selectedHour < currentHour) {
        if (selectedHour === 12) {
          console.log("No se permiten reservas a las 12pm")
          alert("No se permiten reservas a las 12pm");
          setSelectedTime(null);
          hideTimePicker();
          return;

        }
        console.log("Hora debe ser superior a la actual")
        setSelectedTime(null);
        hideTimePicker();
        return;
      }
      if (selectedHour == currentHour) {
        //console.log("selectedminut " + selectedMinute);
        //console.log("currentminut " + currentMinute);
        //console.log(selectedTime.getMinutes() >= now.getMinutes());
        if (selectedTime.getMinutes() >= now.getMinutes()) {
          //alert("Hora seleccionada correctamente");
          const formattedTime = `${selectedTime.getHours().toString().padStart(2, '0')}:${selectedTime.getMinutes().toString().padStart(2, '0')}`;
          setSelectedTime(formattedTime);
          hideTimePicker();
        } else {
          console.log("minuto inferior al actual")
          alert("Selecciona una hora superior a la actual")
          setSelectedTime(null);
          hideTimePicker();
          return;
        }

        const formattedTime = `${selectedTime.getHours().toString().padStart(2, '0')}:${selectedTime.getMinutes().toString().padStart(2, '0')}`;
        // Guardar la hora formateada en el estado o hacer cualquier otro procesamiento necesario
        setSelectedTime(formattedTime);
        hideTimePicker();
      } if (selectedHour > currentHour) {
        //alert("Hora seleccionada correctamente");
        const formattedTime = `${selectedTime.getHours().toString().padStart(2, '0')}:${selectedTime.getMinutes().toString().padStart(2, '0')}`;
        setSelectedTime(formattedTime);
        hideTimePicker();
      }
    } else { //si la fecha no es hoy

      if (antessiete) {
        console.log("No se permiten reservas antes de las 07:00");
        alert("No se permiten reservas antes de las 07:00");
        setSelectedTime(null);
        hideTimePicker();
        return;
      }
      if (despuesoncetreinta) {
        console.log("No se permiten reservas a partir de las 23:30");
        setSelectedTime(null);
        hideTimePicker();
        return;
      }

      const formattedTime = `${selectedTime.getHours().toString().padStart(2, '0')}:${selectedTime.getMinutes().toString().padStart(2, '0')}`;
      // Guardar la hora formateada en el estado o hacer cualquier otro procesamiento necesario
      setSelectedTime(formattedTime);
      hideTimePicker();
    }


    //constuir una fecha con las 2 introducidas
    const dia = selectedDate.getDate();
    const mes = selectedDate.getMonth() + 1;
    const anyo = selectedDate.getFullYear();

    const hora = selectedTime.getHours();
    const minutos = selectedTime.getMinutes();
    const segundos = '00';

    // Formatear valores para siempre dos digis
    const formattedDia = String(dia).padStart(2, '0');
    const formattedMes = String(mes).padStart(2, '0');
    const formattedHora = String(hora).padStart(2, '0');
    const formattedMinutos = String(minutos).padStart(2, '0');

    // Combinar valores formar fecha
    const fechaUsuario = new Date(anyo, mes - 1, dia, hora, minutos, segundos);
    setFechaUsuario(fechaUsuario);
  };

  useEffect(() => {
    updateFechaUsuario(selectedDate, selectedTime);
  }, [selectedDate, selectedTime]);

  const updateFechaUsuario = (date, time) => {
    if (!date) return;
    const dia = date.getDate();
    const mes = date.getMonth() + 1;
    const anyo = date.getFullYear();
    let hora = 0;
    let minutos = 0;
    if (time) {
      if (typeof time === 'string') {
        [hora, minutos] = time.split(':').map(Number);
      } else if (time instanceof Date) {
        hora = time.getHours();
        minutos = time.getMinutes();
      }
    }
    const segundos = '00';
    const formattedDia = String(dia).padStart(2, '0');
    const formattedMes = String(mes).padStart(2, '0');
    const formattedHora = String(hora).padStart(2, '0');
    const formattedMinutos = String(minutos).padStart(2, '0');
    const fechaUsuario = new Date(anyo, mes - 1, dia, hora, minutos, segundos);
    setFechaUsuario(fechaUsuario);
    console.log("fechaupdatea: " + fechaUsuario);
  };


  const searchClubs = (club) => {
    if (!selectedDate || !selectedTime || !selected) {
      alert(
        "Rellena todos los campos!",
        "Porfavor rellena todos los campos para continuar",
      );
    }

    if (selectedDate && selectedTime && selected) {
      console.log("fechausuario en homescreen pa clubs: " + fechaUsuario);
      console.log("provincia selected: " + selected);
      navigation.navigate("Search", {
        fechaUsuario: fechaUsuario,
        selected: selected,
        selectedDate: selectedDate,
        selectedTime: selectedTime,
      })
    }
  };


  useLayoutEffect(() => {
    navigation.setOptions({
      headerShown: true,
      title: 'PadelMatch',
      headerTitleAlign: 'center',
      headerTitleStyle: {
        fontSize: 25,
        fontWeight: 'bold',
        color: 'white',
      },
      headerStyle: {
        backgroundColor: '#1877E3',
        height: 80,
        borderBottomColor: 'transparent',
        shadowColor: 'transparent',
      },
      headerLeft: () => (
        <View style={{ marginLeft: -200 }}>
          <Ionicons name="notifications-outline" size={24} color="#1877e3" onPress={() => navigation.goBack()} />{/*asin parece invisible*/}
        </View>
      ),
      headerRight: () => (
        <View style={{ marginRight: 20 }}>
          <Ionicons name="notifications-outline" size={24} color="white" />
        </View>
      ),
    })
  }, []);

  return (
    <View>
      <Header activeTab={activeTab} setActiveTab={setActiveTab} onTabPress={handleTabPress} />
      <ScrollView>
        <View style={{ margin: 20, borderColor: '#1877E3', borderWidth: 3, borderRadius: 6 }}>
          {/* Localidad */}
          <Pressable style={{ flexDirection: 'row', alignItems: 'center', gap: 10, paddingHorizontal: 10, borderColor: '#1877E3', borderWidth: 2, paddingVertical: 15 }}>
            <Feather name="map" size={24} color="black" />
            <View style={{ flex: 1 }}>
              <SelectList setSelected={setSelected} data={data} placeholder="Selecciona provincia" searchPlaceholder="Provincia" />
            </View>
          </Pressable>

          {/* Select dia */}
          <Pressable style={{ flexDirection: 'row', alignItems: 'center', gap: 10, paddingHorizontal: 10, borderColor: '#1877E3', borderWidth: 2, paddingVertical: 15 }}>
            <Feather name="calendar" size={24} color="black" />
            <TouchableOpacity onPress={showDatePicker}>
              <Text>
                {selectedDate ? `Día: ${selectedDate.getDate().toString().padStart(2, '0')}, Mes: ${(selectedDate.getMonth() + 1).toString().padStart(2, '0')}, Año: ${selectedDate.getFullYear()}` : 'Selecciona una fecha'}
              </Text>
              <DateTimePickerModal
                isVisible={isDatePickerVisible}
                mode="date"
                onConfirm={handleConfirmDate}
                onCancel={hideDatePicker}
                maximumDate={new Date(today.getFullYear(), today.getMonth() + 1, today.getDate())}
                minimumDate={minimumDate}
              />
            </TouchableOpacity>
            <StatusBar style="auto" />
          </Pressable>

          {/* Select hora*/}
          <Pressable style={{ flexDirection: 'row', alignItems: 'center', gap: 10, paddingHorizontal: 10, borderColor: '#1877E3', borderWidth: 2, paddingVertical: 15 }}>
            <Feather name="clock" size={24} color="black" />
            <TouchableOpacity onPress={showTimePicker}>
              <Text>{selectedTime ? selectedTime : 'Selecciona una hora'}</Text>
              <DateTimePickerModal
                isVisible={isTimePickerVisible}
                mode="time"
                onConfirm={handleConfirmTime}
                onCancel={hideTimePicker}
                minimumTime
                minimumDate={now}
                minuteInterval={30}
              />
            </TouchableOpacity>
            <StatusBar style="auto" />
          </Pressable>

          {/* Buscar Button */}
          <Pressable onPress={() => searchClubs(route?.params?.input, fechaUsuario)}
            style={{ paddingHorizontal: 10, borderColor: '#1877E6', borderWidth: 2, paddingVertical: 15, backgroundColor: '#1877E6' }}>
            {console.log("fechaUsuario = " + fechaUsuario)}
            <Text style={{ textAlign: "center", fontSize: 15, fontWeight: "500", color: "white" }}>Buscar</Text>
          </Pressable>
        </View>

        <Text
          style={{ marginHorizontal: 20, fontSize: 17, fontWeight: "500" }}
        >
          PADEL TIPS
        </Text>
        <ScrollView horizontal showsHorizontalScrollIndicator={false}>
          <Pressable
            style={{
              width: 200,
              height: 150,
              marginTop: 10,
              backgroundColor: "#1877E3",
              borderRadius: 10,
              padding: 20,
              marginHorizontal: 20,
            }}
          >
            <Text
              style={{
                color: "white",
                fontSize: 15,
                fontWeight: "bold",
                marginVertical: 7,
              }}
            >
              Víbora
            </Text>
            <Text style={{ color: "white", fontSize: 15, fontWeight: "500" }}>
              Piensa que la pelota es un coche y quieres darle en el retrovisor
            </Text>
          </Pressable>

          <Pressable
            style={{
              width: 200,
              height: 150,
              marginTop: 10,
              backgroundColor: "#6EA6E6",
              borderColor: "#E0E0E0",

              borderWidth: 2,
              borderRadius: 10,
              padding: 20,
              marginHorizontal: 10,
            }}
          >
            <Text
              style={{
                color: "white",
                fontSize: 15,
                fontWeight: "bold",
                marginVertical: 7,
              }}
            >
              Volea
            </Text>
            <Text style={{ fontSize: 15, fontWeight: "500", color: "white" }}>
              Levanta ligeramente los tobillos para tener un mejor equilibrio
            </Text>
          </Pressable>

          <Pressable
            style={{
              width: 200,
              height: 150,
              marginTop: 10,
              borderColor: "#E0E0E0",
              backgroundColor: "#1877E3",

              borderRadius: 10,
              padding: 20,
              marginHorizontal: 20,
            }}
          >
            <Text
              style={{
                color: "white",
                fontSize: 15,
                fontWeight: "bold",
                marginVertical: 7,
              }}
            >
              20% Descuento
            </Text>
            <Text style={{ fontSize: 15, fontWeight: "500", color: "white" }}>
              Alcanza el nivel 10 y disfruta de un 20% de descuento
            </Text>
          </Pressable>
        </ScrollView>
      </ScrollView >
    </View >
  );
};

export default HomeScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '##e3f2fd',
    alignItems: 'center',
    justifyContent: 'center',
  },
  centeredView: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 22,
  },
  modalView: {
    margin: 20,
    backgroundColor: 'white',
    borderRadius: 20,
    width: '90%',
    padding: 35,
    alignItems: 'center',
    shadowColor: '#1877E6',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.25,
    shadowRadius: 4,
    elevation: 5,
  },
});

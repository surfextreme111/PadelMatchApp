import React, { useLayoutEffect, useEffect, useState, useContext } from 'react';
import { StyleSheet, Text, View, FlatList, ActivityIndicator, Pressable } from 'react-native';
import axios from 'axios';
import { useAuth } from '../../components/AuthContext';
import { useNavigation, useFocusEffect } from '@react-navigation/native';

const ReservasScreen = () => {
  const navigation = useNavigation();
  const [reservas, setReservas] = useState([]);
  const [clubs, setclubs] = useState({});
  const [loading, setLoading] = useState(true);
  const { user, login, logout } = useAuth();
  //const urlreservas = 'http://192.168.1.139:5098/Api/GetReservasUsuario';
  //const urlclubxid = 'http://192.168.1.139:5098/Api/GetClubXId';

  const urlreservas = 'http://api.padelmatch.elitepadelformation.com/Api/GetReservasUsuario';
  const urlclubxid = 'http://api.padelmatch.elitepadelformation.com/Api/GetClubXId';
  useLayoutEffect(() => {
    navigation.setOptions({
      headerShown: true,
      title: 'Mis reservas',
      headerTitleStyle: {
        fontSize: 20,
        fontWeight: 'bold',
        color: 'white',
      },
      headerStyle: {
        backgroundColor: '#1877e3',
        height: 80,
        borderBottomColor: 'transparent',
        shadowColor: 'transparent',
      },
    });
  }, []);


  useFocusEffect(
    React.useCallback(() => {
      const GetReservasUsuario = async () => {
        if (!user) {
          setLoading(false);
          return;
        }
        const userId = user.idusuario;
        console.log('Fetching reservas for user:', userId);

        try {
          const response = await axios.post(urlreservas, {}, {
            headers: {
              idUsuario: userId
            }
          });
          //response == null finaliza la ejecución
          if (response === null || response === "" || response === "[]") {
            console.log('No hay reservas');
          } else {

            const reservasData = response.data.map((reserva) => ({
              key: reserva.idreserva,
              idreserva: reserva.idreserva,
              idpista: reserva.idpista,
              horainicio: reserva.horainicio,
              horafin: reserva.horafin,
              codigoinvitacion: reserva.codigoinvitacion,
              idclub: reserva.idclub,
              idpareja1: reserva.idpareja1,
              idpareja2: reserva.idpareja2,
              idusuarioreserva: reserva.idusuarioreserva,
            }));

            console.log('Reservas:', reservasData);
            setReservas(reservasData);

            const clubsData = {};
            for (const reserva of reservasData) {
              if (!clubsData[reserva.idclub]) {
                try {
                  const clubResponse = await axios.post(urlclubxid, {}, {
                    headers: {
                      idClub: reserva.idclub
                    }
                  });
                  clubsData[reserva.idclub] = clubResponse.data.nombre;
                } catch (error) {
                  console.error(`Error ${reserva.idclub}:`, error);
                }
              }
            }

            setclubs(clubsData);
          }


        } catch (error) {
          console.error('Errorreservas:', error);
        } finally {
          setLoading(false);
        }
      };

      GetReservasUsuario();
    }, [user]));

    if (!user) {
      return (
        <View style={styles.container}>
          <Text style={styles.message}>Sin reservas en anonimous </Text>
        </View>
      );
    }

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color="#0000ff" />
      </View>
    );
  }

  const handleReservaPress = (idreserva, idClub, idpista, codigoinvitacion, horainicio, horafin ) => {
    console.log('Reserva select:', idreserva);
    navigation.navigate('UpdateReserva', { idreserva, idClub, idpista, codigoinvitacion, horainicio, horafin });
  };

  return (
    <View style={styles.container}>
      <FlatList
        data={reservas}
        keyExtractor={(item) => item.idreserva}
        renderItem={({ item }) => (
          <Pressable style={styles.reservaItem} onPress={() => handleReservaPress(item.idreserva, item.idClub, item.idpista, item.codigoinvitacion, item.horainicio,item.horafin   )}>
            <View style={styles.reservaItem}>
              <Text style={styles.title}>{clubs[item.idclub]}</Text>
              <Text style={styles.reservaText}>Pista: {item.idpista}</Text>
              <Text style={styles.supder}>ID: {item.idreserva}</Text>
              <Text style={styles.reservaText}>Código invitación: {item.codigoinvitacion}</Text>
              <Text style={styles.reservaText}>Fecha: {new Date(item.horainicio).toLocaleDateString()}</Text>
              <Text style={styles.reservaText}>Hora Inicio: {new Date(item.horainicio).getHours().toLocaleString().padStart(2, '0')}:{new Date(item.horainicio).getMinutes().toLocaleString().padStart(2, '0')}</Text>
              <Text style={styles.reservaText}>Hora Fin: {new Date(item.horafin).getHours().toLocaleString().padStart(2, '0')}:{new Date(item.horafin).getMinutes().toLocaleString().padStart(2, '0')}</Text>
            </View>
          </Pressable>
        )}
      />
    </View>
  );
};

export default ReservasScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: '#1877e3',
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#1877e3',
    textAlign: 'center',
    marginBottom: 10,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  reservaItem: {
    padding: 16,
    marginVertical: 8,
    backgroundColor: '#e3f2fd',
    borderRadius: 8,
    borderWidth: 1,
    borderColor: '#e3f2fd',
  },
  supder: {
    fontSize: 16,
    position: 'absolute',
    top: 0,
    right: 0,
    textAlign: 'right'
  },
  reservaText: {
    fontSize: 16,
  },
});

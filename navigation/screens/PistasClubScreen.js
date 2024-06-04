import React, { useLayoutEffect, useState, useEffect } from 'react';
import { ScrollView, StyleSheet, Text, View } from 'react-native';
import { useNavigation, useRoute } from '@react-navigation/native';
import axios from 'axios';
import PistaComponent from '../../components/PistaComponent';

//const URLpistas = 'http://192.168.1.139:5098/Api/GetPistas';
const URLpistas = 'http://api.padelmatch.elitepadelformation.com/Api/GetPistas';


const PistasClubScreen = () => {
  const navigation = useNavigation();
  const route = useRoute();

  const { idclub, nombreclub, fechaUsuario } = route.params;

  const [input, setInput] = useState(nombreclub);
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const GetPistas = async () => {
      try {
        const response = await axios.get(URLpistas);
        const pistasData = response.data.map((pista) => ({
          key: pista.idpista.toString(),
          idpista: pista.idpista,
          idclub: pista.idclub,
          tipopista: pista.tipopista,
          ubicacionpista: pista.ubicacionpista,
          urlimagenes: pista.urlimagenes,
        }));
        const datafiltrada = pistasData.filter((pista) => pista.idclub === idclub);
        setData(datafiltrada);
      } catch (error) {
        console.error('Error al obtener pistas del club:', error);
      } finally {
        setLoading(false);
      }
    };

    GetPistas();
  }, [idclub]);
  console.log(route.params.fechaUsuario);
  useLayoutEffect(() => {
    navigation.setOptions({
      headerShown: true,
      title: `Pistas de ${nombreclub}`,
      headerTitleStyle: {
        fontSize: 20,
        fontWeight: "bold",
        color: "white",
      },
      headerStyle: {
        backgroundColor: "#1877e3",
        height: 110,
        borderBottomColor: "transparent",
        shadowColor: "transparent",
      },
    });
  }, [navigation, nombreclub]);

  return (
    <View style={{ flex: 1, backgroundColor: "#3177" }}>
      {loading ? (
        <Text>Buscando pistas....</Text>
      ) : (
        <ScrollView style={{ backgroundColor: "#e3f2fd" }}>
          {data.map((item) => (
            <PistaComponent
              fechaUsuario = {fechaUsuario}
              key={item.key}
              nombre={nombreclub}
              idpista={item.idpista}
              idclub={item.idclub}
              tipopista={item.tipopista}
              ubicacionpista={item.ubicacionpista}
              urlimagenes={item.urlimagenes}
            />
          ))}
        </ScrollView>
      )}
    </View>
  );
};

export default PistasClubScreen;

const styles = StyleSheet.create({});

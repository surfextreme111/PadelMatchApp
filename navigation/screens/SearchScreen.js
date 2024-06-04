import { StyleSheet, Text, View, SafeAreaView, TextInput } from "react-native";
import React ,{useEffect, useState} from "react";
import { Feather } from "@expo/vector-icons";
import axios from 'axios';
import SearchResults from "../../components/SearchResults";
import StackNavigator from "../../StackNavigator";


//const URL = 'http://192.168.1.139:5098/Api/GetClubs';
const URL = 'http://api.padelmatch.elitepadelformation.com/Api/GetClubs';

//screen para devolver todos los clubs de esa provincia y quedarme los parámetros anteriores para sacar posibles horarios para hacer reservas
//react native schedule selector implementar


const SearchScreen = ({ route, fechaUsuario }) => {
    const [input,setInput] = useState("");
    const [data, setData] = useState([]);
    const [isLoading, setIsLoading] = useState(true);
    const [items,setItems] = useState([]);
    
    useEffect(() => {
      setInput(input);
      console.log("provincia seleccionadaa = "+ route.params.selected);
      //console.log("provincia seleccionadab = "+ items.selected);
      // Define una función asincrónica para obtener los datos de los clubs
      const GetClubs = async () => {
        setItems(items);
        //console.log("provincia seleccionada = "+ );

        try {
          //endpoint
          const response = await axios.get(URL);
          //mapear club
          const data = response.data.map((club) => ({
            key: club.idclub,// objeto club
            idclub: club.idclub,
            nombre: club.nombre,
            descripcion: club.descripcion,
            idusuariocreador: club.idusuariocreador,
            fechain: club.fechain,
            idprovincia: club.idprovincia,
            imagen: club.imagen,
            coordenadas: club.coordenadas
        }));
          // Actualiza el estado de los datos con el nuevo array formateado
          //añadir a data la provincia seleccionada en route.params.selected
          const datafiltrada= data.filter((club) => club.idprovincia === route.params.selected)
          setData(datafiltrada);
         // console.log(items.selected);
        } catch (error) {
          console.error('Error al obtener clubs:', error);
        }
      };
      // en renderizado inicial pag llamamos endpoint

    GetClubs();
  }, []); // El segundo argumento [] asegura que el efecto solo se ejecute una vez al montar el componente

  return (
    <SafeAreaView style ={{backgroundColor:"white" }}>
      <View
        style={{
          padding: 10,
          margin: 10,
          flexDirection: "row",
          alignItems: "center",
          justifyContent: "space-between",
          borderColor:"#1877E3",
          borderWidth:4,
          borderRadius:10
        }}
      >
        <TextInput value={input} onChangeText={(text) => setInput(text)} placeholder="Buscar club por nombre" />
        <Feather name="search" size={22} color="black" />
      </View>
      <SearchResults data={data} input={input} setInput={setInput} fechaUsuario = {route.params.fechaUsuario}/>
      {console.log("fechaUsuario = " + route.params.fechaUsuario)}
    </SafeAreaView>
  );
};

export default SearchScreen;

const styles = StyleSheet.create({});
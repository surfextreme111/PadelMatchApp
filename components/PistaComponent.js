import { Dimensions, Image, Pressable, StyleSheet, Text, View } from "react-native";
import React from 'react';
import { useNavigation } from '@react-navigation/native';

// Mapeo de enums a cadenas legibles
const tipoPistaMapping = {
  1: 'Cristal Cesped',
  2: 'Cristal Cemento',
  3: 'Muro Cemento',
  4: 'Muro Cesped'
};

const ubicacionPistaMapping = {
  1: 'Indoor',
  2: 'Outdoor'
};

const PistaComponent = ({ fechaUsuario, nombre, idpista, idclub, tipopista, ubicacionpista, urlimagenes }) => {
  const navigation = useNavigation();
  const { width, height } = Dimensions.get("window");

  console.log("pistacompo fecha " + fechaUsuario);
  console.log("nombreclub " + nombre);

  return (
    <View style={styles.container}>
      <Pressable
        onPress={() => navigation.navigate("HorasPista", {
          fechaUsuario,
          nombre,
          idpista,
          idclub,
          tipopista,
          ubicacionpista,
          urlimagenes,
        })}
        style={styles.pressable}
      >
        <Image
          style={[styles.image, { height: height / 4, width: width - 30 }]}
          source={{ uri: urlimagenes }}
        />
        {console.log("urlimagenes pcompo = " + urlimagenes)}
        <View style={styles.infoContainer}>
          <Text style={styles.title}>{`Pista ${idpista}`}</Text>
          <Text style={styles.subtitle}>{tipoPistaMapping[tipopista]}</Text>
          <Text style={styles.location}>{ubicacionPistaMapping[ubicacionpista]}</Text>
          <View style={styles.scheduleContainer}>
            <Text style={styles.scheduleText}>Ver horarios disponibles</Text>
          </View>
        </View>
      </Pressable>
    </View>
  );
};

export default PistaComponent;

const styles = StyleSheet.create({
  container: {
    margin: 15,
    borderRadius: 10,
    overflow: "hidden",
    backgroundColor: "#fff",
    shadowColor: "#000",
    shadowOpacity: 0.2,
    shadowOffset: { width: 0, height: 2 },
    shadowRadius: 4,
    elevation: 5,
  },
  pressable: {
    flexDirection: "column",
  },
  image: {
    borderTopLeftRadius: 10,
    borderTopRightRadius: 10,
    height: 200,
    resizeMode: "cover",
  },
  infoContainer: {
    padding: 15,
    backgroundColor: "#fff",
    borderBottomLeftRadius: 10,
    borderBottomRightRadius: 10,
  },
  title: {
    fontSize: 18,
    fontWeight: "bold",
    color: "#333",
    marginBottom: 4,
  },
  subtitle: {
    fontSize: 16,
    color: "#666",
    marginBottom: 2,
  },
  location: {
    fontSize: 14,
    color: "#999",
    marginBottom: 10,
  },
  scheduleContainer: {
    borderRadius: 50,
    borderWidth: 1,
    borderColor: '#1877e3',
    backgroundColor: '#e3f2fd',
    paddingVertical: 6,
    paddingHorizontal: 10,
    alignSelf: 'flex-start',
  },
  scheduleText: {
    width: '100%',
    fontSize: 14,
    color: '#000',
  },
});

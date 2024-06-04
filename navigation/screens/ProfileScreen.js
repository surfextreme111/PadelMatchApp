import React, { useLayoutEffect, useState } from 'react';
import { StyleSheet, View, Text, Image, TextInput, Button, Alert, Pressable } from 'react-native';
import { useAuth } from '../../components/AuthContext';
import * as ImagePicker from 'expo-image-picker';
import { Ionicons } from '@expo/vector-icons';
import { useNavigation } from '@react-navigation/native';
import axios from 'axios';

const ProfileScreen = () => {
  const { user, logout } = useAuth();
  const navigation = useNavigation();

  const [image, setImage] = useState(user?.foto || '');
  const [idusuario, setIdUsuario] = useState(user?.idusuario || 0);
  const [username, setUsername] = useState(user?.username || '');
  const [email, setEmail] = useState(user?.email || '');
  const [password, setPassword] = useState('');
  const [victorias, setVictorias] = useState(user?.victorias || 0);
  const [derrotas, setDerrotas] = useState(user?.derrotas || 0);
  const [nivel, setNivel] = useState(user?.nivel || 1);

  const calcularPorcentaje = (valor, total) => {
    return total === 0 ? 0 : (valor / total) * 100;
  };

  const victoriasPorcentaje = calcularPorcentaje(victorias, victorias + derrotas);
  const derrotasPorcentaje = calcularPorcentaje(derrotas, victorias + derrotas);

  //const URLActualizarUsuario = 'http://192.168.1.139:5098/Api/ActualizarUsuario';
    const URLActualizarUsuario = 'http://api.padelmatch.elitepadelformation.com/Api/ActualizarUsuario';

  const ActualizarUsuario = async (idusuario, username, password) => {
    try {
      const response = await axios.put(URLActualizarUsuario, {}, {
        headers: {
          'idUsuario': idusuario,
          'username': username,
          'pwd': password
        }
      });
      return response.data; // string
    } catch (error) {
      console.error('Error:', error.message);
      return "Error al actualizar usuario";
    }
  };

  useLayoutEffect(() => {
    navigation.setOptions({
      headerShown: true,
      title: `Perfil de ${username}`,
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
      headerRight: () => (
        <Pressable style={styles.logoutButton} onPress={handleLogout}>
          <Ionicons name="exit-outline" size={30} color="red" />
        </Pressable>
      ),
    });
  }, [navigation, username]);

  const pickImage = async () => {
    let result = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ImagePicker.MediaTypeOptions.Images,
      allowsEditing: true,
      aspect: [1, 1],
      quality: 1,
    });

    if (!result.canceled) {
      setImage(result.uri);
      // update img en bd Endpoint?
    }
  };

  const handleLogout = () => {
    logout();
    navigation.navigate('Login');
    //borrar pila
  };

  const handleGuardarCambios = async () => {
    const result = await ActualizarUsuario(idusuario, username, password);
    Alert.alert('Guardar', `${result}Cambios guardados`);
  };

  if (!user) {
    return (
      <View style={styles.container}>
        <Text>Has iniciado sesion como anonimo</Text>
        <Button title="Volver al login" onPress={() => navigation.navigate('Main')} />
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <View style={styles.imageContainer}>
        <Pressable onPress={pickImage}>
          {image ? (
            <Image source={{ uri: image }} style={styles.image} />
          ) : (
            <View style={styles.imagePlaceholder}>
              <Text>Seleccionar Foto</Text>
            </View>
          )}
          <View style={styles.editIcon}>
            <Ionicons name="camera" size={24} color="white" />
          </View>
        </Pressable>
      </View>
      <View style={styles.levelContainer}>
        <Ionicons name="star" size={24} color="gold" />
        <Text style={styles.levelText}>Nivel {nivel}</Text>
      </View>
      <Text>ID: {idusuario}</Text>
      <Text style={styles.label}>Username:</Text>
      <TextInput
        style={styles.input}
        value={username}
        onChangeText={setUsername}
      />
      <Text style={styles.label}>Email:</Text>
      <Text style={{marginBottom: 10}}>{email}</Text>
      <Text style={styles.label}>Password:</Text>
      <TextInput
        style={styles.input}
        secureTextEntry
        value={password}
        onChangeText={setPassword}
      />
      <View style={styles.statsContainer}>
        <View style={[styles.bar, { width: `${victoriasPorcentaje}%`, backgroundColor: 'green' }]} />
        <View style={[styles.bar, { width: `${derrotasPorcentaje}%`, backgroundColor: 'red' }]} />
      </View>
      <Text style={styles.statsText}>Victorias: {victorias}</Text>
      <Text style={styles.statsText}>Derrotas: {derrotas}</Text>
      <Text style={styles.statsText}>Eficacia: {victoriasPorcentaje.toPrecision(6)} %</Text>
      {victoriasPorcentaje >= 60 && (
        <Text style={styles.statsText}>Tu eficacia es impresionante</Text>
      )}
      {victoriasPorcentaje < 30 && (
        <Text style={styles.statsText}>Te recomendamos ver nuestros videos de formación, te ayudarán a mejorar tu % de victorias</Text>
      )}
      <Button title="Guardar Cambios" onPress={handleGuardarCambios} />
    </View>
  );
};

export default ProfileScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: '#e3f2fd',
  },
  logoutButton: {
    position: 'absolute',
    right: 16,
    zIndex: 1,
  },
  imageContainer: {
    alignSelf: 'center',
    position: 'relative',
  },
  image: {
    marginTop: 30,
    width: 150,
    height: 150,
    borderWidth: 2,
    borderColor: '#1877e3',
    borderRadius: 75,
    marginBottom: 16,
  },
  imagePlaceholder: {
    width: 100,
    height: 100,
    borderRadius: 50,
    backgroundColor: '#e1e1e1',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 16,
  },
  editIcon: {
    position: 'absolute',
    bottom: 0,
    right: 0,
    backgroundColor: '#1877e3',
    borderRadius: 12,
    padding: 4,
  },
  label: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  input: {
    borderWidth: 1,
    borderColor: '#1877e3',
    padding: 8,
    borderRadius: 4,
    marginBottom: 16,
  },
  levelContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 8,
  },
  levelText: {
    fontSize: 16,
    fontWeight: 'bold',
    marginLeft: 8,
  },
  statsContainer: {
    flexDirection: 'row',
    marginBottom: 8,
  },
  bar: {
    height: 20,
  },
  statsText: {
    fontSize: 16,
    marginBottom: 8,
  },
});

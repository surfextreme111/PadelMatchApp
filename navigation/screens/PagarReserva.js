import { StyleSheet, Dimensions, Image, View, Text, TextInput, Button } from "react-native";
import React, { useLayoutEffect, useState } from 'react';
import { useAuth } from '../../components/AuthContext'; // Importar hook autenticación
import ImageViewer from '../../components/ImageViewer';
import axios from 'axios';

/*const PlaceholderImage = require("../../assets/images/Logoremoved.png");
const URL = 'http://192.168.1.139:5098/Api/GetEmailExistente';
const urlpwd = 'http://192.168.1.139:5098/Api/LoginCorrecto';
const urlRegister = 'http://192.168.1.139:5098/Api/RegistrarUsuario';
const urlPostReserva = 'http://192.168.1.139:5098/Api/PostReserva';
const urlgetusuid = 'http://192.168.1.139:5098/Api/getusuid';*/

const URL = 'http://api.padelmatch.elitepadelformation.com/Api/GetEmailExistente';
const urlpwd = 'http://api.padelmatch.elitepadelformation.com/Api/LoginCorrecto';
const urlRegister = 'http://api.padelmatch.elitepadelformation.com/Api/RegistrarUsuario';
const urlPostReserva = 'http://api.padelmatch.elitepadelformation.com/Api/PostReserva';
const urlgetusuid = 'http://api.padelmatch.elitepadelformation.com/Api/GetUsuId';

//http://api.padelmatch.elitepadelformation.com/
//http://docs.padelmatch.elitepadelformation.com/

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

const PagarReserva = ({ route, navigation }) => {

  useLayoutEffect(() => {
    navigation.setOptions({
      headerShown: true,
      title: `Pagar reserva`,
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

  const { selectedHour, fechaDecisiva, nombre, idpista, idclub, tipopista, ubicacionpista, urlimagenes } = route.params || {};
  const { user, login, logout } = useAuth();
  console.log("selectedhour pagar" + selectedHour)
  console.log("fechaDecisiva pagar" + fechaDecisiva)

  const [email, setEmail] = useState('');
  const [isLogin, setIsLogin] = useState(false);
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [reservationMade, setReservationMade] = useState(false); //controlar la redirección

  const RegistrarUsuario = async (email, password) => {
    try {
      const response = await axios.post(urlRegister, {}, {
        headers: {
          'email': email,
          'pwd': password
        }
      });
      return response.data; // string
    } catch (error) {
      console.error('Error:', error.message);
      return "Error al registrar usuario";
    }
  };

  const ComprobarEmailRegistrado = async (email) => {
    try {
      const response = await axios.post(URL, {}, {
        headers: {
          'email': email
        }
      });
      console.log("emailregistrado = " + response.data);
      return response.data; // true o false
    } catch (error) {
      console.error('Error:', error.message);
      return false;
    }
  };


  const ComprobarLoginCorrecto = async (email, pwd) => {
    try {
      const response = await axios.post(urlpwd, {}, {
        headers: {
          'email': email,
          'pwd': pwd
        }
      });
      console.log("login correcto = " + response.data);
      return response.data; // true o false
    } catch (error) {
      console.error('Error:', error.message);
      return false;
    }
  };

  const handleAuthentication = async () => {
    try {
      if (user) {
        console.log("ha entrau en = " + user);
        logout();
      } else {
        if (isLogin) {
          if (!email || !password) {
            alert("Por favor, rellene todos los campos");
            return;
          }

          if (!email.includes("@")) {
            alert("El email debe contener @");
            return;
          }

          if (password.length <= 4) {
            alert("La contraseña debe ser superior a 4 caracteres");
            setPassword("");
            return;
          }

          const emailRegistrado = await ComprobarEmailRegistrado(email);

          if (!emailRegistrado) {
            alert("Este email no está registrado");
            setEmail("");
            setPassword("");
            return;
          }

          const loginCorrecto = await ComprobarLoginCorrecto(email, password);

          if (!loginCorrecto) {
            alert("Contraseña incorrecta");
            setPassword("");
            return;
          }

          login({ email });
          setIsAuthenticated(true);
        } else {
          if (!email || !password) {
            alert("Por favor, rellene todos los campos");
            return;
          }

          if (!email.includes("@")) {
            alert("El email debe contener @");
            return;
          }

          const emailRegistrado = await ComprobarEmailRegistrado(email);

          if (emailRegistrado) {
            alert("Este email ya está registrado");
            setEmail("");
            setPassword("");
            setConfirmPassword("");
            return;
          }

          if (password.length <= 4) {
            alert("La contraseña debe ser superior a 4 caracteres");
            setPassword("");
            return;
          }

          if (password !== confirmPassword) {
            alert("Las contraseñas no coinciden");
            setPassword("");
            setConfirmPassword("");
            return;
          }

          const registrarUser = await RegistrarUsuario(email, password);

          if (registrarUser === "Registro exitoso") {
            //login({ email });
            setIsAuthenticated(true);
            setEmail(email);
          } else {
            alert("Error al registrar usuario");
          }
        }
      }
    } catch (error) {
      console.error('Error:', error.message);
    }
  };

  if (isAuthenticated || (user && user.email)) {
    return (
      <ReservaPage
        selectedHour={selectedHour}
        fechaDecisiva={fechaDecisiva}
        nombre={nombre}
        idpista={idpista}
        idclub={idclub}
        tipopista={tipopista}
        ubicacionpista={ubicacionpista}
        urlimagenes={urlimagenes}
        navigation={navigation}
        setReservationMade={setReservationMade}
        email={user ? user.email : email}
      />
    );
  }

  if (reservationMade) {
    return (
      <View style={styles.container}>
        <Text style={styles.authTitle}>Reserva realizada con éxito</Text>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <RegisterPage
        email={email}
        setEmail={setEmail}
        password={password}
        setPassword={setPassword}
        confirmPassword={confirmPassword}
        setConfirmPassword={setConfirmPassword}
        handleAuthentication={handleAuthentication}
      />
    </View>
  );
};

const ReservaPage = ({ selectedHour, fechaDecisiva, nombre, idpista, idclub, tipopista, ubicacionpista, urlimagenes, navigation, setReservationMade, email }) => {
  const precio = 35;
  const { width, height } = Dimensions.get("window");
  const { user, login, logout } = useAuth();

  const userid = user ? user.idusuario : null;

  const GetUsuId = async (email) => {
    try {
      const response = await axios.post(urlgetusuid, {}, {
        headers: {
          'email': email,
        }
      });
      console.log("usuid = " + response.data);
      return response.data;
    } catch (error) {
      console.error('Error login:', error.message);
      return false;
    }
  };

  const CrearReserva = async (idpista, horainicio, idclub, idpareja1, idpareja2, idusuarioreserva ) => {
    try {
      console.log("pagar horainicio creareserva = " + horainicio);
      const response = await axios.post(urlPostReserva, {}, {
        headers: {
          'idpista': idpista,
          'horainicio': horainicio,
          'idclub': idclub,
          'idpareja1': idpareja1,
          'idpareja2': idpareja2,
          'idusuarioreserva': idusuarioreserva
        }
      });
      console.log("Reserva = " + response.data);
      return response.data;
    } catch (error) {
      console.error('Error:', error.message);
      return false;
    }
  };

  //andreuba13@gmail.com

  const handlePagar = async (email) => {
    //alert(`Reserva realizada con éxito`);
    console.log("emailpagar " + email);

    if (user && user.email !== email) {
      console.log("entraaki? " + email);
      login({ email });
    }

    login({ email });

    const userid2 = await GetUsuId(email);
    const fechaDecisivaUtc = new Date(fechaDecisiva.getTime() - fechaDecisiva.getTimezoneOffset() * 60000);
    const fechaDecisiva2 = fechaDecisivaUtc.toISOString();

    console.log("userid2 handlepagar = " + userid2);
    console.log("fechaDecisiva2 handlepagar = " + fechaDecisiva2);
    console.log("idpista handlepagar = " + idpista);
    console.log("idclub handlepagar = " + idclub);

    const response = await CrearReserva(idpista,fechaDecisiva2, idclub, 0, 0, userid2);

    console.log("responseeeeeeeeeeeeeeee = " + response);
    if (response === "Reserva realizada") {
      alert("Reserva realizada con éxito");
      console.log("Reserva realizada con éxito");
    }

    navigation.navigate("Main");
    setReservationMade(true);
    login({ email });
  };
  const mes = fechaDecisiva.getMonth() + 1;
  const formattedMes = String(mes).padStart(2, '0');

  return (
    <View style={[styles]}>
      <Image
        style={[styles.image, { height: height / 4, width: width, borderRadius: 25, overflow: 'hidden', marginVertical: 16}]}
        source={{ uri: urlimagenes }}
      />
      <Text style={styles.authTitle2}>Club {nombre}</Text>
      <Text style={styles.text}>Pista: {idpista} {ubicacionPistaMapping[ubicacionpista]}</Text>
      <Text style={styles.text}>Tipo de Pista: {tipoPistaMapping[tipopista]}</Text>
      <Text style={styles.text}>Día: {fechaDecisiva.getDate()} Mes: {formattedMes} Año: {fechaDecisiva.getFullYear()}</Text>
      <Text style={styles.text}>Hora Seleccionada: {selectedHour}</Text>
      <Text style={styles.text}>Precio: ${precio}</Text>
      <View style={styles.buttonContainer}>
        <Button title="Pagar" color="#3498db" onPress={() => handlePagar(email)} />
      </View>
    </View>
  );
};

const RegisterPage = ({ email, setEmail, password, setPassword, confirmPassword, setConfirmPassword, handleAuthentication }) => {
  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <ImageViewer placeholderImageSource={PlaceholderImage} />
      </View>
      <View style={styles.authContainer}>
        <Text style={styles.authTitle}>Registro</Text>
        <TextInput
          style={styles.input}
          value={email}
          onChangeText={setEmail}
          placeholder="Email"
          autoCapitalize="none"
        />
        <TextInput
          style={styles.input}
          value={password}
          onChangeText={setPassword}
          placeholder="Contraseña"
          secureTextEntry
        />
        <TextInput
          style={styles.input}
          value={confirmPassword}
          onChangeText={setConfirmPassword}
          placeholder="Confirmar contraseña"
          secureTextEntry
        />
        <View style={styles.buttonContainer}>
          <Button title="Registrar" onPress={handleAuthentication} color="#3498db" />
        </View>
      </View>
    </View>
  );
};

export default PagarReserva;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#3498db',
    justifyContent: 'center',
    padding: 16,
  },
  header: {
    marginBottom: 20,
    alignItems: 'center',
  },
  authContainer: {
    backgroundColor: 'white',
    padding: 20,
    borderRadius: 10,
  },
  authTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center',
  },
  authTitle2: {
    marginLeft: 20,
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 0,
    color: '#3498db',
  },
  input: {
    borderBottomWidth: 1,
    borderBottomColor: '#ccc',
    marginBottom: 20,
    paddingVertical: 8,
  },
  buttonContainer: {
    alignContent: 'center',
    marginTop: 20,
    borderRadius: 40,
    width: '100%',
  },
  text: {
    marginLeft: 20,
    fontSize: 20,
    marginVertical: 4,
  },
  image: {
    width: '100%',
    height: 200,
    marginBottom: 16,
  },
});

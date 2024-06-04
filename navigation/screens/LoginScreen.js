import React, { useState, useEffect } from 'react';
import { StyleSheet, View, Text, TextInput, Button } from "react-native";
//import { getAuth, createUserWithEmailAndPassword, signInWithEmailAndPassword, onAuthStateChanged, signOut } from '@firebase/auth';
import ImageViewer from '../../components/ImageViewer';
import StackNavigator from "../../StackNavigator";
import { useNavigation, useRoute } from '@react-navigation/native';
import { useAuth } from '../../components/AuthContext';

import axios from 'axios';

const PlaceholderImage = require("../../assets/images/Logoremoved.png");
/*
const URL = 'http://192.168.1.139:5098/Api/GetEmailExistente';
const urlpwd = 'http://192.168.1.139:5098/Api/LoginCorrecto';
const urlRegister = 'http://192.168.1.139:5098/Api/RegistrarUsuario';
*/

const URL = 'http://api.padelmatch.elitepadelformation.com/Api/GetEmailExistente';
const urlpwd = 'http://api.padelmatch.elitepadelformation.com/Api/LoginCorrecto';
const urlRegister = 'http://api.padelmatch.elitepadelformation.com/Api/RegistrarUsuario';

const AuthScreen = ({ login, email, setEmail, password, setPassword, isLogin, setIsLogin, handleAuthentication, setIsAnonymous, confirmPassword, setConfirmPassword }) => {
  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <ImageViewer placeholderImageSource={PlaceholderImage} />
      </View>

      <View style={styles.authContainer}>
        <Text style={styles.authTitle}>{isLogin ? 'Iniciar sesión' : 'Registro'}</Text>

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
        {!isLogin && (
          <TextInput
            style={styles.input}
            value={confirmPassword}
            onChangeText={setConfirmPassword}
            placeholder="Confirmar contraseña"
            secureTextEntry
          />
        )}


        <View style={styles.buttonContainer}>
          <Button title={isLogin ? 'Iniciar sesión' : 'Registro'} onPress={handleAuthentication} color="#3498db" />
        </View>

        <View style={styles.bottomContainer}>
          <Text style={styles.toggleText} onPress={() => setIsLogin(!isLogin)}>
            {isLogin ? '¿No tienes una cuenta? Regístrate' : '¿Ya tienes una cuenta? Inicia sesión'}
          </Text>
          {isLogin && (
            <View style={styles.buttonContainer}>
              <Button title="Iniciar sesión como anónimo" onPress={() => setIsAnonymous(true)} color="#3498db" />
            </View>
          )}
        </View>
      </View>
    </View>
  );
}

const LoginScreen = () => {
  const navigation = useNavigation();
  const [isAnonymous, setIsAnonymous] = useState(false);
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const { login } = useAuth();
  const [user, setUser] = useState(null);
  const [isLogin, setIsLogin] = useState(true);

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

  useEffect(() => {
    if ((isAnonymous && user && user.anonymous) || (!isAnonymous && user && !user.anonymous)) {
      navigation.navigate("Main");
    }
  }, [isAnonymous, user, navigation]);

  const handleAuthentication = async () => {
    try {
      if (user) {
        console.log('Sesión cerrada!');
        // lógica para cerrar la sesión del usuario
        setUser(null);
      } else {
        if (isLogin && !isAnonymous) { // lógica para iniciar sesión con email y contraseña
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
            console.log("Login incorrecto");
            alert("Contraseña incorrecta");
            setPassword("");
            return;
          }
          login({ email });
          console.log('Inicio de sesión exitoso!');
          setUser({ email }); // Actualizar estado del usuario con el email
          navigation.navigate("Main");

        } else if (!isLogin && !isAnonymous) { // lógica para registrar con email y contraseña
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
            console.log("password: " + password)
            console.log("confirmPassword: " + confirmPassword)

            alert("Las contraseñas no coinciden");
            setPassword("");
            setConfirmPassword("");
            return;
          }

          //RegistrarUsuario(email, password);
          const registrarUser = await RegistrarUsuario(email, password);

          console.log("registrarUser = " + registrarUser);
          if (registrarUser === "Registro exitoso") {
            login({ email });
            console.log('Registro exitoso!');
            navigation.navigate("Main");
            // Lógica adicional para el registro si es necesario
          } else {
            alert("Error al registrar usuario");
          }

        } else if (isLogin && isAnonymous) {
          console.log('Entrando como anónimo!');
          setUser({ anonymous: true });
          navigation.navigate("Main");
        }
      }
    } catch (error) {
      console.error('Error:', error.message);
    }
  };


  return (
    <>
      {!user && isAnonymous ? (
        // Navegar al home si el usuario es anónimo
        navigation.navigate("Main")
      ) : (
        <>
          {/* Mostrar pantalla autenticación */}
          {!user && (
            <AuthScreen
              email={email}
              setEmail={setEmail}
              password={password}
              setPassword={setPassword}
              isLogin={isLogin}
              setIsLogin={setIsLogin}
              handleAuthentication={handleAuthentication}
              setIsAnonymous={setIsAnonymous}
              confirmPassword={confirmPassword}
              setConfirmPassword={setConfirmPassword}
            />
          )}
        </>
      )}
    </>
  );
};

export default LoginScreen;

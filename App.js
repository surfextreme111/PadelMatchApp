import React, { useState, useEffect, useContext } from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { AntDesign, FontAwesome, Ionicons } from '@expo/vector-icons';
import BuscarScreen from './navigation/screens/HomeScreen';
import FavoritosScreen from './navigation/screens/FavScreen';
import ReservasScreen from './navigation/screens/ReservasScreen';
import ProfileScreen from './navigation/screens/ProfileScreen';
import ClubsScreen from './navigation/screens/PistasClubScreen';
import LoginScreen from './navigation/screens/LoginScreen';
import SearchScreen from './navigation/screens/SearchScreen';
import LottieView from "lottie-react-native";
import PistasClubScreen from './navigation/screens/PistasClubScreen';
import HorasDisponiblesPista from './navigation/screens/HorasDisponiblesPista';
import PagarReserva from './navigation/screens/PagarReserva';
import { AuthProvider, useAuth } from './components/AuthContext';
import FormacionScreen from './navigation/screens/FormacionScreen';
import PartidasScreen from './navigation/screens/PartidasScreen';
import AdminScreen from './navigation/screens/AdminScreen';
import InfoClubScreen from './navigation/screens/InfoClubScreen';
import UpdateReservaScreen from './navigation/screens/UpdateReservaScreen';

const Stack = createNativeStackNavigator();
const Tab = createBottomTabNavigator();

const AdminBottomTabs = () => {
  return (
    <Tab.Navigator
      tabBarStyle={{ backgroundColor: '#e3f2fd' }}
    >
      <Tab.Screen name="Buscar" component={BuscarScreen} options={{
        tabBarLabel: "Buscar", headerShown: false, tabBarIcon: ({ focused }) => focused ? (
          <FontAwesome name="search" size={24} color="#1877E3" />
        ) : (
          <AntDesign name="search1" size={24} color="black" />
        )
      }}
      />
      <Tab.Screen name="Favoritos" component={FavoritosScreen} options={{
        tabBarLabel: "Favoritos", headerShown: true, tabBarIcon: ({ focused }) => focused ? (
          <AntDesign name="heart" size={24} color="#1877E3" />
        ) : (
          <AntDesign name="hearto" size={24} color="black" />
        )
      }}
      />
      <Tab.Screen name="Admin" component={AdminScreen} options={{
        tabBarLabel: "Admin", headerShown: true, tabBarIcon: ({ focused }) => focused ? (
          <AntDesign name="plus" size={24} color="#1877E3" />
        ) : (
          <AntDesign name="plus" size={24} color="black" />
        )
      }}
      />
      <Tab.Screen name="Reservas" component={ReservasScreen} options={{
        tabBarLabel: "Reservas", headerShown: true, tabBarIcon: ({ focused }) => focused ? (
          <Ionicons name="notifications" size={24} color="#1877E3" />
        ) : (
          <Ionicons name="notifications-outline" size={24} color="black" />
        )
      }}
      />
      <Tab.Screen name="Cuenta" component={ProfileScreen} options={{
        tabBarLabel: "Cuenta", headerShown: true, tabBarIcon: ({ focused }) => focused ? (
          <Ionicons name="settings-sharp" size={24} color="black" />
        ) : (
          <Ionicons name="settings-outline" size={24} color="black" />
        )
      }}
      />
    </Tab.Navigator>
  )
}

const BottomTabs = () => {
  return (
    <Tab.Navigator
      tabBarStyle={{ backgroundColor: '#e3f2fd' }}
    >
      <Tab.Screen name="Buscar" component={BuscarScreen} options={{
        tabBarLabel: "Buscar", headerShown: false, tabBarIcon: ({ focused }) => focused ? (
          <FontAwesome name="search" size={24} color="#1877E3" />
        ) : (
          <AntDesign name="search1" size={24} color="black" />
        )
      }}
      />
      <Tab.Screen name="Favoritos" component={FavoritosScreen} options={{
        tabBarLabel: "Favoritos", headerShown: true, tabBarIcon: ({ focused }) => focused ? (
          <AntDesign name="heart" size={24} color="#1877E3" />
        ) : (
          <AntDesign name="hearto" size={24} color="black" />
        )
      }}
      />
      <Tab.Screen name="Reservas" component={ReservasScreen} options={{
        tabBarLabel: "Reservas", headerShown: true, tabBarIcon: ({ focused }) => focused ? (
          <Ionicons name="notifications" size={24} color="#1877E3" />
        ) : (
          <Ionicons name="notifications-outline" size={24} color="black" />
        )
      }}
      />
      <Tab.Screen name="Cuenta" component={ProfileScreen} options={{
        tabBarLabel: "Cuenta", headerShown: true, tabBarIcon: ({ focused }) => focused ? (
          <Ionicons name="settings-sharp" size={24} color="black" />
        ) : (
          <Ionicons name="settings-outline" size={24} color="black" />
        )
      }}
      />
    </Tab.Navigator>
  )
}

const Main = () => {
  const { user } = useAuth();
  const [isAdmin, setIsAdmin] = useState(false);

  useEffect(() => {
    if (user && user.idrol === 3) {
      setIsAdmin(true);
    }
  }, [user]);

  return isAdmin ? <AdminBottomTabs /> : <BottomTabs />;
}

const App = () => {
  const [showAnimation, setShowAnimation] = useState(true);
  console.log("showAnimation", showAnimation);

  useEffect(() => {
    const timer = setTimeout(() => {
      setShowAnimation(false);
    }, 2850);
    return () => clearTimeout(timer);
  }, []);

  return (
    <>
      {showAnimation && (
        <LottieView style={{ backgroundColor: "#1877e3" }} source={require('./assets/VideoPadelMatch.json')} autoPlay />
      )}
      {!showAnimation && (
        <AuthProvider>
          <NavigationContainer>
            <Stack.Navigator>
              <Stack.Screen name="Login" component={LoginScreen} options={{ headerShown: false }} />
              <Stack.Screen name="Main" component={Main} options={{ headerShown: false }} />
              <Stack.Screen name="Search" component={SearchScreen} options={{ title: `Clubs` }} />
              <Stack.Screen name="PistasClub" component={PistasClubScreen} />
              <Stack.Screen name='HorasPista' component={HorasDisponiblesPista} />
              <Stack.Screen name='PagarReserva' component={PagarReserva} />
              <Stack.Screen name='Favoritos' component={FavoritosScreen} />
              <Stack.Screen name='Profile' component={ProfileScreen} />
              <Stack.Screen name='Formación' component={FormacionScreen} />
              <Stack.Screen name='Partidas' component={PartidasScreen} />
              <Stack.Screen name='Admin' component={AdminScreen} />
              <Stack.Screen name='InfoClub' component={InfoClubScreen} />
              <Stack.Screen name='UpdateReserva' component={UpdateReservaScreen} />
            </Stack.Navigator>
          </NavigationContainer>
        </AuthProvider>
      )}
    </>
  );
}

export default App;

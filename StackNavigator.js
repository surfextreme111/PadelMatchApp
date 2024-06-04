import { StyleSheet, Text, View } from 'react-native'
import React from 'react'
import { NavigationContainer } from '@react-navigation/native';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { createNativeStackNavigator } from '@react-navigation/native-stack';

//icons
import { AntDesign } from '@expo/vector-icons';
import { FontAwesome } from '@expo/vector-icons';
import { Ionicons } from '@expo/vector-icons';

//screens
import BuscarScreen from './navigation/screens/HomeScreen';
import FavoritosScreen from './navigation/screens/FavScreen';
import SearchScreen from './navigation/screens/SearchScreen';
import ReservasScreen from './navigation/screens/ReservasScreen';
import ProfileScreen from './navigation/screens/ProfileScreen';
import ClubsScreen from './navigation/screens/PistasClubScreen';
import LoginScreen from './navigation/screens/LoginScreen';
import HomeScreen from './navigation/screens/HomeScreen';

const StackNavigator = () => {
    const Tab = createBottomTabNavigator();
    const Stack = createNativeStackNavigator();

    function BottomTabs() {
        return (
            <Tab.Navigator>
                <Tab.Screen name="Buscar" component={BuscarScreen} options={{
                    tabBarLabel: "Buscar", headerShown: false, tabBarIcon: ({ focused }) => focused ? (
                        <FontAwesome name="search" size={24} color="#1877E3" />
                    ) : (
                        <AntDesign name="search1" size={24} color="black" />
                    )
                }}
                />
                <Tab.Screen name="Favoritos" component={FavoritosScreen} options={{
                    tabBarLabel: "Favoritos", headerShown: false, tabBarIcon: ({ focused }) => focused ? (
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
                    tabBarLabel: "Cuenta", headerShown: false, tabBarIcon: ({ focused }) => focused ? (
                        <Ionicons name="settings-sharp" size={24} color="black" />
                    ) : (
                        <Ionicons name="settings-outline" size={24} color="black" />
                    )
                }}
                />
            </Tab.Navigator>
        )
    }
    return (
        <Stack.Navigator>
            {/*<Stack.Screen name="Home" component={HomeScreen} options={{ headerShown: false }} />
            <Stack.Screen name="Main" component={BottomTabs} options={{ headerShown: false }} />
            <Stack.Screen name="Club" component={ClubsScreen} options={{ headerShown: true }} />
            {/*pasar params a la pantalla de busqueda
            <Stack.Screen name="Search" component={SearchScreen} />*/}
            <Stack.Screen name="Main" component={BottomTabs} options={{ headerShown: false }} />
            <Stack.Screen name="Club" component={ClubsScreen} options={{ headerShown: true }} />
            {/*pasar params a la pantalla de busqueda*/}
            <Stack.Screen name="Search" component={SearchScreen} />
        </Stack.Navigator>
    );
};

export default StackNavigator;

const styles = StyleSheet.create({});
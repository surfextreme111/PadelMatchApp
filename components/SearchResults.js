import { StyleSheet, Text, View, FlatList, Pressable, Image } from 'react-native';
import React, { useState, useEffect } from 'react';
import { useNavigation } from '@react-navigation/native';
import { Ionicons } from '@expo/vector-icons';
import { useAuth } from './AuthContext';
import axios from 'axios';
/*
const URL = 'http://192.168.1.139:5098/Api/CambiarClubFav';
const URLfavoritos = 'http://192.168.1.139:5098/Api/GetClubsFav';
*/
const URL = 'http://api.padelmatch.elitepadelformation.com/Api/CambiarClubFav';
const URLfavoritos = 'http://api.padelmatch.elitepadelformation.com/Api/GetClubsFav';

const SearchResults = ({ data, input, setInput, fechaUsuario }) => {
    const navigation = useNavigation();
    const { user } = useAuth();

    const [favorites, setFavorites] = useState({});

    useEffect(() => {
        if (user) {
            const getFavorites = async () => {
                try {
                    const response = await axios.post(URLfavoritos, {}, {
                        headers: {
                            'idUsuario': user.idusuario
                        }
                    });

                    const favClubs = response.data.reduce((acc, club) => {
                        acc[club.idclub] = true;
                        return acc;
                    }, {});

                    setFavorites(favClubs);
                } catch (error) {
                    console.error('Error al obtener clubes favoritos:', error);
                }
            };

            getFavorites();
        }
    }, [user]);

    const handleFavorite = async (idclub) => {
        try {
            const response = await axios.post(URL, {}, {
                headers: {
                    'idUsuario': user.idusuario,
                    'idClub': idclub
                }
            });

            setFavorites(prevState => ({
                ...prevState,
                [idclub]: !prevState[idclub]
            }));

            console.log('Club añadido a favoritos', response.data);
        } catch (error) {
            console.error('Error añadiendo club:', error);
        }
    };

    return (
        <View style={{ padding: 10, backgroundColor: "white" }}>
            <FlatList
                data={data}
                keyExtractor={(item) => item.id}
                initialNumToRender={5} // Cuantos mostrar al principio
                renderItem={({ item }) => {
                    if (item.nombre.toLowerCase().includes(input.toLowerCase())) {
                        return (
                            <Pressable onPress={() => {
                                setInput(item.nombre);
                                navigation.navigate("PistasClub", {
                                    fechaUsuario: fechaUsuario,
                                    idclub: item.idclub,
                                    nombreclub: item.nombre,
                                    descripcion: item.descripcion,
                                    idusuariocreador: item.idusuariocreador,
                                    fechain: item.fechain,
                                    idprovincia: item.idprovincia,
                                    imagen: item.imagen,
                                    coordenadas: item.coordenadas
                                });
                            }} style={{ flexDirection: "row", alignItems: "center", marginVertical: 10, backgroundColor: "#e3f2fd", borderRadius: 30 }}>
                                <View>
                                    <Image style={{ width: 120, height: 120, borderRadius: 30, borderColor: "#1377e3", borderWidth: 2 }} source={{ uri: item.imagen }} />
                                </View>
                                {user && (
                                    <Pressable
                                        style={{ position: 'absolute', top: 10, right: 10 }}
                                        onPress={() => handleFavorite(item.idclub)}
                                    >
                                        <Ionicons
                                            name={favorites[item.idclub] ? "heart" : "heart-outline"}
                                            size={30}
                                            color="#1877e3"
                                        />
                                    </Pressable>
                                )}
                                <View style={{ marginLeft: 10, flex: 1 }}>
                                    <Text style={{ fontSize: 25, fontWeight: "500" }}>{item.nombre}</Text>
                                    <Text style={{ marginVertical: 4 }}>{item.descripcion}</Text>
                                </View>
                            </Pressable>
                        );
                    }
                }}
            />
        </View>
    );
};

export default SearchResults;

const styles = StyleSheet.create({});

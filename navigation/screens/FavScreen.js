import { StyleSheet, Text, View, FlatList, Image, ActivityIndicator, Pressable } from 'react-native';
import React, { useLayoutEffect, useState, useEffect } from 'react';
import axios from 'axios';
import { useAuth } from '../../components/AuthContext';
import { useNavigation, useFocusEffect  } from '@react-navigation/native';

//const urlClubsFav = 'http://192.168.1.139:5098/Api/GetClubsFav';
const urlClubsFav = 'http://api.padelmatch.elitepadelformation.com/Api/GetClubsFav';

const FavScreen = () => {
  const { user } = useAuth();
  const [clubsData, setClubsData] = useState([]);
  const [loading, setLoading] = useState(true);
  const navigation = useNavigation();

  useFocusEffect( //usefocuseffect se ejecuta cada vez que se entra en la pantalla
    React.useCallback(() => {
      const GetClubsFav = async () => {
        if (!user) {
          setLoading(false);
          return;
        }

        try {
          const response = await axios.post(urlClubsFav, {}, {
            headers: {
              'idUsuario': user.idusuario
            }
          });

          const clubsData = response.data.map((clubFav) => ({
            key: clubFav.idclub,
            idclub: clubFav.idclub,
            nombreclub: clubFav.nombre,
            descripcion: clubFav.descripcion,
            idusuariocreador: clubFav.idusuariocreador,
            fechain: clubFav.fechain,
            idprovincia: clubFav.idprovincia,
            imagen: clubFav.imagen,
            coordenadas: clubFav.coordenadas
          }));
          console.log('Clubs favoritos:', clubsData);
          setClubsData(clubsData);
        } catch (error) {
          console.error('Error al obtener clubes favoritos:', error);
        } finally {
          setLoading(false);
        }
      };

      GetClubsFav(clubsData);

    }, [user])
  );

  useLayoutEffect(() => {
    navigation.setOptions({
      headerShown: true,
      title: `Clubs favoritos`,
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
  }, [navigation]);

  const handleClubPress = (idclub) => {
    navigation.navigate('InfoClub', { idclub });
  };

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color="#0000ff" />
      </View>
    );
  }

  if (!user) {
    return (
      <View style={styles.container}>
        <Text style={styles.message}>En usuarios anónimos no guardamos clubs favoritos </Text>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      {clubsData.length === 0 ? (
        <Text style={styles.message}>No tienes clubs favoritos.</Text>
      ) : (
        <FlatList
          data={clubsData}
          renderItem={({ item }) => (
            <Pressable onPress={() => handleClubPress(item)}>
              <View style={styles.clubContainer}>
                <Image source={{ uri: item.imagen }} style={styles.image} />
                <Text style={styles.clubName}>{item.nombreclub}</Text>
                <Text style={styles.clubDescription}>{item.descripcion}</Text>
              </View>
            </Pressable>
          )}
          keyExtractor={(item) => item.idclub}
        />
      )}
    </View>
  );
};

export default FavScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#1877e3',
    padding: 16,
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  clubContainer: {
    marginBottom: 16,
    padding: 16,
    backgroundColor: '#e3f2fd',
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 8,
    elevation: 2,
  },
  image: {
    width: '100%',
    height: 200,
    borderRadius: 8,
  },
  clubName: {
    fontSize: 18,
    fontWeight: 'bold',
    marginVertical: 8,
  },
  clubDescription: {
    fontSize: 14,
    color: '#666',
  },
  message: {
    textAlign: 'center',
    marginVertical: 16,
    fontSize: 16,
  },
});

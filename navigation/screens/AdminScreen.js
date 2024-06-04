import { StyleSheet, Text, View, Button, TextInput, Modal, Pressable } from 'react-native';
import React, { useLayoutEffect, useState } from 'react';
import { useNavigation } from '@react-navigation/native';
import axios from 'axios';

//const urlCrearPista = 'http://192.168.1.139:5098/Api/CrearPista';
//const urlBorrarPista = 'http://192.168.1.139:5098/Api/BorrarPista';
 const urlCrearPista = 'http://api.padelmatch.elitepadelformation.com/Api/CrearPista';
 const urlBorrarPista = 'http://api.padelmatch.elitepadelformation.com/Api/BorrarPistaXId';

const AdminScreen = () => {
  const navigation = useNavigation();

  const [modalVisibleCP, setmodalVisibleCP] = useState(false);
  const [modalVisibleBP, setmodalVisibleBP] = useState(false);
  const [idclub, setIdClub] = useState('');
  const [idpista, setIdPista] = useState('');
  const [tipopista, setTipoPista] = useState('');
  const [ubicacionpista, setUbicacionPista] = useState('');
  const [urlpista, setUrlPista] = useState('');

  useLayoutEffect(() => {
    navigation.setOptions({
      headerShown: true,
      title: 'Admin Panel',
      headerTitleStyle: {
        fontSize: 20,
        fontWeight: 'bold',
        color: 'white',
      },
      headerStyle: {
        backgroundColor: '#1877e3',
        height: 80,
        borderBottomColor: 'transparent',
        shadowColor: 'transparent',
      },
    });
  }, []);

  const CrearPista = async () => {
    try {
      const response = await axios.post(urlCrearPista, {}, {
        headers: {
          idclub: parseInt(idclub),
          tipopista: parseInt(tipopista),
          ubicacionpista: parseInt(ubicacionpista),
          urlpista: urlpista,
        }
      });

      console.log('Pista creada:', response.data);
      setmodalVisibleCP(false);
    } catch (error) {
      console.error('Error al intentar crear pista:', error);
    }
  };
  const BorrarPista = async () => {
    try {
      const response = await axios.post(urlBorrarPista, {}, {
        headers: {
          idpista: parseInt(idpista),
        }
      });

      console.log('Borrada', response.data);
      setmodalVisibleCP(false);
    } catch (error) {
      console.error('Error al intentar crear pista:', error);
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Admin Panel</Text>
      <View style={styles.row}>
        <View style={styles.buttonContainer}>
          <Button title="Crear Pista" onPress={() => setmodalVisibleCP(true)} />
        </View>
        <View style={styles.buttonContainer}>
          <Button title="Borrar Pista" onPress={() => setmodalVisibleBP(true)} />
        </View>
      </View>
      <View style={styles.row}>
        <View style={styles.buttonContainer}>
          <Button title="Stats Club" onPress={() => {}} />
        </View>
        <View style={styles.buttonContainer}>
          <Button title="..." onPress={() => {}} />
        </View>
      </View>
      <View style={styles.row}>
        <View style={styles.buttonContainer}>
          <Button title="Modificar Club" onPress={() => {}} />
        </View>
        <View style={styles.buttonContainer}>
          <Button title="Conceder Admin" onPress={() => {}} />
        </View>
      </View>

{/*----------MODAL CREAR PISTA-------------- */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisibleCP}
        onRequestClose={() => {
          setmodalVisibleCP(!modalVisibleCP);
        }}
      >
        <View style={styles.modalOverlay}>
          <View style={styles.modalContainer}>
            <Text style={styles.modalTitle}>Crear Pista</Text>
            <TextInput
              style={styles.input}
              placeholder="ID Club"
              value={idclub}
              onChangeText={setIdClub}
              keyboardType="numeric"
            />
            <TextInput
              style={styles.input}
              placeholder="Tipo Pista"
              value={tipopista}
              onChangeText={setTipoPista}
              keyboardType="numeric"
            />
            <TextInput
              style={styles.input}
              placeholder="Ubicación Pista"
              value={ubicacionpista}
              onChangeText={setUbicacionPista}
              keyboardType="numeric"
            />
            <TextInput
              style={styles.input}
              placeholder="URL Pista"
              value={urlpista}
              onChangeText={setUrlPista}
            />
            <View style={styles.modalBtnPropis}>
              {/*si btn click se añade el style modalBtnClick*/}
              <Pressable
                style={({ btnClick }) => [styles.modalBtn,
                  btnClick && styles.modalBtnClick
                ]}
                onPress={CrearPista}
              >
                <Text style={styles.modalBtnText}>Crear</Text>
              </Pressable>
              <Pressable
                style={({ btnClick }) => [
                  styles.modalBtn,
                  styles.modalBtnCerrar,
                  btnClick && styles.modalBtnClick
                ]}
                onPress={() => setmodalVisibleCP(false)}
              >
                <Text style={styles.modalBtnText}>Cancelar</Text>
              </Pressable>
            </View>
          </View>
        </View>
      </Modal>
{/*----------MODAL CREAR PISTA-------------- */}
{/*----------MODAL BORRAR PISTA-------------- */}
      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisibleBP}
        onRequestClose={() => {
          setmodalVisibleBP(!modalVisibleBP);
        }}
      >
        <View style={styles.modalOverlay}>
          <View style={styles.modalContainer}>
            <Text style={styles.modalTitle}>Borrar Pista</Text>
            <TextInput
              style={styles.input}
              placeholder="ID Pista"
              value={idpista}
              onChangeText={setIdPista}
              keyboardType="numeric"
            />

            <View style={styles.modalBtnPropis}>
              {/*si btn click se añade el style modalBtnClick*/}
              <Pressable
                style={({ btnClick }) => [styles.modalBtn,
                  btnClick && styles.modalBtnClick
                ]}
                onPress={BorrarPista}
              >
                <Text style={styles.modalBtnText}>Borrar</Text>
              </Pressable>
              <Pressable
                style={({ btnClick }) => [
                  styles.modalBtn,
                  styles.modalBtnCerrar,
                  btnClick && styles.modalBtnClick
                ]}
                onPress={() => setmodalVisibleBP(false)}
              >
                <Text style={styles.modalBtnText}>Cancelar</Text>
              </Pressable>
            </View>
          </View>
        </View>
      </Modal>
{/*----------MODAL BORRAR PISTA-------------- */}
    </View>
  );
};

export default AdminScreen;

const styles = StyleSheet.create({

  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 16,
    backgroundColor: '#1877e3',
  },
  title: {
    fontSize: 24,
    marginBottom: 20,
    color: '#fff',
    textAlign: 'center',
  },
  input: {
    height: 40,
    borderColor: '#ccc',
    borderWidth: 1,
    marginBottom: 10,
    paddingHorizontal: 10,
    width: '100%',
    backgroundColor: '#fff',
    borderRadius: 5,
  },
  row: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 40,
  },
  buttonContainer: {
    borderRadius: 8,
    flex: 1,
    marginHorizontal: 10,
  },
  modalOverlay: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#1877e3',
  },
  modalContainer: {
    width: '80%',
    backgroundColor: 'white',
    borderRadius: 10,
    padding: 20,
    alignItems: 'center',
  },
  modalTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 15,
  },
  modalBtnPropis: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    width: '100%',
    marginTop: 20,
  },
  modalBtn: {
    backgroundColor: '#1877e3',
    padding: 10,
    borderRadius: 5,
    flex: 1,
    alignItems: 'center',
    marginHorizontal: 5,
  },
  modalBtnText: {
    color: 'white',
    fontWeight: 'bold',
  },
  modalBtnCerrar: {
    backgroundColor: '#1877e3',
  },
  modalBtnClick: {
    opacity: 0.5,
  },
});

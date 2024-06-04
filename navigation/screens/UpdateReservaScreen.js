import { StyleSheet, Text, View, TextInput, Button, Alert } from 'react-native';
import React, { useState } from 'react';
import axios from 'axios';

const UpdateReservaScreen = ({ route, navigation }) => {
    const { idreserva, idClub, idpista, codigoinvitacion, horainicio, horafin } = route.params;
    const [newHoraInicio, setNewHoraInicio] = useState(horainicio);

    /*const urlDeleteReserva = 'http://192.168.1.139:5098/Api/BorrarReservaXId';
    const urlUpdateReserva = 'http://192.168.1.139:5098/Api/UpdateReserva';
    */

    const urlDeleteReserva = 'http://api.padelmatch.elitepadelformation.com/Api/BorrarReservaXId';
    const urlUpdateReserva = 'http://api.padelmatch.elitepadelformation.com/Api/UpdateReserva';

    const handleDeleteReserva = async () => {
        try {
            const response = await axios.post(urlDeleteReserva, {
                headers: {
                idreserva: idreserva
                }
            });

            if (response.data === true) {
                Alert.alert('Borrada', 'Reserva borrada correctamente');
                navigation.goBack();
            } else {
                Alert.alert('Error', 'No se pudo borrar la reserva');
            }
        } catch (error) {
            console.error('Error al borrar la reserva:', error);
            Alert.alert('Error', `${error.message}`);
        }
    };

    const handleUpdateReserva = async () => {
        try {
            const response = await axios.post(urlUpdateReserva, {
                headers: {
                idreserva,
                horainicio: newHoraInicio
                }
            });

            if (response.data === 'Reserva actualizada') {
                Alert.alert('Actualizada', 'Reserva actualizada con correctamente');
                navigation.goBack();
            } else {
                Alert.alert('Error', 'No se pudo actualizar la reserva');
            }
        } catch (error) {
            console.error('Error al actualizar la reserva:', error);
            Alert.alert('Error', `${error.message}`);
        }
    };

    return (
        <View style={styles.container}>
            <Text style={{color:"#1877e3"}}>Pantalla en desarrollo disculpe las molestias</Text>
            <Text style={styles.label}>Modificar reserva número: {idreserva}</Text>
            <TextInput
                style={styles.input}
                value={newHoraInicio}
                onChangeText={setNewHoraInicio}
                placeholder="Hora de Inicio"
            />
            <Button title="Eliminar" onPress={handleDeleteReserva} />
            <Button title="Guardar Cambios" onPress={handleUpdateReserva} />
        </View>
    );
};

export default UpdateReservaScreen;

const styles = StyleSheet.create({
    container: {
        flex: 1,
        padding: 16,
        backgroundColor: '#fff',
    },
    label: {
        fontSize: 18,
        fontWeight: 'bold',
        marginBottom: 8,
    },
    input: {
        height: 40,
        borderColor: '#ccc',
        borderWidth: 1,
        marginBottom: 12,
        paddingHorizontal: 8,
    },
});

import { StyleSheet, Text, View, ScrollView } from 'react-native'
import React, { useLayoutEffect } from 'react';
import { useNavigation } from '@react-navigation/native';
import { Video } from 'expo-av';

const FormacionScreen = () => {
    const navigation = useNavigation();

    useLayoutEffect(() => {
        navigation.setOptions({
            headerShown: true,
            title: 'Formación online',
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

    return (
        <ScrollView contentContainerStyle={styles.container}>
            <View style={styles.videoContainer}>
                <Video
                    source={require('../../assets/images/VIBORA.mp4')}
                    rate={1.0}
                    volume={1.0}
                    isMuted={false}
                    resizeMode="cover"
                    shouldPlay
                    useNativeControls
                    style={styles.video}
                />
            </View>
            <Text style={styles.description}>
                LA VÍBORA
            </Text>
            <Text style={styles.footerText}>
                Formación online en colaboración con Javier Navarro.
            </Text>
        </ScrollView>
    );
}

export default FormacionScreen;

const styles = StyleSheet.create({
    container: {
        flexGrow: 1,
        backgroundColor: '#1877e3',
        padding: 16,
        alignItems: 'center',
        justifyContent: 'center',
    },
    videoContainer: {
        width: '100%',
        backgroundColor: '#ffffff',
        borderRadius: 10,
        overflow: 'hidden',
        marginBottom: 16,
        shadowColor: '#000',
        shadowOffset: { width: 0, height: 2 },
        shadowOpacity: 0.8,
        shadowRadius: 2,
        elevation: 5,
    },
    video: {
        width: '100%',
        height: 250,
    },
    description: {
        fontSize: 18,
        color: '#FFFFFF',
        fontWeight: 'bold',
        textAlign: 'center',
        marginBottom: 8,
    },
    footerText: {
        fontSize: 16,
        color: '#FFFFFF',
        textAlign: 'center',
    },
});

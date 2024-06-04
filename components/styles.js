import { StatusBar } from "expo-status-bar";
import React, { useState, useEffect } from 'react';
import { StyleSheet, View, Text, TextInput , Button, ScrollView } from "react-native";
import { getAuth, createUserWithEmailAndPassword, signInWithEmailAndPassword, onAuthStateChanged, signOut } from '@firebase/auth';
import { initializeApp } from '@firebase/app';
//import Button from './components/button';
import ImageViewer from './ImageViewer';

export default styles = StyleSheet.create({
    bottombarcontainer:{
      width: '100%',
      position: 'absolute',
      bottom: 0,
      backgroundColor: '#1877e3',
    },
    background: {
        flex: 1,
        backgroundColor: '#1877e3',
    },
    notification: {
      backgroundColor: '#ff6347',
      padding: 10,
      marginTop: 10,
      borderRadius: 5,
      alignSelf: 'stretch',
    },
    notificationText: {
      color: '#fff',
      textAlign: 'center', // centrar el texto horizontalmente
    },
    container: {
      flexGrow: 1,
      justifyContent: 'center',
      alignItems: 'center',
      padding: 16,
      backgroundColor: '#1877e3',
    },
    imageContainer: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      paddingBottom: 20,
    },
    image: {
      width: 300,
      height: 80,
      borderRadius: 18,
    },
    authContainer: {
      width: '90%',
      maxWidth: 400,
      backgroundColor: '#fff',
      padding: 16,
      borderRadius: 8,
      elevation: 3,
    },
    title: {
      fontSize: 24,
      marginBottom: 16,
      textAlign: 'center',
    },
    input: {
      height: 40,
      borderColor: '#ddd',
      borderWidth: 1,
      marginBottom: 16,
      padding: 8,
      borderRadius: 4,
    },
    toggleText: {
      marginBottom: 16,
      marginTop: 16,
      color: '#3498db',
      textAlign: 'center',
    },
    emailText: {
      fontSize: 18,
      textAlign: 'center',
      marginBottom: 20,
    }
  });
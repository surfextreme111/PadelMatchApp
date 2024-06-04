import { StyleSheet, Pressable, Text, View } from 'react-native'
import React from 'react'
import { FontAwesome5 } from '@expo/vector-icons';
import { Ionicons } from '@expo/vector-icons';
import { useNavigation, useRoute } from '@react-navigation/native';


const Header = ({ activeTab, setActiveTab }) => {
    const navigation = useNavigation();

    return (
        <View style={{ backgroundColor: "#1877E3", height: 65, flexDirection: "row", justifyContent: "space-around", alignItems: "center" }}>
            <Pressable style={{ flexDirection: "row", alignItems: "center" }} onPress={() => setActiveTab('Clubs')}>
                <FontAwesome5 name="warehouse" size={24} color={activeTab === 'Clubs' ? "#fff" : "#ccc"} />
                <Text style={{ color: activeTab === 'Clubs' ? "#fff" : "#ccc", fontWeight: "bold", marginLeft: 8, fontSize: 15 }}>Clubs</Text>
                { }
            </Pressable>
            <Pressable style={{ flexDirection: "row", alignItems: "center" }}
                onPress={() => {
                    setActiveTab('Formación');
                    navigation.navigate("Formación");
                }}>
                <Ionicons name="tennisball" size={24} color={activeTab === 'Formación' ? "#fff" : "#ccc"} />
                <Text style={{ color: activeTab === 'Formación' ? "#fff" : "#ccc", fontWeight: "bold", marginLeft: 8, fontSize: 15 }}>Formación</Text>
            </Pressable>
            {/*<Pressable style={{ flexDirection: "row", alignItems: "center" }}
            onPress={() =>{
            setActiveTab('Partidas');
            navigation.navigate("Partidas");
            }}>
                <Ionicons name="tablet-landscape" size={24} color={activeTab === 'Partidas' ? "#fff" : "#ccc"} />
                <Text style={{ color: activeTab === 'Partidas' ? "#fff" : "#ccc", fontWeight: "bold", marginLeft: 8, fontSize: 15 }}>Partidas</Text>
            </Pressable>
        */}
        </View>
    )
}

export default Header

const styles = StyleSheet.create({})
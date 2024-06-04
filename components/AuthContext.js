import React, { createContext, useContext, useState } from 'react';
import axios from 'axios';

const AuthContext = createContext();

export const useAuth = () => useContext(AuthContext);

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const email = user ? user.email : null;

  const ObtenerDatosUsuario = async (email) => {
    try {
    //const url = 'http://192.168.1.139:5098/Api/ObtenerDatosUsuario';
    const url = 'http://api.padelmatch.elitepadelformation.com/Api/ObtenerDatosUsuario';

      const response = await axios.post(url, {}, {
        headers: {
          'email': email
        }
      });
      console.log("email " + email)

      const usuario = response.data;
      const userData = {
        idusuario: usuario.idusuario,
        username: usuario.username,
        password: usuario.password,
        email: usuario.email,
        nivel: usuario.nivel,
        foto: usuario.foto,
        victorias: usuario.victorias,
        derrotas: usuario.derrotas,
        idrol: usuario.idrol,
      };
      return userData;
    } catch (error) {
      console.error('Error en authcontext:', error.message);
      return "Error al obtener datos de usuario";
    }
  };

  const login = async ({ email }) => {
    try {
      console.log("emaillogin:", email);
      const userData = await ObtenerDatosUsuario(email);
      if (typeof userData === "string") {
        throw new Error(userData);
      }
      setUser(userData);
    } catch (error) {
      console.error("Error geting user data:", error);
    }
  };

  const logout = () => {
    setUser(null);
  };

  return (
    <AuthContext.Provider value={{ user, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};

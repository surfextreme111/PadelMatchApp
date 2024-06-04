import { StyleSheet, Image } from 'react-native';
//importar de components styles.js
import styles from './styles';

export default function ImageViewer({ placeholderImageSource }) {
  return (
    <Image source={placeholderImageSource} style={styles.image} />
  );
}


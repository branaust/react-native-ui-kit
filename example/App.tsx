import { StyleSheet, Text, View } from 'react-native';

import * as ReactNativeUiKit from 'react-native-ui-kit';

export default function App() {
  return (
    <View style={styles.container}>
      <Text>{ReactNativeUiKit.hello()}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});

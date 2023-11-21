import React from "react";
import { StyleSheet, Text, View } from "react-native";
import { UIButton } from "react-native-ui-kit";

export default function App() {
  return (
    <View style={styles.container}>
      <UIButton color="systemBlue" />
      <UIButton color="systemYellow" />
      <Text>👋 Hello from App.tsx</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});

import * as React from "react";
import { requireNativeViewManager } from "expo-modules-core";
import { SystemColorName } from "./types/UIButtonViewTypes";
import { View } from "react-native";

interface SwiftUIButtonProps {
  // Define any props your SwiftUIButton might accept, such as color or onPress event
  color: SystemColorName;
}

const NativeSwiftUIButton: React.ComponentType<SwiftUIButtonProps> =
  requireNativeViewManager("SwiftUIButton");

export default function UIButtonView(props: SwiftUIButtonProps) {
  // Here you can handle any additional logic, like event handlers or state
  return <NativeSwiftUIButton {...props} />;
}

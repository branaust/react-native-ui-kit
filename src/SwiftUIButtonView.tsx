// SwiftUIButtonView.tsx
import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";

interface SwiftUIButtonProps {
  // Define any props your SwiftUIButton might accept, such as color or onPress event
}

const NativeSwiftUIButton: React.ComponentType<SwiftUIButtonProps> =
  requireNativeViewManager("SwiftUIButton");

export default function SwiftUIButtonView(props: SwiftUIButtonProps) {
  // Here you can handle any additional logic, like event handlers or state
  return <NativeSwiftUIButton {...props} />;
}

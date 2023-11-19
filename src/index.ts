import {
  NativeModulesProxy,
  EventEmitter,
  Subscription,
} from "expo-modules-core";

// Import the native module. On web, it will be resolved to ReactNativeUiKit.web.ts
// and on native platforms to ReactNativeUiKit.ts
import {
  ChangeEventPayload,
  ReactNativeUiKitViewProps,
} from "./ReactNativeUiKit.types";
import ReactNativeUiKitModule from "./ReactNativeUiKitModule";
import ReactNativeUiKitView from "./ReactNativeUiKitView";

// Get the native constant value.
export const PI = ReactNativeUiKitModule.PI;

export function hello(): string {
  return ReactNativeUiKitModule.hello();
}

export async function setValueAsync(value: string) {
  return await ReactNativeUiKitModule.setValueAsync(value);
}

const emitter = new EventEmitter(
  ReactNativeUiKitModule ?? NativeModulesProxy.ReactNativeUiKit
);

export function addChangeListener(
  listener: (event: ChangeEventPayload) => void
): Subscription {
  return emitter.addListener<ChangeEventPayload>("onChange", listener);
}

export { ReactNativeUiKitView, ReactNativeUiKitViewProps, ChangeEventPayload };

import { requireNativeViewManager } from 'expo-modules-core';
import * as React from 'react';

import { ReactNativeUiKitViewProps } from './ReactNativeUiKit.types';

const NativeView: React.ComponentType<ReactNativeUiKitViewProps> =
  requireNativeViewManager('ReactNativeUiKit');

export default function ReactNativeUiKitView(props: ReactNativeUiKitViewProps) {
  return <NativeView {...props} />;
}

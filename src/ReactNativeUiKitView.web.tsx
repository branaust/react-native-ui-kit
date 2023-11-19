import * as React from 'react';

import { ReactNativeUiKitViewProps } from './ReactNativeUiKit.types';

export default function ReactNativeUiKitView(props: ReactNativeUiKitViewProps) {
  return (
    <div>
      <span>{props.name}</span>
    </div>
  );
}

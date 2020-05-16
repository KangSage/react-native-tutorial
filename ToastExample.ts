import { NativeModules, Platform } from 'react-native';

type Duration = 'SHORT' | 'LONG';

interface Toast {
  SHORT: 'SHORT';
  LONG: 'LONG';
  show(message: string, duration: Duration): void;
}

const NativeToast: Toast =
  Platform.OS === 'ios' ? NativeModules.ToastView : NativeModules.ToastExample;

export default NativeToast;

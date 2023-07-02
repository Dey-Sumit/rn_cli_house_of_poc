declare module 'react-native-config' {
  export type NativeConfig = {
    GOOGLE_MAP_KEY: string;
    NATIVE_SOME_RANDOM_KEY: string;
    ENV: 'staging' | 'production';
  };
  export const Config: NativeConfig;
  export default Config;
}

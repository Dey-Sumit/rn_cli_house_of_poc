/* eslint-disable react-native/no-inline-styles */
import React from 'react';
import {Button, NativeModules, Text, View} from 'react-native';
import Config from 'react-native-config';

const EnvVariables = () => {
  return (
    <View
      style={{
        flex: 1,

        alignItems: 'center',
        padding: 20,
        gap: 5,
      }}>
      <Button
        title="Print Plist Values"
        onPress={() => NativeModules.PlistModule?.printPlistValues()}
      />
      <Text
        style={{
          backgroundColor: '#c1c1c1',
          padding: 20,
          borderRadius: 10,
          width: '100%',
          marginBottom: 10,
          textAlign: 'center',
        }}>
        ENV : {Config.ENV?.toUpperCase()}
      </Text>
      {Object.entries(Config).map(([key, value]) => {
        return (
          <Text
            key={key}
            style={{
              backgroundColor: '#ccc',
              padding: 10,
              borderRadius: 10,
              width: '100%',
            }}>
            {key}: {value}
          </Text>
        );
      })}

      {/* <SwiftNativeModule /> */}
    </View>
  );
};

export default EnvVariables;

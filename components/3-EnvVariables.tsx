/* eslint-disable react-native/no-inline-styles */
import React from 'react';
import {
  Button,
  NativeModules,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import Config from 'react-native-config';
const {PlistModule} = NativeModules;

const EnvVariables = () => {
  console.log('Config', Config);

  return (
    <ScrollView
      contentContainerStyle={{
        padding: 20,
        gap: 5,
      }}
      style={{
        flex: 1,
      }}>
      <View
        style={{
          rowGap: 8,
          marginBottom: 20,
        }}>
        <Button
          color="green"
          title="Print Plist Values on Native Console"
          onPress={() => PlistModule?.printPlistValues()}
        />
        <Button
          color="blue"
          title="Print Plist Values on JS Console "
          onPress={() =>
            PlistModule?.getPlistValues((value: string) => console.log(value))
          }
        />
      </View>
      <Text style={styles.header}>ENV : {Config.ENV?.toUpperCase()}</Text>
      {Object.entries(Config).map(([key, value]) => {
        return (
          <Text key={key} style={styles.paragraph}>
            {key}: {value}
          </Text>
        );
      })}

      {/* <SwiftNativeModule /> */}
    </ScrollView>
  );
};

export default EnvVariables;

const styles = StyleSheet.create({
  header: {
    backgroundColor: '#c1c1c1',
    padding: 20,
    borderRadius: 10,
    width: '100%',
    marginBottom: 2,
    textAlign: 'center',
  },
  paragraph: {
    backgroundColor: '#ccc',
    padding: 10,
    borderRadius: 10,
    width: '100%',
  },
});

import React, {useState} from 'react';
import {Button, NativeModules, Text, View} from 'react-native';

// console.log(NativeModules.Counter);
// console.log(NativeModules.Counter.getConstants());
// NativeModules.Counter.increment(value => console.log({value}));

const SwiftNativeModule = () => {
  const [count, setCount] = useState(0); // should be set as per the getConstants() value, but it is not working xD

  const incrementValue = () =>
    NativeModules.Counter.increment((value: number) => setCount(value));

  const decrementValue = async () => {
    try {
      const value = await NativeModules.Counter.decrement();
      setCount(value);
      // Alert.alert('Error xD');
    } catch (error) {
      console.log('got error===>');

      console.log({error});
    }
  };

  return (
    <View
      style={{
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
      }}>
      <Text
        style={{
          fontSize: 18,
          marginBottom: 12,
        }}>
        Count : {count}
      </Text>
      <Button title="Increment" onPress={incrementValue} />
      <Button title="Decrement" onPress={decrementValue} />
    </View>
  );
};

export default SwiftNativeModule;

// 1. What is Bridging Header in ios?
// 2. What is the Foundation framework?
// 3
/*

why do we need to expose this to objective c? Does react native compiles the ios code to objective c and not swift?

ChatGPT
!

1 / 2

Yes, you are correct. React Native compiles the iOS code to Objective-C and not Swift.

React Native is a framework that allows you to build mobile apps using JavaScript and React. It uses a bridge to communicate between JavaScript and native code in both iOS and Android platforms. On the iOS side, the native code is written in Objective-C.

In order for your Swift code to be accessible and usable within React Native, it needs to be exposed to Objective-C. By marking a Swift class with @objc, you make it compatible with Objective-C's runtime and expose it as an Objective-C class. This allows the React Native bridge to interact with the Swift code.

While React Native primarily encourages writing UI components and business logic in JavaScript, there may be cases where you need to write certain platform-specific functionality or performance-critical code in Swift. In those situations, marking the Swift code with @objc allows you to bridge the gap between JavaScript and Swift within React Native.



*/

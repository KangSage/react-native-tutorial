/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * Generated with the TypeScript template
 * https://github.com/react-native-community/react-native-template-typescript
 *
 * @format
 */

import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  View,
  StatusBar,
  Button,
} from 'react-native';
import Toast from './ToastExample';

const App = () => {
  function _onPressButton() {
    Toast.show('Awesome', Toast.SHORT);
  }
  return (
    <>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView>
        <View style={styles.view}>
          <Button
            title={'Main Button'}
            onPress={_onPressButton}
            color="black"
          />
        </View>
      </SafeAreaView>
    </>
  );
};

const styles = StyleSheet.create({
  view: {
    height: '100%',
    width: '100%',
    flex: 0,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default App;

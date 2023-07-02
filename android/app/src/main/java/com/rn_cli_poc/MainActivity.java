package com.rn_cli_poc;

import com.facebook.react.ReactActivity;
import com.facebook.react.ReactActivityDelegate;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactActivityDelegate;

import android.util.Log;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

public class MainActivity extends ReactActivity {
  private static final String TAG = "MainActivity"; // Define TAG variable
  /**
   * Returns the name of the main component registered from JavaScript. This is used to schedule
   * rendering of the component.
   */
  @Override
  protected String getMainComponentName() {
    return "rn_cli_poc";
  }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(null);


        try {
            ApplicationInfo ai = getPackageManager().getApplicationInfo(
                    getPackageName(), PackageManager.GET_META_DATA);
            Bundle metaData = ai.metaData;
            Log.d(TAG, "META_DATA: " + metaData);
            if (metaData != null) {

                String nativeSomeRandomKey = metaData.getString("NATIVE_SOME_RANDOM_KEY");    
                Log.d(TAG, "nativeSomeRandomKey: " + nativeSomeRandomKey);
            
            }
        } catch (PackageManager.NameNotFoundException e) {
            // Handle exception
            Log.e(TAG, "Error getting metadata values: " + e.getMessage());
        }
    }


  /**
   * Returns the instance of the {@link ReactActivityDelegate}. Here we use a util class {@link
   * DefaultReactActivityDelegate} which allows you to easily enable Fabric and Concurrent React
   * (aka React 18) with two boolean flags.
   */
  @Override
  protected ReactActivityDelegate createReactActivityDelegate() {
    return new DefaultReactActivityDelegate(
        this,
        getMainComponentName(),
        // If you opted-in for the New Architecture, we enable the Fabric Renderer.
        DefaultNewArchitectureEntryPoint.getFabricEnabled());
  }
}

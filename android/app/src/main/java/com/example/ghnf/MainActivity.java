package com.example.ghnf;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity implements MethodChannel.MethodCallHandler {
    private final String CHANNEL = "com.example.ghn_f/barcode_scan";

    public static final String SCAN_RESULT = "SCAN_RESULT";
    public static final String ERROR_CODE = "ERROR_CODE";

    private MethodChannel.Result result = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
      super.onCreate(savedInstanceState);
      GeneratedPluginRegistrant.registerWith(this);

      new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
      if (methodCall.method.equals("scan")) {
        this.result = result;
        startScanScreen();
      } else {
        result.notImplemented();
      }
    }

    private void startScanScreen() {
      Intent intent = new Intent(this, BarcodeCaptureActivity.class);
      startActivityForResult(intent, BarcodeCaptureActivity.RC_HANDLE_CAMERA_PERM);
    }


    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
      if (requestCode == BarcodeCaptureActivity.RC_HANDLE_CAMERA_PERM) {
        if (resultCode == Activity.RESULT_OK) {
          String barcode = data.getStringExtra(SCAN_RESULT);
          this.result.success(barcode);
        } else {
          String errorCode = data.getStringExtra(ERROR_CODE);
          this.result.error(errorCode, null, null);
        }
        return;
      }
      super.onActivityResult(requestCode, resultCode, data);
    }

}

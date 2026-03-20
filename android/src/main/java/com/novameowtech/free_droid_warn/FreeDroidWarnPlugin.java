package com.novameowtech.free_droid_warn;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;

import androidx.core.content.ContextCompat;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

import android.app.Activity;

/** FreeDroidWarnPlugin */
public class FreeDroidWarnPlugin implements FlutterPlugin, MethodCallHandler, ActivityAware {

    private static final String CHANNEL = "free_droid_warn";
    private static final String PREF_KEY = "versionCodeWarn";

    private MethodChannel channel;
    private Activity activity;

    @Override
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), CHANNEL);
        channel.setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        if (call.method.equals("showWarningOnUpgrade")) {
            Integer buildVersion = call.argument("buildVersion");
            if (buildVersion == null) {
                result.error("INVALID_ARGUMENT", "buildVersion must not be null", null);
                return;
            }
            if (activity == null) {
                result.error("NO_ACTIVITY", "Plugin is not attached to an Activity", null);
                return;
            }
            showWarningOnUpgrade(activity, buildVersion);
            result.success(null);
        } else {
            result.notImplemented();
        }
    }

    private void showWarningOnUpgrade(Context context, int buildVersion) {
        SharedPreferences prefs = context.getSharedPreferences(
                "free_droid_warn", Context.MODE_PRIVATE);
        int storedVersion = prefs.getInt(PREF_KEY, 0);
        if (buildVersion > storedVersion) {
            AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);
            alertDialogBuilder.setMessage(R.string.free_droid_warn_dialog_warning);
            alertDialogBuilder.setNegativeButton(
                    context.getString(R.string.free_droid_warn_dialog_more_info),
                    (dialog, which) -> context.startActivity(
                            new Intent(Intent.ACTION_VIEW,
                                    Uri.parse("https://keepandroidopen.org"))));
            alertDialogBuilder.setPositiveButton(
                    context.getString(android.R.string.ok),
                    (dialog, which) -> {
                        SharedPreferences.Editor editor = prefs.edit();
                        editor.putInt(PREF_KEY, buildVersion);
                        editor.apply();
                    });
            alertDialogBuilder.setNeutralButton(
                    context.getString(R.string.free_droid_warn_solution),
                    (dialog, which) -> context.startActivity(
                            new Intent(Intent.ACTION_VIEW,
                                    Uri.parse("https://github.com/woheller69/FreeDroidWarn?tab=readme-ov-file#solutions"))));

            AlertDialog alertDialog = alertDialogBuilder.create();
            alertDialog.show();

            android.widget.Button neutralButton =
                    alertDialog.getButton(DialogInterface.BUTTON_NEUTRAL);
            if (neutralButton != null) {
                neutralButton.setTextColor(
                        ContextCompat.getColor(context, android.R.color.holo_red_dark));
            }
        }
    }

    @Override
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    @Override
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        activity = binding.getActivity();
    }

    @Override
    public void onDetachedFromActivityForConfigChanges() {
        activity = null;
    }

    @Override
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        activity = binding.getActivity();
    }

    @Override
    public void onDetachedFromActivity() {
        activity = null;
    }
}

package com.google.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.HashMap;

public final class ab
  implements j
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str1 = (String)paramHashMap.get("a");
    if (str1 != null)
      if (str1.equals("resize"))
      {
        String str2 = (String)paramHashMap.get("u");
        a.a(paramWebView, "(G_resizeIframe(" + str2 + "))");
      }
    Activity localActivity;
    do
    {
      return;
      if (str1.equals("state"))
      {
        z.a(paramd.e(), paramWebView, (String)paramHashMap.get("u"));
        return;
      }
      Intent localIntent = new Intent();
      localIntent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
      localActivity = paramd.e();
      if (localActivity == null)
      {
        com.google.ads.util.a.e("Activity was null when responding to +1 action");
        return;
      }
      if (aa.a(localIntent, localActivity.getApplicationContext()))
        break;
    }
    while (!aa.a(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.plus")), localActivity.getApplicationContext()));
    if ((!TextUtils.isEmpty((CharSequence)paramHashMap.get("d"))) && (!TextUtils.isEmpty((CharSequence)paramHashMap.get("o"))) && (!TextUtils.isEmpty((CharSequence)paramHashMap.get("c"))))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(localActivity);
      localBuilder.setMessage((CharSequence)paramHashMap.get("d")).setPositiveButton((CharSequence)paramHashMap.get("o"), new c(paramd)).setNegativeButton((CharSequence)paramHashMap.get("c"), new a());
      localBuilder.create().show();
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("u", "market://details?id=com.google.android.apps.plus");
    AdActivity.launchAdActivity(paramd, new e("intent", localHashMap));
    return;
    AdActivity.launchAdActivity(paramd, new e("plusone", paramHashMap));
  }

  private static final class a
    implements DialogInterface.OnClickListener
  {
    public final void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
    }
  }

  public static enum b
  {
    public String c;

    static
    {
      b[] arrayOfb = new b[2];
      arrayOfb[0] = a;
      arrayOfb[1] = b;
    }

    private b(String paramString)
    {
      this.c = paramString;
    }
  }

  private static final class c
    implements DialogInterface.OnClickListener
  {
    private d a;

    public c(d paramd)
    {
      this.a = paramd;
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("u", "market://details?id=com.google.android.apps.plus");
      AdActivity.launchAdActivity(this.a, new e("intent", localHashMap));
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.ab
 * JD-Core Version:    0.6.2
 */
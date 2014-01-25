package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.ads.util.AdUtil;
import java.util.HashMap;

public class AdActivity extends Activity
  implements View.OnClickListener
{
  public static final String BASE_URL_PARAM = "baseurl";
  public static final String HTML_PARAM = "html";
  public static final String INTENT_ACTION_PARAM = "i";
  public static final String ORIENTATION_PARAM = "o";
  public static final String TYPE_PARAM = "m";
  public static final String URL_PARAM = "u";
  private static final Object a = new Object();
  private static AdActivity b = null;
  private static d c = null;
  private static AdActivity d = null;
  private static AdActivity e = null;
  private h f;
  private boolean g;
  private long h;
  private RelativeLayout i;
  private AdActivity j = null;
  private boolean k;
  private g l;

  private static RelativeLayout.LayoutParams a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(paramInt3, paramInt4);
    localLayoutParams.setMargins(paramInt1, paramInt2, 0, 0);
    localLayoutParams.addRule(10);
    localLayoutParams.addRule(9);
    return localLayoutParams;
  }

  private void a()
  {
    if (!this.g)
    {
      if (this.f != null)
      {
        a.getOptionalJumpStatus(this.f);
        this.f.a(null);
      }
      if (this.l != null)
      {
        this.l.d();
        this.l = null;
      }
      if (this == b)
        b = null;
      e = this.j;
    }
    synchronized (a)
    {
      if ((c != null) && (this.f != null))
      {
        if (this.f == c.i())
          c.a();
        this.f.stopLoading();
      }
      if (this == d)
      {
        d = null;
        if (c != null)
        {
          c.r();
          c = null;
        }
      }
      else
      {
        this.g = true;
        com.google.ads.util.a.a("AdActivity is closing.");
        return;
      }
      com.google.ads.util.a.e("currentAdManager is null while trying to destroy AdActivity.");
    }
  }

  private void a(d paramd)
  {
    this.f = null;
    this.h = SystemClock.elapsedRealtime();
    this.k = true;
    synchronized (a)
    {
      if (b == null)
      {
        b = this;
        paramd.t();
      }
      return;
    }
  }

  private void a(h paramh, boolean paramBoolean, int paramInt)
  {
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    if (paramh.getParent() != null)
      a("Interstitial created with an AdWebView that has a parent.");
    do
    {
      return;
      if (paramh.b() != null)
      {
        a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
        return;
      }
      setRequestedOrientation(paramInt);
      paramh.a(this);
      ImageButton localImageButton = new ImageButton(getApplicationContext());
      localImageButton.setImageResource(17301527);
      localImageButton.setBackgroundColor(0);
      localImageButton.setOnClickListener(this);
      localImageButton.setPadding(0, 0, 0, 0);
      int m = (int)TypedValue.applyDimension(1, 32.0F, getResources().getDisplayMetrics());
      FrameLayout localFrameLayout = new FrameLayout(getApplicationContext());
      localFrameLayout.addView(localImageButton, m, m);
      this.i.addView(paramh, -1, -1);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(10);
      localLayoutParams.addRule(9);
      this.i.addView(localFrameLayout, localLayoutParams);
      this.i.setKeepScreenOn(true);
      setContentView(this.i);
    }
    while (!paramBoolean);
    a.a(paramh);
  }

  private void a(String paramString)
  {
    com.google.ads.util.a.b(paramString);
    finish();
  }

  private void a(String paramString, Throwable paramThrowable)
  {
    com.google.ads.util.a.a(paramString, paramThrowable);
    finish();
  }

  public static boolean isShowing()
  {
    synchronized (a)
    {
      if (d != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
  }

  public static void launchAdActivity(d paramd, e parame)
  {
    Activity localActivity;
    synchronized (a)
    {
      if (c == null)
        c = paramd;
      while (c == paramd)
      {
        localActivity = paramd.e();
        if (localActivity != null)
          break;
        com.google.ads.util.a.e("activity was null while launching an AdActivity.");
        return;
      }
      com.google.ads.util.a.b("Tried to launch a new AdActivity with a different AdManager.");
      return;
    }
    Intent localIntent = new Intent(localActivity.getApplicationContext(), AdActivity.class);
    localIntent.putExtra("com.google.ads.AdOpener", parame.a());
    try
    {
      com.google.ads.util.a.a("Launching AdActivity.");
      localActivity.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      com.google.ads.util.a.a(localActivityNotFoundException.getMessage(), localActivityNotFoundException);
    }
  }

  public g getAdVideoView()
  {
    return this.l;
  }

  public h getOpeningAdWebView()
  {
    if (this.j != null)
      return this.j.f;
    synchronized (a)
    {
      if (c == null)
      {
        com.google.ads.util.a.e("currentAdManager was null while trying to get the opening AdWebView.");
        return null;
      }
      h localh = c.i();
      if (localh != this.f)
        return localh;
      return null;
    }
  }

  public void moveAdVideoView(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.l != null)
    {
      this.l.setLayoutParams(a(paramInt1, paramInt2, paramInt3, paramInt4));
      this.l.requestLayout();
    }
  }

  public void newAdVideoView(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.l == null)
    {
      this.l = new g(this, this.f);
      this.i.addView(this.l, 0, a(paramInt1, paramInt2, paramInt3, paramInt4));
      synchronized (a)
      {
        if (c == null)
        {
          com.google.ads.util.a.e("currentAdManager was null while trying to get the opening AdWebView.");
          return;
        }
        c.j().a();
        return;
      }
    }
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    String str2;
    if ((getOpeningAdWebView() != null) && (paramIntent != null) && (paramIntent.getExtras() != null) && (paramIntent.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION") != null) && (paramIntent.getExtras().getString("com.google.circles.platform.result.extra.ACTION") != null))
    {
      String str1 = paramIntent.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION");
      str2 = paramIntent.getExtras().getString("com.google.circles.platform.result.extra.ACTION");
      if (str1.equals("yes"))
      {
        if (!str2.equals("insert"))
          break label110;
        z.a(getOpeningAdWebView(), true);
      }
    }
    while (true)
    {
      finish();
      return;
      label110: if (str2.equals("delete"))
        z.a(getOpeningAdWebView(), false);
    }
  }

  public void onClick(View paramView)
  {
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = false;
    d locald;
    Bundle localBundle;
    synchronized (a)
    {
      if (c != null)
      {
        locald = c;
        if (d == null)
        {
          d = this;
          locald.s();
        }
        if ((this.j == null) && (e != null))
          this.j = e;
        e = this;
        Ad localAd = locald.f();
        if ((((localAd instanceof AdView)) && (d == this)) || (((localAd instanceof InterstitialAd)) && (this.j == d)))
          locald.u();
        this.i = null;
        this.k = false;
        this.l = null;
        localBundle = getIntent().getBundleExtra("com.google.ads.AdOpener");
        if (localBundle == null)
          a("Could not get the Bundle used to create AdActivity.");
      }
      else
      {
        a("Could not get currentAdManager.");
        return;
      }
    }
    e locale = new e(localBundle);
    String str1 = locale.b();
    HashMap localHashMap = locale.c();
    if (str1.equals("plusone"))
    {
      Intent localIntent1 = new Intent();
      localIntent1.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
      localIntent1.addCategory("android.intent.category.LAUNCHER");
      localIntent1.putExtras(getIntent().getExtras());
      localIntent1.putExtra("com.google.circles.platform.intent.extra.ENTITY", (String)localHashMap.get("u"));
      localIntent1.putExtra("com.google.circles.platform.intent.extra.ENTITY_TYPE", ab.b.a.c);
      localIntent1.putExtra("com.google.circles.platform.intent.extra.ACTION", (String)localHashMap.get("a"));
      a(locald);
      try
      {
        com.google.ads.util.a.a("Launching Google+ intent from AdActivity.");
        startActivityForResult(localIntent1, 0);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException1)
      {
        a(localActivityNotFoundException1.getMessage(), localActivityNotFoundException1);
        return;
      }
    }
    if (str1.equals("intent"))
    {
      if (localHashMap == null)
      {
        a("Could not get the paramMap in launchIntent()");
        return;
      }
      String str6 = (String)localHashMap.get("u");
      if (str6 == null)
      {
        a("Could not get the URL parameter in launchIntent().");
        return;
      }
      String str7 = (String)localHashMap.get("i");
      String str8 = (String)localHashMap.get("m");
      Uri localUri = Uri.parse(str6);
      if (str7 == null);
      for (Intent localIntent2 = new Intent("android.intent.action.VIEW", localUri); ; localIntent2 = new Intent(str7, localUri))
      {
        if (str8 != null)
          localIntent2.setDataAndType(localUri, str8);
        a(locald);
        try
        {
          com.google.ads.util.a.a("Launching an intent from AdActivity.");
          startActivity(localIntent2);
          return;
        }
        catch (ActivityNotFoundException localActivityNotFoundException2)
        {
          a(localActivityNotFoundException2.getMessage(), localActivityNotFoundException2);
          return;
        }
      }
    }
    this.i = new RelativeLayout(getApplicationContext());
    this.i.setGravity(17);
    if (str1.equals("webapp"))
    {
      this.f = new h(getApplicationContext(), null);
      i locali = new i(locald, a.b, true, true);
      locali.c();
      this.f.setWebViewClient(locali);
      String str2 = (String)localHashMap.get("u");
      String str3 = (String)localHashMap.get("baseurl");
      String str4 = (String)localHashMap.get("html");
      String str5;
      int n;
      if (str2 != null)
      {
        this.f.loadUrl(str2);
        str5 = (String)localHashMap.get("o");
        if (!"p".equals(str5))
          break label710;
        n = AdUtil.b();
      }
      while (true)
      {
        a(this.f, false, n);
        return;
        if (str4 != null)
        {
          this.f.loadDataWithBaseURL(str3, str4, "text/html", "utf-8", null);
          break;
        }
        a("Could not get the URL or HTML parameter to show a web app.");
        return;
        label710: if ("l".equals(str5))
          n = AdUtil.a();
        else if (this == d)
          n = locald.m();
        else
          n = -1;
      }
    }
    if (str1.equals("interstitial"))
    {
      this.f = locald.i();
      int m = locald.m();
      a(this.f, true, m);
      return;
    }
    a("Unknown AdOpener, <action: " + str1 + ">");
  }

  public void onDestroy()
  {
    if (this.i != null)
      this.i.removeAllViews();
    if (isFinishing())
    {
      a();
      if (this.f != null)
      {
        this.f.stopLoading();
        this.f.destroy();
        this.f = null;
      }
    }
    super.onDestroy();
  }

  public void onPause()
  {
    if (isFinishing())
      a();
    super.onPause();
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if ((this.k) && (paramBoolean) && (SystemClock.elapsedRealtime() - this.h > 250L))
    {
      com.google.ads.util.a.d("Launcher AdActivity got focus and is closing.");
      finish();
    }
    super.onWindowFocusChanged(paramBoolean);
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.AdActivity
 * JD-Core Version:    0.6.2
 */
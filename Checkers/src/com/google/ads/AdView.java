package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;

public class AdView extends RelativeLayout
  implements Ad
{
  private d a;

  public AdView(Activity paramActivity, AdSize paramAdSize, String paramString)
  {
    super(paramActivity.getApplicationContext());
    a(paramActivity, paramAdSize, null);
    b(paramActivity, paramAdSize, null);
    a(paramActivity, paramAdSize, paramString);
  }

  public AdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }

  public AdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet);
  }

  private void a(Activity paramActivity, AdSize paramAdSize, String paramString)
  {
    this.a = new d(paramActivity, this, paramAdSize, paramString, false);
    setGravity(17);
    setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    int i = (int)TypedValue.applyDimension(1, paramAdSize.getWidth(), paramActivity.getResources().getDisplayMetrics());
    int j = (int)TypedValue.applyDimension(1, paramAdSize.getHeight(), paramActivity.getResources().getDisplayMetrics());
    addView(this.a.i(), i, j);
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return;
    String str1 = paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "adSize");
    if (str1 == null)
    {
      a(paramContext, "AdView missing required XML attribute \"adSize\".", AdSize.BANNER, paramAttributeSet);
      return;
    }
    AdSize localAdSize;
    if ("BANNER".equals(str1))
      localAdSize = AdSize.BANNER;
    String str2;
    String str3;
    while (true)
    {
      str2 = paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "testDevices");
      String str9;
      String str10;
      TypedValue localTypedValue2;
      if ((str2 != null) && (str2.startsWith("@string/")))
      {
        str9 = str2.substring("@string/".length());
        str10 = paramContext.getPackageName();
        localTypedValue2 = new TypedValue();
      }
      try
      {
        getResources().getValue(str10 + ":string/" + str9, localTypedValue2, true);
        if (localTypedValue2.string != null)
        {
          str2 = localTypedValue2.string.toString();
          str3 = paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "adUnitId");
          if (str3 != null)
            break label336;
          a(paramContext, "AdView missing required XML attribute \"adUnitId\".", localAdSize, paramAttributeSet);
          return;
          if ("IAB_MRECT".equals(str1))
          {
            localAdSize = AdSize.IAB_MRECT;
            continue;
          }
          if ("IAB_BANNER".equals(str1))
          {
            localAdSize = AdSize.IAB_BANNER;
            continue;
          }
          if ("IAB_LEADERBOARD".equals(str1))
          {
            localAdSize = AdSize.IAB_LEADERBOARD;
            continue;
          }
          a(paramContext, "Invalid \"adSize\" value in XML layout: " + str1 + ".", AdSize.BANNER, paramAttributeSet);
        }
      }
      catch (Resources.NotFoundException localNotFoundException2)
      {
        a(paramContext, "Could not find resource for \"testDevices\": \"" + str2 + "\".", localAdSize, paramAttributeSet);
        return;
      }
    }
    a(paramContext, "\"testDevices\" was not a string: \"" + str2 + "\".", localAdSize, paramAttributeSet);
    return;
    label336: if (isInEditMode())
    {
      a(paramContext, "Ads by Google", -1, localAdSize, paramAttributeSet);
      return;
    }
    String str7;
    String str8;
    TypedValue localTypedValue1;
    if (str3.startsWith("@string/"))
    {
      str7 = str3.substring("@string/".length());
      str8 = paramContext.getPackageName();
      localTypedValue1 = new TypedValue();
    }
    AdRequest localAdRequest;
    while (true)
    {
      String str6;
      try
      {
        getResources().getValue(str8 + ":string/" + str7, localTypedValue1, true);
        if (localTypedValue1.string != null)
        {
          str3 = localTypedValue1.string.toString();
          boolean bool = paramAttributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/lib/com.google.ads", "loadAdOnCreate", false);
          if (!(paramContext instanceof Activity))
            break label745;
          Activity localActivity = (Activity)paramContext;
          a(localActivity, localAdSize, paramAttributeSet);
          b(localActivity, localAdSize, paramAttributeSet);
          a(localActivity, localAdSize, str3);
          if (!bool)
            break;
          localAdRequest = new AdRequest();
          if (str2 == null)
            break label666;
          String[] arrayOfString2 = str2.split(",");
          int k = arrayOfString2.length;
          int m = 0;
          if (m >= k)
            break label666;
          str6 = arrayOfString2[m].trim();
          if (str6.length() != 0)
          {
            if (!str6.equals("TEST_EMULATOR"))
              break label656;
            localAdRequest.addTestDevice(AdRequest.TEST_EMULATOR);
          }
          m++;
          continue;
        }
      }
      catch (Resources.NotFoundException localNotFoundException1)
      {
        a(paramContext, "Could not find resource for \"adUnitId\": \"" + str3 + "\".", localAdSize, paramAttributeSet);
        return;
      }
      a(paramContext, "\"adUnitId\" was not a string: \"" + str3 + "\".", localAdSize, paramAttributeSet);
      return;
      label656: localAdRequest.addTestDevice(str6);
    }
    label666: String str4 = paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "keywords");
    if (str4 != null)
    {
      String[] arrayOfString1 = str4.split(",");
      int i = arrayOfString1.length;
      for (int j = 0; j < i; j++)
      {
        String str5 = arrayOfString1[j].trim();
        if (str5.length() != 0)
          localAdRequest.addKeyword(str5);
      }
    }
    loadAd(localAdRequest);
    return;
    label745: a.b("AdView was initialized with a Context that wasn't an Activity.");
  }

  private void a(Context paramContext, String paramString, int paramInt, AdSize paramAdSize, AttributeSet paramAttributeSet)
  {
    TextView localTextView;
    LinearLayout localLinearLayout1;
    if (getChildCount() == 0)
    {
      if (paramAttributeSet != null)
        break label172;
      localTextView = new TextView(paramContext);
      localTextView.setGravity(17);
      localTextView.setText(paramString);
      localTextView.setTextColor(paramInt);
      localTextView.setBackgroundColor(-16777216);
      if (paramAttributeSet != null)
        break label187;
      localLinearLayout1 = new LinearLayout(paramContext);
      label64: localLinearLayout1.setGravity(17);
      if (paramAttributeSet != null)
        break label202;
    }
    label172: label187: label202: for (LinearLayout localLinearLayout2 = new LinearLayout(paramContext); ; localLinearLayout2 = new LinearLayout(paramContext, paramAttributeSet))
    {
      localLinearLayout2.setGravity(17);
      localLinearLayout2.setBackgroundColor(paramInt);
      int i = (int)TypedValue.applyDimension(1, paramAdSize.getWidth(), paramContext.getResources().getDisplayMetrics());
      int j = (int)TypedValue.applyDimension(1, paramAdSize.getHeight(), paramContext.getResources().getDisplayMetrics());
      localLinearLayout1.addView(localTextView, i - 2, j - 2);
      localLinearLayout2.addView(localLinearLayout1);
      addView(localLinearLayout2, i, j);
      return;
      localTextView = new TextView(paramContext, paramAttributeSet);
      break;
      localLinearLayout1 = new LinearLayout(paramContext, paramAttributeSet);
      break label64;
    }
  }

  private void a(Context paramContext, String paramString, AdSize paramAdSize, AttributeSet paramAttributeSet)
  {
    a.b(paramString);
    a(paramContext, paramString, -65536, paramAdSize, paramAttributeSet);
    if (!isInEditMode())
    {
      if ((paramContext instanceof Activity))
        a((Activity)paramContext, paramAdSize, "");
    }
    else
      return;
    a.b("AdView was initialized with a Context that wasn't an Activity.");
  }

  private boolean a(Context paramContext, AdSize paramAdSize, AttributeSet paramAttributeSet)
  {
    if (!AdUtil.c(paramContext))
    {
      a(paramContext, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", paramAdSize, paramAttributeSet);
      return false;
    }
    return true;
  }

  private boolean b(Context paramContext, AdSize paramAdSize, AttributeSet paramAttributeSet)
  {
    if (!AdUtil.b(paramContext))
    {
      a(paramContext, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", paramAdSize, paramAttributeSet);
      return false;
    }
    return true;
  }

  public void destroy()
  {
    this.a.b();
  }

  public boolean isReady()
  {
    if (this.a == null)
      return false;
    return this.a.o();
  }

  public boolean isRefreshing()
  {
    return this.a.p();
  }

  public void loadAd(AdRequest paramAdRequest)
  {
    if (isRefreshing())
      this.a.c();
    this.a.a(paramAdRequest);
  }

  public void setAdListener(AdListener paramAdListener)
  {
    this.a.a(paramAdListener);
  }

  public void stopLoading()
  {
    this.a.z();
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.AdView
 * JD-Core Version:    0.6.2
 */
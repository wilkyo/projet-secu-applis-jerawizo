package com.google.ads;

import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.google.ads.util.AdUtil;
import java.util.HashMap;

public final class v
  implements j
{
  private static int a(HashMap<String, String> paramHashMap, String paramString, int paramInt, DisplayMetrics paramDisplayMetrics)
  {
    String str = (String)paramHashMap.get(paramString);
    if (str != null)
      try
      {
        float f = TypedValue.applyDimension(1, Integer.parseInt(str), paramDisplayMetrics);
        return (int)f;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        com.google.ads.util.a.a("Could not parse \"" + paramString + "\" in a video gmsg: " + str);
      }
    return paramInt;
  }

  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str1 = (String)paramHashMap.get("action");
    if (str1 == null)
    {
      com.google.ads.util.a.a("No \"action\" parameter in a video gmsg.");
      return;
    }
    h localh;
    AdActivity localAdActivity;
    if ((paramWebView instanceof h))
    {
      localh = (h)paramWebView;
      localAdActivity = localh.b();
      if (localAdActivity == null)
        com.google.ads.util.a.a("Could not get adActivity for a video gmsg.");
    }
    else
    {
      com.google.ads.util.a.a("Could not get adWebView for a video gmsg.");
      return;
    }
    boolean bool1 = str1.equals("new");
    boolean bool2 = str1.equals("position");
    if ((bool1) || (bool2))
    {
      DisplayMetrics localDisplayMetrics1 = AdUtil.a(localAdActivity);
      int i = a(paramHashMap, "x", 0, localDisplayMetrics1);
      int j = a(paramHashMap, "y", 0, localDisplayMetrics1);
      int k = a(paramHashMap, "w", -1, localDisplayMetrics1);
      int m = a(paramHashMap, "h", -1, localDisplayMetrics1);
      if ((bool1) && (localAdActivity.getAdVideoView() == null))
      {
        localAdActivity.newAdVideoView(i, j, k, m);
        return;
      }
      localAdActivity.moveAdVideoView(i, j, k, m);
      return;
    }
    g localg = localAdActivity.getAdVideoView();
    if (localg == null)
    {
      a.a(localh, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
      return;
    }
    if (str1.equals("click"))
    {
      DisplayMetrics localDisplayMetrics2 = AdUtil.a(localAdActivity);
      int n = a(paramHashMap, "x", 0, localDisplayMetrics2);
      int i1 = a(paramHashMap, "y", 0, localDisplayMetrics2);
      long l = SystemClock.uptimeMillis();
      localg.a(MotionEvent.obtain(l, l, 0, n, i1, 0));
      return;
    }
    if (str1.equals("controls"))
    {
      String str3 = (String)paramHashMap.get("enabled");
      if (str3 == null)
      {
        com.google.ads.util.a.a("No \"enabled\" parameter in a controls video gmsg.");
        return;
      }
      if (str3.equals("true"))
      {
        localg.a(true);
        return;
      }
      localg.a(false);
      return;
    }
    if (str1.equals("currentTime"))
    {
      String str2 = (String)paramHashMap.get("time");
      if (str2 == null)
      {
        com.google.ads.util.a.a("No \"time\" parameter in a currentTime video gmsg.");
        return;
      }
      try
      {
        localg.a((int)(1000.0F * Float.parseFloat(str2)));
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        com.google.ads.util.a.a("Could not parse \"time\" parameter: " + str2);
        return;
      }
    }
    if (str1.equals("hide"))
    {
      localg.setVisibility(4);
      return;
    }
    if (str1.equals("load"))
    {
      localg.a();
      return;
    }
    if (str1.equals("pause"))
    {
      localg.b();
      return;
    }
    if (str1.equals("play"))
    {
      localg.c();
      return;
    }
    if (str1.equals("show"))
    {
      localg.setVisibility(0);
      return;
    }
    if (str1.equals("src"))
    {
      localg.a((String)paramHashMap.get("src"));
      return;
    }
    com.google.ads.util.a.a("Unknown video action: " + str1);
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.v
 * JD-Core Version:    0.6.2
 */
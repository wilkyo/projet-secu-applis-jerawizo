package com.google.ads;

import android.webkit.WebView;
import java.util.HashMap;

public final class n
  implements j
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str = (String)paramHashMap.get("js");
    if (str == null)
      com.google.ads.util.a.b("Could not get the JS to evaluate.");
    AdActivity localAdActivity;
    if ((paramWebView instanceof h))
    {
      localAdActivity = ((h)paramWebView).b();
      if (localAdActivity == null)
        com.google.ads.util.a.b("Could not get the AdActivity from the AdWebView.");
    }
    else
    {
      com.google.ads.util.a.b("Trying to evaluate JS in a WebView that isn't an AdWebView");
      return;
    }
    h localh = localAdActivity.getOpeningAdWebView();
    if (localh == null)
    {
      com.google.ads.util.a.b("Could not get the opening WebView.");
      return;
    }
    a.a(localh, str);
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.n
 * JD-Core Version:    0.6.2
 */
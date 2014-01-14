package com.google.ads;

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class m
  implements j
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    if ((paramWebView instanceof h))
    {
      ((h)paramWebView).a();
      return;
    }
    a.b("Trying to close WebView that isn't an AdWebView");
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.m
 * JD-Core Version:    0.6.2
 */
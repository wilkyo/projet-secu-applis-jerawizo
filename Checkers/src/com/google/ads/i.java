package com.google.ads;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.util.AdUtil;
import java.util.HashMap;
import java.util.Map;

public final class i extends WebViewClient
{
  private d a;
  private Map<String, j> b;
  private boolean c;
  private boolean d;
  private boolean e;
  private boolean f;

  public i(d paramd, Map<String, j> paramMap, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramd;
    this.b = paramMap;
    this.c = paramBoolean1;
    this.d = paramBoolean2;
    this.e = false;
    this.f = false;
  }

  public final void a()
  {
    this.d = false;
  }

  public final void b()
  {
    this.e = true;
  }

  public final void c()
  {
    this.f = true;
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if (this.e)
    {
      c localc = this.a.g();
      if (localc == null)
        break label45;
      localc.b();
    }
    while (true)
    {
      this.e = false;
      if (this.f)
      {
        a.a(paramWebView);
        this.f = false;
      }
      return;
      label45: com.google.ads.util.a.a("adLoader was null while trying to setFinishedLoadingHtml().");
    }
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    com.google.ads.util.a.a("shouldOverrideUrlLoading(\"" + paramString + "\")");
    Uri localUri = Uri.parse(paramString);
    HashMap localHashMap1 = AdUtil.b(localUri);
    if (localHashMap1 == null)
    {
      com.google.ads.util.a.e("An error occurred while parsing the url parameters.");
      return true;
    }
    String str1 = (String)localHashMap1.get("ai");
    if (str1 != null)
      this.a.l().a(str1);
    if (a.a(localUri))
    {
      a.a(this.a, this.b, localUri, paramWebView);
      return true;
    }
    if (this.d)
    {
      if (AdUtil.a(localUri))
        return super.shouldOverrideUrlLoading(paramWebView, paramString);
      HashMap localHashMap3 = new HashMap();
      localHashMap3.put("u", paramString);
      AdActivity.launchAdActivity(this.a, new e("intent", localHashMap3));
      return true;
    }
    if (this.c)
    {
      if ((this.a.w()) && (AdUtil.a(localUri)));
      for (String str2 = "webapp"; ; str2 = "intent")
      {
        HashMap localHashMap2 = new HashMap();
        localHashMap2.put("u", localUri.toString());
        AdActivity.launchAdActivity(this.a, new e(str2, localHashMap2));
        return true;
      }
    }
    com.google.ads.util.a.e("URL is not a GMSG and can't handle URL: " + paramString);
    return true;
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.i
 * JD-Core Version:    0.6.2
 */
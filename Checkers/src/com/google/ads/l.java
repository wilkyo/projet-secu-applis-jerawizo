package com.google.ads;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.Locale;

public final class l
  implements j
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str1 = (String)paramHashMap.get("u");
    if (str1 == null)
    {
      a.e("Could not get URL from click gmsg.");
      return;
    }
    f localf = paramd.l();
    String[] arrayOfString;
    if (localf != null)
    {
      Uri localUri = Uri.parse(str1);
      String str2 = localUri.getHost();
      if ((str2 != null) && (str2.toLowerCase(Locale.US).endsWith(".admob.com")))
      {
        String str3 = localUri.getPath();
        if (str3 == null)
          break label161;
        arrayOfString = str3.split("/");
        if (arrayOfString.length < 4)
          break label161;
      }
    }
    label161: for (String str4 = arrayOfString[2] + "/" + arrayOfString[3]; ; str4 = null)
    {
      localf.b(str4);
      new Thread(new w(str1, paramWebView.getContext().getApplicationContext())).start();
      return;
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.l
 * JD-Core Version:    0.6.2
 */
package com.google.ads;

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class t
  implements j
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str = (String)paramHashMap.get("a");
    if (str == null)
    {
      a.a("Could not get the action parameter for open GMSG.");
      return;
    }
    if (str.equals("webapp"))
    {
      AdActivity.launchAdActivity(paramd, new e("webapp", paramHashMap));
      return;
    }
    AdActivity.launchAdActivity(paramd, new e("intent", paramHashMap));
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.t
 * JD-Core Version:    0.6.2
 */
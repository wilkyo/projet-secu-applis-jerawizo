package com.google.ads;

import android.app.Activity;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.StringTokenizer;

public final class b
  implements Runnable
{
  private c a;
  private d b;
  private volatile boolean c;
  private boolean d;
  private String e;

  b(c paramc, d paramd)
  {
    this.a = paramc;
    this.b = paramd;
  }

  private void a(HttpURLConnection paramHttpURLConnection)
  {
    String str1 = paramHttpURLConnection.getHeaderField("X-Afma-Tracking-Urls");
    if (str1 != null)
    {
      StringTokenizer localStringTokenizer = new StringTokenizer(str1);
      while (localStringTokenizer.hasMoreTokens())
      {
        String str5 = localStringTokenizer.nextToken();
        this.b.a(str5);
      }
    }
    b(paramHttpURLConnection);
    String str2 = paramHttpURLConnection.getHeaderField("X-Afma-Refresh-Rate");
    if (str2 != null);
    try
    {
      float f2 = Float.parseFloat(str2);
      if (f2 > 0.0F)
      {
        this.b.a(f2);
        if (!this.b.p())
          this.b.d();
        str3 = paramHttpURLConnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if (str3 == null);
      }
    }
    catch (NumberFormatException localNumberFormatException2)
    {
      try
      {
        float f1 = Float.parseFloat(str3);
        this.b.a(()(f1 * 1000.0F));
        str4 = paramHttpURLConnection.getHeaderField("X-Afma-Orientation");
        if (str4 != null)
        {
          if (str4.equals("portrait"))
            this.a.a(AdUtil.b());
        }
        else if (TextUtils.isEmpty(paramHttpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life")));
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        try
        {
          String str4;
          do
            while (true)
            {
              String str3;
              long l = Long.parseLong(paramHttpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life"));
              this.b.b(l);
              return;
              if (this.b.p())
              {
                this.b.c();
                continue;
                localNumberFormatException3 = localNumberFormatException3;
                a.b("Could not get refresh value: " + str2, localNumberFormatException3);
                continue;
                localNumberFormatException2 = localNumberFormatException2;
                a.b("Could not get timeout value: " + str3, localNumberFormatException2);
              }
            }
          while (!str4.equals("landscape"));
          this.a.a(AdUtil.a());
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          a.e("Got bad value of Doritos cookie cache life from header: " + paramHttpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life") + ". Using default value instead.");
        }
      }
    }
  }

  private void b(HttpURLConnection paramHttpURLConnection)
  {
    String str1 = paramHttpURLConnection.getHeaderField("X-Afma-Click-Tracking-Urls");
    if (str1 != null)
    {
      StringTokenizer localStringTokenizer = new StringTokenizer(str1);
      while (localStringTokenizer.hasMoreTokens())
      {
        String str2 = localStringTokenizer.nextToken();
        this.a.a(str2);
      }
    }
  }

  final void a()
  {
    this.c = true;
  }

  final void a(String paramString)
  {
    this.e = paramString;
    this.c = false;
    new Thread(this).start();
  }

  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public final void run()
  {
    HttpURLConnection localHttpURLConnection;
    int i;
    try
    {
      if (!this.c)
        localHttpURLConnection = (HttpURLConnection)new URL(this.e).openConnection();
    }
    catch (MalformedURLException localMalformedURLException)
    {
      try
      {
        Activity localActivity = this.b.e();
        if (localActivity == null)
        {
          a.c("activity was null in AdHtmlLoader.");
          this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
          return;
        }
        SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(localActivity);
        if ((this.d) && (!TextUtils.isEmpty(localSharedPreferences.getString("drt", ""))))
        {
          if (AdUtil.a != 8)
            break label238;
          localHttpURLConnection.addRequestProperty("X-Afma-drt-Cookie", localSharedPreferences.getString("drt", ""));
        }
        while (true)
        {
          AdUtil.a(localHttpURLConnection, localActivity.getApplicationContext());
          localHttpURLConnection.setInstanceFollowRedirects(false);
          localHttpURLConnection.connect();
          i = localHttpURLConnection.getResponseCode();
          if ((300 > i) || (i >= 400))
            break label326;
          str3 = localHttpURLConnection.getHeaderField("Location");
          if (str3 != null)
            break;
          a.c("Could not get redirect location from a " + i + " redirect.");
          this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
          return;
          localMalformedURLException = localMalformedURLException;
          a.a("Received malformed ad url from javascript.", localMalformedURLException);
          this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
          return;
          localHttpURLConnection.addRequestProperty("Cookie", localSharedPreferences.getString("drt", ""));
        }
      }
      finally
      {
        localHttpURLConnection.disconnect();
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        String str3;
        a.b("IOException connecting to ad url.", localIOException);
        this.a.a(AdRequest.ErrorCode.NETWORK_ERROR);
        return;
        a(localHttpURLConnection);
        this.e = str3;
        localHttpURLConnection.disconnect();
      }
    }
    catch (Exception localException)
    {
      label238: a.a("An unknown error occurred in AdHtmlLoader.", localException);
      this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
      return;
    }
    label326: if (i == 200)
    {
      a(localHttpURLConnection);
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream()), 4096);
      StringBuilder localStringBuilder = new StringBuilder();
      while (!this.c)
      {
        String str2 = localBufferedReader.readLine();
        if (str2 == null)
          break;
        localStringBuilder.append(str2);
        localStringBuilder.append("\n");
      }
      String str1 = localStringBuilder.toString();
      a.a("Response content is: " + str1);
      if ((str1 == null) || (str1.trim().length() <= 0))
      {
        a.a("Response message is null or zero length: " + str1);
        this.a.a(AdRequest.ErrorCode.NO_FILL);
        localHttpURLConnection.disconnect();
        return;
      }
      this.a.a(str1, this.e);
      localHttpURLConnection.disconnect();
      return;
    }
    if (i == 400)
    {
      a.c("Bad request");
      this.a.a(AdRequest.ErrorCode.INVALID_REQUEST);
      localHttpURLConnection.disconnect();
      return;
    }
    a.c("Invalid response code: " + i);
    this.a.a(AdRequest.ErrorCode.INTERNAL_ERROR);
    localHttpURLConnection.disconnect();
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.b
 * JD-Core Version:    0.6.2
 */
package com.google.ads.util;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLDecoder;
import java.nio.charset.UnsupportedCharsetException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class AdUtil
{
  public static final int a;
  private static Boolean b;
  private static String c;
  private static String d;
  private static String e;
  private static AudioManager f;
  private static boolean g;
  private static boolean h;
  private static String i;

  static
  {
    try
    {
      int k = Integer.parseInt(Build.VERSION.SDK);
      j = k;
      a = j;
      b = null;
      c = null;
      e = null;
      g = true;
      h = false;
      i = null;
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
      {
        a.e("The Android SDK version couldn't be parsed to an int: " + Build.VERSION.SDK);
        a.e("Defaulting to Android SDK version 3.");
        int j = 3;
      }
    }
  }

  public static int a()
  {
    if (a >= 9)
      return 6;
    return 0;
  }

  public static int a(Context paramContext, DisplayMetrics paramDisplayMetrics)
  {
    if (a >= 4)
      return c.a(paramContext, paramDisplayMetrics);
    return paramDisplayMetrics.heightPixels;
  }

  public static DisplayMetrics a(Activity paramActivity)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }

  public static String a(Context paramContext)
  {
    if (c == null)
    {
      String str1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      if ((str1 == null) || (c()));
      for (String str2 = a("emulator"); str2 == null; str2 = a(str1))
        return null;
      c = str2.toUpperCase(Locale.US);
    }
    return c;
  }

  public static String a(Location paramLocation)
  {
    if (paramLocation == null)
      return null;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Long.valueOf(1000L * paramLocation.getTime());
    arrayOfObject[1] = Long.valueOf(()(10000000.0D * paramLocation.getLatitude()));
    arrayOfObject[2] = Long.valueOf(()(10000000.0D * paramLocation.getLongitude()));
    arrayOfObject[3] = Long.valueOf(()(1000.0F * paramLocation.getAccuracy()));
    String str = b(String.format("role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d", arrayOfObject));
    return "e1+" + str;
  }

  public static String a(String paramString)
  {
    Object localObject = null;
    if (paramString != null)
    {
      int j = paramString.length();
      localObject = null;
      if (j <= 0);
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes(), 0, paramString.length());
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = new BigInteger(1, localMessageDigest.digest());
      String str = String.format("%032X", arrayOfObject);
      localObject = str;
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    return paramString.substring(0, 32);
  }

  public static String a(Map<String, Object> paramMap)
  {
    try
    {
      String str = b(paramMap).toString();
      return str;
    }
    catch (JSONException localJSONException)
    {
      a.b("JsonException in serialization: ", localJSONException);
    }
    return null;
  }

  private static JSONArray a(Set<Object> paramSet)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    if ((paramSet == null) || (paramSet.isEmpty()));
    while (true)
    {
      return localJSONArray;
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        if (((localObject instanceof String)) || ((localObject instanceof Integer)) || ((localObject instanceof Double)) || ((localObject instanceof Long)) || ((localObject instanceof Float)))
          localJSONArray.put(localObject);
        else if ((localObject instanceof Map))
          try
          {
            localJSONArray.put(b((Map)localObject));
          }
          catch (ClassCastException localClassCastException2)
          {
            a.b("Unknown map type in json serialization: ", localClassCastException2);
          }
        else if ((localObject instanceof Set))
          try
          {
            localJSONArray.put(a((Set)localObject));
          }
          catch (ClassCastException localClassCastException1)
          {
            a.b("Unknown map type in json serialization: ", localClassCastException1);
          }
        else
          a.e("Unknown value in json serialization: " + localObject);
      }
    }
  }

  public static void a(WebView paramWebView)
  {
    String str = i(paramWebView.getContext().getApplicationContext());
    paramWebView.getSettings().setUserAgentString(str);
  }

  public static void a(HttpURLConnection paramHttpURLConnection, Context paramContext)
  {
    paramHttpURLConnection.setRequestProperty("User-Agent", i(paramContext));
  }

  public static void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }

  private static boolean a(int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 & paramInt2) == 0)
    {
      a.b("The android:configChanges value of the com.google.ads.AdActivity must include " + paramString + ".");
      return false;
    }
    return true;
  }

  public static boolean a(Uri paramUri)
  {
    String str = paramUri.getScheme();
    return ("http".equalsIgnoreCase(str)) || ("https".equalsIgnoreCase(str));
  }

  public static int b()
  {
    if (a >= 9)
      return 7;
    return 1;
  }

  public static int b(Context paramContext, DisplayMetrics paramDisplayMetrics)
  {
    if (a >= 4)
      return c.b(paramContext, paramDisplayMetrics);
    return paramDisplayMetrics.widthPixels;
  }

  private static String b(String paramString)
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(1, new SecretKeySpec(new byte[] { 10, 55, -112, -47, -6, 7, 11, 75, -7, -121, 121, 69, 80, -61, 15, 5 }, "AES"));
      byte[] arrayOfByte1 = localCipher.getIV();
      byte[] arrayOfByte2 = localCipher.doFinal(paramString.getBytes());
      byte[] arrayOfByte3 = new byte[arrayOfByte1.length + arrayOfByte2.length];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, arrayOfByte1.length);
      System.arraycopy(arrayOfByte2, 0, arrayOfByte3, arrayOfByte1.length, arrayOfByte2.length);
      String str = b.a(arrayOfByte3);
      return str;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
    }
    return null;
  }

  public static HashMap<String, String> b(Uri paramUri)
  {
    int j = 0;
    Object localObject;
    if (paramUri == null)
      localObject = null;
    while (true)
    {
      return localObject;
      localObject = new HashMap();
      String str1 = paramUri.getEncodedQuery();
      if (str1 != null)
        try
        {
          String[] arrayOfString = str1.split("&");
          int k = arrayOfString.length;
          while (j < k)
          {
            String str2 = arrayOfString[j];
            int m = str2.indexOf('=');
            if (m == -1)
              return null;
            String str3 = str2.substring(0, m);
            String str4 = str2.substring(m + 1);
            ((HashMap)localObject).put(URLDecoder.decode(str3, "utf-8"), URLDecoder.decode(str4, "utf-8"));
            j++;
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          a.a(localUnsupportedEncodingException);
          return null;
        }
        catch (UnsupportedCharsetException localUnsupportedCharsetException)
        {
          a.a(localUnsupportedCharsetException);
          return null;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          a.a(localIllegalArgumentException);
        }
    }
    return null;
  }

  private static JSONObject b(Map<String, Object> paramMap)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if ((paramMap == null) || (paramMap.isEmpty()))
      return localJSONObject;
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramMap.get(str);
      if (((localObject instanceof String)) || ((localObject instanceof Integer)) || ((localObject instanceof Double)) || ((localObject instanceof Long)) || ((localObject instanceof Float)))
        localJSONObject.put(str, localObject);
      else if ((localObject instanceof Map))
        try
        {
          localJSONObject.put(str, b((Map)localObject));
        }
        catch (ClassCastException localClassCastException2)
        {
          a.b("Unknown map type in json serialization: ", localClassCastException2);
        }
      else if ((localObject instanceof Set))
        try
        {
          localJSONObject.put(str, a((Set)localObject));
        }
        catch (ClassCastException localClassCastException1)
        {
          a.b("Unknown map type in json serialization: ", localClassCastException1);
        }
      else
        a.e("Unknown value in json serialization: " + localObject);
    }
    return localJSONObject;
  }

  public static boolean b(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str = paramContext.getPackageName();
    if (localPackageManager.checkPermission("android.permission.INTERNET", str) == -1)
    {
      a.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
      return false;
    }
    if (localPackageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", str) == -1)
    {
      a.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
      return false;
    }
    return true;
  }

  public static boolean c()
  {
    return ("unknown".equals(Build.BOARD)) && ("generic".equals(Build.DEVICE)) && ("generic".equals(Build.BRAND));
  }

  public static boolean c(Context paramContext)
  {
    if (b != null)
      return b.booleanValue();
    ResolveInfo localResolveInfo = paramContext.getPackageManager().resolveActivity(new Intent(paramContext, AdActivity.class), 65536);
    b = Boolean.valueOf(true);
    if ((localResolveInfo == null) || (localResolveInfo.activityInfo == null))
    {
      a.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
      b = Boolean.valueOf(false);
    }
    while (true)
    {
      return b.booleanValue();
      if (!a(localResolveInfo.activityInfo.configChanges, 16, "keyboard"))
        b = Boolean.valueOf(false);
      if (!a(localResolveInfo.activityInfo.configChanges, 32, "keyboardHidden"))
        b = Boolean.valueOf(false);
      if (!a(localResolveInfo.activityInfo.configChanges, 128, "orientation"))
        b = Boolean.valueOf(false);
      if (!a(localResolveInfo.activityInfo.configChanges, 256, "screenLayout"))
        b = Boolean.valueOf(false);
      if (!a(localResolveInfo.activityInfo.configChanges, 512, "uiMode"))
        b = Boolean.valueOf(false);
      if (!a(localResolveInfo.activityInfo.configChanges, 1024, "screenSize"))
        b = Boolean.valueOf(false);
      if (!a(localResolveInfo.activityInfo.configChanges, 2048, "smallestScreenSize"))
        b = Boolean.valueOf(false);
    }
  }

  public static String d(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return null;
    switch (localNetworkInfo.getType())
    {
    default:
      return "unknown";
    case 0:
      return "ed";
    case 1:
    }
    return "wi";
  }

  public static boolean d()
  {
    return g;
  }

  public static String e(Context paramContext)
  {
    if (d == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      PackageManager localPackageManager = paramContext.getPackageManager();
      List localList1 = localPackageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 65536);
      if ((localList1 == null) || (localList1.size() == 0))
        localStringBuilder.append("m");
      List localList2 = localPackageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), 65536);
      if ((localList2 == null) || (localList2.size() == 0))
      {
        if (localStringBuilder.length() > 0)
          localStringBuilder.append(",");
        localStringBuilder.append("a");
      }
      List localList3 = localPackageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("tel://6509313940")), 65536);
      if ((localList3 == null) || (localList3.size() == 0))
      {
        if (localStringBuilder.length() > 0)
          localStringBuilder.append(",");
        localStringBuilder.append("t");
      }
      d = localStringBuilder.toString();
    }
    return d;
  }

  public static String f(Context paramContext)
  {
    if (e != null)
      return e;
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      ResolveInfo localResolveInfo = localPackageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ads")), 0);
      if (localResolveInfo == null)
        return null;
      ActivityInfo localActivityInfo = localResolveInfo.activityInfo;
      if (localActivityInfo == null)
        return null;
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(localActivityInfo.packageName, 0);
      if (localPackageInfo == null)
        return null;
      String str = localPackageInfo.versionCode + "." + localActivityInfo.packageName;
      e = str;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return null;
  }

  public static a g(Context paramContext)
  {
    if (f == null)
      f = (AudioManager)paramContext.getSystemService("audio");
    int j = f.getMode();
    if (c())
      return a.e;
    if ((f.isMusicActive()) || (f.isSpeakerphoneOn()) || (j == 2) || (j == 1))
      return a.d;
    int k = f.getRingerMode();
    if ((k == 0) || (k == 1))
      return a.d;
    return a.b;
  }

  public static void h(Context paramContext)
  {
    if (h)
      return;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.USER_PRESENT");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.registerReceiver(new UserActivityReceiver(), localIntentFilter);
    h = true;
  }

  private static String i(Context paramContext)
  {
    String str1;
    String str2;
    String str3;
    String str4;
    String str5;
    if (i == null)
    {
      str1 = new WebView(paramContext).getSettings().getUserAgentString();
      if ((str1 == null) || (str1.length() == 0) || (str1.equals("Java0")))
      {
        str2 = System.getProperty("os.name", "Linux");
        str3 = "Android " + Build.VERSION.RELEASE;
        Locale localLocale = Locale.getDefault();
        str4 = localLocale.getLanguage().toLowerCase(Locale.US);
        if (str4.length() == 0)
          str4 = "en";
        str5 = localLocale.getCountry().toLowerCase(Locale.US);
        if (str5.length() <= 0)
          break label295;
      }
    }
    label295: for (String str6 = str4 + "-" + str5; ; str6 = str4)
    {
      String str7 = Build.MODEL + " Build/" + Build.ID;
      str1 = "Mozilla/5.0 (" + str2 + "; U; " + str3 + "; " + str6 + "; " + str7 + ") AppleWebKit/0.0 (KHTML, like " + "Gecko) Version/0.0 Mobile Safari/0.0";
      i = str1 + " (Mobile; " + "afma-sdk-a-v" + "4.3.1" + ")";
      return i;
    }
  }

  public static class UserActivityReceiver extends BroadcastReceiver
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent.getAction().equals("android.intent.action.USER_PRESENT"))
        AdUtil.a(true);
      while (!paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
        return;
      AdUtil.a(false);
    }
  }

  public static enum a
  {
    static
    {
      a[] arrayOfa = new a[6];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
      arrayOfa[2] = c;
      arrayOfa[3] = d;
      arrayOfa[4] = e;
      arrayOfa[5] = f;
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.util.AdUtil
 * JD-Core Version:    0.6.2
 */
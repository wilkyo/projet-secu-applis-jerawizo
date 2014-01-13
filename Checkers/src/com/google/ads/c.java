package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.google.ads.searchads.SearchAdRequest;
import com.google.ads.util.AdUtil;
import com.google.ads.util.AdUtil.a;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;

public final class c
  implements Runnable
{
  private String a;
  private String b;
  private b c;
  private d d;
  private AdRequest e;
  private WebView f;
  private String g;
  private LinkedList<String> h;
  private volatile boolean i;
  private AdRequest.ErrorCode j;
  private boolean k;
  private int l;
  private Thread m;
  private boolean n;

  public c(d paramd)
  {
    this.d = paramd;
    this.g = null;
    this.a = null;
    this.b = null;
    this.h = new LinkedList();
    this.j = null;
    this.k = false;
    this.l = -1;
    Activity localActivity = paramd.e();
    if (localActivity != null)
    {
      this.f = new h(localActivity, null);
      this.f.setWebViewClient(new i(paramd, a.a, false, false));
      this.f.setVisibility(8);
      this.f.setWillNotDraw(true);
      this.c = new b(this, paramd);
      return;
    }
    this.f = null;
    this.c = null;
    com.google.ads.util.a.e("activity was null while trying to create an AdLoader.");
  }

  private String a(AdRequest paramAdRequest, Activity paramActivity)
    throws c.b, c.d
  {
    Context localContext = paramActivity.getApplicationContext();
    Map localMap = paramAdRequest.getRequestMap(localContext);
    f localf = this.d.l();
    long l1 = localf.h();
    if (l1 > 0L)
      localMap.put("prl", Long.valueOf(l1));
    String str1 = localf.g();
    if (str1 != null)
      localMap.put("ppcl", str1);
    String str2 = localf.f();
    if (str2 != null)
      localMap.put("pcl", str2);
    long l2 = localf.e();
    if (l2 > 0L)
      localMap.put("pcc", Long.valueOf(l2));
    localMap.put("preqs", Long.valueOf(f.i()));
    String str3 = localf.j();
    if (str3 != null)
      localMap.put("pai", str3);
    if (localf.k())
      localMap.put("aoi_timeout", "true");
    if (localf.m())
      localMap.put("aoi_nofill", "true");
    String str4 = localf.p();
    if (str4 != null)
      localMap.put("pit", str4);
    localf.a();
    localf.d();
    if ((this.d.f() instanceof InterstitialAd))
      localMap.put("format", "interstitial_mb");
    String str8;
    while (true)
    {
      localMap.put("slotname", this.d.h());
      localMap.put("js", "afma-sdk-a-v4.3.1");
      String str6 = localContext.getPackageName();
      try
      {
        PackageInfo localPackageInfo = localContext.getPackageManager().getPackageInfo(str6, 0);
        int i1 = localPackageInfo.versionCode;
        String str7 = AdUtil.f(localContext);
        if (!TextUtils.isEmpty(str7))
          localMap.put("mv", str7);
        localMap.put("msid", localContext.getPackageName());
        localMap.put("app_name", i1 + ".android." + localContext.getPackageName());
        localMap.put("isu", AdUtil.a(localContext));
        str8 = AdUtil.d(localContext);
        if (str8 == null)
        {
          throw new d("NETWORK_ERROR");
          AdSize localAdSize = this.d.k();
          String str5 = localAdSize.toString();
          if (str5 != null)
          {
            localMap.put("format", str5);
            continue;
          }
          HashMap localHashMap = new HashMap();
          localHashMap.put("w", Integer.valueOf(localAdSize.getWidth()));
          localHashMap.put("h", Integer.valueOf(localAdSize.getHeight()));
          localMap.put("ad_frame", localHashMap);
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        throw new b("NameNotFoundException");
      }
    }
    localMap.put("net", str8);
    String str9 = AdUtil.e(localContext);
    if ((str9 != null) && (str9.length() != 0))
      localMap.put("cap", str9);
    localMap.put("u_audio", Integer.valueOf(AdUtil.g(localContext).ordinal()));
    DisplayMetrics localDisplayMetrics = AdUtil.a(paramActivity);
    localMap.put("u_sd", Float.valueOf(localDisplayMetrics.density));
    localMap.put("u_h", Integer.valueOf(AdUtil.a(localContext, localDisplayMetrics)));
    localMap.put("u_w", Integer.valueOf(AdUtil.b(localContext, localDisplayMetrics)));
    localMap.put("hl", Locale.getDefault().getLanguage());
    if (AdUtil.c())
      localMap.put("simulator", Integer.valueOf(1));
    String str10 = AdUtil.a(localMap);
    StringBuilder localStringBuilder = new StringBuilder();
    if ((this.e instanceof SearchAdRequest));
    for (String str11 = "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>"; ; str11 = "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>")
    {
      String str12 = str11 + "AFMA_buildAdURL" + "(" + str10 + ");" + "</script></head><body></body></html>";
      com.google.ads.util.a.c("adRequestUrlHtml: " + str12);
      return str12;
    }
  }

  private void a(AdRequest.ErrorCode paramErrorCode, boolean paramBoolean)
  {
    this.c.a();
    this.d.a(new a(this.d, this.f, this.c, paramErrorCode, paramBoolean));
  }

  final void a()
  {
    com.google.ads.util.a.a("AdLoader cancelled.");
    this.f.stopLoading();
    this.f.destroy();
    if (this.m != null)
    {
      this.m.interrupt();
      this.m = null;
    }
    this.c.a();
    this.i = true;
  }

  public final void a(int paramInt)
  {
    try
    {
      this.l = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(AdRequest.ErrorCode paramErrorCode)
  {
    try
    {
      this.j = paramErrorCode;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(AdRequest paramAdRequest)
  {
    this.e = paramAdRequest;
    this.i = false;
    this.m = new Thread(this);
    this.m.start();
  }

  final void a(String paramString)
  {
    try
    {
      this.h.add(paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(String paramString1, String paramString2)
  {
    try
    {
      this.a = paramString2;
      this.b = paramString1;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }

  final void b()
  {
    try
    {
      this.k = true;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b(String paramString)
  {
    try
    {
      this.g = paramString;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 67	com/google/ads/c:f	Landroid/webkit/WebView;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 98	com/google/ads/c:c	Lcom/google/ads/b;
    //   13: ifnonnull +20 -> 33
    //   16: ldc_w 433
    //   19: invokestatic 105	com/google/ads/util/a:e	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: getstatic 438	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   26: iconst_0
    //   27: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: aload_0
    //   34: getfield 38	com/google/ads/c:d	Lcom/google/ads/d;
    //   37: invokevirtual 60	com/google/ads/d:e	()Landroid/app/Activity;
    //   40: astore_3
    //   41: aload_3
    //   42: ifnonnull +25 -> 67
    //   45: ldc_w 442
    //   48: invokestatic 105	com/google/ads/util/a:e	(Ljava/lang/String;)V
    //   51: aload_0
    //   52: getstatic 438	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   55: iconst_0
    //   56: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   59: aload_0
    //   60: monitorexit
    //   61: return
    //   62: astore_2
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_2
    //   66: athrow
    //   67: aload_0
    //   68: getfield 38	com/google/ads/c:d	Lcom/google/ads/d;
    //   71: invokevirtual 444	com/google/ads/d:n	()J
    //   74: lstore 4
    //   76: invokestatic 449	android/os/SystemClock:elapsedRealtime	()J
    //   79: lstore 6
    //   81: aload_0
    //   82: getfield 362	com/google/ads/c:e	Lcom/google/ads/AdRequest;
    //   85: aload_3
    //   86: invokevirtual 124	com/google/ads/AdRequest:getRequestMap	(Landroid/content/Context;)Ljava/util/Map;
    //   89: ldc_w 451
    //   92: invokeinterface 455 2 0
    //   97: astore 8
    //   99: aload 8
    //   101: instanceof 142
    //   104: ifeq +75 -> 179
    //   107: aload 8
    //   109: checkcast 142	java/util/Map
    //   112: astore 31
    //   114: aload 31
    //   116: ldc_w 457
    //   119: invokeinterface 455 2 0
    //   124: astore 32
    //   126: aload 32
    //   128: instanceof 302
    //   131: ifeq +12 -> 143
    //   134: aload_0
    //   135: aload 32
    //   137: checkcast 302	java/lang/String
    //   140: putfield 42	com/google/ads/c:a	Ljava/lang/String;
    //   143: aload 31
    //   145: ldc_w 459
    //   148: invokeinterface 455 2 0
    //   153: astore 33
    //   155: aload 33
    //   157: instanceof 302
    //   160: ifeq +19 -> 179
    //   163: aload 33
    //   165: ldc_w 460
    //   168: invokevirtual 463	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   171: ifeq +94 -> 265
    //   174: aload_0
    //   175: iconst_1
    //   176: putfield 55	com/google/ads/c:l	I
    //   179: aload_0
    //   180: getfield 42	com/google/ads/c:a	Ljava/lang/String;
    //   183: astore 9
    //   185: aload 9
    //   187: ifnonnull +446 -> 633
    //   190: aload_0
    //   191: aload_0
    //   192: getfield 362	com/google/ads/c:e	Lcom/google/ads/AdRequest;
    //   195: aload_3
    //   196: invokespecial 465	com/google/ads/c:a	(Lcom/google/ads/AdRequest;Landroid/app/Activity;)Ljava/lang/String;
    //   199: astore 18
    //   201: aload_0
    //   202: getfield 38	com/google/ads/c:d	Lcom/google/ads/d;
    //   205: new 467	com/google/ads/c$c
    //   208: dup
    //   209: aload_0
    //   210: aload_0
    //   211: getfield 67	com/google/ads/c:f	Landroid/webkit/WebView;
    //   214: aconst_null
    //   215: aload 18
    //   217: invokespecial 470	com/google/ads/c$c:<init>	(Lcom/google/ads/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    //   220: invokevirtual 390	com/google/ads/d:a	(Ljava/lang/Runnable;)V
    //   223: invokestatic 449	android/os/SystemClock:elapsedRealtime	()J
    //   226: lstore 19
    //   228: lload 4
    //   230: lload 19
    //   232: lload 6
    //   234: lsub
    //   235: lsub
    //   236: lstore 21
    //   238: lload 21
    //   240: lconst_0
    //   241: lcmp
    //   242: ifle +9 -> 251
    //   245: aload_0
    //   246: lload 21
    //   248: invokevirtual 474	java/lang/Object:wait	(J)V
    //   251: aload_0
    //   252: getfield 409	com/google/ads/c:i	Z
    //   255: istore 23
    //   257: iload 23
    //   259: ifeq +147 -> 406
    //   262: aload_0
    //   263: monitorexit
    //   264: return
    //   265: aload 33
    //   267: ldc_w 475
    //   270: invokevirtual 463	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   273: ifeq -94 -> 179
    //   276: aload_0
    //   277: iconst_0
    //   278: putfield 55	com/google/ads/c:l	I
    //   281: goto -102 -> 179
    //   284: astore_1
    //   285: ldc_w 477
    //   288: aload_1
    //   289: invokestatic 480	com/google/ads/util/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   292: aload_0
    //   293: getstatic 438	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   296: iconst_1
    //   297: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   300: aload_0
    //   301: monitorexit
    //   302: return
    //   303: astore 17
    //   305: new 243	java/lang/StringBuilder
    //   308: dup
    //   309: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   312: ldc_w 482
    //   315: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: aload 17
    //   320: invokevirtual 485	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   323: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   326: invokestatic 378	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   329: aload_0
    //   330: getstatic 487	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   333: iconst_0
    //   334: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   337: aload_0
    //   338: monitorexit
    //   339: return
    //   340: astore 16
    //   342: new 243	java/lang/StringBuilder
    //   345: dup
    //   346: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   349: ldc_w 489
    //   352: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: aload 16
    //   357: invokevirtual 485	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokestatic 378	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   366: aload_0
    //   367: getstatic 438	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   370: iconst_0
    //   371: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   374: aload_0
    //   375: monitorexit
    //   376: return
    //   377: astore 30
    //   379: new 243	java/lang/StringBuilder
    //   382: dup
    //   383: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   386: ldc_w 491
    //   389: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: aload 30
    //   394: invokevirtual 485	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   397: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   400: invokestatic 394	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   403: aload_0
    //   404: monitorexit
    //   405: return
    //   406: aload_0
    //   407: getfield 51	com/google/ads/c:j	Lcom/google/ads/AdRequest$ErrorCode;
    //   410: ifnull +15 -> 425
    //   413: aload_0
    //   414: aload_0
    //   415: getfield 51	com/google/ads/c:j	Lcom/google/ads/AdRequest$ErrorCode;
    //   418: iconst_0
    //   419: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   422: aload_0
    //   423: monitorexit
    //   424: return
    //   425: aload_0
    //   426: getfield 40	com/google/ads/c:g	Ljava/lang/String;
    //   429: ifnonnull +44 -> 473
    //   432: new 243	java/lang/StringBuilder
    //   435: dup
    //   436: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   439: ldc_w 493
    //   442: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: lload 4
    //   447: invokevirtual 496	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   450: ldc_w 498
    //   453: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   459: invokestatic 378	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   462: aload_0
    //   463: getstatic 487	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   466: iconst_0
    //   467: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   470: aload_0
    //   471: monitorexit
    //   472: return
    //   473: aload_0
    //   474: getfield 98	com/google/ads/c:c	Lcom/google/ads/b;
    //   477: aload_0
    //   478: getfield 426	com/google/ads/c:n	Z
    //   481: invokevirtual 500	com/google/ads/b:a	(Z)V
    //   484: aload_0
    //   485: getfield 98	com/google/ads/c:c	Lcom/google/ads/b;
    //   488: aload_0
    //   489: getfield 40	com/google/ads/c:g	Ljava/lang/String;
    //   492: invokevirtual 501	com/google/ads/b:a	(Ljava/lang/String;)V
    //   495: invokestatic 449	android/os/SystemClock:elapsedRealtime	()J
    //   498: lstore 24
    //   500: lload 4
    //   502: lload 24
    //   504: lload 6
    //   506: lsub
    //   507: lsub
    //   508: lstore 26
    //   510: lload 26
    //   512: lconst_0
    //   513: lcmp
    //   514: ifle +9 -> 523
    //   517: aload_0
    //   518: lload 26
    //   520: invokevirtual 474	java/lang/Object:wait	(J)V
    //   523: aload_0
    //   524: getfield 409	com/google/ads/c:i	Z
    //   527: istore 28
    //   529: iload 28
    //   531: ifeq +35 -> 566
    //   534: aload_0
    //   535: monitorexit
    //   536: return
    //   537: astore 29
    //   539: new 243	java/lang/StringBuilder
    //   542: dup
    //   543: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   546: ldc_w 503
    //   549: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   552: aload 29
    //   554: invokevirtual 485	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   557: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   560: invokestatic 394	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   563: aload_0
    //   564: monitorexit
    //   565: return
    //   566: aload_0
    //   567: getfield 51	com/google/ads/c:j	Lcom/google/ads/AdRequest$ErrorCode;
    //   570: ifnull +15 -> 585
    //   573: aload_0
    //   574: aload_0
    //   575: getfield 51	com/google/ads/c:j	Lcom/google/ads/AdRequest$ErrorCode;
    //   578: iconst_0
    //   579: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   582: aload_0
    //   583: monitorexit
    //   584: return
    //   585: aload_0
    //   586: getfield 44	com/google/ads/c:b	Ljava/lang/String;
    //   589: ifnonnull +44 -> 633
    //   592: new 243	java/lang/StringBuilder
    //   595: dup
    //   596: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   599: ldc_w 493
    //   602: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   605: lload 4
    //   607: invokevirtual 496	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   610: ldc_w 505
    //   613: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   616: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   619: invokestatic 378	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   622: aload_0
    //   623: getstatic 487	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   626: iconst_0
    //   627: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   630: aload_0
    //   631: monitorexit
    //   632: return
    //   633: aload_0
    //   634: getfield 38	com/google/ads/c:d	Lcom/google/ads/d;
    //   637: invokevirtual 508	com/google/ads/d:i	()Lcom/google/ads/h;
    //   640: astore 10
    //   642: aload_0
    //   643: getfield 38	com/google/ads/c:d	Lcom/google/ads/d;
    //   646: invokevirtual 511	com/google/ads/d:j	()Lcom/google/ads/i;
    //   649: invokevirtual 513	com/google/ads/i:b	()V
    //   652: aload_0
    //   653: getfield 38	com/google/ads/c:d	Lcom/google/ads/d;
    //   656: new 467	com/google/ads/c$c
    //   659: dup
    //   660: aload_0
    //   661: aload 10
    //   663: aload_0
    //   664: getfield 42	com/google/ads/c:a	Ljava/lang/String;
    //   667: aload_0
    //   668: getfield 44	com/google/ads/c:b	Ljava/lang/String;
    //   671: invokespecial 470	com/google/ads/c$c:<init>	(Lcom/google/ads/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    //   674: invokevirtual 390	com/google/ads/d:a	(Ljava/lang/Runnable;)V
    //   677: invokestatic 449	android/os/SystemClock:elapsedRealtime	()J
    //   680: lstore 11
    //   682: lload 4
    //   684: lload 11
    //   686: lload 6
    //   688: lsub
    //   689: lsub
    //   690: lstore 13
    //   692: lload 13
    //   694: lconst_0
    //   695: lcmp
    //   696: ifle +9 -> 705
    //   699: aload_0
    //   700: lload 13
    //   702: invokevirtual 474	java/lang/Object:wait	(J)V
    //   705: aload_0
    //   706: getfield 53	com/google/ads/c:k	Z
    //   709: ifeq +62 -> 771
    //   712: aload_0
    //   713: getfield 38	com/google/ads/c:d	Lcom/google/ads/d;
    //   716: new 515	com/google/ads/c$e
    //   719: dup
    //   720: aload_0
    //   721: aload_0
    //   722: getfield 38	com/google/ads/c:d	Lcom/google/ads/d;
    //   725: aload_0
    //   726: getfield 49	com/google/ads/c:h	Ljava/util/LinkedList;
    //   729: aload_0
    //   730: getfield 55	com/google/ads/c:l	I
    //   733: invokespecial 518	com/google/ads/c$e:<init>	(Lcom/google/ads/c;Lcom/google/ads/d;Ljava/util/LinkedList;I)V
    //   736: invokevirtual 390	com/google/ads/d:a	(Ljava/lang/Runnable;)V
    //   739: goto -439 -> 300
    //   742: astore 15
    //   744: new 243	java/lang/StringBuilder
    //   747: dup
    //   748: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   751: ldc_w 520
    //   754: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   757: aload 15
    //   759: invokevirtual 485	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   762: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   765: invokestatic 394	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   768: aload_0
    //   769: monitorexit
    //   770: return
    //   771: new 243	java/lang/StringBuilder
    //   774: dup
    //   775: invokespecial 244	java/lang/StringBuilder:<init>	()V
    //   778: ldc_w 493
    //   781: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   784: lload 4
    //   786: invokevirtual 496	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   789: ldc_w 522
    //   792: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   795: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   798: invokestatic 378	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   801: aload_0
    //   802: getstatic 487	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   805: iconst_1
    //   806: invokespecial 440	com/google/ads/c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   809: goto -509 -> 300
    //
    // Exception table:
    //   from	to	target	type
    //   2	16	62	finally
    //   16	30	62	finally
    //   30	32	62	finally
    //   33	41	62	finally
    //   45	59	62	finally
    //   59	61	62	finally
    //   67	143	62	finally
    //   143	179	62	finally
    //   179	185	62	finally
    //   190	201	62	finally
    //   201	228	62	finally
    //   245	251	62	finally
    //   251	257	62	finally
    //   262	264	62	finally
    //   265	281	62	finally
    //   285	300	62	finally
    //   300	302	62	finally
    //   305	337	62	finally
    //   337	339	62	finally
    //   342	374	62	finally
    //   374	376	62	finally
    //   379	403	62	finally
    //   403	405	62	finally
    //   406	422	62	finally
    //   422	424	62	finally
    //   425	470	62	finally
    //   470	472	62	finally
    //   473	500	62	finally
    //   517	523	62	finally
    //   523	529	62	finally
    //   534	536	62	finally
    //   539	563	62	finally
    //   563	565	62	finally
    //   566	582	62	finally
    //   582	584	62	finally
    //   585	630	62	finally
    //   630	632	62	finally
    //   633	682	62	finally
    //   699	705	62	finally
    //   705	739	62	finally
    //   744	768	62	finally
    //   768	770	62	finally
    //   771	809	62	finally
    //   2	16	284	java/lang/Exception
    //   16	30	284	java/lang/Exception
    //   33	41	284	java/lang/Exception
    //   45	59	284	java/lang/Exception
    //   67	143	284	java/lang/Exception
    //   143	179	284	java/lang/Exception
    //   179	185	284	java/lang/Exception
    //   190	201	284	java/lang/Exception
    //   201	228	284	java/lang/Exception
    //   245	251	284	java/lang/Exception
    //   251	257	284	java/lang/Exception
    //   265	281	284	java/lang/Exception
    //   305	337	284	java/lang/Exception
    //   342	374	284	java/lang/Exception
    //   379	403	284	java/lang/Exception
    //   406	422	284	java/lang/Exception
    //   425	470	284	java/lang/Exception
    //   473	500	284	java/lang/Exception
    //   517	523	284	java/lang/Exception
    //   523	529	284	java/lang/Exception
    //   539	563	284	java/lang/Exception
    //   566	582	284	java/lang/Exception
    //   585	630	284	java/lang/Exception
    //   633	682	284	java/lang/Exception
    //   699	705	284	java/lang/Exception
    //   705	739	284	java/lang/Exception
    //   744	768	284	java/lang/Exception
    //   771	809	284	java/lang/Exception
    //   190	201	303	com/google/ads/c$d
    //   190	201	340	com/google/ads/c$b
    //   245	251	377	java/lang/InterruptedException
    //   517	523	537	java/lang/InterruptedException
    //   699	705	742	java/lang/InterruptedException
  }

  private final class a
    implements Runnable
  {
    private final d b;
    private final WebView c;
    private final b d;
    private final AdRequest.ErrorCode e;
    private final boolean f;

    public a(d paramWebView, WebView paramb, b paramErrorCode, AdRequest.ErrorCode paramBoolean, boolean arg6)
    {
      this.b = paramWebView;
      this.c = paramb;
      this.d = paramErrorCode;
      this.e = paramBoolean;
      boolean bool;
      this.f = bool;
    }

    public final void run()
    {
      if (this.c != null)
      {
        this.c.stopLoading();
        this.c.destroy();
      }
      if (this.d != null)
        this.d.a();
      if (this.f)
      {
        h localh = this.b.i();
        localh.stopLoading();
        localh.setVisibility(8);
      }
      this.b.a(this.e);
    }
  }

  private final class b extends Exception
  {
    public b(String arg2)
    {
      super();
    }
  }

  private final class c
    implements Runnable
  {
    private final String b;
    private final String c;
    private final WebView d;

    public c(WebView paramString1, String paramString2, String arg4)
    {
      this.d = paramString1;
      this.b = paramString2;
      Object localObject;
      this.c = localObject;
    }

    public final void run()
    {
      if (this.c != null)
      {
        this.d.loadDataWithBaseURL(this.b, this.c, "text/html", "utf-8", null);
        return;
      }
      this.d.loadUrl(this.b);
    }
  }

  private final class d extends Exception
  {
    public d(String arg2)
    {
      super();
    }
  }

  private final class e
    implements Runnable
  {
    private final d b;
    private final LinkedList<String> c;
    private final int d;

    public e(LinkedList<String> paramInt, int arg3)
    {
      this.b = paramInt;
      Object localObject;
      this.c = localObject;
      int i;
      this.d = i;
    }

    public final void run()
    {
      this.b.a(this.c);
      this.b.a(this.d);
      this.b.q();
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.c
 * JD-Core Version:    0.6.2
 */
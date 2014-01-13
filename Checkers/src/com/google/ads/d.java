package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.preference.PreferenceManager;
import com.google.ads.util.AdUtil;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;

public final class d
{
  private static final Object a = new Object();
  private WeakReference<Activity> b;
  private Ad c;
  private AdListener d;
  private c e;
  private AdRequest f;
  private AdSize g;
  private f h;
  private String i;
  private h j;
  private i k;
  private Handler l;
  private long m;
  private boolean n;
  private boolean o;
  private SharedPreferences p;
  private long q;
  private x r;
  private boolean s;
  private LinkedList<String> t;
  private LinkedList<String> u;
  private int v;

  public d(Activity paramActivity, Ad paramAd, AdSize paramAdSize, String paramString, boolean paramBoolean)
  {
    this.b = new WeakReference(paramActivity);
    this.c = paramAd;
    this.g = paramAdSize;
    this.i = paramString;
    this.s = paramBoolean;
    this.h = new f();
    this.d = null;
    this.e = null;
    this.f = null;
    this.n = false;
    this.l = new Handler();
    this.q = 0L;
    this.o = false;
    while (true)
    {
      synchronized (a)
      {
        this.p = paramActivity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
        if (paramBoolean)
        {
          long l1 = this.p.getLong("Timeout" + paramString, -1L);
          if (l1 < 0L)
          {
            this.m = 5000L;
            this.r = new x(this);
            this.t = new LinkedList();
            this.u = new LinkedList();
            a();
            AdUtil.h(paramActivity.getApplicationContext());
            return;
          }
          this.m = l1;
        }
      }
      this.m = 60000L;
    }
  }

  private boolean A()
  {
    try
    {
      c localc = this.e;
      if (localc != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private void B()
  {
    try
    {
      Activity localActivity = (Activity)this.b.get();
      if (localActivity == null)
        com.google.ads.util.a.e("activity was null while trying to ping click tracking URLs.");
      while (true)
      {
        return;
        Iterator localIterator = this.u.iterator();
        while (localIterator.hasNext())
          new Thread(new w((String)localIterator.next(), localActivity.getApplicationContext())).start();
      }
    }
    finally
    {
    }
  }

  public final void a()
  {
    while (true)
    {
      try
      {
        Activity localActivity = e();
        if (localActivity == null)
        {
          com.google.ads.util.a.a("activity was null while trying to create an AdWebView.");
          return;
        }
        this.j = new h(localActivity.getApplicationContext(), this.g);
        this.j.setVisibility(8);
        if ((this.c instanceof AdView))
        {
          this.k = new i(this, a.b, true, false);
          this.j.setWebViewClient(this.k);
          continue;
        }
      }
      finally
      {
      }
      this.k = new i(this, a.b, true, true);
    }
  }

  public final void a(float paramFloat)
  {
    long l1 = ()(1000.0F * paramFloat);
    try
    {
      this.q = l1;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(int paramInt)
  {
    try
    {
      this.v = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(long paramLong)
  {
    synchronized (a)
    {
      SharedPreferences.Editor localEditor = this.p.edit();
      localEditor.putLong("Timeout" + this.i, paramLong);
      localEditor.commit();
      if (this.s)
        this.m = paramLong;
      return;
    }
  }

  public final void a(AdListener paramAdListener)
  {
    try
    {
      this.d = paramAdListener;
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
      this.e = null;
      if ((this.c instanceof InterstitialAd))
      {
        if (paramErrorCode != AdRequest.ErrorCode.NO_FILL)
          break label84;
        this.h.n();
      }
      while (true)
      {
        com.google.ads.util.a.c("onFailedToReceiveAd(" + paramErrorCode + ")");
        if (this.d != null)
          this.d.onFailedToReceiveAd(this.c, paramErrorCode);
        return;
        label84: if (paramErrorCode == AdRequest.ErrorCode.NETWORK_ERROR)
          this.h.l();
      }
    }
    finally
    {
    }
  }

  public final void a(AdRequest paramAdRequest)
  {
    Activity localActivity;
    do
      while (true)
      {
        try
        {
          if (A())
          {
            com.google.ads.util.a.e("loadAd called while the ad is already loading, so aborting.");
            return;
          }
          if (AdActivity.isShowing())
          {
            com.google.ads.util.a.e("loadAd called while an interstitial or landing page is displayed, so aborting");
            continue;
          }
        }
        finally
        {
        }
        localActivity = e();
        if (localActivity != null)
          break;
        com.google.ads.util.a.e("activity is null while trying to load an ad.");
      }
    while ((!AdUtil.c(localActivity.getApplicationContext())) || (!AdUtil.b(localActivity.getApplicationContext())));
    long l1 = this.p.getLong("GoogleAdMobDoritosLife", 60000L);
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(localActivity.getApplicationContext());
    if (aa.a(localActivity))
    {
      if ((!localSharedPreferences.contains("drt")) || (!localSharedPreferences.contains("drt_ts")))
        break label221;
      if (localSharedPreferences.getLong("drt_ts", 0L) < new Date().getTime() - l1)
        break label221;
    }
    while (true)
    {
      if (i1 != 0)
        z.a(localActivity);
      this.n = false;
      this.t.clear();
      this.f = paramAdRequest;
      this.e = new c(this);
      this.e.a(paramAdRequest);
      break;
      int i1 = 0;
      continue;
      label221: i1 = 1;
    }
  }

  final void a(Runnable paramRunnable)
  {
    this.l.post(paramRunnable);
  }

  final void a(String paramString)
  {
    try
    {
      com.google.ads.util.a.a("Adding a tracking URL: " + paramString);
      this.t.add(paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(LinkedList<String> paramLinkedList)
  {
    try
    {
      Iterator localIterator = paramLinkedList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        com.google.ads.util.a.a("Adding a click tracking URL: " + str);
      }
    }
    finally
    {
    }
    this.u = paramLinkedList;
  }

  public final void b()
  {
    try
    {
      a(null);
      z();
      this.j.destroy();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b(long paramLong)
  {
    if (paramLong > 0L);
    try
    {
      this.p.edit().putLong("GoogleAdMobDoritosLife", paramLong).commit();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void c()
  {
    try
    {
      if (this.o)
      {
        com.google.ads.util.a.a("Disabling refreshing.");
        this.l.removeCallbacks(this.r);
        this.o = false;
      }
      while (true)
      {
        return;
        com.google.ads.util.a.a("Refreshing is already disabled.");
      }
    }
    finally
    {
    }
  }

  public final void d()
  {
    while (true)
    {
      try
      {
        if ((this.c instanceof AdView))
        {
          if (!this.o)
          {
            com.google.ads.util.a.a("Enabling refreshing every " + this.q + " milliseconds.");
            this.l.postDelayed(this.r, this.q);
            this.o = true;
            return;
          }
          com.google.ads.util.a.a("Refreshing is already enabled.");
          continue;
        }
      }
      finally
      {
      }
      com.google.ads.util.a.a("Tried to enable refreshing on something other than an AdView.");
    }
  }

  public final Activity e()
  {
    return (Activity)this.b.get();
  }

  public final Ad f()
  {
    return this.c;
  }

  public final c g()
  {
    try
    {
      c localc = this.e;
      return localc;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final String h()
  {
    return this.i;
  }

  public final h i()
  {
    try
    {
      h localh = this.j;
      return localh;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final i j()
  {
    try
    {
      i locali = this.k;
      return locali;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final AdSize k()
  {
    return this.g;
  }

  public final f l()
  {
    return this.h;
  }

  public final int m()
  {
    try
    {
      int i1 = this.v;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long n()
  {
    return this.m;
  }

  public final boolean o()
  {
    try
    {
      boolean bool = this.n;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean p()
  {
    try
    {
      boolean bool = this.o;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void q()
  {
    try
    {
      this.e = null;
      this.n = true;
      this.j.setVisibility(0);
      this.h.c();
      if ((this.c instanceof AdView))
        v();
      com.google.ads.util.a.c("onReceiveAd()");
      if (this.d != null)
        this.d.onReceiveAd(this.c);
      return;
    }
    finally
    {
    }
  }

  public final void r()
  {
    try
    {
      this.h.o();
      com.google.ads.util.a.c("onDismissScreen()");
      if (this.d != null)
        this.d.onDismissScreen(this.c);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void s()
  {
    try
    {
      com.google.ads.util.a.c("onPresentScreen()");
      if (this.d != null)
        this.d.onPresentScreen(this.c);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void t()
  {
    try
    {
      com.google.ads.util.a.c("onLeaveApplication()");
      if (this.d != null)
        this.d.onLeaveApplication(this.c);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void u()
  {
    this.h.b();
    B();
  }

  public final void v()
  {
    try
    {
      Activity localActivity = (Activity)this.b.get();
      if (localActivity == null)
        com.google.ads.util.a.e("activity was null while trying to ping tracking URLs.");
      while (true)
      {
        return;
        Iterator localIterator = this.t.iterator();
        while (localIterator.hasNext())
          new Thread(new w((String)localIterator.next(), localActivity.getApplicationContext())).start();
      }
    }
    finally
    {
    }
  }

  final boolean w()
  {
    try
    {
      boolean bool1 = this.u.isEmpty();
      if (!bool1)
      {
        bool2 = true;
        return bool2;
      }
      boolean bool2 = false;
    }
    finally
    {
    }
  }

  public final void x()
  {
    while (true)
    {
      try
      {
        if (this.f == null)
          break label94;
        if ((this.c instanceof AdView))
        {
          if ((((AdView)this.c).isShown()) && (AdUtil.d()))
          {
            com.google.ads.util.a.c("Refreshing ad.");
            a(this.f);
            this.l.postDelayed(this.r, this.q);
            return;
          }
          com.google.ads.util.a.a("Not refreshing because the ad is not visible.");
          continue;
        }
      }
      finally
      {
      }
      com.google.ads.util.a.a("Tried to refresh an ad that wasn't an AdView.");
      continue;
      label94: com.google.ads.util.a.a("Tried to refresh before calling loadAd().");
    }
  }

  public final void y()
  {
    try
    {
      this.n = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void z()
  {
    try
    {
      if (this.e != null)
      {
        this.e.a();
        this.e = null;
      }
      this.j.stopLoading();
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.d
 * JD-Core Version:    0.6.2
 */
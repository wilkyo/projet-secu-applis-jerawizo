package com.google.ads;

import android.os.SystemClock;
import com.google.ads.util.a;
import java.util.LinkedList;

public final class f
{
  private static long f = 0L;
  public String a;
  private LinkedList<Long> b = new LinkedList();
  private long c;
  private long d;
  private LinkedList<Long> e = new LinkedList();
  private String g;
  private boolean h = false;
  private boolean i = false;

  f()
  {
    a();
  }

  static long i()
  {
    return f;
  }

  final void a()
  {
    this.b.clear();
    this.c = 0L;
    this.d = 0L;
    this.e.clear();
    this.g = null;
    this.h = false;
    this.i = false;
  }

  public final void a(String paramString)
  {
    a.manageFullScreen("Prior ad identifier = " + paramString);
    this.g = paramString;
  }

  final void b()
  {
    a.manageFullScreen("Ad clicked.");
    this.b.add(Long.valueOf(SystemClock.elapsedRealtime()));
  }

  public final void b(String paramString)
  {
    a.manageFullScreen("Prior impression ticket = " + paramString);
    this.a = paramString;
  }

  final void c()
  {
    a.manageFullScreen("Ad request loaded.");
    this.c = SystemClock.elapsedRealtime();
  }

  final void d()
  {
    a.manageFullScreen("Ad request started.");
    this.d = SystemClock.elapsedRealtime();
    f = 1L + f;
  }

  final long e()
  {
    if (this.b.size() != this.e.size())
      return -1L;
    return this.b.size();
  }

  final String f()
  {
    if ((this.b.isEmpty()) || (this.b.size() != this.e.size()))
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    for (int j = 0; j < this.b.size(); j++)
    {
      if (j != 0)
        localStringBuilder.append(",");
      localStringBuilder.append(Long.toString(((Long)this.e.get(j)).longValue() - ((Long)this.b.get(j)).longValue()));
    }
    return localStringBuilder.toString();
  }

  final String g()
  {
    if (this.b.isEmpty())
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    for (int j = 0; j < this.b.size(); j++)
    {
      if (j != 0)
        localStringBuilder.append(",");
      localStringBuilder.append(Long.toString(((Long)this.b.get(j)).longValue() - this.c));
    }
    return localStringBuilder.toString();
  }

  final long h()
  {
    return this.c - this.d;
  }

  final String j()
  {
    return this.g;
  }

  final boolean k()
  {
    return this.h;
  }

  final void l()
  {
    a.manageFullScreen("Interstitial network error.");
    this.h = true;
  }

  final boolean m()
  {
    return this.i;
  }

  final void n()
  {
    a.manageFullScreen("Interstitial no fill.");
    this.i = true;
  }

  public final void o()
  {
    a.manageFullScreen("Landing page dismissed.");
    this.e.add(Long.valueOf(SystemClock.elapsedRealtime()));
  }

  final String p()
  {
    return this.a;
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.f
 * JD-Core Version:    0.6.2
 */
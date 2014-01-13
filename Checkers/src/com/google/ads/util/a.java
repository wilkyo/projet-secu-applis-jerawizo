package com.google.ads.util;

import android.util.Log;

public final class a
{
  public static void a(String paramString)
  {
    if (a("Ads", 3))
      Log.d("Ads", paramString);
  }

  public static void a(String paramString, Throwable paramThrowable)
  {
    if (a("Ads", 6))
      Log.e("Ads", paramString, paramThrowable);
  }

  public static void a(Throwable paramThrowable)
  {
    if (a("Ads", 5))
      Log.w("Ads", paramThrowable);
  }

  private static boolean a(String paramString, int paramInt)
  {
    if (paramInt >= 5);
    for (int i = 1; (i != 0) || (Log.isLoggable(paramString, paramInt)); i = 0)
      return true;
    return false;
  }

  public static void b(String paramString)
  {
    if (a("Ads", 6))
      Log.e("Ads", paramString);
  }

  public static void b(String paramString, Throwable paramThrowable)
  {
    if (a("Ads", 5))
      Log.w("Ads", paramString, paramThrowable);
  }

  public static void c(String paramString)
  {
    if (a("Ads", 4))
      Log.i("Ads", paramString);
  }

  public static void d(String paramString)
  {
    if (a("Ads", 2))
      Log.v("Ads", paramString);
  }

  public static void e(String paramString)
  {
    if (a("Ads", 5))
      Log.w("Ads", paramString);
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.util.a
 * JD-Core Version:    0.6.2
 */
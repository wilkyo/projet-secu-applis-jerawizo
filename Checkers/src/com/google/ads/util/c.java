package com.google.ads.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.DisplayMetrics;

public final class c
{
  private static int a(Context paramContext, float paramFloat, int paramInt)
  {
    if ((0x2000 & paramContext.getApplicationInfo().flags) != 0)
      return (int)(paramInt / paramFloat);
    return paramInt;
  }

  public static int a(Context paramContext, DisplayMetrics paramDisplayMetrics)
  {
    return a(paramContext, paramDisplayMetrics.density, paramDisplayMetrics.heightPixels);
  }

  public static int b(Context paramContext, DisplayMetrics paramDisplayMetrics)
  {
    return a(paramContext, paramDisplayMetrics.density, paramDisplayMetrics.widthPixels);
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.util.c
 * JD-Core Version:    0.6.2
 */
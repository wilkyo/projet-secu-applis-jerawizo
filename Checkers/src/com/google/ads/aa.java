package com.google.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import java.util.List;

public final class aa
{
  public static boolean a(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
    return a(localIntent, paramContext);
  }

  public static boolean a(Intent paramIntent, Context paramContext)
  {
    return paramContext.getPackageManager().queryIntentActivities(paramIntent, 65536).size() > 0;
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.aa
 * JD-Core Version:    0.6.2
 */
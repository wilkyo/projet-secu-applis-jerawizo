package com.google.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.lang.ref.WeakReference;

public final class h extends WebView
{
  private WeakReference<AdActivity> a;
  private AdSize b;

  public h(Context paramContext, AdSize paramAdSize)
  {
    super(paramContext);
    this.b = paramAdSize;
    this.a = null;
    setBackgroundColor(0);
    AdUtil.a(this);
    getSettings().setJavaScriptEnabled(true);
    setScrollBarStyle(0);
  }

  public final void a()
  {
    AdActivity localAdActivity = b();
    if (localAdActivity != null)
      localAdActivity.finish();
  }

  public final void a(AdActivity paramAdActivity)
  {
    this.a = new WeakReference(paramAdActivity);
  }

  public final AdActivity b()
  {
    if (this.a != null)
      return (AdActivity)this.a.get();
    return null;
  }

  public final void destroy()
  {
    try
    {
      super.destroy();
      return;
    }
    catch (Exception localException)
    {
      a.a("An error occurred while destroying an AdWebView:", localException);
    }
  }

  public final void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    try
    {
      super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
      return;
    }
    catch (Exception localException)
    {
      a.a("An error occurred while loading data in AdWebView:", localException);
    }
  }

  public final void loadUrl(String paramString)
  {
    try
    {
      super.loadUrl(paramString);
      return;
    }
    catch (Exception localException)
    {
      a.a("An error occurred while loading a URL in AdWebView:", localException);
    }
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    if (isInEditMode())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    if (this.b == null)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    int m = View.MeasureSpec.getSize(paramInt2);
    float f = getContext().getResources().getDisplayMetrics().density;
    int n = (int)(f * this.b.getWidth());
    int i1 = (int)(f * this.b.getHeight());
    if ((i == 0) || (k == 0))
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    if ((n - 6.0F * f > j) || (i1 > m))
    {
      a.e("Not enough space to show ad! Wants: <" + n + ", " + i1 + ">, Has: <" + j + ", " + m + ">");
      setVisibility(8);
      setMeasuredDimension(0, 0);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }

  public final void stopLoading()
  {
    try
    {
      super.stopLoading();
      return;
    }
    catch (Exception localException)
    {
      a.a("An error occurred while stopping loading in AdWebView:", localException);
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.h
 * JD-Core Version:    0.6.2
 */
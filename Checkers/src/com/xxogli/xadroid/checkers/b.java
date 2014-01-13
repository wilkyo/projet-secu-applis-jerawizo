package com.xxogli.xadroid.checkers;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;

public class b extends View
{
  private boolean A;
  private boolean B;
  private boolean C;
  private boolean D;
  private boolean E;
  private boolean F;
  private int G;
  private int[] H;
  private int[] I;
  private int[] J;
  private int[] K;
  private int L;
  private int M;
  private int N;
  private String O;
  private float P;
  private float Q;
  private int R;
  private Context a;
  private Paint b;
  private Paint c;
  private Paint d;
  private Paint e;
  private Paint f;
  private Paint g;
  private Paint h;
  private Paint i;
  private Paint j;
  private int k;
  private float l;
  private int m;
  private int n;
  private Drawable o;
  private a p;
  private int q;
  private int r;
  private int s;
  private int t;
  private int u;
  private int v;
  private int w;
  private int x;
  private boolean y;
  private int z;

  public b(Context paramContext, SharedPreferences paramSharedPreferences)
  {
    super(paramContext);
    this.a = paramContext;
    this.b = new Paint();
    this.b.setAntiAlias(true);
    this.b.setARGB(255, 0, 0, 0);
    this.c = new Paint();
    this.c.setAntiAlias(true);
    this.c.setARGB(255, 255, 255, 255);
    this.d = new Paint();
    this.d.setAntiAlias(true);
    this.d.setARGB(255, 251, 215, 174);
    this.e = new Paint();
    this.e.setAntiAlias(true);
    this.e.setARGB(255, 0, 0, 0);
    this.f = new Paint();
    this.f.setAntiAlias(true);
    this.f.setARGB(255, 255, 0, 0);
    this.g = new Paint();
    this.g.setAntiAlias(true);
    this.g.setARGB(255, 255, 165, 0);
    this.h = new Paint();
    this.h.setAntiAlias(true);
    this.h.setARGB(255, 255, 200, 0);
    this.h.setStrokeWidth(2.0F);
    this.i = new Paint();
    this.i.setAntiAlias(true);
    this.i.setARGB(255, 0, 255, 0);
    this.j = new Paint();
    this.j.setAntiAlias(true);
    this.j.setARGB(255, 0, 0, 0);
    this.j.setStyle(Paint.Style.STROKE);
    this.j.setStrokeWidth(5.0F);
    this.k = 12;
    this.l = 0.0F;
    this.m = 0;
    this.n = 0;
    this.o = this.a.getResources().getDrawable(2130837504);
    this.H = new int[8];
    this.I = new int[8];
    this.J = new int[8];
    this.K = new int[8];
    h.a(paramContext);
    this.p = new a(this);
    this.O = null;
    if (a(paramSharedPreferences))
      if (!e())
        this.O = "restored game";
    while (true)
    {
      c();
      this.P = -10.0F;
      this.Q = -10.0F;
      this.R = 0;
      if ((this.E) && (e()))
        g();
      return;
      this.q = 1;
      this.r = this.p.d;
      this.s = this.p.f;
      this.t = this.p.e;
      this.u = this.p.g;
      this.v = 0;
      this.w = 0;
      this.x = 0;
      this.y = false;
      this.z = 3;
      this.A = true;
      this.B = false;
      this.C = false;
      this.D = false;
      this.E = true;
      this.F = true;
      this.G = 0;
      this.L = 0;
      this.M = 0;
      this.N = this.p.c;
    }
  }

  private final void a(SharedPreferences.Editor paramEditor, String paramString, int[] paramArrayOfInt)
  {
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= 8)
        return;
      paramEditor.putInt(paramString + i1, paramArrayOfInt[i1]);
    }
  }

  private final void a(SharedPreferences paramSharedPreferences, String paramString, int[] paramArrayOfInt)
  {
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= 8)
        return;
      paramArrayOfInt[i1] = paramSharedPreferences.getInt(paramString + i1, 0);
    }
  }

  private final void a(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt1 >>> 2;
    int i2 = 1 + 2 * (paramInt1 & 0x3) - (i1 & 0x1);
    int i3 = paramInt2 >>> 2;
    int i4 = 1 + 2 * (paramInt2 & 0x3) - (i3 & 0x1);
    int i8;
    int i5;
    int i6;
    if (this.C)
    {
      i8 = 7 - i1;
      int i9 = 7 - i2;
      int i10 = 7 - i3;
      i4 = 7 - i4;
      i5 = i10;
      i6 = i9;
    }
    for (int i7 = i8; ; i7 = i1)
    {
      paramCanvas.drawLine(paramInt4 + i6 * paramInt3, paramInt4 + i7 * paramInt3, paramInt4 + i4 * paramInt3, paramInt4 + paramInt3 * i5, this.h);
      return;
      i5 = i3;
      i6 = i2;
    }
  }

  private final void a(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint1, Paint paramPaint2, boolean paramBoolean)
  {
    paramCanvas.drawCircle(paramInt1, paramInt2, paramInt3 - 2, paramPaint1);
    paramCanvas.drawCircle(paramInt1, paramInt2, paramInt3 - 4, paramPaint2);
    paramCanvas.drawCircle(paramInt1, paramInt2, paramInt3 - 7, paramPaint1);
    paramCanvas.drawCircle(paramInt1, paramInt2, paramInt3 - 9, paramPaint2);
    if (paramBoolean)
    {
      int i1 = paramInt3 >> 2;
      int i2 = paramInt1 - i1;
      int i3 = paramInt2 - i1;
      paramCanvas.drawCircle(i2, i3, paramInt3 - 2, paramPaint1);
      paramCanvas.drawCircle(i2, i3, paramInt3 - 4, paramPaint2);
      paramCanvas.drawCircle(i2, i3, paramInt3 - 7, paramPaint1);
      paramCanvas.drawCircle(i2, i3, paramInt3 - 9, paramPaint2);
      paramCanvas.drawText("K", i2 - paramInt4, i3, paramPaint1);
    }
  }

  private final boolean a(SharedPreferences paramSharedPreferences)
  {
    if (paramSharedPreferences != null);
    try
    {
      int i1 = paramSharedPreferences.getInt("format", 0);
      if (i1 != 34)
        bool1 = false;
      while (true)
      {
        return bool1;
        this.q = paramSharedPreferences.getInt("state", 1);
        this.r = paramSharedPreferences.getInt("wp", 0);
        this.s = paramSharedPreferences.getInt("bp", 0);
        this.t = paramSharedPreferences.getInt("wk", 0);
        this.u = paramSharedPreferences.getInt("bk", 0);
        this.v = paramSharedPreferences.getInt("l1", 0);
        this.w = paramSharedPreferences.getInt("l2", 0);
        this.x = paramSharedPreferences.getInt("lm", 0);
        this.y = paramSharedPreferences.getBoolean("cap", true);
        this.z = paramSharedPreferences.getInt("level", 3);
        this.A = paramSharedPreferences.getBoolean("show", true);
        this.B = paramSharedPreferences.getBoolean("free", false);
        this.C = paramSharedPreferences.getBoolean("rot", false);
        this.D = paramSharedPreferences.getBoolean("full", false);
        this.E = paramSharedPreferences.getBoolean("start", true);
        this.F = paramSharedPreferences.getBoolean("anim", true);
        this.G = paramSharedPreferences.getInt("color", 0);
        a(paramSharedPreferences, "lwp", this.H);
        a(paramSharedPreferences, "lwk", this.I);
        a(paramSharedPreferences, "lbp", this.J);
        a(paramSharedPreferences, "lbk", this.K);
        this.L = paramSharedPreferences.getInt("lp", 0);
        this.M = paramSharedPreferences.getInt("lc", 0);
        setLevel(this.z);
        boolean bool2;
        if ((this.q != 3) && (this.q != 4) && (this.q != 6))
          bool2 = false;
        synchronized (this.p)
        {
          this.p.a(this.r, this.t, this.s, this.u, bool2);
          this.p.a(0, bool2, this.B);
          this.N = this.p.c;
          if ((this.q == 4) || (this.q == 2))
            this.p.a(bool2, this.B);
          bool1 = true;
          continue;
          bool2 = true;
        }
      }
    }
    catch (ClassCastException localClassCastException)
    {
      while (true)
      {
        boolean bool1 = false;
        continue;
        bool1 = false;
      }
    }
    finally
    {
    }
  }

  private final boolean a(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = -1;
    if (paramBoolean);
    int i2;
    label278: boolean bool1;
    label542: String str2;
    label748: String str1;
    label815: int i10;
    do
    {
      do
      {
        while (true)
        {
          try
          {
            if (this.R > 0)
            {
              if (this.R == 2)
              {
                paramInt1 = -2;
                if (this.q != 2)
                  continue;
                i11 = 1;
                this.q = i11;
                setLevel(this.z);
                this.R = 0;
                paramBoolean = false;
              }
            }
            else
            {
              if (!paramBoolean)
                break label278;
              c(paramInt1);
              if ((this.q != 5) && (this.q != 6))
              {
                if (paramInt3 != 0)
                  continue;
                this.O = "random play";
              }
              i2 = 1;
              return i2;
            }
            paramInt1 = i1;
            continue;
            int i11 = 3;
            continue;
            if (paramInt3 == i1)
            {
              this.O = "only reply";
              continue;
            }
          }
          finally
          {
          }
          if (paramInt3 == -2)
          {
            this.O = "opening";
          }
          else if (paramInt2 <= -32000)
          {
            this.O = ("loss in #" + (paramInt2 + 32500) / 2);
          }
          else if (paramInt2 >= 32000)
          {
            this.O = ("win in #" + (32500 - paramInt2) / 2);
          }
          else
          {
            this.O = ("v=" + paramInt2 + " d=" + paramInt3 + " n=" + paramInt4);
            continue;
            if (paramInt1 == -3)
            {
              f();
              i2 = 1;
            }
            else if (paramInt1 == i1)
            {
              if ((this.q == 2) || (this.q == 4))
              {
                this.R = 1;
                this.p.h = 1;
                this.O = "stopping....";
                i2 = 1;
              }
              else
              {
                this.R = 0;
                this.p.a();
                this.q = 1;
                this.r = this.p.d;
                this.s = this.p.f;
                this.t = this.p.e;
                this.u = this.p.g;
                this.v = 0;
                this.w = 0;
                this.x = 0;
                this.y = false;
                this.L = 0;
                this.M = 0;
                this.N = this.p.c;
                this.O = null;
                i2 = 1;
              }
            }
            else if (paramInt1 == -2)
            {
              this.v = 0;
              this.w = 0;
              this.x = 0;
              if ((this.q == 2) || (this.q == 4))
              {
                this.R = 2;
                this.p.h = 1;
                this.O = "stopping....";
                i2 = 1;
              }
              else
              {
                this.R = 0;
                if ((this.q == 1) || (this.q == 5))
                  break label1012;
                bool1 = false;
                if (g(bool1))
                {
                  if (bool1);
                  for (this.q = 3; ; this.q = 1)
                  {
                    this.r = this.p.d;
                    this.s = this.p.f;
                    this.t = this.p.e;
                    this.u = this.p.g;
                    this.v = 0;
                    this.w = 0;
                    this.x = 0;
                    int i4 = this.p.a(0, bool1, this.B);
                    boolean bool2 = false;
                    if (i4 == 1)
                      bool2 = true;
                    this.y = bool2;
                    this.N = this.p.c;
                    this.O = "undid half-move";
                    i2 = 1;
                    break;
                  }
                }
                this.O = "no more undo";
                i2 = 1;
              }
            }
            else
            {
              if (paramInt1 != -4)
                break;
              if (this.q == 1)
              {
                this.q = 2;
                this.p.a(false, this.B);
                Context localContext2 = this.a;
                if (!this.C)
                  break label1018;
                str2 = "computer now plays black";
                Toast.makeText(localContext2, str2, 0).show();
                i2 = 1;
              }
              else
              {
                int i5 = this.q;
                i2 = 0;
                if (i5 == 3)
                {
                  this.q = 4;
                  this.p.a(true, this.B);
                  Context localContext1 = this.a;
                  if (!this.C)
                    break label1026;
                  str1 = "computer now plays white\ngoto options to rotate board";
                  Toast.makeText(localContext1, str1, 0).show();
                  i2 = 1;
                }
              }
            }
          }
        }
        i2 = 0;
      }
      while (paramInt1 != 1);
      if (this.q == 1)
        break;
      i10 = this.q;
      i2 = 0;
    }
    while (i10 != 3);
    this.w = 0;
    this.x = 0;
    int i6 = this.p.c;
    int[] arrayOfInt = this.p.b;
    int i7 = 0;
    int i8 = 0;
    while (true)
    {
      if (i7 >= i6)
      {
        if (i8 != 1)
          break label987;
        c(i1);
        i2 = 1;
        break;
      }
      if ((this.v & arrayOfInt[i7]) == this.v)
      {
        if (arrayOfInt[i7] != i2);
        for (int i9 = i8 + 1; ; i9 = i8)
        {
          int i3 = arrayOfInt[i7];
          this.w |= arrayOfInt[i7];
          i8 = i9;
          i1 = i7;
          break label1034;
          label987: if (this.w == 0)
            this.v = 0;
          i3 = 1;
          break;
        }
        label1012: bool1 = true;
        break label542;
        label1018: str2 = "computer now plays black\ngoto options to rotate board";
        break label748;
        label1026: str1 = "computer now plays white";
        break label815;
      }
      label1034: i7++;
    }
  }

  private final int b(float paramFloat1, float paramFloat2)
  {
    int i1 = 1;
    while (true)
    {
      int i4;
      int i5;
      int i7;
      try
      {
        int i2 = getWidth();
        int i3 = getHeight();
        int i6;
        if (i2 < i3)
        {
          i4 = i2 >>> 3;
          if (this.q != i1)
          {
            int i12 = this.q;
            if (i12 != 3);
          }
          else
          {
            i5 = 0;
            i6 = i1;
            if (i5 < 8)
              continue;
          }
          i1 = 0;
          return i1;
        }
        else
        {
          i2 = i3;
          continue;
        }
        i7 = 0x1 & 1 - i5;
        i8 = i6;
        if (i7 >= 8)
        {
          i5++;
          i6 = i8;
          continue;
        }
        if (this.C)
        {
          i9 = i4 * (7 - i7);
          i10 = i4 * (7 - i5);
          if ((i9 > paramFloat1) || (paramFloat1 >= i9 + i4) || (i10 > paramFloat2) || (paramFloat2 >= i10 + i4))
            break label207;
          this.v = (i8 | this.v);
          continue;
        }
      }
      finally
      {
      }
      int i9 = i4 * i7;
      int i10 = i4 * i5;
      continue;
      label207: int i11 = i8 << 1;
      i7 += 2;
      int i8 = i11;
    }
  }

  private final void b(int paramInt)
  {
    try
    {
      if (this.G != paramInt)
      {
        this.G = paramInt;
        c();
        postInvalidate();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private final void b(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt2 & (paramInt1 ^ 0xFFFFFFFF);
    if (i1 == 0)
    {
      a(paramCanvas, Integer.numberOfTrailingZeros(paramInt1), Integer.numberOfTrailingZeros(paramInt1 & paramInt1 - 1), paramInt3, paramInt4);
      return;
    }
    label203: 
    while (true)
    {
      int i2;
      int i3 = Integer.numberOfTrailingZeros(i2);
      int i4;
      int i7;
      int i8;
      int i9;
      if ((0x1 & i3 >>> 2) != 0)
      {
        i4 = i3 - 5;
        int i12 = i3 - 4;
        int i13 = i3 + 3;
        i7 = i3 + 4;
        i8 = i13;
        i9 = i12;
        int i10 = 1 << i4 | 1 << i7;
        int i11 = 1 << i9 | 1 << i8;
        if ((i10 & paramInt1) == i10)
          a(paramCanvas, i4, i7, paramInt3, paramInt4);
        if ((i11 & paramInt1) == i11)
          a(paramCanvas, i9, i8, paramInt3, paramInt4);
        i2 &= i2 - 1;
      }
      while (true)
      {
        if (i2 != 0)
          break label203;
        return;
        i4 = i3 - 4;
        int i5 = i3 - 3;
        int i6 = i3 + 4;
        i7 = i3 + 5;
        i8 = i6;
        i9 = i5;
        break;
        i2 = i1;
      }
    }
  }

  private final void c()
  {
    switch (this.G)
    {
    default:
      return;
    case 1:
      this.e.setARGB(255, 102, 205, 170);
      return;
    case 2:
      this.e.setARGB(255, 69, 139, 116);
      return;
    case 3:
      this.e.setARGB(255, 30, 144, 255);
      return;
    case 4:
      this.e.setARGB(255, 142, 107, 35);
      return;
    case 5:
      this.e.setARGB(255, 108, 123, 139);
      return;
    case 6:
    }
    this.e.setARGB(255, 204, 204, 204);
  }

  private final void c(int paramInt)
  {
    d();
    boolean bool;
    if ((this.q != 1) && (this.q != 2))
    {
      bool = false;
      label22: this.v = 0;
      this.w = 0;
      this.x = this.p.b[paramInt];
      if (this.F)
      {
        this.l = 0.9F;
        if (!bool)
          break label198;
        this.m = (this.p.a[paramInt] & (this.r | this.t));
      }
    }
    for (this.n = 0; ; this.n = (this.p.a[paramInt] & (this.s | this.u)))
    {
      this.p.a(paramInt);
      this.r = this.p.d;
      this.s = this.p.f;
      this.t = this.p.e;
      this.u = this.p.g;
      this.y = false;
      this.O = null;
      switch (this.p.a(0, bool, this.B))
      {
      default:
        return;
        bool = true;
        break label22;
        label198: this.m = 0;
      case 0:
      case 1:
      case 2:
      }
    }
    if (bool);
    for (int i1 = 6; ; i1 = 5)
    {
      this.q = i1;
      this.N = 0;
      return;
    }
    this.y = true;
    this.N = this.p.c;
    if (this.q == 1)
    {
      if (this.z == 0)
      {
        this.q = 3;
        this.O = "free play";
        return;
      }
      this.q = 4;
      this.p.a(bool, this.B);
      return;
    }
    if (this.q == 3)
    {
      if (this.z == 0)
      {
        this.q = 1;
        this.O = "free play";
        return;
      }
      this.q = 2;
      this.p.a(bool, this.B);
      return;
    }
    if (this.q == 2)
    {
      this.q = 3;
      return;
    }
    this.q = 1;
  }

  private final void d()
  {
    int i1 = this.L;
    this.H[i1] = this.p.d;
    this.I[i1] = this.p.e;
    this.J[i1] = this.p.f;
    this.K[i1] = this.p.g;
    if (this.L < 7);
    for (this.L = (1 + this.L); ; this.L = 0)
    {
      if (this.M < 8)
        this.M = (1 + this.M);
      return;
    }
  }

  private final boolean e()
  {
    return this.s == -1048576;
  }

  private final void f()
  {
    new AlertDialog.Builder(this.a).setMessage("Start a new game?").setCancelable(false).setPositiveButton("Yes", new c(this)).setNegativeButton("No", new d(this)).show();
  }

  private final void g()
  {
  }

  private final boolean g(boolean paramBoolean)
  {
    if (this.M > 0)
    {
      this.M = (-1 + this.M);
      if (this.L > 0);
      for (this.L = (-1 + this.L); ; this.L = 7)
      {
        int i1 = this.L;
        this.p.a(this.H[i1], this.I[i1], this.J[i1], this.K[i1], paramBoolean);
        return true;
      }
    }
    return false;
  }

  public final void a()
  {
    CharSequence[] arrayOfCharSequence = { "Wood", "Light Aquamarine", "Dark Aquamarine", "Blue", "Brown", "Grey", "Light Grey" };
    new AlertDialog.Builder(this.a).setTitle("Board Color").setItems(arrayOfCharSequence, new g(this)).show();
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    int i1 = getWidth();
    int i2 = getHeight();
    int i3;
    int i4;
    if (i1 < i2)
    {
      i3 = i1;
      i4 = i3 >>> 3;
      int i5 = i4 << 3;
      if ((0.0F > this.P) || (this.P >= i5) || (0.0F > this.Q) || (this.Q >= i5))
        break label144;
    }
    while (true)
    {
      try
      {
        label72: this.P += paramFloat1 * i4;
        this.Q += paramFloat2 * i4;
        if (this.P < 0.0F)
        {
          this.P = 0.0F;
          if (this.Q >= 0.0F)
            break label179;
          this.Q = 0.0F;
          postInvalidate();
          return;
          i3 = i2;
          break;
          label144: i4 = 16;
          break label72;
        }
        if (this.P < i1)
          continue;
        this.P = (i1 - 1);
        continue;
      }
      finally
      {
      }
      label179: if (this.Q >= i2)
        this.Q = (i2 - 1);
    }
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a(true, paramInt1, paramInt2, paramInt3, paramInt4))
      postInvalidate();
  }

  public final void a(SharedPreferences.Editor paramEditor)
  {
    try
    {
      paramEditor.clear();
      paramEditor.putInt("format", 34);
      paramEditor.putInt("state", this.q);
      paramEditor.putInt("wp", this.r);
      paramEditor.putInt("bp", this.s);
      paramEditor.putInt("wk", this.t);
      paramEditor.putInt("bk", this.u);
      paramEditor.putInt("l1", this.v);
      paramEditor.putInt("l2", this.w);
      paramEditor.putInt("lm", this.x);
      paramEditor.putBoolean("cap", this.y);
      paramEditor.putInt("level", this.z);
      paramEditor.putBoolean("show", this.A);
      paramEditor.putBoolean("free", this.B);
      paramEditor.putBoolean("rot", this.C);
      paramEditor.putBoolean("full", this.D);
      paramEditor.putBoolean("start", this.E);
      paramEditor.putBoolean("anim", this.F);
      paramEditor.putInt("color", this.G);
      a(paramEditor, "lwp", this.H);
      a(paramEditor, "lwk", this.I);
      a(paramEditor, "lbp", this.J);
      a(paramEditor, "lbk", this.K);
      paramEditor.putInt("lp", this.L);
      paramEditor.putInt("lc", this.M);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean a(int paramInt)
  {
    boolean bool1 = a(false, paramInt, 0, 0, 0);
    boolean bool2 = false;
    if (bool1)
    {
      postInvalidate();
      bool2 = true;
    }
    return bool2;
  }

  public final boolean a(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      if (this.A);
      for (boolean bool2 = false; ; bool2 = true)
      {
        this.A = bool2;
        postInvalidate();
        boolean bool1 = this.A;
        return bool1;
      }
    }
    finally
    {
    }
  }

  public final void b()
  {
    try
    {
      int i1 = b(this.P, this.Q);
      if ((i1 != 0) && (a(false, i1, 0, 0, 0)))
        postInvalidate();
      return;
    }
    finally
    {
    }
  }

  public final boolean b(boolean paramBoolean)
  {
    int i1 = 1;
    if (paramBoolean);
    try
    {
      boolean bool2;
      if (this.B)
      {
        bool2 = false;
        this.B = bool2;
        if ((this.q == 3) || (this.q == i1))
        {
          if (this.q != 3)
            break label121;
          int i2 = i1;
          label51: this.v = 0;
          this.w = 0;
          this.x = 0;
          if (this.p.a(0, i2, this.B) != i1)
            break label127;
        }
      }
      while (true)
      {
        this.y = i1;
        this.N = this.p.c;
        postInvalidate();
        boolean bool1 = this.B;
        return bool1;
        bool2 = i1;
        break;
        label121: int i3 = 0;
        break label51;
        label127: i1 = 0;
      }
    }
    finally
    {
    }
  }

  public final boolean c(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      boolean bool2 = this.C;
      boolean bool3 = false;
      if (bool2);
      while (true)
      {
        this.C = bool3;
        Toast.makeText(this.a, "rotated board", 0).show();
        postInvalidate();
        boolean bool1 = this.C;
        return bool1;
        bool3 = true;
      }
    }
    finally
    {
    }
  }

  public final boolean d(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      if (this.D);
      for (boolean bool2 = false; ; bool2 = true)
      {
        this.D = bool2;
        boolean bool1 = this.D;
        return bool1;
      }
    }
    finally
    {
    }
  }

  public void draw(Canvas paramCanvas)
  {
    int i4;
    int i23;
    label340: int i31;
    label705: int i34;
    int i35;
    label773: int i32;
    int i22;
    int i20;
    int i39;
    int i21;
    int i40;
    int i41;
    int i19;
    int i38;
    while (true)
    {
      int i6;
      int i7;
      int i8;
      int i10;
      int i11;
      int i12;
      int i13;
      int i29;
      int[] arrayOfInt1;
      int[] arrayOfInt2;
      int i30;
      int i16;
      int i15;
      int i36;
      int i37;
      try
      {
        super.draw(paramCanvas);
        int i1 = getWidth();
        int i2 = getHeight();
        int i3;
        int i5;
        Object localObject2;
        if (i1 < i2)
        {
          i3 = i1;
          i4 = i3 >>> 3;
          i5 = i4 << 3;
          i6 = i4 >>> 1;
          i7 = this.k;
          i8 = i7 / 3;
          if (i1 >= i2)
            continue;
          int i46 = i5 - i7 * 11;
          int i47 = i5 + i7;
          i10 = i47;
          i11 = i46;
          i12 = i47;
          i13 = 2;
          paramCanvas.drawPaint(this.b);
          if (this.G != 0)
            continue;
          localObject2 = this.d;
          this.o.setBounds(0, 0, i5, i5);
          this.o.draw(paramCanvas);
          break label1640;
          if (i23 < 8)
            break label1707;
          if (!e())
            break label1295;
          paramCanvas.drawText("Checkers for Android", i13, i12, this.c);
          paramCanvas.drawText("", i13, i12 + i7, this.c);
          if (!h.r)
            paramCanvas.drawText("no endgame TBs", i13, i12 + i7 * 2, this.c);
          if (this.y)
            paramCanvas.drawText("MUST CAPTURE", i11, i10, this.f);
        }
        switch (this.q)
        {
        default:
          if ((this.A) && ((this.q == 1) || (this.q == 3)))
          {
            i29 = this.p.c;
            arrayOfInt1 = this.p.b;
            arrayOfInt2 = this.p.a;
            i30 = 0;
            break label1671;
          }
          if (this.O != null)
            paramCanvas.drawText(this.O, i11, i10 + i7 * 2, this.i);
          boolean bool1 = 0.0F < this.P;
          int i24 = 0;
          if (!bool1)
          {
            boolean bool2 = this.P < i5;
            i24 = 0;
            if (bool2)
            {
              boolean bool3 = 0.0F < this.Q;
              i24 = 0;
              if (!bool3)
              {
                boolean bool4 = this.Q < i5;
                i24 = 0;
                if (bool4)
                {
                  int i25 = (int)this.P / i4;
                  int i26 = (int)this.Q / i4;
                  i24 = 0;
                  if (i25 >= 0)
                  {
                    i24 = 0;
                    if (i25 < 8)
                    {
                      i24 = 0;
                      if (i26 >= 0)
                      {
                        i24 = 0;
                        if (i26 < 8)
                        {
                          int i27 = i4 * i25;
                          int i28 = i4 * i26;
                          paramCanvas.drawRect(i27, i28, i27 + i4, i28 + i4, this.j);
                          i24 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          if (i24 == 0)
          {
            paramCanvas.drawCircle(this.P, this.Q, 5.0F, this.c);
            paramCanvas.drawCircle(this.P, this.Q, 3.0F, this.b);
          }
          if (this.l > 0.0F)
          {
            this.l = ((float)(this.l - 0.05D));
            if (this.l <= 0.0F)
            {
              this.l = 0.0F;
              this.m = 0;
              this.n = 0;
            }
            postInvalidateDelayed(50L);
          }
          return;
          i3 = i2;
          continue;
          int i9 = i5 + 2;
          i10 = i5 - i7 * 2 - i8;
          i11 = i9;
          i12 = i7;
          i13 = i9;
          continue;
          Paint localPaint = this.c;
          paramCanvas.drawRect(0.0F, 0.0F, i5, i5, this.e);
          localObject2 = localPaint;
          break label1640;
          int i17 = i4 * i16;
          paramCanvas.drawRect(i15, i17, i15 + i4, i17 + i4, (Paint)localObject2);
          i16 += 2;
          break label1694;
          if (!this.C)
            break label1768;
          int i33 = i4 * (7 - i31);
          i34 = i4 * (7 - i23);
          i35 = i33;
          i36 = i6 + i35;
          i37 = i6 + i34;
          if ((i32 & this.v) != 0)
          {
            paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + i4), -1 + (i34 + i4), this.f);
            if ((i32 & this.r) == 0)
              break label994;
            a(paramCanvas, i36, i37, i6, i8, this.b, this.c, false);
            int i44 = i22 + 1;
            i39 = i20;
            i40 = i21;
            i41 = i44;
            i38 = i19;
            break label1736;
          }
          if ((i32 & this.w) != 0)
          {
            paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + i4), -1 + (i34 + i4), this.g);
            continue;
          }
          break;
        case 1:
        case 3:
        case 2:
        case 4:
        case 5:
        case 6:
        }
      }
      finally
      {
      }
      if ((this.A) && ((i32 & this.x) != 0))
      {
        paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + i4), -1 + (i34 + i4), this.i);
        continue;
        label994: if ((i32 & this.s) != 0)
        {
          a(paramCanvas, i36, i37, i6, i8, this.c, this.b, false);
          i39 = i20 + 1;
          i40 = i21;
          i41 = i22;
          i38 = i19;
          break;
        }
        if ((i32 & this.t) != 0)
        {
          a(paramCanvas, i36, i37, i6, i8, this.b, this.c, true);
          int i43 = i21 + 1;
          i39 = i20;
          i40 = i43;
          i41 = i22;
          i38 = i19;
          break;
        }
        if ((i32 & this.u) != 0)
        {
          a(paramCanvas, i36, i37, i6, i8, this.c, this.b, true);
          i38 = i19 + 1;
          i39 = i20;
          i40 = i21;
          i41 = i22;
          break;
        }
        if ((i32 & this.n) != 0)
        {
          paramCanvas.drawCircle(i36, i37, (i6 - 2) * this.l, this.c);
          paramCanvas.drawCircle(i36, i37, (i6 - 4) * this.l, this.b);
          i38 = i19;
          i39 = i20;
          i40 = i21;
          i41 = i22;
          break;
        }
        if ((i32 & this.m) == 0)
          break label1789;
        paramCanvas.drawCircle(i36, i37, (i6 - 2) * this.l, this.b);
        paramCanvas.drawCircle(i36, i37, (i6 - 4) * this.l, this.c);
        break label1789;
        label1295: paramCanvas.drawText("White", i13, i12, this.c);
        paramCanvas.drawText("Black", i13, i12 + i7, this.c);
        paramCanvas.drawText("Moves", i13, i12 + i7 * 2, this.c);
        paramCanvas.drawText(":  " + i22 + "+" + i21, i13 + i7 * 3, i12, this.c);
        paramCanvas.drawText(":  " + i20 + "+" + i19, i13 + i7 * 3, i12 + i7, this.c);
        paramCanvas.drawText(":  " + this.N, i13 + i7 * 3, i12 + i7 * 2, this.c);
        continue;
        paramCanvas.drawText("BLACK'S MOVE?", i11, i10 + i7, this.c);
        continue;
        paramCanvas.drawText("WHITE'S MOVE?", i11, i10 + i7, this.c);
        continue;
        paramCanvas.drawText("THINKING....", i11, i10 + i7, this.c);
        continue;
        paramCanvas.drawText("WHITE WINS", i11, i10 + i7, this.c);
        continue;
        paramCanvas.drawText("BLACK WINS", i11, i10 + i7, this.c);
        continue;
        label1615: b(paramCanvas, arrayOfInt1[i30], arrayOfInt2[i30], i4, i6);
        i30++;
        label1640: for (int i14 = 0; ; i14++)
        {
          if (i14 >= 8)
          {
            i18 = 1;
            i19 = 0;
            i20 = 0;
            i21 = 0;
            i22 = 0;
            i23 = 0;
            break;
            if (i30 < i29)
              break label1615;
            break label340;
          }
          i15 = i4 * i14;
          i16 = i14 & 0x1;
          if (i16 < 8)
            break label705;
        }
        label1671: label1694: label1707: i31 = 0x1 & 1 - i23;
        i32 = i18;
        label1719: if (i31 < 8)
          break label1766;
        i23++;
        int i18 = i32;
      }
    }
    while (true)
    {
      label1736: int i42 = i32 << 1;
      i31 += 2;
      i32 = i42;
      i19 = i38;
      i20 = i39;
      i21 = i40;
      i22 = i41;
      break label1719;
      label1766: break;
      label1768: int i45 = i4 * i31;
      i34 = i4 * i23;
      i35 = i45;
      break label773;
      label1789: i38 = i19;
      i39 = i20;
      i40 = i21;
      i41 = i22;
    }
  }

  public final boolean e(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      if (this.E);
      for (boolean bool2 = false; ; bool2 = true)
      {
        this.E = bool2;
        boolean bool1 = this.E;
        return bool1;
      }
    }
    finally
    {
    }
  }

  public final boolean f(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      if (this.F);
      for (boolean bool2 = false; ; bool2 = true)
      {
        this.F = bool2;
        boolean bool1 = this.F;
        return bool1;
      }
    }
    finally
    {
    }
  }

  public final int getLevel()
  {
    try
    {
      int i1 = this.z;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1;
    if (paramInt1 < paramInt2)
      i1 = paramInt1;
    while (true)
    {
      float f1;
      try
      {
        f1 = i1 / 24;
        if (paramInt1 > paramInt2)
        {
          f2 = (paramInt1 - i1) / 10;
          if (f2 < f1)
          {
            this.b.setTextSize(f2);
            this.c.setTextSize(f2);
            this.i.setTextSize(f2);
            this.f.setTextSize(f2);
            this.k = (1 + (int)f2);
            return;
            i1 = paramInt2;
            continue;
          }
        }
      }
      finally
      {
      }
      float f2 = f1;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      int i1 = b(paramMotionEvent.getX(), paramMotionEvent.getY());
      if (i1 != 0)
      {
        if (a(false, i1, 0, 0, 0))
          postInvalidate();
        return true;
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }

  public final void setLevel(int paramInt)
  {
    int i1 = 1000;
    switch (paramInt)
    {
    default:
      paramInt = 3;
    case 3:
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    try
    {
      while (true)
      {
        this.p.h = i1;
        this.z = paramInt;
        return;
        i1 = -1;
        continue;
        i1 = 0;
        continue;
        i1 = 100;
        continue;
        i1 = 5000;
        continue;
        i1 = 10000;
        continue;
        i1 = 15000;
        continue;
        i1 = 30000;
      }
      i1 = 60000;
    }
    finally
    {
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.xxogli.xadroid.checkers.b
 * JD-Core Version:    0.6.2
 */
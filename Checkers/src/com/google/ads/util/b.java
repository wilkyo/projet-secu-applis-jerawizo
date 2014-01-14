package com.google.ads.util;

import java.io.UnsupportedEncodingException;

public class b
{
  static
  {
    if (!b.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public static String a(byte[] paramArrayOfByte)
  {
    int i;
    b localb;
    int j;
    int k;
    int m;
    try
    {
      i = paramArrayOfByte.length;
      localb = new b();
      j = 4 * (i / 3);
      if (localb.d)
      {
        if (i % 3 > 0)
          j += 4;
        if ((localb.e) && (i > 0))
        {
          k = 1 + (i - 1) / 57;
          if (!localb.f)
            break label190;
          m = 2;
          break label162;
        }
        label68: localb.a = new byte[j];
        localb.a(paramArrayOfByte, i);
        if ((a) || (localb.b == j))
          break label144;
        throw new AssertionError();
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
    switch (i % 3)
    {
    case 0:
      label144: String str = new String(localb.a, "US-ASCII");
      return str;
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      label162: j += k * m;
      break label68;
      break;
      j += 2;
      break;
      j += 3;
      break;
      label190: m = 1;
    }
  }

  public static abstract class a
  {
    public byte[] a;
    public int b;
  }

  public static final class b extends b.a
  {
    private static final byte[] h;
    private static final byte[] i;
    public int c = 0;
    public final boolean d = false;
    public final boolean e = false;
    public final boolean f = false;
    private final byte[] j = new byte[2];
    private int k;
    private final byte[] l = i;

    static
    {
      if (!b.class.desiredAssertionStatus());
      for (boolean bool = true; ; bool = false)
      {
        g = bool;
        h = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        i = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        return;
      }
    }

    public b()
    {
      this.a = null;
      if (this.e);
      for (int m = 19; ; m = -1)
      {
        this.k = m;
        return;
      }
    }

    public final boolean a(byte[] paramArrayOfByte, int paramInt)
    {
      byte[] arrayOfByte1 = this.l;
      byte[] arrayOfByte2 = this.a;
      int m = this.k;
      int n = paramInt + 0;
      int i1 = -1;
      int i2 = this.c;
      int i3 = 0;
      int i6;
      int i7;
      label76: int i8;
      int i9;
      int i10;
      switch (i2)
      {
      default:
        int i5 = i1;
        i6 = i3;
        i7 = i5;
        i8 = 0;
        if (i7 != -1)
        {
          int i51 = 0 + 1;
          arrayOfByte2[0] = arrayOfByte1[(0x3F & i7 >> 18)];
          int i52 = i51 + 1;
          arrayOfByte2[1] = arrayOfByte1[(0x3F & i7 >> 12)];
          int i53 = i52 + 1;
          arrayOfByte2[2] = arrayOfByte1[(0x3F & i7 >> 6)];
          i8 = i53 + 1;
          arrayOfByte2[3] = arrayOfByte1[(i7 & 0x3F)];
          m--;
          if (m == 0)
          {
            if (this.f)
            {
              i8++;
              arrayOfByte2[4] = 13;
            }
            int i54 = i8 + 1;
            arrayOfByte2[i8] = 10;
            i9 = i54;
            m = 19;
            i10 = i6;
          }
        }
        break;
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        label210: int i50;
        if (i10 + 3 <= n)
        {
          int i49 = (0xFF & paramArrayOfByte[i10]) << 16 | (0xFF & paramArrayOfByte[(i10 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i10 + 2)];
          arrayOfByte2[i9] = arrayOfByte1[(0x3F & i49 >> 18)];
          arrayOfByte2[(i9 + 1)] = arrayOfByte1[(0x3F & i49 >> 12)];
          arrayOfByte2[(i9 + 2)] = arrayOfByte1[(0x3F & i49 >> 6)];
          arrayOfByte2[(i9 + 3)] = arrayOfByte1[(i49 & 0x3F)];
          i10 += 3;
          i9 += 4;
          m--;
          if (m == 0)
            if (this.f)
            {
              i50 = i9 + 1;
              arrayOfByte2[i9] = 13;
            }
        }
        else
        {
          while (true)
          {
            i9 = i50 + 1;
            arrayOfByte2[i50] = 10;
            m = 19;
            break label210;
            i7 = i1;
            i6 = 0;
            break label76;
            i3 = 0;
            if (2 > n)
              break;
            int i55 = (0xFF & this.j[0]) << 16;
            int i56 = 0 + 1;
            int i57 = i55 | (0xFF & paramArrayOfByte[0]) << 8;
            int i58 = i56 + 1;
            int i59 = i57 | 0xFF & paramArrayOfByte[1];
            this.c = 0;
            i6 = i58;
            i7 = i59;
            break label76;
            i3 = 0;
            if (n <= 0)
              break;
            int i4 = (0xFF & this.j[0]) << 16 | (0xFF & this.j[1]) << 8;
            i3 = 0 + 1;
            i1 = i4 | 0xFF & paramArrayOfByte[0];
            this.c = 0;
            break;
            int i38;
            int i37;
            int i36;
            int i41;
            int i46;
            if (i10 - this.c == n - 1)
              if (this.c > 0)
              {
                byte[] arrayOfByte5 = this.j;
                int i47 = 0 + 1;
                int i48 = arrayOfByte5[0];
                i38 = i47;
                i37 = i10;
                i36 = i48;
                int i39 = (i36 & 0xFF) << 4;
                this.c -= i38;
                int i40 = i9 + 1;
                arrayOfByte2[i9] = arrayOfByte1[(0x3F & i39 >> 6)];
                i41 = i40 + 1;
                arrayOfByte2[i40] = arrayOfByte1[(i39 & 0x3F)];
                if (!this.d)
                  break label1194;
                int i45 = i41 + 1;
                arrayOfByte2[i41] = 61;
                i46 = i45 + 1;
                arrayOfByte2[i45] = 61;
              }
            label1059: label1194: for (int i42 = i46; ; i42 = i41)
            {
              if (this.e)
              {
                if (this.f)
                {
                  int i44 = i42 + 1;
                  arrayOfByte2[i42] = 13;
                  i42 = i44;
                }
                int i43 = i42 + 1;
                arrayOfByte2[i42] = 10;
                i42 = i43;
              }
              int i12 = i42;
              int i11 = i37;
              int i17;
              int i16;
              int i15;
              label821: int i21;
              int i20;
              int i22;
              label874: int i26;
              int i27;
              if ((!g) && (this.c != 0))
              {
                throw new AssertionError();
                int i35 = i10 + 1;
                i36 = paramArrayOfByte[i10];
                i37 = i35;
                i38 = 0;
                break;
                if (i10 - this.c == n - 2)
                  if (this.c > 1)
                  {
                    byte[] arrayOfByte4 = this.j;
                    int i33 = 0 + 1;
                    int i34 = arrayOfByte4[0];
                    i17 = i33;
                    i16 = i10;
                    i15 = i34;
                    int i18 = (i15 & 0xFF) << 10;
                    if (this.c <= 0)
                      break label1059;
                    byte[] arrayOfByte3 = this.j;
                    int i30 = i17 + 1;
                    int i31 = arrayOfByte3[i17];
                    i21 = i30;
                    int i32 = i16;
                    i20 = i31;
                    i22 = i32;
                    int i23 = i18 | (i20 & 0xFF) << 2;
                    this.c -= i21;
                    int i24 = i9 + 1;
                    arrayOfByte2[i9] = arrayOfByte1[(0x3F & i23 >> 12)];
                    int i25 = i24 + 1;
                    arrayOfByte2[i24] = arrayOfByte1[(0x3F & i23 >> 6)];
                    i26 = i25 + 1;
                    arrayOfByte2[i25] = arrayOfByte1[(i23 & 0x3F)];
                    if (!this.d)
                      break label1187;
                    i27 = i26 + 1;
                    arrayOfByte2[i26] = 61;
                  }
              }
              while (true)
              {
                if (this.e)
                {
                  if (this.f)
                  {
                    int i29 = i27 + 1;
                    arrayOfByte2[i27] = 13;
                    i27 = i29;
                  }
                  int i28 = i27 + 1;
                  arrayOfByte2[i27] = 10;
                  i27 = i28;
                }
                i12 = i27;
                i11 = i22;
                break;
                int i14 = i10 + 1;
                i15 = paramArrayOfByte[i10];
                i16 = i14;
                i17 = 0;
                break label821;
                int i19 = i16 + 1;
                i20 = paramArrayOfByte[i16];
                i21 = i17;
                i22 = i19;
                break label874;
                int i13;
                if ((this.e) && (i9 > 0) && (m != 19))
                {
                  if (!this.f)
                    break label1180;
                  i13 = i9 + 1;
                  arrayOfByte2[i9] = 13;
                }
                while (true)
                {
                  i9 = i13 + 1;
                  arrayOfByte2[i13] = 10;
                  i11 = i10;
                  i12 = i9;
                  break;
                  if ((!g) && (i11 != n))
                    throw new AssertionError();
                  this.b = i12;
                  this.k = m;
                  return true;
                  i13 = i9;
                }
                i27 = i26;
              }
            }
            label1180: label1187: i50 = i9;
          }
          i9 = i8;
          i10 = i6;
        }
      }
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.util.b
 * JD-Core Version:    0.6.2
 */
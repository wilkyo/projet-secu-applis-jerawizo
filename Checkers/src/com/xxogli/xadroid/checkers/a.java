package com.xxogli.xadroid.checkers;

import java.util.Random;

public class a extends Thread
{
  private static final int[] D;
  private static final int[] E;
  private static final int[] F;
  private static final int[] G;
  private static final int[] H;
  private static final int[] I;
  private static final int[] J;
  private static final int[] K;
  private static final int[] L = arrayOfInt9;
  private static final int[] M = { -1167571609, 1399610623, -691087174, 1971052870, -1226693861, -1882905254, -1033190199, -1643948105, 1203953957, -281912599, 1932579021, -827357679, -1058966239, 1628036585, 1438133756, -2135086441, 169334671, -2141848400, 1036487996, 180724828, -1363197701, -2043796183, 1196537724, -1524684703, 1400387240, 1171699179, 975637495, 1515326181, -2002144952, 20274467, 792413540, -1834188091, 651854139, 312733854, -1483417172, -401608645, -2016061880, -1898970769, 1528868989, 1476886812, 655104248, 1275144906, -413558472, 1179720244, 960841210, -84519802, 764308053, -1946918029, 1044381494, 1722809584, 250023189, 356693417, 2029258122, -1335236598, 1981564840, -816796786, -1671521015, 956867123, -1516822913, 1395093063, 1341099082, -763205597, 719013895, -125622087, 239433278, 698148967, 490256803, 219929140, 9404688, 1211696129, 1540320888, 1070169635, -1629411990, -60600539, -1062649542, 1007031952, 1695872155, 1571589839, 1711909982, 1891535538, -1801090600, 1205947010, -651093369, -1314346870, 1288073284, 88139598, 1461894573, 1119979756, 1302801292, 1421055936, 421807588, -21700509, 310044340, -2091433041, 1976644103, -1588326860, -1687564151, 148411329, -1755559321, 2058708972, -2137111067, 1762190601, 1499027188, -1215524918, -1433130803, -163939206, -2047972150, -94462166, -997806135, 858531075, 1114095466, 765099161, -382352606, -1032739375, -380256699, 2068218367, -100447487, 284033282, -1923303838, 1254589825, 782828606, 1428105291, -1660332465, -1731350017, -403123714, -897917683, -433779406, 699725162, 572002306 };
  private byte[] A;
  private boolean B;
  private int C;
  public int[] a;
  public int[] b;
  public int c;
  public int d;
  public int e;
  public int f;
  public int g;
  public volatile int h = 1000;
  private Random i = new Random();
  private ChekersView j;
  private boolean k;
  private long l;
  private boolean m;
  private int n;
  private int[] o;
  private int[] p;
  private int[] q;
  private int r;
  private boolean s;
  private boolean t;
  private boolean u;
  private int v;
  private int w;
  private int x;
  private int[] y;
  private short[] z;

  static
  {
    int[] arrayOfInt1 = new int[32];
    arrayOfInt1[5] = 1;
    arrayOfInt1[6] = 2;
    arrayOfInt1[7] = 4;
    arrayOfInt1[8] = 16;
    arrayOfInt1[9] = 32;
    arrayOfInt1[10] = 64;
    arrayOfInt1[11] = 128;
    arrayOfInt1[13] = 256;
    arrayOfInt1[14] = 512;
    arrayOfInt1[15] = 1024;
    arrayOfInt1[16] = 4096;
    arrayOfInt1[17] = 8192;
    arrayOfInt1[18] = 16384;
    arrayOfInt1[19] = 32768;
    arrayOfInt1[21] = 65536;
    arrayOfInt1[22] = 131072;
    arrayOfInt1[23] = 262144;
    arrayOfInt1[24] = 1048576;
    arrayOfInt1[25] = 2097152;
    arrayOfInt1[26] = 4194304;
    arrayOfInt1[27] = 8388608;
    arrayOfInt1[29] = 16777216;
    arrayOfInt1[30] = 33554432;
    arrayOfInt1[31] = 67108864;
    D = arrayOfInt1;
    int[] arrayOfInt2 = new int[32];
    arrayOfInt2[9] = 1;
    arrayOfInt2[10] = 2;
    arrayOfInt2[11] = 4;
    arrayOfInt2[13] = 16;
    arrayOfInt2[14] = 32;
    arrayOfInt2[15] = 64;
    arrayOfInt2[17] = 256;
    arrayOfInt2[18] = 512;
    arrayOfInt2[19] = 1024;
    arrayOfInt2[21] = 4096;
    arrayOfInt2[22] = 8192;
    arrayOfInt2[23] = 16384;
    arrayOfInt2[25] = 65536;
    arrayOfInt2[26] = 131072;
    arrayOfInt2[27] = 262144;
    arrayOfInt2[29] = 1048576;
    arrayOfInt2[30] = 2097152;
    arrayOfInt2[31] = 4194304;
    E = arrayOfInt2;
    int[] arrayOfInt3 = new int[32];
    arrayOfInt3[4] = 1;
    arrayOfInt3[5] = 2;
    arrayOfInt3[6] = 4;
    arrayOfInt3[7] = 8;
    arrayOfInt3[8] = 32;
    arrayOfInt3[9] = 64;
    arrayOfInt3[10] = 128;
    arrayOfInt3[12] = 256;
    arrayOfInt3[13] = 512;
    arrayOfInt3[14] = 1024;
    arrayOfInt3[15] = 2048;
    arrayOfInt3[16] = 8192;
    arrayOfInt3[17] = 16384;
    arrayOfInt3[18] = 32768;
    arrayOfInt3[20] = 65536;
    arrayOfInt3[21] = 131072;
    arrayOfInt3[22] = 262144;
    arrayOfInt3[23] = 524288;
    arrayOfInt3[24] = 2097152;
    arrayOfInt3[25] = 4194304;
    arrayOfInt3[26] = 8388608;
    arrayOfInt3[28] = 16777216;
    arrayOfInt3[29] = 33554432;
    arrayOfInt3[30] = 67108864;
    arrayOfInt3[31] = 134217728;
    F = arrayOfInt3;
    int[] arrayOfInt4 = new int[32];
    arrayOfInt4[8] = 2;
    arrayOfInt4[9] = 4;
    arrayOfInt4[10] = 8;
    arrayOfInt4[12] = 32;
    arrayOfInt4[13] = 64;
    arrayOfInt4[14] = 128;
    arrayOfInt4[16] = 512;
    arrayOfInt4[17] = 1024;
    arrayOfInt4[18] = 2048;
    arrayOfInt4[20] = 8192;
    arrayOfInt4[21] = 16384;
    arrayOfInt4[22] = 32768;
    arrayOfInt4[24] = 131072;
    arrayOfInt4[25] = 262144;
    arrayOfInt4[26] = 524288;
    arrayOfInt4[28] = 2097152;
    arrayOfInt4[29] = 4194304;
    arrayOfInt4[30] = 8388608;
    G = arrayOfInt4;
    int[] arrayOfInt5 = new int[32];
    arrayOfInt5[0] = 16;
    arrayOfInt5[1] = 32;
    arrayOfInt5[2] = 64;
    arrayOfInt5[3] = 128;
    arrayOfInt5[5] = 256;
    arrayOfInt5[6] = 512;
    arrayOfInt5[7] = 1024;
    arrayOfInt5[8] = 4096;
    arrayOfInt5[9] = 8192;
    arrayOfInt5[10] = 16384;
    arrayOfInt5[11] = 32768;
    arrayOfInt5[13] = 65536;
    arrayOfInt5[14] = 131072;
    arrayOfInt5[15] = 262144;
    arrayOfInt5[16] = 1048576;
    arrayOfInt5[17] = 2097152;
    arrayOfInt5[18] = 4194304;
    arrayOfInt5[19] = 8388608;
    arrayOfInt5[21] = 16777216;
    arrayOfInt5[22] = 33554432;
    arrayOfInt5[23] = 67108864;
    arrayOfInt5[24] = 268435456;
    arrayOfInt5[25] = 536870912;
    arrayOfInt5[26] = 1073741824;
    arrayOfInt5[27] = -2147483648;
    H = arrayOfInt5;
    int[] arrayOfInt6 = new int[32];
    arrayOfInt6[1] = 256;
    arrayOfInt6[2] = 512;
    arrayOfInt6[3] = 1024;
    arrayOfInt6[5] = 4096;
    arrayOfInt6[6] = 8192;
    arrayOfInt6[7] = 16384;
    arrayOfInt6[9] = 65536;
    arrayOfInt6[10] = 131072;
    arrayOfInt6[11] = 262144;
    arrayOfInt6[13] = 1048576;
    arrayOfInt6[14] = 2097152;
    arrayOfInt6[15] = 4194304;
    arrayOfInt6[17] = 16777216;
    arrayOfInt6[18] = 33554432;
    arrayOfInt6[19] = 67108864;
    arrayOfInt6[21] = 268435456;
    arrayOfInt6[22] = 536870912;
    arrayOfInt6[23] = 1073741824;
    I = arrayOfInt6;
    int[] arrayOfInt7 = new int[32];
    arrayOfInt7[0] = 32;
    arrayOfInt7[1] = 64;
    arrayOfInt7[2] = 128;
    arrayOfInt7[4] = 256;
    arrayOfInt7[5] = 512;
    arrayOfInt7[6] = 1024;
    arrayOfInt7[7] = 2048;
    arrayOfInt7[8] = 8192;
    arrayOfInt7[9] = 16384;
    arrayOfInt7[10] = 32768;
    arrayOfInt7[12] = 65536;
    arrayOfInt7[13] = 131072;
    arrayOfInt7[14] = 262144;
    arrayOfInt7[15] = 524288;
    arrayOfInt7[16] = 2097152;
    arrayOfInt7[17] = 4194304;
    arrayOfInt7[18] = 8388608;
    arrayOfInt7[20] = 16777216;
    arrayOfInt7[21] = 33554432;
    arrayOfInt7[22] = 67108864;
    arrayOfInt7[23] = 134217728;
    arrayOfInt7[24] = 536870912;
    arrayOfInt7[25] = 1073741824;
    arrayOfInt7[26] = -2147483648;
    J = arrayOfInt7;
    int[] arrayOfInt8 = new int[32];
    arrayOfInt8[0] = 512;
    arrayOfInt8[1] = 1024;
    arrayOfInt8[2] = 2048;
    arrayOfInt8[4] = 8192;
    arrayOfInt8[5] = 16384;
    arrayOfInt8[6] = 32768;
    arrayOfInt8[8] = 131072;
    arrayOfInt8[9] = 262144;
    arrayOfInt8[10] = 524288;
    arrayOfInt8[12] = 2097152;
    arrayOfInt8[13] = 4194304;
    arrayOfInt8[14] = 8388608;
    arrayOfInt8[16] = 33554432;
    arrayOfInt8[17] = 67108864;
    arrayOfInt8[18] = 134217728;
    arrayOfInt8[20] = 536870912;
    arrayOfInt8[21] = 1073741824;
    arrayOfInt8[22] = -2147483648;
    K = arrayOfInt8;
    int[] arrayOfInt9 = new int[32];
    arrayOfInt9[2] = 1;
    arrayOfInt9[3] = 3;
    arrayOfInt9[4] = 6;
    arrayOfInt9[5] = 10;
    arrayOfInt9[6] = 15;
    arrayOfInt9[7] = 21;
    arrayOfInt9[8] = 28;
    arrayOfInt9[9] = 36;
    arrayOfInt9[10] = 45;
    arrayOfInt9[11] = 55;
    arrayOfInt9[12] = 66;
    arrayOfInt9[13] = 78;
    arrayOfInt9[14] = 91;
    arrayOfInt9[15] = 105;
    arrayOfInt9[16] = 120;
    arrayOfInt9[17] = 136;
    arrayOfInt9[18] = 153;
    arrayOfInt9[19] = 171;
    arrayOfInt9[20] = 190;
    arrayOfInt9[21] = 210;
    arrayOfInt9[22] = 231;
    arrayOfInt9[23] = 253;
    arrayOfInt9[24] = 276;
    arrayOfInt9[25] = 300;
    arrayOfInt9[26] = 325;
    arrayOfInt9[27] = 351;
    arrayOfInt9[28] = 378;
    arrayOfInt9[29] = 406;
    arrayOfInt9[30] = 435;
    arrayOfInt9[31] = 465;
  }

  public a(ChekersView paramb)
  {
    this.j = paramb;
    this.k = false;
    this.o = new int[4096];
    this.a = new int[4096];
    this.p = new int[4096];
    this.b = new int[64];
    this.q = new int[64];
    this.s = false;
    d();
    a();
    start();
  }

  private static final int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 > 0)
      return paramInt1 + 32373 - paramInt2;
    if (paramInt1 < 0)
      return paramInt2 + (paramInt1 - 32373);
    return 0;
  }

  private final int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = this.x;
    int i2 = 0xFFFFF & i1;
    int i4;
    if ((this.y[i2] == i1) && ((0x3F & this.A[i2]) >= paramInt2 - paramInt1))
    {
      int i3 = 0xC0 & this.A[i2];
      i4 = this.z[i2];
      switch (i3)
      {
      default:
      case 64:
        do
          return i4;
        while (i4 <= paramInt3);
      case 128:
      }
    }
    do
      return 999999;
    while (i4 < paramInt4);
    return i4;
  }

  private final int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    this.C = (1 + this.C);
    int i1;
    if ((this.v == 0) || (this.w == 0))
    {
      i1 = paramInt3 - 32500;
      return i1;
    }
    if (this.u);
    switch (this.v + this.w)
    {
    default:
      if ((paramInt4 < 64) && (paramInt5 >= 100))
        paramInt5 -= 100;
      break;
    case 2:
    case 3:
    case 4:
    }
    for (int i2 = paramInt4 + 1; ; i2 = paramInt4)
    {
      label160: int i30;
      int i31;
      int i32;
      label412: int i36;
      if (paramInt3 < i2)
      {
        if (this.B)
        {
          i1 = a(paramInt3, i2, paramInt1, paramInt2);
          if (i1 != 999999)
            break;
        }
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        switch (a(paramInt3, paramBoolean))
        {
        default:
          i20 = this.c;
          i21 = this.r;
          i22 = this.d;
          i23 = this.e;
          i24 = this.f;
          i25 = this.g;
          i26 = this.v;
          i27 = this.w;
          i28 = this.x;
          switch (i20)
          {
          default:
            i29 = 0;
          case 1:
          case 2:
          case 3:
          }
          break;
        case 0:
        case 1:
        }
        while (true)
        {
          i30 = 64;
          i31 = 0;
          i32 = paramInt1;
          if (i31 < i20)
            break label412;
          if (this.B)
            b(paramInt3, i2, i30, i32);
          return i32;
          return a(b(paramBoolean), paramInt3);
          return a(c(paramBoolean), paramInt3);
          if ((this.v != 2) || (this.w != 2) || (this.d != 0) || (this.f != 0))
            break;
          return a(d(paramBoolean, this.e, this.g), paramInt3);
          return paramInt3 - 32500;
          if ((i2 - paramInt3 > 1) || (i2 >= 64))
            break label160;
          i2++;
          break label160;
          i29 = paramInt5 + 30;
          continue;
          i29 = paramInt5 + 10;
          continue;
          i29 = paramInt5 + 5;
        }
        b(i21 + i31);
        int i33 = -paramInt2;
        int i34 = -i32;
        int i35 = paramInt3 + 1;
        if (paramBoolean);
        for (boolean bool = false; ; bool = true)
        {
          i1 = -a(i33, i34, i35, i2, i29, bool);
          this.d = i22;
          this.e = i23;
          this.f = i24;
          this.g = i25;
          this.v = i26;
          this.w = i27;
          this.x = i28;
          if (!this.m)
            break;
          return 0;
        }
        if (i1 <= i32)
          break label1036;
        if (i1 >= paramInt2)
        {
          if (!this.B)
            break;
          b(paramInt3, i2, 128, i1);
          return i1;
        }
        i36 = 192;
      }
      while (true)
      {
        i31++;
        i30 = i36;
        i32 = i1;
        break;
        int i3 = this.n;
        this.n = (i3 + 1);
        if (i3 > 5000)
        {
          this.n = 0;
          if (System.currentTimeMillis() > this.l + this.h)
          {
            this.m = true;
            return 0;
          }
        }
        int i4 = 0;
        int i5 = this.d;
        int i6;
        int i7;
        label648: int i9;
        int i10;
        label662: int i11;
        label673: int i12;
        label688: label722: int i16;
        if (i5 == 0)
        {
          i6 = this.e;
          i7 = i4;
          if (i6 != 0)
            break label909;
          i9 = 0;
          i10 = this.f;
          if (i10 != 0)
            break label933;
          i11 = this.g;
          if (i11 != 0)
            break label948;
          if (i7 != i9)
            break label966;
          i12 = 0;
          if (i7 >= i9)
            break label991;
          int i19 = 0x88000011 & this.e;
          if (i19 != 0)
            i12 += (Integer.bitCount(i19) << 3);
          int i14 = this.d | this.e;
          int i15 = this.f | this.g;
          if ((this.f != 0) && ((i14 & 0x5) == 5))
            i12 += 12;
          if ((this.d != 0) && ((0xA0000000 & i15) == -1610612736))
            i12 -= 12;
          i16 = i12 + (Integer.bitCount(i14 & 0x666600) - Integer.bitCount(i15 & 0x666600)) - (Integer.bitCount(0x18181818 & this.d) - Integer.bitCount(0x18181818 & this.f));
          int i17 = 0x10000008 & this.e;
          if (i17 != 0)
            i16 -= (Integer.bitCount(i17) << 5);
          int i18 = 0x10000008 & this.g;
          if (i18 != 0)
            i16 += (Integer.bitCount(i18) << 5);
          if (!paramBoolean)
            break label1028;
        }
        while (true)
        {
          return i16;
          i4 += 100;
          i5 &= i5 - 1;
          break;
          label909: int i8 = i7 + 134;
          i6 &= i6 - 1;
          i7 = i8;
          break label648;
          label933: i9 += 100;
          i10 &= i10 - 1;
          break label662;
          label948: i9 += 134;
          i11 &= i11 - 1;
          break label673;
          label966: i12 = i7 - i9 + (i7 - i9 << 8) / (i7 + i9);
          break label688;
          label991: if (i7 <= i9)
            break label722;
          int i13 = 0x88000011 & this.g;
          if (i13 == 0)
            break label722;
          i12 -= (Integer.bitCount(i13) << 3);
          break label722;
          label1028: i16 = -i16;
        }
        label1036: i36 = i30;
        i1 = i32;
      }
    }
  }

  private final int a(int paramInt, boolean paramBoolean)
  {
    this.c = 0;
    this.r = (paramInt * 64);
    int i1 = 0xFFFFFFFF ^ (this.d | this.e | this.f | this.g);
    int i2;
    if (this.s)
    {
      boolean bool2 = a(paramInt, paramBoolean, i1);
      boolean bool3 = b(paramInt, paramBoolean, i1);
      if (!bool2)
      {
        i2 = 0;
        if (!bool3);
      }
      else
      {
        i2 = 2;
      }
    }
    boolean bool1;
    do
    {
      return i2;
      if (a(paramInt, paramBoolean, i1))
        return 1;
      bool1 = b(paramInt, paramBoolean, i1);
      i2 = 0;
    }
    while (!bool1);
    return 2;
  }

  private final int a(boolean paramBoolean)
  {
    int i1;
    int i3;
    int i4;
    label17: int i5;
    label28: int i6;
    label39: int i7;
    if (paramBoolean)
    {
      i1 = 0;
      int i2 = this.d;
      i3 = i1;
      i4 = i2;
      if (i4 != 0)
        break label69;
      i5 = this.e;
      if (i5 != 0)
        break label99;
      i6 = this.f;
      if (i6 != 0)
        break label129;
      i7 = this.g;
    }
    while (true)
    {
      if (i7 == 0)
      {
        return i3;
        i1 = M[''];
        break;
        label69: i3 ^= M[(0 + 4 * Integer.numberOfTrailingZeros(i4))];
        i4 &= i4 - 1;
        break label17;
        label99: i3 ^= M[(1 + 4 * Integer.numberOfTrailingZeros(i5))];
        i5 &= i5 - 1;
        break label28;
        label129: i3 ^= M[(2 + 4 * Integer.numberOfTrailingZeros(i6))];
        i6 &= i6 - 1;
        break label39;
      }
      i3 ^= M[(3 + 4 * Integer.numberOfTrailingZeros(i7))];
      i7 &= i7 - 1;
    }
  }

  private final int a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    int i1;
    if (paramBoolean)
      i1 = Integer.numberOfTrailingZeros(paramInt1);
    for (int i2 = Integer.numberOfTrailingZeros(paramInt2); ; i2 = Integer.numberOfTrailingZeros(paramInt1))
    {
      if (i1 >= 16)
      {
        i1 = 31 - i1;
        i2 = 31 - i2;
      }
      return h.a[(i1 + i2 * 16)];
      i1 = Integer.numberOfTrailingZeros(paramInt2);
    }
  }

  private final int a(boolean paramBoolean1, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean2)
  {
    int i1 = Integer.numberOfTrailingZeros(paramInt1);
    int i2 = Integer.numberOfTrailingZeros(paramInt2);
    int i3 = Integer.numberOfTrailingZeros(paramInt3);
    if (paramBoolean2)
    {
      i1 = 31 - i1;
      i2 = 31 - i2;
      i3 = 31 - i3;
    }
    if (paramBoolean1)
      return h.i[(i3 + (i1 * 1024 + i2 * 32))];
    return h.j[(i3 + (i1 * 1024 + i2 * 32))];
  }

  private final int a(boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2)
  {
    int i1 = Integer.numberOfTrailingZeros(paramInt1);
    int i2 = Integer.numberOfTrailingZeros(paramInt2);
    if (paramBoolean2)
    {
      i1 = 31 - i1;
      i2 = 31 - i2;
    }
    int i3 = i2 - 4;
    if (paramBoolean1)
      return h.b[(i1 + i3 * 32)];
    return h.c[(i1 + i3 * 32)];
  }

  private final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (this.c >= 64);
    int i1;
    do
    {
      return;
      i1 = this.c;
      this.c = (i1 + 1);
      int i2 = this.r;
      this.o[(i2 + i1)] = paramInt2;
      this.a[(i2 + i1)] = paramInt3;
      this.p[(i2 + i1)] = paramInt4;
    }
    while (paramInt1 != 0);
    this.b[i1] = paramInt5;
  }

  private final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    int i1 = 1;
    if (((paramInt3 & D[paramInt4]) != 0) && ((paramInt2 & E[paramInt4]) != 0))
    {
      a(paramInt1, paramInt2, paramInt3, paramInt4 - 9, E[paramInt4], paramInt6 | D[paramInt4], paramInt7 + 1, paramInt8 | E[paramInt4]);
      i1 = 0;
    }
    if (((paramInt3 & F[paramInt4]) != 0) && ((paramInt2 & G[paramInt4]) != 0))
    {
      a(paramInt1, paramInt2, paramInt3, paramInt4 - 7, G[paramInt4], paramInt6 | F[paramInt4], paramInt7 + 1, paramInt8 | G[paramInt4]);
      i1 = 0;
    }
    if (i1 != 0)
      a(paramInt1, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  private final boolean a(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    int i13;
    int i15;
    if (paramBoolean)
    {
      int i12 = this.e | this.d;
      i13 = this.g | this.f;
      int i14 = i13 & paramInt2 >>> 4;
      i15 = 0;
      if (i14 != 0)
        i15 = 0x0 | i12 & ((0xE0E0E0E0 & i14) >>> 5 | (i14 & 0x7070700) >>> 3);
      int i16 = i13 & ((0xE0E0E0E0 & paramInt2) >>> 5 | (0x7070700 & paramInt2) >>> 3);
      if (i16 != 0)
        i15 |= i12 & i16 >>> 4;
      if (this.e != 0)
      {
        int i20 = i13 & paramInt2 << 4;
        if (i20 != 0)
          i15 |= this.e & ((0x7070707 & i20) << 5 | (i20 & 0xE0E0E0) << 3);
        int i21 = i13 & ((0x7070707 & paramInt2) << 5 | (0xE0E0E0 & paramInt2) << 3);
        if (i21 != 0)
          i15 |= this.e & i21 << 4;
      }
      if (i15 != 0);
    }
    while (true)
    {
      if (this.c == 0)
        break label1324;
      return true;
      int i17 = Integer.numberOfTrailingZeros(i15);
      int i18 = 1 << i17;
      int i19 = i15 ^ i18;
      if ((i18 & this.e) == 0)
      {
        if (((i13 & H[i17]) != 0) && ((paramInt2 & I[i17]) != 0))
          b(paramInt1, paramInt2, i13, i17 + 7, I[i17], i18 | H[i17], 257, i18 | I[i17]);
        if (((i13 & J[i17]) == 0) || ((paramInt2 & K[i17]) == 0))
          break label658;
        b(paramInt1, paramInt2, i13, i17 + 9, K[i17], i18 | J[i17], 257, i18 | K[i17]);
        i15 = i19;
        break;
      }
      if (((i13 & D[i17]) != 0) && ((paramInt2 & E[i17]) != 0))
        c(paramInt1, paramInt2 | i18, i13 ^ D[i17], i17 - 9, E[i17], i18 | D[i17], 513, i18 | E[i17]);
      if (((i13 & F[i17]) != 0) && ((paramInt2 & G[i17]) != 0))
        c(paramInt1, paramInt2 | i18, i13 ^ F[i17], i17 - 7, G[i17], i18 | F[i17], 513, i18 | G[i17]);
      if (((i13 & H[i17]) != 0) && ((paramInt2 & I[i17]) != 0))
        c(paramInt1, paramInt2 | i18, i13 ^ H[i17], i17 + 7, I[i17], i18 | H[i17], 513, i18 | I[i17]);
      if (((i13 & J[i17]) != 0) && ((paramInt2 & K[i17]) != 0))
        c(paramInt1, paramInt2 | i18, i13 ^ J[i17], i17 + 9, K[i17], i18 | J[i17], 513, i18 | K[i17]);
      label658: i15 = i19;
      break;
      int i1 = this.g | this.f;
      int i2 = this.e | this.d;
      int i3 = this.g;
      int i4 = 0;
      if (i3 != 0)
      {
        int i10 = i2 & paramInt2 >>> 4;
        i4 = 0;
        if (i10 != 0)
          i4 = 0x0 | this.g & ((0xE0E0E0E0 & i10) >>> 5 | (i10 & 0x7070700) >>> 3);
        int i11 = i2 & ((0xE0E0E0E0 & paramInt2) >>> 5 | (0x7070700 & paramInt2) >>> 3);
        if (i11 != 0)
          i4 |= this.g & i11 >>> 4;
      }
      int i5 = i2 & paramInt2 << 4;
      if (i5 != 0)
        i4 |= i1 & ((0x7070707 & i5) << 5 | (i5 & 0xE0E0E0) << 3);
      int i6 = i2 & ((0x7070707 & paramInt2) << 5 | (0xE0E0E0 & paramInt2) << 3);
      if (i6 != 0)
        i4 |= i1 & i6 << 4;
      while (i4 != 0)
      {
        int i7 = Integer.numberOfTrailingZeros(i4);
        int i8 = 1 << i7;
        int i9 = i4 ^ i8;
        if ((i8 & this.g) == 0)
        {
          if (((i2 & D[i7]) != 0) && ((paramInt2 & E[i7]) != 0))
            a(paramInt1, paramInt2, i2, i7 - 9, E[i7], i8 | D[i7], 1025, i8 | E[i7]);
          if (((i2 & F[i7]) != 0) && ((paramInt2 & G[i7]) != 0))
          {
            a(paramInt1, paramInt2, i2, i7 - 7, G[i7], i8 | F[i7], 1025, i8 | G[i7]);
            i4 = i9;
          }
        }
        else
        {
          if (((i2 & D[i7]) != 0) && ((paramInt2 & E[i7]) != 0))
            c(paramInt1, paramInt2 | i8, i2 ^ D[i7], i7 - 9, E[i7], i8 | D[i7], 2049, i8 | E[i7]);
          if (((i2 & F[i7]) != 0) && ((paramInt2 & G[i7]) != 0))
            c(paramInt1, paramInt2 | i8, i2 ^ F[i7], i7 - 7, G[i7], i8 | F[i7], 2049, i8 | G[i7]);
          if (((i2 & H[i7]) != 0) && ((paramInt2 & I[i7]) != 0))
            c(paramInt1, paramInt2 | i8, i2 ^ H[i7], i7 + 7, I[i7], i8 | H[i7], 2049, i8 | I[i7]);
          if (((i2 & J[i7]) != 0) && ((paramInt2 & K[i7]) != 0))
            c(paramInt1, paramInt2 | i8, i2 ^ J[i7], i7 + 9, K[i7], i8 | J[i7], 2049, i8 | K[i7]);
          i4 = i9;
        }
      }
    }
    label1324: return false;
  }

  private final int b(boolean paramBoolean)
  {
    if ((this.d != 0) && (this.f != 0))
      return b(paramBoolean, this.d, this.f);
    if (this.f != 0)
      return a(paramBoolean, this.e, this.f, false);
    if (this.d != 0)
    {
      boolean bool = false;
      if (paramBoolean);
      while (true)
      {
        return a(bool, this.g, this.d, true);
        bool = true;
      }
    }
    return a(paramBoolean, this.e, this.g);
  }

  private final int b(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    int i1;
    if (paramBoolean)
      i1 = Integer.numberOfTrailingZeros(paramInt1);
    for (int i2 = Integer.numberOfTrailingZeros(paramInt2); ; i2 = 31 - Integer.numberOfTrailingZeros(paramInt1))
    {
      int i3 = i2 - 4;
      return h.d[(i1 + i3 * 28)];
      i1 = 31 - Integer.numberOfTrailingZeros(paramInt2);
    }
  }

  private final int b(boolean paramBoolean1, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean2)
  {
    int i1 = Integer.numberOfTrailingZeros(paramInt1);
    int i2 = Integer.numberOfTrailingZeros(paramInt2);
    int i3 = Integer.numberOfTrailingZeros(paramInt3);
    if (paramBoolean2)
    {
      i1 = 31 - i1;
      i2 = 31 - i2;
      i3 = 31 - i3;
    }
    int i4 = i3 - 4;
    if (paramBoolean1)
      return h.k[(i2 + (i4 * 896 + i1 * 32))];
    return h.l[(i2 + (i4 * 896 + i1 * 32))];
  }

  private final int b(boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2)
  {
    int i1 = Integer.numberOfTrailingZeros(paramInt1);
    int i2 = Integer.numberOfTrailingZeros(paramInt1 & paramInt1 - 1);
    int i3 = Integer.numberOfTrailingZeros(paramInt2);
    if (paramBoolean2)
    {
      i1 = 31 - i1;
      i2 = 31 - i2;
      i3 = 31 - i3;
    }
    int i4 = i3 - 4;
    if (i1 < i2);
    for (int i5 = i1 + L[i2]; paramBoolean1; i5 = i2 + L[i1])
      return h.g[(i5 + i4 * 496)];
    return h.h[(i5 + i4 * 496)];
  }

  private final void b()
  {
    try
    {
      while (true)
      {
        if (this.k)
        {
          this.k = false;
          return;
        }
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
    }
    finally
    {
    }
  }

  private final void b(int paramInt)
  {
    int i1 = this.d;
    int i2 = this.e;
    int i3 = this.f;
    int i4 = this.g;
    int i5 = 0xFF & this.p[paramInt];
    int i6 = 0xF00 & this.p[paramInt];
    int i7 = this.o[paramInt];
    int i8;
    int i9;
    label122: int i10;
    label135: int i11;
    label149: int i12;
    switch (i6)
    {
    default:
      i8 = this.x ^ M[''];
      i9 = i1 ^ this.d;
      if (i9 == 0)
      {
        i10 = i2 ^ this.e;
        if (i10 != 0)
          break label576;
        i11 = i3 ^ this.f;
        if (i11 != 0)
          break label606;
        i12 = i4 ^ this.g;
      }
      break;
    case 256:
    case 512:
    case 1024:
    case 2048:
    }
    while (true)
    {
      if (i12 == 0)
      {
        this.x = i8;
        return;
        if ((0xF0000000 & i7) != 0)
        {
          this.d &= (0xFFFFFFFF ^ this.a[paramInt]);
          this.e = (i7 | this.e);
        }
        while (i5 != 0)
        {
          this.f &= (0xFFFFFFFF ^ this.a[paramInt]);
          this.g &= (0xFFFFFFFF ^ this.a[paramInt]);
          this.w -= i5;
          break;
          this.d = (i7 | this.d & (0xFFFFFFFF ^ this.a[paramInt]));
        }
        this.e = (i7 | this.e & (0xFFFFFFFF ^ this.a[paramInt]));
        if (i5 == 0)
          break;
        this.f &= (0xFFFFFFFF ^ this.a[paramInt]);
        this.g &= (0xFFFFFFFF ^ this.a[paramInt]);
        this.w -= i5;
        break;
        if ((i7 & 0xF) != 0)
        {
          this.f &= (0xFFFFFFFF ^ this.a[paramInt]);
          this.g = (i7 | this.g);
        }
        while (i5 != 0)
        {
          this.d &= (0xFFFFFFFF ^ this.a[paramInt]);
          this.e &= (0xFFFFFFFF ^ this.a[paramInt]);
          this.v -= i5;
          break;
          this.f = (i7 | this.f & (0xFFFFFFFF ^ this.a[paramInt]));
        }
        this.g = (i7 | this.g & (0xFFFFFFFF ^ this.a[paramInt]));
        if (i5 == 0)
          break;
        this.d &= (0xFFFFFFFF ^ this.a[paramInt]);
        this.e &= (0xFFFFFFFF ^ this.a[paramInt]);
        this.v -= i5;
        break;
        i8 ^= M[(0 + 4 * Integer.numberOfTrailingZeros(i9))];
        i9 &= i9 - 1;
        break label122;
        label576: i8 ^= M[(1 + 4 * Integer.numberOfTrailingZeros(i10))];
        i10 &= i10 - 1;
        break label135;
        label606: i8 ^= M[(2 + 4 * Integer.numberOfTrailingZeros(i11))];
        i11 &= i11 - 1;
        break label149;
      }
      i8 ^= M[(3 + 4 * Integer.numberOfTrailingZeros(i12))];
      i12 &= i12 - 1;
    }
  }

  private final void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt4 <= -32000)
    {
      switch (paramInt3)
      {
      default:
        return;
      case 192:
        paramInt3 = 64;
      case 64:
      }
      paramInt4 = -32000;
      paramInt2 = 63;
      paramInt1 = 0;
    }
    while (paramInt4 < 32000)
    {
      int i1 = this.x;
      int i2 = 0xFFFFF & i1;
      this.y[i2] = i1;
      this.z[i2] = ((short)paramInt4);
      this.A[i2] = ((byte)(paramInt3 | paramInt2 - paramInt1));
      return;
    }
    switch (paramInt3)
    {
    default:
      return;
    case 128:
    case 192:
    }
    while (true)
    {
      paramInt4 = 32000;
      paramInt2 = 63;
      paramInt1 = 0;
      break;
      paramInt3 = 128;
    }
  }

  private final void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    int i1 = 1;
    if (((paramInt3 & H[paramInt4]) != 0) && ((paramInt2 & I[paramInt4]) != 0))
    {
      b(paramInt1, paramInt2, paramInt3, paramInt4 + 7, I[paramInt4], paramInt6 | H[paramInt4], paramInt7 + 1, paramInt8 | I[paramInt4]);
      i1 = 0;
    }
    if (((paramInt3 & J[paramInt4]) != 0) && ((paramInt2 & K[paramInt4]) != 0))
    {
      b(paramInt1, paramInt2, paramInt3, paramInt4 + 9, K[paramInt4], paramInt6 | J[paramInt4], paramInt7 + 1, paramInt8 | K[paramInt4]);
      i1 = 0;
    }
    if (i1 != 0)
      a(paramInt1, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  private final boolean b(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    int i5;
    if (paramBoolean)
      if (this.e == 0)
      {
        i5 = this.d & (paramInt2 >>> 4 | (paramInt2 & 0xE0E0E0E0) >>> 5 | (0x7070700 & paramInt2) >>> 3);
        if (i5 != 0)
          break label110;
      }
    while (true)
    {
      if (this.c == 0)
        break label727;
      return true;
      i5 = (this.e | this.d) & (paramInt2 >>> 4 | (paramInt2 & 0xE0E0E0E0) >>> 5 | (0x7070700 & paramInt2) >>> 3) | this.e & (paramInt2 << 4 | (0x7070707 & paramInt2) << 5 | (paramInt2 & 0xE0E0E0) << 3);
      break;
      label110: int i6 = Integer.numberOfTrailingZeros(i5);
      int i7 = 1 << i6;
      int i8 = i5 ^ i7;
      if ((i7 & this.e) == 0)
      {
        if ((paramInt2 & H[i6]) != 0)
          a(paramInt1, H[i6], i7, 256, i7 | H[i6]);
        if ((paramInt2 & J[i6]) == 0)
          break label363;
        a(paramInt1, J[i6], i7, 256, i7 | J[i6]);
        i5 = i8;
        break;
      }
      if ((paramInt2 & D[i6]) != 0)
        a(paramInt1, D[i6], i7, 512, i7 | D[i6]);
      if ((paramInt2 & F[i6]) != 0)
        a(paramInt1, F[i6], i7, 512, i7 | F[i6]);
      if ((paramInt2 & H[i6]) != 0)
        a(paramInt1, H[i6], i7, 512, i7 | H[i6]);
      if ((paramInt2 & J[i6]) != 0)
        a(paramInt1, J[i6], i7, 512, i7 | J[i6]);
      label363: i5 = i8;
      break;
      int i1;
      if (this.g == 0)
        i1 = this.f & (paramInt2 << 4 | (0x7070707 & paramInt2) << 5 | (paramInt2 & 0xE0E0E0) << 3);
      while (i1 != 0)
      {
        int i2 = Integer.numberOfTrailingZeros(i1);
        int i3 = 1 << i2;
        int i4 = i1 ^ i3;
        if ((i3 & this.g) == 0)
        {
          if ((paramInt2 & D[i2]) != 0)
            a(paramInt1, D[i2], i3, 1024, i3 | D[i2]);
          if ((paramInt2 & F[i2]) != 0)
          {
            a(paramInt1, F[i2], i3, 1024, i3 | F[i2]);
            i1 = i4;
            continue;
            i1 = (this.g | this.f) & (paramInt2 << 4 | (0x7070707 & paramInt2) << 5 | (paramInt2 & 0xE0E0E0) << 3) | this.g & (paramInt2 >>> 4 | (0xE0E0E0E0 & paramInt2) >>> 5 | (0x7070700 & paramInt2) >>> 3);
          }
        }
        else
        {
          if ((paramInt2 & D[i2]) != 0)
            a(paramInt1, D[i2], i3, 2048, i3 | D[i2]);
          if ((paramInt2 & F[i2]) != 0)
            a(paramInt1, F[i2], i3, 2048, i3 | F[i2]);
          if ((paramInt2 & H[i2]) != 0)
            a(paramInt1, H[i2], i3, 2048, i3 | H[i2]);
          if ((paramInt2 & J[i2]) != 0)
            a(paramInt1, J[i2], i3, 2048, i3 | J[i2]);
          i1 = i4;
        }
      }
    }
    label727: return false;
  }

  private final int c(boolean paramBoolean)
  {
    if (this.v == 1)
    {
      if (this.d != 0)
      {
        if (this.g == 0)
        {
          if (paramBoolean);
          for (boolean bool6 = false; ; bool6 = true)
            return d(bool6, this.f, this.d, true);
        }
        if (this.f != 0)
        {
          if (paramBoolean);
          for (boolean bool5 = false; ; bool5 = true)
            return b(bool5, this.f, this.g, this.d, true);
        }
        boolean bool4 = false;
        if (paramBoolean);
        while (true)
        {
          return b(bool4, this.g, this.d, true);
          bool4 = true;
        }
      }
      if (this.g == 0)
      {
        boolean bool1 = false;
        if (paramBoolean);
        while (true)
        {
          return c(bool1, this.f, this.e, true);
          bool1 = true;
        }
      }
      if (this.f != 0)
      {
        if (paramBoolean);
        for (boolean bool3 = false; ; bool3 = true)
          return a(bool3, this.f, this.g, this.e, true);
      }
      boolean bool2 = false;
      if (paramBoolean);
      while (true)
      {
        return c(bool2, this.g, this.e);
        bool2 = true;
      }
    }
    if (this.f != 0)
    {
      if (this.e == 0)
        return d(paramBoolean, this.d, this.f, false);
      if (this.d != 0)
        return b(paramBoolean, this.d, this.e, this.f, false);
      return b(paramBoolean, this.e, this.f, false);
    }
    if (this.e == 0)
      return c(paramBoolean, this.d, this.g, false);
    if (this.d != 0)
      return a(paramBoolean, this.d, this.e, this.g, false);
    return c(paramBoolean, this.e, this.g);
  }

  private final int c(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    int i1 = Integer.numberOfTrailingZeros(paramInt1);
    int i2 = Integer.numberOfTrailingZeros(paramInt1 & paramInt1 - 1);
    int i3 = Integer.numberOfTrailingZeros(paramInt2);
    int i8;
    int i4;
    if (i3 >= 16)
    {
      i1 = 31 - i1;
      int i7 = 31 - i2;
      i8 = 31 - i3;
      i4 = i7;
    }
    for (int i5 = i8; ; i5 = i3)
    {
      if (i1 < i4);
      for (int i6 = i1 + L[i4]; paramBoolean; i6 = i4 + L[i1])
        return h.e[(i5 + i6 * 16)];
      return h.f[(i5 + i6 * 16)];
      i4 = i2;
    }
  }

  private final int c(boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2)
  {
    int i1 = Integer.numberOfTrailingZeros(paramInt1);
    int i2 = Integer.numberOfTrailingZeros(paramInt1 & paramInt1 - 1);
    int i3 = Integer.numberOfTrailingZeros(paramInt2);
    int i8;
    int i4;
    if (paramBoolean2)
    {
      i1 = 31 - i1;
      int i7 = 31 - i2;
      i8 = 31 - i3;
      i4 = i7;
    }
    for (int i5 = i8; ; i5 = i3)
    {
      if (i1 < i4);
      for (int i6 = i1 + L[i4]; paramBoolean1; i6 = i4 + L[i1])
        return h.m[(i5 + i6 * 32)];
      return h.n[(i5 + i6 * 32)];
      i4 = i2;
    }
  }

  private final void c()
  {
    try
    {
      Thread.sleep(500L);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }

  private final void c(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    int i1 = 1;
    if (((paramInt3 & D[paramInt4]) != 0) && ((paramInt2 & E[paramInt4]) != 0))
    {
      c(paramInt1, paramInt2, paramInt3 ^ D[paramInt4], paramInt4 - 9, E[paramInt4], paramInt6 | D[paramInt4], paramInt7 + 1, paramInt8 | E[paramInt4]);
      i1 = 0;
    }
    if (((paramInt3 & F[paramInt4]) != 0) && ((paramInt2 & G[paramInt4]) != 0))
    {
      c(paramInt1, paramInt2, paramInt3 ^ F[paramInt4], paramInt4 - 7, G[paramInt4], paramInt6 | F[paramInt4], paramInt7 + 1, paramInt8 | G[paramInt4]);
      i1 = 0;
    }
    if (((paramInt3 & H[paramInt4]) != 0) && ((paramInt2 & I[paramInt4]) != 0))
    {
      c(paramInt1, paramInt2, paramInt3 ^ H[paramInt4], paramInt4 + 7, I[paramInt4], paramInt6 | H[paramInt4], paramInt7 + 1, paramInt8 | I[paramInt4]);
      i1 = 0;
    }
    if (((paramInt3 & J[paramInt4]) != 0) && ((paramInt2 & K[paramInt4]) != 0))
    {
      c(paramInt1, paramInt2, paramInt3 ^ J[paramInt4], paramInt4 + 9, K[paramInt4], paramInt6 | J[paramInt4], paramInt7 + 1, paramInt8 | K[paramInt4]);
      i1 = 0;
    }
    if (i1 != 0)
      a(paramInt1, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  private final int d(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    if (paramBoolean)
    {
      int i11 = Integer.numberOfTrailingZeros(paramInt1);
      int i12 = Integer.numberOfTrailingZeros(paramInt1 & paramInt1 - 1);
      int i13 = Integer.numberOfTrailingZeros(paramInt2);
      int i14 = Integer.numberOfTrailingZeros(paramInt2 & paramInt2 - 1);
      i5 = i12;
      i6 = i14;
      i7 = i11;
      i8 = i13;
      if (i7 >= i5)
        break label153;
      i9 = i7 + L[i5];
      label70: if (i8 >= i6)
        break label167;
    }
    label153: label167: for (int i10 = i8 + L[i6]; ; i10 = i6 + L[i8])
    {
      return h.q[(i10 + i9 * 496)];
      int i1 = Integer.numberOfTrailingZeros(paramInt2);
      int i2 = Integer.numberOfTrailingZeros(paramInt2 & paramInt2 - 1);
      int i3 = Integer.numberOfTrailingZeros(paramInt1);
      int i4 = Integer.numberOfTrailingZeros(paramInt1 & paramInt1 - 1);
      i5 = i2;
      i6 = i4;
      i7 = i1;
      i8 = i3;
      break;
      i9 = i5 + L[i7];
      break label70;
    }
  }

  private final int d(boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2)
  {
    int i1 = Integer.numberOfTrailingZeros(paramInt1);
    int i2 = Integer.numberOfTrailingZeros(paramInt1 & paramInt1 - 1);
    int i3 = Integer.numberOfTrailingZeros(paramInt2);
    if (paramBoolean2)
    {
      i1 = 31 - i1;
      i2 = 31 - i2;
      i3 = 31 - i3;
    }
    int i4 = i3 - 4;
    if (i1 < i2);
    for (int i5 = i1 + L[i2]; paramBoolean1; i5 = i2 + L[i1])
      return h.o[(i4 + i5 * 28)];
    return h.p[(i4 + i5 * 28)];
  }

  private final void d()
  {
    try
    {
      this.y = new int[1048576];
      this.z = new short[1048576];
      this.A = new byte[1048576];
      if ((this.y != null) && (this.z != null) && (this.A != null))
      {
        bool = true;
        this.B = bool;
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        this.y = null;
        this.z = null;
        this.A = null;
        continue;
        boolean bool = false;
      }
    }
  }

  private final void e()
  {
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= 1048576)
        return;
      this.y[i1] = 0;
    }
  }

  public final int a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.s = paramBoolean2;
    return a(paramInt, paramBoolean1);
  }

  public final void a()
  {
    this.d = 4095;
    this.e = 0;
    this.f = -1048576;
    this.g = 0;
    this.v = 12;
    this.w = 12;
    this.x = a(false);
    a(0, false);
    if (this.B)
      e();
  }

  public final void a(int paramInt)
  {
    b(paramInt);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramInt3;
    this.g = paramInt4;
    this.v = Integer.bitCount(this.d | this.e);
    this.w = Integer.bitCount(this.f | this.g);
    this.x = a(paramBoolean);
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      this.t = paramBoolean1;
      this.s = paramBoolean2;
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

  public void run()
  {
    while (true)
    {
      b();
      if (this.c == 1)
      {
        c();
        this.j.a(0, 0, -1, 1);
      }
      else
      {
        if (this.h != 0)
          break;
        c();
        int i38 = this.i.nextInt(this.c);
        this.j.a(i38, 0, 0, 1);
      }
    }
    if (this.d == 4095)
    {
      c();
      Random localRandom = this.i;
      int i35 = this.c;
      if (this.t);
      for (int i36 = 1; ; i36 = 0)
      {
        int i37 = localRandom.nextInt(i35 - i36);
        this.j.a(i37, 0, -2, 1);
        break;
      }
    }
    this.l = System.currentTimeMillis();
    this.n = 0;
    this.m = false;
    boolean bool1;
    label171: int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    int i10;
    int i11;
    int i12;
    if ((!this.s) && (h.r))
    {
      bool1 = true;
      this.u = bool1;
      i1 = this.c;
      i2 = 0;
      i3 = 0;
      i4 = 0;
      this.C = 1;
      i5 = this.d;
      i6 = this.e;
      i7 = this.f;
      i8 = this.g;
      i9 = this.v;
      i10 = this.w;
      i11 = this.x;
      i12 = 1;
      label239: if (i12 <= 64)
        break label270;
    }
    label270: int i13;
    int i14;
    int i21;
    int i22;
    label306: label314: label323: boolean bool2;
    label350: int i17;
    do
    {
      do
      {
        this.j.a(i2, i3, i4, this.C);
        break;
        bool1 = false;
        break label171;
        i13 = -32767;
        i14 = 0;
        if (i14 < i1)
          break label323;
      }
      while ((i13 <= -32000) || (i13 >= 32000));
      i21 = 0;
      i22 = i2;
      if (i21 < i1 - 1)
        break label471;
      i12++;
      i2 = i22;
      break label239;
      b(i14);
      int i15 = -32767;
      int i16 = -i13;
      if (!this.t)
        break label465;
      bool2 = false;
      i17 = -a(i15, i16, 1, i12, 0, bool2);
      this.q[i14] = i17;
      this.d = i5;
      this.e = i6;
      this.f = i7;
      this.g = i8;
      this.v = i9;
      this.w = i10;
      this.x = i11;
    }
    while (this.m);
    int i18;
    int i19;
    if (i17 > i13)
    {
      i18 = i12;
      i19 = i17;
    }
    for (int i20 = i14; ; i20 = i2)
    {
      i14++;
      i13 = i17;
      i4 = i18;
      i3 = i19;
      i2 = i20;
      break;
      label465: bool2 = true;
      break label350;
      label471: int i23 = i1 - 1;
      int i24 = 1;
      int i25 = i23;
      if (i21 >= i25)
      {
        if (i24 != 0)
          break label314;
        i21++;
        break label306;
      }
      label710: int i27;
      if (this.q[i25] > this.q[(i25 - 1)])
      {
        int i30 = this.q[i25];
        this.q[i25] = this.q[(i25 - 1)];
        this.q[(i25 - 1)] = i30;
        int i31 = this.o[i25];
        this.o[i25] = this.o[(i25 - 1)];
        this.o[(i25 - 1)] = i31;
        int i32 = this.a[i25];
        this.a[i25] = this.a[(i25 - 1)];
        this.a[(i25 - 1)] = i32;
        int i33 = this.p[i25];
        this.p[i25] = this.p[(i25 - 1)];
        this.p[(i25 - 1)] = i33;
        int i34 = this.b[i25];
        this.b[i25] = this.b[(i25 - 1)];
        this.b[(i25 - 1)] = i34;
        if (i22 == i25)
        {
          i22--;
          i27 = i22;
        }
      }
      int i26;
      for (int i28 = 0; ; i28 = i26)
      {
        i25--;
        int i29 = i28;
        i22 = i27;
        i24 = i29;
        break;
        if (i22 != i25 - 1)
          break label710;
        i22++;
        break label710;
        i26 = i24;
        i27 = i22;
      }
      i17 = i13;
      i18 = i4;
      i19 = i3;
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.xxogli.xadroid.checkers.a
 * JD-Core Version:    0.6.2
 */
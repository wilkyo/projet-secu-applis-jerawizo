package com.xxogli.xadroid.checkers;

import java.util.Random;

public class CheckersController extends Thread {
	private static final int[] D;
	private static final int[] E;
	private static final int[] F;
	private static final int[] G;
	private static final int[] H;
	private static final int[] I;
	private static final int[] J;
	private static final int[] K;
	private static final int[] L;
	private static final int[] M = { -1167571609, 1399610623, -691087174,
			1971052870, -1226693861, -1882905254, -1033190199, -1643948105,
			1203953957, -281912599, 1932579021, -827357679, -1058966239,
			1628036585, 1438133756, -2135086441, 169334671, -2141848400,
			1036487996, 180724828, -1363197701, -2043796183, 1196537724,
			-1524684703, 1400387240, 1171699179, 975637495, 1515326181,
			-2002144952, 20274467, 792413540, -1834188091, 651854139,
			312733854, -1483417172, -401608645, -2016061880, -1898970769,
			1528868989, 1476886812, 655104248, 1275144906, -413558472,
			1179720244, 960841210, -84519802, 764308053, -1946918029,
			1044381494, 1722809584, 250023189, 356693417, 2029258122,
			-1335236598, 1981564840, -816796786, -1671521015, 956867123,
			-1516822913, 1395093063, 1341099082, -763205597, 719013895,
			-125622087, 239433278, 698148967, 490256803, 219929140, 9404688,
			1211696129, 1540320888, 1070169635, -1629411990, -60600539,
			-1062649542, 1007031952, 1695872155, 1571589839, 1711909982,
			1891535538, -1801090600, 1205947010, -651093369, -1314346870,
			1288073284, 88139598, 1461894573, 1119979756, 1302801292,
			1421055936, 421807588, -21700509, 310044340, -2091433041,
			1976644103, -1588326860, -1687564151, 148411329, -1755559321,
			2058708972, -2137111067, 1762190601, 1499027188, -1215524918,
			-1433130803, -163939206, -2047972150, -94462166, -997806135,
			858531075, 1114095466, 765099161, -382352606, -1032739375,
			-380256699, 2068218367, -100447487, 284033282, -1923303838,
			1254589825, 782828606, 1428105291, -1660332465, -1731350017,
			-403123714, -897917683, -433779406, 699725162, 572002306 };
	/**
	 * A
	 */
	private byte[] byteArray;
	/**
	 * B
	 */
	private boolean initialized;
	/**
	 * C
	 */
	private int leFameuxN;
	public int[] a;
	public int[] b;
	/**
	 * c
	 */
	public int nbPossibleMoves;
	/**
	 * d
	 */
	public int lastWhitePiecesPlacement;
	/**
	 * e
	 */
	public int lastWhiteKingsPlacement;
	/**
	 * f
	 */
	public int lastBlackPiecesPlacement;
	/**
	 * g
	 */
	public int lastBlackKingsPlacement;
	/**
	 * h
	 */
	public volatile int level = 1000;
	/**
	 * i
	 */
	private Random random = new Random();
	/**
	 * j
	 */
	private CheckersView view;
	/**
	 * k
	 */
	private boolean k;
	/**
	 * l
	 */
	private long currentTimeMillis;
	private boolean m;
	private int n;
	private int[] o;
	private int[] p;
	private int[] q;
	private int r;
	/**
	 * s
	 */
	private boolean onJoueLesNoirs;
	private boolean t;
	private boolean u;
	/**
	 * v
	 */
	private int nbWhiteAlive;
	/**
	 * w
	 */
	private int nbBlackAlive;
	/**
	 * x
	 */
	private int x;
	/**
	 * y
	 */
	private int[] intArray;
	/**
	 * z
	 */
	private short[] shortArray;

	static {
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
		L = arrayOfInt9;
	}

	public CheckersController(CheckersView view) {
		this.view = view;
		this.k = false;
		this.o = new int[4096];
		this.a = new int[4096];
		this.p = new int[4096];
		this.b = new int[64];
		this.q = new int[64];
		this.onJoueLesNoirs = false;
		initSomething();
		initPlateau();
		start();
	}

	private static final int a(int paramInt1, int paramInt2) {
		if (paramInt1 > 0)
			return paramInt1 + 32373 - paramInt2;
		if (paramInt1 < 0)
			return paramInt2 + (paramInt1 - 32373);
		return 0;
	}

	/**
	 * a(IIII)
	 * 
	 * @param paramInt1
	 * @param paramInt2
	 * @param paramInt3
	 * @param paramInt4
	 * @return
	 */
	private final int a(int paramInt1, int paramInt2, int paramInt3,
			int paramInt4) {
		int i1 = this.x;
		int i2 = 0xFFFFF & i1;
		int i4;
		if ((this.intArray[i2] == i1)
				&& ((0x3F & this.byteArray[i2]) >= paramInt2 - paramInt1)) {
			int i3 = 0xC0 & this.byteArray[i2];
			i4 = this.shortArray[i2];
			switch (i3) {
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
		// return i4;
	}

	/**
	 * a(IIIIZ)
	 * 
	 * @param paramInt1
	 * @param paramInt2
	 * @param paramInt3
	 * @param paramInt4
	 * @param paramInt5
	 * @param paramBoolean
	 * @return
	 */
	private final int useInRun(int paramInt1, int paramInt2, int paramInt3,
			int paramInt4, int paramInt5, boolean paramBoolean) {
		this.leFameuxN = (1 + this.leFameuxN);
		int i1 = 0;
		if ((this.nbWhiteAlive == 0) || (this.nbBlackAlive == 0)) {
			i1 = paramInt3 - 32500;
			return i1;
		}
		if (this.u)
			;
		switch (this.nbWhiteAlive + this.nbBlackAlive) {
		default:
			if ((paramInt4 < 64) && (paramInt5 >= 100))
				paramInt5 -= 100;
			break;
		case 2:
		case 3:
		case 4:
		}
		for (int i2 = paramInt4 + 1;; i2 = paramInt4) {
			int i30;
			int i31 = 0;
			int i32;
			int i36 = 0;
			if (paramInt3 < i2) {
				if (this.initialized) {
					i1 = a(paramInt3, i2, paramInt1, paramInt2);
					if (i1 != 999999)
						break;
				}
				int localNbMoves = 0;
				int i21 = 0;
				int localWPPlacement = 0;
				int localWKPlacement = 0;
				int localBPPlacement = 0;
				int localBKPlacement = 0;
				int i26 = 0;
				int i27 = 0;
				int i28 = 0;
				int i29 = 0;
				switch (a(paramInt3, paramBoolean)) {
				default:
					localNbMoves = this.nbPossibleMoves;
					i21 = this.r;
					localWPPlacement = this.lastWhitePiecesPlacement;
					localWKPlacement = this.lastWhiteKingsPlacement;
					localBPPlacement = this.lastBlackPiecesPlacement;
					localBKPlacement = this.lastBlackKingsPlacement;
					i26 = this.nbWhiteAlive;
					i27 = this.nbBlackAlive;
					i28 = this.x;
					switch (localNbMoves) {
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
				while (true) {
					i30 = 64;
					i31 = 0;
					i32 = paramInt1;
					if (i31 < localNbMoves)
						break;
					if (this.initialized)
						setvalueParamFromLastParam(paramInt3, i2, i30, i32);
					// return i32;
					// return a(b(paramBoolean), paramInt3);
					a(b(paramBoolean), paramInt3); // Willy Zou
					// return a(c(paramBoolean), paramInt3);
					a(c(paramBoolean), paramInt3); // Willy Zou
					if ((this.nbWhiteAlive != 2) || (this.nbBlackAlive != 2)
							|| (this.lastWhitePiecesPlacement != 0)
							|| (this.lastBlackPiecesPlacement != 0))
						break;
					// return a(d(paramBoolean, this.e, this.g), paramInt3);
					a(d(paramBoolean, this.lastWhiteKingsPlacement,
							this.lastBlackKingsPlacement), paramInt3); // Willy
																		// Zou
					// return paramInt3 - 32500;
					if ((i2 - paramInt3 > 1) || (i2 >= 64))
						break;
					i2++;
					// break;
					i29 = paramInt5 + 30;
					// continue;
					i29 = paramInt5 + 10;
					// continue;
					i29 = paramInt5 + 5;
				}
				b(i21 + i31);
				int i33 = -paramInt2;
				int i34 = -i32;
				int i35 = paramInt3 + 1;
				if (paramBoolean)
					;
				for (boolean bool = false;; bool = true) {
					i1 = -useInRun(i33, i34, i35, i2, i29, bool);
					this.lastWhitePiecesPlacement = localWPPlacement;
					this.lastWhiteKingsPlacement = localWKPlacement;
					this.lastBlackPiecesPlacement = localBPPlacement;
					this.lastBlackKingsPlacement = localBKPlacement;
					this.nbWhiteAlive = i26;
					this.nbBlackAlive = i27;
					this.x = i28;
					if (!this.m)
						break;
					return 0;
				}
				if (i1 <= i32)
					break;
				if (i1 >= paramInt2) {
					if (!this.initialized)
						break;
					setvalueParamFromLastParam(paramInt3, i2, 128, i1);
					return i1;
				}
				i36 = 192;
			}
			while (true) {
				i31++;
				i30 = i36;
				i32 = i1;
				// break;
				int i3 = this.n;
				this.n = (i3 + 1);
				if (i3 > 5000) {
					this.n = 0;
					if (System.currentTimeMillis() > this.currentTimeMillis
							+ this.level) {
						this.m = true;
						return 0;
					}
				}
				int i4 = 0;
				int localLWhitePiece = this.lastWhitePiecesPlacement;
				int i6 = 0;
				int i7 = 0;
				int i9 = 0;
				int i10 = 0;
				int i11 = 0;
				int i12;
				int i16 = 0;
				if (localLWhitePiece == 0) {
					i6 = this.lastWhiteKingsPlacement;
					i7 = i4;
					if (i6 != 0)
						break;
					i9 = 0;
					i10 = this.lastBlackPiecesPlacement;
					if (i10 != 0)
						break;
					i11 = this.lastBlackKingsPlacement;
					if (i11 != 0)
						break;
					if (i7 != i9)
						break;
					i12 = 0;
					if (i7 >= i9)
						break;
					int i19 = 0x88000011 & this.lastWhiteKingsPlacement;
					if (i19 != 0)
						i12 += (Integer.bitCount(i19) << 3);
					int unionLWhitePetK = this.lastWhitePiecesPlacement
							| this.lastWhiteKingsPlacement;
					int unionLBlackPetK = this.lastBlackPiecesPlacement
							| this.lastBlackKingsPlacement;
					if ((this.lastBlackPiecesPlacement != 0)
							&& ((unionLWhitePetK & 0x5) == 5))
						i12 += 12;
					if ((this.lastWhitePiecesPlacement != 0)
							&& ((0xA0000000 & unionLBlackPetK) == -1610612736))
						i12 -= 12;
					i16 = i12
							+ (Integer.bitCount(unionLWhitePetK & 0x666600) - Integer
									.bitCount(unionLBlackPetK & 0x666600))
							- (Integer
									.bitCount(0x18181818 & this.lastWhitePiecesPlacement) - Integer
									.bitCount(0x18181818 & this.lastBlackPiecesPlacement));
					int i17 = 0x10000008 & this.lastWhiteKingsPlacement;
					if (i17 != 0)
						i16 -= (Integer.bitCount(i17) << 5);
					int i18 = 0x10000008 & this.lastBlackKingsPlacement;
					if (i18 != 0)
						i16 += (Integer.bitCount(i18) << 5);
					if (!paramBoolean)
						break;
				}
				while (true) {
					// return i16;
					i4 += 100;
					localLWhitePiece &= localLWhitePiece - 1;
					// break;
					int i8 = i7 + 134;
					i6 &= i6 - 1;
					i7 = i8;
					// break;
					i9 += 100;
					i10 &= i10 - 1;
					// break;
					i9 += 134;
					i11 &= i11 - 1;
					// break;
					i12 = i7 - i9 + (i7 - i9 << 8) / (i7 + i9);
					// break;
					if (i7 <= i9)
						break;
					int i13 = 0x88000011 & this.lastBlackKingsPlacement;
					if (i13 == 0)
						break;
					i12 -= (Integer.bitCount(i13) << 3);
					// break;
					i16 = -i16;
				}
				i36 = i30;
				i1 = i32;
			}
		}
		return 0; // Willy Zou
	}

	/**
	 * a(IZ) TFS
	 * 
	 * @param paramInt
	 * @param paramBoolean
	 * @return
	 */
	private final int a(int paramInt, boolean paramBoolean) {
		this.nbPossibleMoves = 0;
		this.r = (paramInt * 64);
		int casesVides = 0xFFFFFFFF ^ (this.lastWhitePiecesPlacement
				| this.lastWhiteKingsPlacement | this.lastBlackPiecesPlacement | this.lastBlackKingsPlacement);
		if (this.onJoueLesNoirs) {
			if (a(paramInt, paramBoolean, casesVides)) {
				if (b(paramInt, paramBoolean, casesVides))
					return 2;
				else
					return 0;
			} else
				return 0;
		}
		if (a(paramInt, paramBoolean, casesVides))
			return 1;
		if (b(paramInt, paramBoolean, casesVides))
			return 2;
		return 0;
	}

	/**
	 * a(Z) TFS
	 * 
	 * @param paramBoolean
	 * @return Un placement, mais lequel ?
	 */
	private final int a(boolean paramBoolean) {
		int v0 = 0;
		int v1;
		if (!paramBoolean) { // :cond_0
			v0 = M[128]; // récupère le dernier élément
		}
		// :goto_0
		v1 = v0;
		v0 = this.lastWhitePiecesPlacement;
		// :goto_1
		while (v0 != 0) { // :cond_1
			v1 ^= M[(0 + 4 * Integer.numberOfTrailingZeros(v0))];
			v0 &= v0 - 1;
		}
		v0 = this.lastWhiteKingsPlacement;
		// :goto_2
		while (v0 != 0) { // :cond_2
			v1 ^= M[(1 + 4 * Integer.numberOfTrailingZeros(v0))];
			v0 &= v0 - 1;
		}
		v0 = this.lastBlackPiecesPlacement;
		// :goto_3
		while (v0 != 0) { // :cond_3
			v1 ^= M[(2 + 4 * Integer.numberOfTrailingZeros(v0))];
			v0 &= v0 - 1;
		}
		v0 = this.lastBlackKingsPlacement;
		// :goto_4
		while (v0 != 0) { // :cond_4
			v1 ^= M[(3 + 4 * Integer.numberOfTrailingZeros(v0))];
			v0 &= v0 - 1;
		}
		return v1;
	}

	/**
	 * a(ZII) TFS
	 * 
	 * @param paramBoolean
	 * @param whiteKingsPlacement
	 * @param blackKingsPlacement
	 * @return
	 */
	private final int a(boolean paramBoolean, int whiteKingsPlacement,
			int blackKingsPlacement) {
		int v0;
		int v1;
		if (paramBoolean) {
			v1 = Integer.numberOfTrailingZeros(blackKingsPlacement);
			v0 = Integer.numberOfTrailingZeros(whiteKingsPlacement);
		} else {
			v1 = Integer.numberOfTrailingZeros(whiteKingsPlacement);
			v0 = Integer.numberOfTrailingZeros(blackKingsPlacement);
		}
		if (v1 >= 16) {
			v1 = 31 - v1;
			v0 = 31 - v0;
		}
		return EndGameTableBase.a[(v1 + v0 * 16)];
	}

	private final int a(boolean paramBoolean1, int paramInt1, int paramInt2,
			int paramInt3, boolean paramBoolean2) {
		int i1 = Integer.numberOfTrailingZeros(paramInt1);
		int i2 = Integer.numberOfTrailingZeros(paramInt2);
		int i3 = Integer.numberOfTrailingZeros(paramInt3);
		if (paramBoolean2) {
			i1 = 31 - i1;
			i2 = 31 - i2;
			i3 = 31 - i3;
		}
		if (paramBoolean1)
			return EndGameTableBase.i[(i3 + (i1 * 1024 + i2 * 32))];
		return EndGameTableBase.j[(i3 + (i1 * 1024 + i2 * 32))];
	}

	/**
	 * a(ZIIZ) TFS
	 * 
	 * @param paramBoolean1
	 * @param kingsPlacement
	 * @param piecesPlacement
	 * @param blackKings
	 *            0 pions noirs = F; 0 pions blancs = T
	 * @return
	 */
	private final int a(boolean paramBoolean1, int kingsPlacement,
			int piecesPlacement, boolean blackKings) {
		int v1 = Integer.numberOfTrailingZeros(kingsPlacement);
		int v0 = Integer.numberOfTrailingZeros(piecesPlacement);
		if (blackKings) {
			v1 = 31 - v1;
			v0 = 31 - v0;
		}
		v0 = v0 - 4;
		if (paramBoolean1)
			return EndGameTableBase.b[(v1 + v0 * 32)];
		return EndGameTableBase.c[(v1 + v0 * 32)];
	}

	private final void a(int paramInt1, int paramInt2, int paramInt3,
			int paramInt4, int paramInt5) {
		if (this.nbPossibleMoves >= 64)
			;
		int i1;
		do {
			// return;
			i1 = this.nbPossibleMoves;
			this.nbPossibleMoves = (i1 + 1);
			int i2 = this.r;
			this.o[(i2 + i1)] = paramInt2;
			this.a[(i2 + i1)] = paramInt3;
			this.p[(i2 + i1)] = paramInt4;
		} while (paramInt1 != 0);
		this.b[i1] = paramInt5;
	}

	private final void a(int paramInt1, int paramInt2, int paramInt3,
			int paramInt4, int paramInt5, int paramInt6, int paramInt7,
			int paramInt8) {
		int i1 = 1;
		if (((paramInt3 & D[paramInt4]) != 0)
				&& ((paramInt2 & E[paramInt4]) != 0)) {
			a(paramInt1, paramInt2, paramInt3, paramInt4 - 9, E[paramInt4],
					paramInt6 | D[paramInt4], paramInt7 + 1, paramInt8
							| E[paramInt4]);
			i1 = 0;
		}
		if (((paramInt3 & F[paramInt4]) != 0)
				&& ((paramInt2 & G[paramInt4]) != 0)) {
			a(paramInt1, paramInt2, paramInt3, paramInt4 - 7, G[paramInt4],
					paramInt6 | F[paramInt4], paramInt7 + 1, paramInt8
							| G[paramInt4]);
			i1 = 0;
		}
		if (i1 != 0)
			a(paramInt1, paramInt5, paramInt6, paramInt7, paramInt8);
	}

	private final boolean a(int paramInt1, boolean paramBoolean, int casesVides) {
		int i13 = 0;
		int i15 = 0;
		if (paramBoolean) {
			int i12 = this.lastWhiteKingsPlacement
					| this.lastWhitePiecesPlacement;
			i13 = this.lastBlackKingsPlacement | this.lastBlackPiecesPlacement;
			int i14 = i13 & casesVides >>> 4;
			i15 = 0;
			if (i14 != 0)
				i15 = 0x0 | i12
						& ((0xE0E0E0E0 & i14) >>> 5 | (i14 & 0x7070700) >>> 3);
			int i16 = i13
					& ((0xE0E0E0E0 & casesVides) >>> 5 | (0x7070700 & casesVides) >>> 3);
			if (i16 != 0)
				i15 |= i12 & i16 >>> 4;
			if (this.lastWhiteKingsPlacement != 0) {
				int i20 = i13 & casesVides << 4;
				if (i20 != 0)
					i15 |= this.lastWhiteKingsPlacement
							& ((0x7070707 & i20) << 5 | (i20 & 0xE0E0E0) << 3);
				int i21 = i13
						& ((0x7070707 & casesVides) << 5 | (0xE0E0E0 & casesVides) << 3);
				if (i21 != 0)
					i15 |= this.lastWhiteKingsPlacement & i21 << 4;
			}
			if (i15 != 0)
				;
		}
		while (true) {
			if (this.nbPossibleMoves == 0)
				break;
			// return true;
			int i17 = Integer.numberOfTrailingZeros(i15);
			int i18 = 1 << i17;
			int i19 = i15 ^ i18;
			if ((i18 & this.lastWhiteKingsPlacement) == 0) {
				if (((i13 & H[i17]) != 0) && ((casesVides & I[i17]) != 0))
					b(paramInt1, casesVides, i13, i17 + 7, I[i17],
							i18 | H[i17], 257, i18 | I[i17]);
				if (((i13 & J[i17]) == 0) || ((casesVides & K[i17]) == 0))
					break;
				b(paramInt1, casesVides, i13, i17 + 9, K[i17], i18 | J[i17],
						257, i18 | K[i17]);
				i15 = i19;
				break;
			}
			if (((i13 & D[i17]) != 0) && ((casesVides & E[i17]) != 0))
				c(paramInt1, casesVides | i18, i13 ^ D[i17], i17 - 9, E[i17],
						i18 | D[i17], 513, i18 | E[i17]);
			if (((i13 & F[i17]) != 0) && ((casesVides & G[i17]) != 0))
				c(paramInt1, casesVides | i18, i13 ^ F[i17], i17 - 7, G[i17],
						i18 | F[i17], 513, i18 | G[i17]);
			if (((i13 & H[i17]) != 0) && ((casesVides & I[i17]) != 0))
				c(paramInt1, casesVides | i18, i13 ^ H[i17], i17 + 7, I[i17],
						i18 | H[i17], 513, i18 | I[i17]);
			if (((i13 & J[i17]) != 0) && ((casesVides & K[i17]) != 0))
				c(paramInt1, casesVides | i18, i13 ^ J[i17], i17 + 9, K[i17],
						i18 | J[i17], 513, i18 | K[i17]);
			i15 = i19;
			// break;
			int i1 = this.lastBlackKingsPlacement
					| this.lastBlackPiecesPlacement;
			int i2 = this.lastWhiteKingsPlacement
					| this.lastWhitePiecesPlacement;
			int i3 = this.lastBlackKingsPlacement;
			int i4 = 0;
			if (i3 != 0) {
				int i10 = i2 & casesVides >>> 4;
				i4 = 0;
				if (i10 != 0)
					i4 = 0x0
							| this.lastBlackKingsPlacement
							& ((0xE0E0E0E0 & i10) >>> 5 | (i10 & 0x7070700) >>> 3);
				int i11 = i2
						& ((0xE0E0E0E0 & casesVides) >>> 5 | (0x7070700 & casesVides) >>> 3);
				if (i11 != 0)
					i4 |= this.lastBlackKingsPlacement & i11 >>> 4;
			}
			int i5 = i2 & casesVides << 4;
			if (i5 != 0)
				i4 |= i1 & ((0x7070707 & i5) << 5 | (i5 & 0xE0E0E0) << 3);
			int i6 = i2
					& ((0x7070707 & casesVides) << 5 | (0xE0E0E0 & casesVides) << 3);
			if (i6 != 0)
				i4 |= i1 & i6 << 4;
			while (i4 != 0) {
				int i7 = Integer.numberOfTrailingZeros(i4);
				int i8 = 1 << i7;
				int i9 = i4 ^ i8;
				if ((i8 & this.lastBlackKingsPlacement) == 0) {
					if (((i2 & D[i7]) != 0) && ((casesVides & E[i7]) != 0))
						a(paramInt1, casesVides, i2, i7 - 9, E[i7], i8 | D[i7],
								1025, i8 | E[i7]);
					if (((i2 & F[i7]) != 0) && ((casesVides & G[i7]) != 0)) {
						a(paramInt1, casesVides, i2, i7 - 7, G[i7], i8 | F[i7],
								1025, i8 | G[i7]);
						i4 = i9;
					}
				} else {
					if (((i2 & D[i7]) != 0) && ((casesVides & E[i7]) != 0))
						c(paramInt1, casesVides | i8, i2 ^ D[i7], i7 - 9,
								E[i7], i8 | D[i7], 2049, i8 | E[i7]);
					if (((i2 & F[i7]) != 0) && ((casesVides & G[i7]) != 0))
						c(paramInt1, casesVides | i8, i2 ^ F[i7], i7 - 7,
								G[i7], i8 | F[i7], 2049, i8 | G[i7]);
					if (((i2 & H[i7]) != 0) && ((casesVides & I[i7]) != 0))
						c(paramInt1, casesVides | i8, i2 ^ H[i7], i7 + 7,
								I[i7], i8 | H[i7], 2049, i8 | I[i7]);
					if (((i2 & J[i7]) != 0) && ((casesVides & K[i7]) != 0))
						c(paramInt1, casesVides | i8, i2 ^ J[i7], i7 + 9,
								K[i7], i8 | J[i7], 2049, i8 | K[i7]);
					i4 = i9;
				}
			}
		}
		return false;
	}

	/**
	 * b(Z) TFS
	 * 
	 * @param paramBoolean
	 * @return
	 */
	private final int b(boolean paramBoolean) {
		if ((this.lastWhitePiecesPlacement != 0)
				&& (this.lastBlackPiecesPlacement != 0))
			return b(paramBoolean, this.lastWhitePiecesPlacement,
					this.lastBlackPiecesPlacement);
		if (this.lastBlackPiecesPlacement != 0) // 0 pions noirs
			return a(paramBoolean, this.lastWhiteKingsPlacement,
					this.lastBlackPiecesPlacement, false);
		if (this.lastWhitePiecesPlacement != 0) // 0 pions blancs
			return a(!paramBoolean, this.lastBlackKingsPlacement,
					this.lastWhitePiecesPlacement, true);
		return a(paramBoolean, this.lastWhiteKingsPlacement,
				this.lastBlackKingsPlacement);
	}

	/**
	 * b(ZII) TFS
	 * 
	 * @param paramBoolean
	 * @param whitePieces
	 * @param blackPieces
	 * @return
	 */
	private final int b(boolean paramBoolean, int whitePieces, int blackPieces) {
		int v0, v1;
		if (paramBoolean) {
			v1 = Integer.numberOfTrailingZeros(whitePieces);
			v0 = Integer.numberOfTrailingZeros(blackPieces);
		} else {
			v1 = 31 - Integer.numberOfTrailingZeros(blackPieces);
			v0 = 31 - Integer.numberOfTrailingZeros(whitePieces);
		}
		v0 = v0 - 4;
		return EndGameTableBase.d[(v1 + v0 * 28)];
	}

	private final int b(boolean paramBoolean1, int paramInt1, int paramInt2,
			int paramInt3, boolean paramBoolean2) {
		int i1 = Integer.numberOfTrailingZeros(paramInt1);
		int i2 = Integer.numberOfTrailingZeros(paramInt2);
		int i3 = Integer.numberOfTrailingZeros(paramInt3);
		if (paramBoolean2) {
			i1 = 31 - i1;
			i2 = 31 - i2;
			i3 = 31 - i3;
		}
		int i4 = i3 - 4;
		if (paramBoolean1)
			return EndGameTableBase.k[(i2 + (i4 * 896 + i1 * 32))];
		return EndGameTableBase.l[(i2 + (i4 * 896 + i1 * 32))];
	}

	private final int b(boolean paramBoolean1, int lBlackKing, int lWhitePiece,
			boolean paramBoolean2) {
		int i1 = Integer.numberOfTrailingZeros(lBlackKing);
		int i2 = Integer.numberOfTrailingZeros(lBlackKing & lBlackKing - 1);
		int i3 = Integer.numberOfTrailingZeros(lWhitePiece);
		if (paramBoolean2) {
			i1 = 31 - i1;
			i2 = 31 - i2;
			i3 = 31 - i3;
		}
		int i4 = i3 - 4;
		if (i1 < i2)
			;
		int i5;
		for (i5 = i1 + L[i2]; paramBoolean1; i5 = i2 + L[i1])
			return EndGameTableBase.g[(i5 + i4 * 496)];
		return EndGameTableBase.h[(i5 + i4 * 496)];
	}

	/**
	 * b() TFS Attends que k soit vrai
	 */
	private final void b() {
		// :goto_0
		while (!this.k) { // :cond_0
			try { // :try_start_1
				wait();
			} catch (InterruptedException e) {
			}
		}
		this.k = false;
	}

	/**
	 * TODO TFS
	 * 
	 * @param moveIndex
	 */
	private final void b(int moveIndex) {
		int i1 = this.lastWhitePiecesPlacement;
		int i2 = this.lastWhiteKingsPlacement;
		int i3 = this.lastBlackPiecesPlacement;
		int i4 = this.lastBlackKingsPlacement;
		int i5 = 0xFF & this.p[moveIndex];
		int i6 = 0xF00 & this.p[moveIndex];
		int i7 = this.o[moveIndex];
		int i8;
		int i9;
		int i10 = 0;
		int i11 = 0;
		int i12 = 0;
		switch (i6) {
		case 256:
		case 512:
		case 1024:
		case 2048:
		default:
			i8 = this.x ^ M[0];
			i9 = i1 ^ this.lastWhitePiecesPlacement;
			if (i9 == 0) {
				i10 = i2 ^ this.lastWhiteKingsPlacement;
				if (i10 != 0)
					break;
				i11 = i3 ^ this.lastBlackPiecesPlacement;
				if (i11 != 0)
					break;
			}
			i12 = i4 ^ this.lastBlackKingsPlacement;
			break;
		}
		while (true) {
			if (i12 == 0) {
				this.x = i8;
				// return;
				if ((0xF0000000 & i7) != 0) {
					this.lastWhitePiecesPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
					this.lastWhiteKingsPlacement = (i7 | this.lastWhiteKingsPlacement);
				}
				while (i5 != 0) {
					this.lastBlackPiecesPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
					this.lastBlackKingsPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
					this.nbBlackAlive -= i5;
					// break;
					this.lastWhitePiecesPlacement = (i7 | this.lastWhitePiecesPlacement
							& (0xFFFFFFFF ^ this.a[moveIndex]));
					break; // Willy Zou
				}
				this.lastWhiteKingsPlacement = (i7 | this.lastWhiteKingsPlacement
						& (0xFFFFFFFF ^ this.a[moveIndex]));
				if (i5 == 0)
					break;
				this.lastBlackPiecesPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
				this.lastBlackKingsPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
				this.nbBlackAlive -= i5;
				// break;
				if ((i7 & 0xF) != 0) {
					this.lastBlackPiecesPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
					this.lastBlackKingsPlacement = (i7 | this.lastBlackKingsPlacement);
				}
				while (i5 != 0) {
					this.lastWhitePiecesPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
					this.lastWhiteKingsPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
					this.nbWhiteAlive -= i5;
					// break;
					this.lastBlackPiecesPlacement = (i7 | this.lastBlackPiecesPlacement
							& (0xFFFFFFFF ^ this.a[moveIndex]));
					break; // Willy Zou
				}
				this.lastBlackKingsPlacement = (i7 | this.lastBlackKingsPlacement
						& (0xFFFFFFFF ^ this.a[moveIndex]));
				if (i5 == 0)
					break;
				this.lastWhitePiecesPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
				this.lastWhiteKingsPlacement &= (0xFFFFFFFF ^ this.a[moveIndex]);
				this.nbWhiteAlive -= i5;
				// break;
				i8 ^= M[(0 + 4 * Integer.numberOfTrailingZeros(i9))];
				i9 &= i9 - 1;
				// break;
				i8 ^= M[(1 + 4 * Integer.numberOfTrailingZeros(i10))];
				i10 &= i10 - 1;
				// break;
				i8 ^= M[(2 + 4 * Integer.numberOfTrailingZeros(i11))];
				i11 &= i11 - 1;
				break;
			}
			i8 ^= M[(3 + 4 * Integer.numberOfTrailingZeros(i12))];
			i12 &= i12 - 1;
		}
	}

	/**
	 * TODO TFS b(IIII)V
	 * 
	 * @param paramInt1
	 * @param paramInt2
	 * @param paramInt3
	 * @param paramInt4
	 */
	private final void setvalueParamFromLastParam(int paramInt1, int paramInt2,
			int paramInt3, int paramInt4) {
		if (paramInt4 <= -32000) {
			switch (paramInt3) {
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
		while (paramInt4 < 32000) {
			int i1 = this.x;
			int i2 = 0xFFFFF & i1;
			this.intArray[i2] = i1;
			this.shortArray[i2] = ((short) paramInt4);
			this.byteArray[i2] = ((byte) (paramInt3 | paramInt2 - paramInt1));
			return;
		}
		switch (paramInt3) {
		default:
			return;
		case 128:
		case 192:
		}
		while (true) {
			paramInt4 = 32000;
			paramInt2 = 63;
			paramInt1 = 0;
			// break;
			paramInt3 = 128;
			break; // Willy Zou
		}
	}

	private final void b(int paramInt1, int casesVides, int paramInt3,
			int paramInt4, int paramInt5, int paramInt6, int paramInt7,
			int paramInt8) {
		int i1 = 1;
		if (((paramInt3 & H[paramInt4]) != 0)
				&& ((casesVides & I[paramInt4]) != 0)) {
			b(paramInt1, casesVides, paramInt3, paramInt4 + 7, I[paramInt4],
					paramInt6 | H[paramInt4], paramInt7 + 1, paramInt8
							| I[paramInt4]);
			i1 = 0;
		}
		if (((paramInt3 & J[paramInt4]) != 0)
				&& ((casesVides & K[paramInt4]) != 0)) {
			b(paramInt1, casesVides, paramInt3, paramInt4 + 9, K[paramInt4],
					paramInt6 | J[paramInt4], paramInt7 + 1, paramInt8
							| K[paramInt4]);
			i1 = 0;
		}
		if (i1 != 0)
			a(paramInt1, paramInt5, paramInt6, paramInt7, paramInt8);
	}

	private final boolean b(int paramInt1, boolean paramBoolean, int casesVides) {
		int i5;
		if (paramBoolean)
			if (this.lastWhiteKingsPlacement == 0) {
				i5 = this.lastWhitePiecesPlacement
						& (casesVides >>> 4 | (casesVides & 0xE0E0E0E0) >>> 5 | (0x7070700 & casesVides) >>> 3);
				if (i5 != 0)
					;// break;
			}
		while (true) {
			if (this.nbPossibleMoves == 0)
				// break;
				return true;
			i5 = (this.lastWhiteKingsPlacement | this.lastWhitePiecesPlacement)
					& (casesVides >>> 4 | (casesVides & 0xE0E0E0E0) >>> 5 | (0x7070700 & casesVides) >>> 3)
					| this.lastWhiteKingsPlacement
					& (casesVides << 4 | (0x7070707 & casesVides) << 5 | (casesVides & 0xE0E0E0) << 3);
			// break;
			int i6 = Integer.numberOfTrailingZeros(i5);
			int i7 = 1 << i6;
			int i8 = i5 ^ i7;
			if ((i7 & this.lastWhiteKingsPlacement) == 0) {
				if ((casesVides & H[i6]) != 0)
					a(paramInt1, H[i6], i7, 256, i7 | H[i6]);
				if ((casesVides & J[i6]) == 0)
					break;
				a(paramInt1, J[i6], i7, 256, i7 | J[i6]);
				i5 = i8;
				break;
			}
			if ((casesVides & D[i6]) != 0)
				a(paramInt1, D[i6], i7, 512, i7 | D[i6]);
			if ((casesVides & F[i6]) != 0)
				a(paramInt1, F[i6], i7, 512, i7 | F[i6]);
			if ((casesVides & H[i6]) != 0)
				a(paramInt1, H[i6], i7, 512, i7 | H[i6]);
			if ((casesVides & J[i6]) != 0)
				a(paramInt1, J[i6], i7, 512, i7 | J[i6]);
			i5 = i8;
			// break;
			int i1 = 0;
			if (this.lastBlackKingsPlacement == 0)
				i1 = this.lastBlackPiecesPlacement
						& (casesVides << 4 | (0x7070707 & casesVides) << 5 | (casesVides & 0xE0E0E0) << 3);
			while (i1 != 0) {
				int i2 = Integer.numberOfTrailingZeros(i1);
				int i3 = 1 << i2;
				int i4 = i1 ^ i3;
				if ((i3 & this.lastBlackKingsPlacement) == 0) {
					if ((casesVides & D[i2]) != 0)
						a(paramInt1, D[i2], i3, 1024, i3 | D[i2]);
					if ((casesVides & F[i2]) != 0) {
						a(paramInt1, F[i2], i3, 1024, i3 | F[i2]);
						i1 = i4;
						// continue;
						i1 = (this.lastBlackKingsPlacement | this.lastBlackPiecesPlacement)
								& (casesVides << 4
										| (0x7070707 & casesVides) << 5 | (casesVides & 0xE0E0E0) << 3)
								| this.lastBlackKingsPlacement
								& (casesVides >>> 4
										| (0xE0E0E0E0 & casesVides) >>> 5 | (0x7070700 & casesVides) >>> 3);
						continue; // Willy Zou
					}
				} else {
					if ((casesVides & D[i2]) != 0)
						a(paramInt1, D[i2], i3, 2048, i3 | D[i2]);
					if ((casesVides & F[i2]) != 0)
						a(paramInt1, F[i2], i3, 2048, i3 | F[i2]);
					if ((casesVides & H[i2]) != 0)
						a(paramInt1, H[i2], i3, 2048, i3 | H[i2]);
					if ((casesVides & J[i2]) != 0)
						a(paramInt1, J[i2], i3, 2048, i3 | J[i2]);
					i1 = i4;
				}
			}
		}
		return false;
	}

	private final int c(boolean paramBoolean) {
		if (this.nbWhiteAlive == 1) {
			if (this.lastWhitePiecesPlacement != 0) {
				if (this.lastBlackKingsPlacement == 0) {
					if (paramBoolean)
						;
					for (boolean bool6 = false;; bool6 = true)
						return d(bool6, this.lastBlackPiecesPlacement,
								this.lastWhitePiecesPlacement, true);
				}
				if (this.lastBlackPiecesPlacement != 0) {
					if (paramBoolean)
						;
					for (boolean bool5 = false;; bool5 = true)
						return b(bool5, this.lastBlackPiecesPlacement,
								this.lastBlackKingsPlacement,
								this.lastWhitePiecesPlacement, true);
				}
				boolean bool4 = false;
				if (paramBoolean)
					;
				while (true) {
					return b(bool4, this.lastBlackKingsPlacement,
							this.lastWhitePiecesPlacement, true);
					// bool4 = true;
				}
			}
			if (this.lastBlackKingsPlacement == 0) {
				boolean bool1 = false;
				if (paramBoolean)
					;
				while (true) {
					return c(bool1, this.lastBlackPiecesPlacement,
							this.lastWhiteKingsPlacement, true);
					// bool1 = true;
				}
			}
			if (this.lastBlackPiecesPlacement != 0) {
				if (paramBoolean)
					;
				for (boolean bool3 = false;; bool3 = true)
					return a(bool3, this.lastBlackPiecesPlacement,
							this.lastBlackKingsPlacement,
							this.lastWhiteKingsPlacement, true);
			}
			boolean bool2 = false;
			if (paramBoolean)
				;
			while (true) {
				return c(bool2, this.lastBlackKingsPlacement,
						this.lastWhiteKingsPlacement);
				// bool2 = true;
			}
		}
		if (this.lastBlackPiecesPlacement != 0) {
			if (this.lastWhiteKingsPlacement == 0)
				return d(paramBoolean, this.lastWhitePiecesPlacement,
						this.lastBlackPiecesPlacement, false);
			if (this.lastWhitePiecesPlacement != 0)
				return b(paramBoolean, this.lastWhitePiecesPlacement,
						this.lastWhiteKingsPlacement,
						this.lastBlackPiecesPlacement, false);
			return b(paramBoolean, this.lastWhiteKingsPlacement,
					this.lastBlackPiecesPlacement, false);
		}
		if (this.lastWhiteKingsPlacement == 0)
			return c(paramBoolean, this.lastWhitePiecesPlacement,
					this.lastBlackKingsPlacement, false);
		if (this.lastWhitePiecesPlacement != 0)
			return a(paramBoolean, this.lastWhitePiecesPlacement,
					this.lastWhiteKingsPlacement, this.lastBlackKingsPlacement,
					false);
		return c(paramBoolean, this.lastWhiteKingsPlacement,
				this.lastBlackKingsPlacement);
	}

	/**
	 * c(ZII) TFS
	 * 
	 * @param paramBoolean
	 * @param kingPlacement1
	 * @param kingPlacement2
	 * @return
	 */
	private final int c(boolean paramBoolean, int kingPlacement1,
			int kingPlacement2) {
		int v2 = Integer.numberOfTrailingZeros(kingPlacement1);
		int v1 = Integer.numberOfTrailingZeros(kingPlacement1
				& (kingPlacement1 - 1));
		int v0 = Integer.numberOfTrailingZeros(kingPlacement2);
		if (v0 >= 16) {
			v2 = 31 - v2;
			v1 = 31 - v1;
			v0 = 31 - v0;
		}
		int tmp = v0;
		v0 = v1;
		v1 = tmp;
		// :goto_0
		if (v2 < v0) {
			v0 = v2 + L[v0];
		} else { // :cond_0
			v0 += L[v2];
		}
		// :goto_1
		if (paramBoolean) {
			return EndGameTableBase.e[v0 * 16 + v1];
		} else {// :cond_1
			return EndGameTableBase.f[v0 * 16 + v1];
		}
	}

	/**
	 * c(ZIIZ) TFS
	 * 
	 * @param paramBoolean1
	 * @param piecePlacement
	 * @param kingPlacement
	 * @param paramBoolean2
	 * @return
	 */
	private final int c(boolean paramBoolean1, int piecePlacement,
			int kingPlacement, boolean paramBoolean2) {
		int v2 = Integer.numberOfTrailingZeros(piecePlacement);
		int v1 = Integer.numberOfTrailingZeros(piecePlacement
				& (piecePlacement - 1));
		int v0 = Integer.numberOfTrailingZeros(kingPlacement);
		if (paramBoolean2) {
			v2 = 31 - v2;
			v1 = 31 - v1;
			v0 = 31 - v0;
		}
		int tmp = v0;
		v0 = v1;
		v1 = tmp;
		// :goto_0
		if (v2 < v0) {
			v0 = v2 + L[v0];
		} else { // :cond_0
			v0 += L[v2];
		}
		// :goto_1
		if (paramBoolean1) {
			return EndGameTableBase.m[v0 * 32 + v1];
		} else {// :cond_1
			return EndGameTableBase.n[v0 * 32 + v1];
		}
	}

	/**
	 * c() TFS Fais une pause de 500 ms.
	 */
	private final void sleep() {
		try {
			Thread.sleep(500L);
		} catch (InterruptedException localInterruptedException) {
		}
	}

	private final void c(int paramInt1, int casesVides, int paramInt3,
			int paramInt4, int paramInt5, int paramInt6, int paramInt7,
			int paramInt8) {
		int i1 = 1;
		if (((paramInt3 & D[paramInt4]) != 0)
				&& ((casesVides & E[paramInt4]) != 0)) {
			c(paramInt1, casesVides, paramInt3 ^ D[paramInt4], paramInt4 - 9,
					E[paramInt4], paramInt6 | D[paramInt4], paramInt7 + 1,
					paramInt8 | E[paramInt4]);
			i1 = 0;
		}
		if (((paramInt3 & F[paramInt4]) != 0)
				&& ((casesVides & G[paramInt4]) != 0)) {
			c(paramInt1, casesVides, paramInt3 ^ F[paramInt4], paramInt4 - 7,
					G[paramInt4], paramInt6 | F[paramInt4], paramInt7 + 1,
					paramInt8 | G[paramInt4]);
			i1 = 0;
		}
		if (((paramInt3 & H[paramInt4]) != 0)
				&& ((casesVides & I[paramInt4]) != 0)) {
			c(paramInt1, casesVides, paramInt3 ^ H[paramInt4], paramInt4 + 7,
					I[paramInt4], paramInt6 | H[paramInt4], paramInt7 + 1,
					paramInt8 | I[paramInt4]);
			i1 = 0;
		}
		if (((paramInt3 & J[paramInt4]) != 0)
				&& ((casesVides & K[paramInt4]) != 0)) {
			c(paramInt1, casesVides, paramInt3 ^ J[paramInt4], paramInt4 + 9,
					K[paramInt4], paramInt6 | J[paramInt4], paramInt7 + 1,
					paramInt8 | K[paramInt4]);
			i1 = 0;
		}
		if (i1 != 0)
			a(paramInt1, paramInt5, paramInt6, paramInt7, paramInt8);
	}

	/**
	 * d(ZII) TFS
	 * 
	 * @param paramBoolean
	 * @param kingPlacement1
	 * @param kingPlacement2
	 * @return
	 */
	private final int d(boolean paramBoolean, int kingPlacement1,
			int kingPlacement2) {
		int v0, v1, v2, v3;
		if (paramBoolean) {
			v3 = Integer.numberOfTrailingZeros(kingPlacement1);
			v2 = Integer.numberOfTrailingZeros(kingPlacement1
					& (kingPlacement1 - 1));
			v1 = Integer.numberOfTrailingZeros(kingPlacement2);
			v0 = Integer.numberOfTrailingZeros(kingPlacement2
					& (kingPlacement2 - 1));
		} else { // :cond_0
			v3 = Integer.numberOfTrailingZeros(kingPlacement2);
			v2 = Integer.numberOfTrailingZeros(kingPlacement2
					& (kingPlacement2 - 1));
			v1 = Integer.numberOfTrailingZeros(kingPlacement1);
			v0 = Integer.numberOfTrailingZeros(kingPlacement1
					& (kingPlacement1 - 1));
		}
		int tmp1 = v0;
		v0 = v2;
		v2 = tmp1;
		int tmp2 = v1;
		v1 = v3;
		v3 = tmp2;
		// :goto_0
		if (v1 < v0) {
			v0 = v1 + L[v0];
		} else { // :cond_1
			v0 += L[v1];
		}
		v1 = v0;
		// :goto_1
		if (v3 < v2) {
			v0 = v3 + L[v2];
		} else { // :cond_2
			v0 = v2 + L[v3];
		}
		// :goto_2
		return EndGameTableBase.q[v0 + v1 * 496];
	}

	/**
	 * d(ZIIZ) TODO TFS
	 * 
	 * @param paramBoolean1
	 * @param lPiece1
	 * @param lPiece2
	 * @param paramBoolean2
	 * @return
	 */
	private final int d(boolean paramBoolean1, int lPiece1, int lPiece2,
			boolean paramBoolean2) {
		int i1 = Integer.numberOfTrailingZeros(lPiece1);
		int i2 = Integer.numberOfTrailingZeros(lPiece1 & lPiece1 - 1);
		int i3 = Integer.numberOfTrailingZeros(lPiece2);
		if (paramBoolean2) {
			i1 = 31 - i1;
			i2 = 31 - i2;
			i3 = 31 - i3;
		}
		int i4 = i3 - 4;
		if (i1 < i2)
			;
		int i5;
		for (i5 = i1 + L[i2]; paramBoolean1; i5 = i2 + L[i1])
			return EndGameTableBase.o[(i4 + i5 * 28)];
		return EndGameTableBase.p[(i4 + i5 * 28)];
	}

	/**
	 * d() TFS
	 * 
	 */
	private final void initSomething() {
		try {
			this.intArray = new int[1048576]; // 1 '1' et 20 '0'
			this.shortArray = new short[1048576];
			this.byteArray = new byte[1048576];
		} catch (Exception e) {
			this.intArray = null;
			this.shortArray = null;
			this.byteArray = null;
		}
		this.initialized = this.intArray != null && this.shortArray != null
				&& this.byteArray != null;
	}

	/**
	 * e() TFS
	 */
	private final void clearTheIntArray() {
		for (int i = 0; i < 1048576; i++) {
			this.intArray[i] = 0;
		}
	}

	/**
	 * a(IZZ) TFS
	 * 
	 * @param paramInt
	 * @param paramBoolean1
	 * @param onJoueLesNoirs
	 * @return
	 */
	public final int a(int paramInt, boolean paramBoolean1,
			boolean onJoueLesNoirs) {
		this.onJoueLesNoirs = onJoueLesNoirs;
		return a(paramInt, paramBoolean1);
	}

	/**
	 * a() TFS Initialise le plateau d'une nouvelle partie
	 */
	public final void initPlateau() {
		this.lastWhitePiecesPlacement = 4095; // Suite de 12 '1'
		this.lastWhiteKingsPlacement = 0;
		this.lastBlackPiecesPlacement = -1048576; // Suite de 12 '1' et 20 '0'
		this.lastBlackKingsPlacement = 0;
		this.nbWhiteAlive = 12;
		this.nbBlackAlive = 12;
		this.x = a(false);
		a(0, false);
		if (this.initialized)
			clearTheIntArray();
	}

	/**
	 * a(I) TFS
	 * 
	 * @param moveIndex
	 */
	public final void a(int moveIndex) {
		b(moveIndex);
	}

	/**
	 * a(IIIIZ) TODO TFS Compte le nombre de pions de chacun et...
	 * 
	 * @param whitePiecePlacement
	 * @param whiteKingPlacement
	 * @param blackPiecePlacement
	 * @param blackKingPlacement
	 * @param paramBoolean
	 */
	public final void setPlateau(int whitePiecePlacement,
			int whiteKingPlacement, int blackPiecePlacement,
			int blackKingPlacement, boolean paramBoolean) {
		this.lastWhitePiecesPlacement = whitePiecePlacement;
		this.lastWhiteKingsPlacement = whiteKingPlacement;
		this.lastBlackPiecesPlacement = blackPiecePlacement;
		this.lastBlackKingsPlacement = blackKingPlacement;
		this.nbWhiteAlive = Integer.bitCount(this.lastWhitePiecesPlacement
				| this.lastWhiteKingsPlacement);
		this.nbBlackAlive = Integer.bitCount(this.lastBlackPiecesPlacement
				| this.lastBlackKingsPlacement);
		this.x = a(paramBoolean);
	}

	/**
	 * a(ZZ) TFS
	 * 
	 * @param paramBoolean1
	 * @param onJoueLesNoirs
	 */
	public final void a(boolean paramBoolean1, boolean onJoueLesNoirs) {
		this.t = paramBoolean1;
		this.onJoueLesNoirs = onJoueLesNoirs;
		this.k = true;
		notify();
	}

	/**
	 * run() TFS Thread de l'IA.
	 */
	public void run() {
		// :goto_0
		while (true) {
			b();
			if (this.nbPossibleMoves == 1) {
				sleep();
				this.view.moveIA(0, 0, -1, 1);
			} else { // :cond_0
				if (this.level == 0) {
					// Random
					sleep();
					int moveIndex = this.random.nextInt(this.nbPossibleMoves);
					this.view.moveIA(moveIndex, 0, 0, 1);
				} else { // :cond_1
					if (this.lastWhitePiecesPlacement == 4095) { // suite de 12
																	// '1'
						// Config initiale
						sleep();
						// :goto_1
						this.view.moveIA(
								this.random.nextInt(this.nbPossibleMoves
										- (this.t ? 1 : 0)), 0, -2, 1);
					} else { // :cond_3
						this.currentTimeMillis = System.currentTimeMillis();
						this.n = 0;
						this.m = false;
						// :goto_2
						this.u = !this.onJoueLesNoirs
								&& EndGameTableBase.loaded;
						int v13 = 0;
						int v11 = 0;
						int v10 = 0;
						this.leFameuxN = 1;
						int localLWPP = this.lastWhitePiecesPlacement;
						int localLWKP = this.lastWhiteKingsPlacement;
						int localLBPP = this.lastBlackPiecesPlacement;
						int localLBKP = this.lastBlackKingsPlacement;
						int localNbWhiteAlive = this.nbWhiteAlive;
						int localNbBlackAlive = this.nbBlackAlive;
						int v21 = this.x;
						// :goto_3
						int v9 = -32767;
						int v12 = 0;
						int v2 = 0;
						for (int v6 = 1; v6 <= 64; v6++) {
							// :cond_6
							// :goto_4
							if (v12 >= this.nbPossibleMoves) {
								v2 = -32000;
								if (v9 > v2 && v9 < 32000) {
									int v5 = 0;
									v2 = v13;
									int v3 = 0;
									while (v3 == 0) {
										// :goto_5
										v3 = this.nbPossibleMoves - 1;
										if (v5 < v3) {
											// :cond_a
											v3 = 1;
											int v4 = this.nbPossibleMoves - 1;
											// :goto_8
											while (v5 < v4) {
												// :cond_b
												if (this.q[v4] > this.q[v4 - 1]) {
													v3 = this.q[v4];
													this.q[v4] = this.q[v4 - 1];
													this.q[v4 - 1] = v3;
													v3 = this.o[v4];
													this.o[v4] = this.o[v4 - 1];
													this.o[v4 - 1] = v3;
													v3 = this.a[v4];
													this.a[v4] = this.a[v4 - 1];
													this.a[v4 - 1] = v3;
													v3 = this.p[v4];
													this.p[v4] = this.p[v4 - 1];
													this.p[v4 - 1] = v3;
													v3 = this.b[v4];
													this.b[v4] = this.b[v4 - 1];
													this.b[v4 - 1] = v3;
													if (v2 == v4) {
														v2 -= 1;
													} else { // :cond_d
														v3 = v4 - 1;
														if (v2 == v3) {
															v2 += 1;
														}
													}
													// :cond_c
													// :goto_9
													int tmp = 0;
													v3 = v2;
													v2 = tmp;
												} else { // :cond_e
													int tmp = v3;
													v3 = v2;
													v2 = tmp;
												}
												// :goto_a
												v4 -= 1;
												int tmp = v2;
												v2 = v3;
												v3 = tmp;
											}
											if (v3 == 0)
												v5 += 1;
										}
									}
									// :cond_7
									v6++;
									v13 = v2;
									v9 = -32767;
									v12 = 0;
								} else { // :cond_4
									break;
								}
							} else { // :cond_8
								b(v12);
								// :goto_6
								this.q[v12] = -useInRun(-32767, -v9, 1, v6, 0,
										!this.t);
								this.lastWhitePiecesPlacement = localLWPP;
								this.lastWhiteKingsPlacement = localLWKP;
								this.lastBlackPiecesPlacement = localLBPP;
								this.lastBlackKingsPlacement = localLBKP;
								this.nbWhiteAlive = localNbWhiteAlive;
								this.nbBlackAlive = localNbBlackAlive;
								this.x = v21;
								if (!this.m) {
									int v3, v4, v5;
									if (v2 > v9) {
										v3 = v6;
										v4 = v2;
										v5 = v12;
									} else { // :cond_f
										v2 = v9;
										v3 = v10;
										v4 = v11;
										v5 = v13;
									}
									// :goto_7
									v12 += 1;
									v9 = v2;
									v10 = v3;
									v11 = v4;
									v13 = v5;
								} else { // :cond_4
									break;
								}
							}
						}
						// :cond_4
						this.view.moveIA(v13, v11, v10, this.leFameuxN);
					}
				}
			}
		}
	}
}

/*
 * Location:
 * /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar
 * .jar Qualified Name: com.xxogli.xadroid.checkers.a JD-Core Version: 0.6.2
 */
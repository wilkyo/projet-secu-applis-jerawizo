package com.xxogli.xadroid.checkers;

import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;

/*  */
public class CheckersView extends View {
	private boolean boolA;
	private boolean boolB;
	private boolean boolC;
	private boolean boolD;
	private boolean boolE;
	private boolean boolF;
	private int G;
	private int[] arrayH;
	private int[] arrayI;
	private int[] arrayJ;
	private int[] arrayK;
	private int L;
	private int M;
	private int N;
	private String text1;
	private float P;
	private float Q;
	private int R;
	private Context context;
	private Paint paint1;
	private Paint paint2;
	private Paint paint3;
	private Paint paint4;
	private Paint redCase;
	private Paint paint6;
	private Paint paint7;
	private Paint greenCase;
	private Paint paint9;
	private int k;
	private float l;
	private int m;
	private int n;
	private Drawable drawable;
	private CheckersController p;
	private int q;
	private int r;
	private int s;
	private int t;
	private int u;
	private int v;
	private int w;
	private int x;
	private boolean booly;
	private int z;

	public CheckersView(Context paramContext,
			SharedPreferences paramSharedPreferences) {
		super(paramContext);
		this.context = paramContext;
		this.paint1 = new Paint();
		this.paint1.setAntiAlias(true);
		this.paint1.setARGB(255, 0, 0, 0);

		this.paint2 = new Paint();
		this.paint2.setAntiAlias(true);
		this.paint2.setARGB(255, 255, 255, 255);

		this.paint3 = new Paint();
		this.paint3.setAntiAlias(true);
		this.paint3.setARGB(255, 251, 215, 174);

		this.paint4 = new Paint();
		this.paint4.setAntiAlias(true);
		this.paint4.setARGB(255, 0, 0, 0);

		this.redCase = new Paint();
		this.redCase.setAntiAlias(true);
		this.redCase.setARGB(255, 255, 0, 0);

		this.paint6 = new Paint();
		this.paint6.setAntiAlias(true);
		this.paint6.setARGB(255, 255, 165, 0);

		this.paint7 = new Paint();
		this.paint7.setAntiAlias(true);
		this.paint7.setARGB(255, 255, 200, 0);
		this.paint7.setStrokeWidth(2.0F);

		this.greenCase = new Paint();
		this.greenCase.setAntiAlias(true);
		this.greenCase.setARGB(255, 0, 255, 0);

		this.paint9 = new Paint();
		this.paint9.setAntiAlias(true);
		this.paint9.setARGB(255, 0, 0, 0);
		this.paint9.setStyle(Paint.Style.STROKE);
		this.paint9.setStrokeWidth(5.0F);

		this.k = 12;
		this.l = 0.0F;
		this.m = 0;
		this.n = 0;
		this.drawable = this.context.getResources().getDrawable(2130837504);
		this.arrayH = new int[8];
		this.arrayI = new int[8];
		this.arrayJ = new int[8];
		this.arrayK = new int[8];
		EndGameTableBase.load(paramContext);
		this.p = new CheckersController(this);
		this.text1 = null;
		if (getData(paramSharedPreferences))
			if (!e())
				this.text1 = "restored game";
		while (true) {
			changeColorTable();
			this.P = -10.0F;
			this.Q = -10.0F;
			this.R = 0;
			if ((this.boolE) && (e()))
				g();
			// return;
			this.q = 1;
			this.r = this.p.d;
			this.s = this.p.f;
			this.t = this.p.e;
			this.u = this.p.g;
			this.v = 0;
			this.w = 0;
			this.x = 0;
			this.booly = false;
			this.z = 3;
			this.boolA = true;
			this.boolB = false;
			this.boolC = false;
			this.boolD = false;
			this.boolE = true;
			this.boolF = true;
			this.G = 0;
			this.L = 0;
			this.M = 0;
			this.N = this.p.c;
		}
	}

	/**
	 * Set SharedPreferences.Editor's value
	 * 
	 * @param paramEditor
	 * @param paramString
	 * @param paramArrayOfInt
	 */
	private final void setPreferenceEditor(
			SharedPreferences.Editor paramEditor, String paramString,
			int[] paramArrayOfInt) {
		for (int i1 = 0;; i1++) {
			if (i1 >= 8)
				return;
			paramEditor.putInt(paramString + i1, paramArrayOfInt[i1]);
		}
	}

	/**
	 * Get Value from SharedPreferences and put it in the array
	 * 
	 * @param paramSharedPreferences
	 * @param paramString
	 * @param paramArrayOfInt
	 */
	private final void getValueFromPreferences(
			SharedPreferences paramSharedPreferences, String paramString,
			int[] paramArrayOfInt) {
		for (int i1 = 0;; i1++) {
			if (i1 >= 8)
				return;
			paramArrayOfInt[i1] = paramSharedPreferences.getInt(paramString
					+ i1, 0);
		}
	}

	/**
	 * Draw square's case using canvas
	 * 
	 * @param paramCanvas
	 * @param paramInt1
	 * @param paramInt2
	 * @param paramInt3
	 * @param paramInt4
	 */
	private final void drawSquare(Canvas paramCanvas, int paramInt1,
			int paramInt2, int paramInt3, int paramInt4) {
		int i1 = paramInt1 >>> 2;
		int i2 = 1 + 2 * (paramInt1 & 0x3) - (i1 & 0x1);
		int i3 = paramInt2 >>> 2;
		int i4 = 1 + 2 * (paramInt2 & 0x3) - (i3 & 0x1);
		int i8 = 0;
		int i5 = 0;
		int i6 = 0;
		if (this.boolC) {
			i8 = 7 - i1;
			int i9 = 7 - i2;
			int i10 = 7 - i3;
			i4 = 7 - i4;
			i5 = i10;
			i6 = i9;
		}
		for (int i7 = i8;; i7 = i1) {
			paramCanvas.drawLine(paramInt4 + i6 * paramInt3, paramInt4 + i7
					* paramInt3, paramInt4 + i4 * paramInt3, paramInt4
					+ paramInt3 * i5, this.paint7);
			// return;
			i5 = i3;
			i6 = i2;
		}
	}

	/**
	 * Draw circle using Canvas
	 * 
	 * @param paramCanvas
	 * @param cx
	 * @param cy
	 * @param radius
	 * @param paramInt4
	 * @param paramPaint1
	 * @param paramPaint2
	 * @param paramBoolean
	 */
	private final void drawCircle(Canvas paramCanvas, int cx,
			int cy, int radius, int paramInt4, Paint paramPaint1,
			Paint paramPaint2, boolean paramBoolean) {
		paramCanvas
				.drawCircle(cx, cy, radius - 2, paramPaint1);
		paramCanvas
				.drawCircle(cx, cy, radius - 4, paramPaint2);
		paramCanvas
				.drawCircle(cx, cy, radius - 7, paramPaint1);
		paramCanvas
				.drawCircle(cx, cy, radius - 9, paramPaint2);
		if (paramBoolean) {
			int i1 = radius >> 2;
			int i2 = cx - i1;
			int i3 = cy - i1;
			paramCanvas.drawCircle(i2, i3, radius - 2, paramPaint1);
			paramCanvas.drawCircle(i2, i3, radius - 4, paramPaint2);
			paramCanvas.drawCircle(i2, i3, radius - 7, paramPaint1);
			paramCanvas.drawCircle(i2, i3, radius - 9, paramPaint2);
			paramCanvas.drawText("K", i2 - paramInt4, i3, paramPaint1);
		}
	}

	/**
	 * Get Data from SharedPreferences
	 * 
	 * @param paramSharedPreferences
	 * @return
	 */
	private final boolean getData(SharedPreferences paramSharedPreferences) {
		boolean bool1;
		if (paramSharedPreferences != null)
			;
		try {
			int i1 = paramSharedPreferences.getInt("format", 0);
			if (i1 != 34)
				bool1 = false;
			while (true) {
				// return bool1;
				this.q = paramSharedPreferences.getInt("state", 1);
				this.r = paramSharedPreferences.getInt("wp", 0);
				this.s = paramSharedPreferences.getInt("bp", 0);
				this.t = paramSharedPreferences.getInt("wk", 0);
				this.u = paramSharedPreferences.getInt("bk", 0);
				this.v = paramSharedPreferences.getInt("l1", 0);
				this.w = paramSharedPreferences.getInt("l2", 0);
				this.x = paramSharedPreferences.getInt("lm", 0);
				this.booly = paramSharedPreferences.getBoolean("cap", true);
				this.z = paramSharedPreferences.getInt("level", 3);
				this.boolA = paramSharedPreferences.getBoolean("show", true);
				this.boolB = paramSharedPreferences.getBoolean("free", false);
				this.boolC = paramSharedPreferences.getBoolean("rot", false);
				this.boolD = paramSharedPreferences.getBoolean("full", false);
				this.boolE = paramSharedPreferences.getBoolean("start", true);
				this.boolF = paramSharedPreferences.getBoolean("anim", true);
				this.G = paramSharedPreferences.getInt("color", 0);
				getValueFromPreferences(paramSharedPreferences, "lwp",
						this.arrayH);
				getValueFromPreferences(paramSharedPreferences, "lwk",
						this.arrayI);
				getValueFromPreferences(paramSharedPreferences, "lbp",
						this.arrayJ);
				getValueFromPreferences(paramSharedPreferences, "lbk",
						this.arrayK);
				this.L = paramSharedPreferences.getInt("lp", 0);
				this.M = paramSharedPreferences.getInt("lc", 0);
				setLevel(this.z);
				boolean bool2 = true;
				if ((this.q != 3) && (this.q != 4) && (this.q != 6))
					bool2 = false;
				synchronized (this.p) {
					this.p.a(this.r, this.t, this.s, this.u, bool2);
					this.p.a(0, bool2, this.boolB);
					this.N = this.p.c;
					if ((this.q == 4) || (this.q == 2))
						this.p.a(bool2, this.boolB);
					bool1 = true;
					continue;
					// bool2 = true;
				}
			}
		} catch (ClassCastException localClassCastException) {
			while (true) {
				bool1 = false;
				continue;
				// bool1 = false;
			}
		} finally {
		}
	}

	private final boolean gameStatus(boolean paramBoolean, int paramInt1,
			int paramInt2, int paramInt3, int paramInt4) {
		int i1 = -1;
		if (paramBoolean)
			;
		int i2;
		boolean bool1;
		String str2;
		String str1;
		int i10, i11;
		do {
			do {
				while (true) {
					try {
						if (this.R > 0) {
							if (this.R == 2) {
								paramInt1 = -2;
								if (this.q != 2)
									continue;
								i11 = 1;
								this.q = i11;
								setLevel(this.z);
								this.R = 0;
								paramBoolean = false;
							}
						} else {
							if (!paramBoolean)
								break;
							c(paramInt1);
							if ((this.q != 5) && (this.q != 6)) {
								if (paramInt3 != 0)
									continue;
								this.text1 = "random play";
							}
							i2 = 1;
							// return i2;
							return i2 == 1;
						}
						paramInt1 = i1;
						// continue;
						i11 = 3;
						// continue;
						if (paramInt3 == i1) {
							this.text1 = "only reply";
							continue;
						}
					} finally {
					}
					if (paramInt3 == -2) {
						this.text1 = "opening";
					} else if (paramInt2 <= -32000) {
						this.text1 = ("loss in #" + (paramInt2 + 32500) / 2);
					} else if (paramInt2 >= 32000) {
						this.text1 = ("win in #" + (32500 - paramInt2) / 2);
					} else {
						this.text1 = ("v=" + paramInt2 + " d=" + paramInt3
								+ " n=" + paramInt4);
						// continue;
						if (paramInt1 == -3) {
							alertDialog();
							i2 = 1;
						} else if (paramInt1 == i1) {
							if ((this.q == 2) || (this.q == 4)) {
								this.R = 1;
								this.p.h = 1;
								this.text1 = "stopping....";
								i2 = 1;
							} else {
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
								this.booly = false;
								this.L = 0;
								this.M = 0;
								this.N = this.p.c;
								this.text1 = null;
								i2 = 1;
							}
						} else if (paramInt1 == -2) {
							this.v = 0;
							this.w = 0;
							this.x = 0;
							if ((this.q == 2) || (this.q == 4)) {
								this.R = 2;
								this.p.h = 1;
								this.text1 = "stopping....";
								i2 = 1;
							} else {
								this.R = 0;
								if ((this.q == 1) || (this.q == 5))
									break;
								bool1 = false;
								if (g(bool1)) {
									if (bool1)
										;
									for (this.q = 3;; this.q = 1) {
										this.r = this.p.d;
										this.s = this.p.f;
										this.t = this.p.e;
										this.u = this.p.g;
										this.v = 0;
										this.w = 0;
										this.x = 0;
										int i4 = this.p.a(0, bool1, this.boolB);
										boolean bool2 = false;
										if (i4 == 1)
											bool2 = true;
										this.booly = bool2;
										this.N = this.p.c;
										this.text1 = "undid half-move";
										i2 = 1;
										break;
									}
								}
								this.text1 = "no more undo";
								i2 = 1;
							}
						} else {
							if (paramInt1 != -4)
								break;
							if (this.q == 1) {
								this.q = 2;
								this.p.a(false, this.boolB);
								Context localContext2 = this.context;
								if (!this.boolC)
									break;
								str2 = "computer now plays black";
								Toast.makeText(localContext2, str2, 0).show();
								i2 = 1;
							} else {
								int i5 = this.q;
								i2 = 0;
								if (i5 == 3) {
									this.q = 4;
									this.p.a(true, this.boolB);
									Context localContext1 = this.context;
									if (!this.boolC)
										break;
									str1 = "computer now plays white\ngoto options to rotate board";
									Toast.makeText(localContext1, str1, 0)
											.show();
									i2 = 1;
								}
							}
						}
					}
				}
				i2 = 0;
			} while (paramInt1 != 1);
			if (this.q == 1)
				break;
			i10 = this.q;
			i2 = 0;
		} while (i10 != 3);
		this.w = 0;
		this.x = 0;
		int i6 = this.p.c;
		int[] arrayOfInt = this.p.b;
		int i7 = 0;
		int i8 = 0;
		while (true) {
			if (i7 >= i6) {
				if (i8 != 1)
					break;
				c(i1);
				i2 = 1;
				break;
			}
			if ((this.v & arrayOfInt[i7]) == this.v) {
				if (arrayOfInt[i7] != i2)
					;
				for (int i9 = i8 + 1;; i9 = i8) {
					int i3 = arrayOfInt[i7];
					this.w |= arrayOfInt[i7];
					i8 = i9;
					i1 = i7;
					// break;
					if (this.w == 0)
						this.v = 0;
					i3 = 1;
					break;
				}
				bool1 = true;
				// break;
				str2 = "computer now plays black\ngoto options to rotate board";
				// break;
				str1 = "computer now plays white";
				break;
			}
			i7++;
		}
		return false; // willy zou
	}

	private final int b(float paramFloat1, float paramFloat2) {
		int i1 = 1;
		while (true) {
			int i4 = 0;
			int i5 = 0;
			int i7, i8, i9, i10, i11;
			try {
				int i2 = getWidth();
				int i3 = getHeight();
				int i6 = 0;
				if (i2 < i3) {
					i4 = i2 >>> 3;
					if (this.q != i1) {
						int i12 = this.q;
						if (i12 != 3)
							;
					} else {
						i5 = 0;
						i6 = i1;
						if (i5 < 8)
							continue;
					}
					i1 = 0;
					return i1;
				} else {
					i2 = i3;
					// continue;
				}
				i7 = 0x1 & 1 - i5;
				i8 = i6;
				if (i7 >= 8) {
					i5++;
					i6 = i8;
					continue;
				}
				if (this.boolC) {
					i9 = i4 * (7 - i7);
					i10 = i4 * (7 - i5);
					if ((i9 > paramFloat1) || (paramFloat1 >= i9 + i4)
							|| (i10 > paramFloat2) || (paramFloat2 >= i10 + i4))
						break;
					this.v = (i8 | this.v);
					continue;
				}
			} finally {
			}
			i9 = i4 * i7;
			i10 = i4 * i5;
			// continue;
			i11 = i8 << 1;
			i7 += 2;
			i8 = i11;
		}
		return 0; // Willy Zou
	}

	private final void b(int paramInt) {

		try {
			if (this.G != paramInt) {
				this.G = paramInt;
				changeColorTable();
				postInvalidate();
			}
			return;
		} finally {
			// localObject = finally;
			// throw localObject;
		}
	}

	private final void b(Canvas paramCanvas, int paramInt1, int paramInt2,
			int paramInt3, int paramInt4) {
		int i1 = paramInt2 & (paramInt1 ^ 0xFFFFFFFF);
		if (i1 == 0) {
			drawSquare(paramCanvas, Integer.numberOfTrailingZeros(paramInt1),
					Integer.numberOfTrailingZeros(paramInt1 & paramInt1 - 1),
					paramInt3, paramInt4);
			return;
		}
		while (true) {
			int i2 = 0;
			int i3 = Integer.numberOfTrailingZeros(i2);
			int i4 = 0;
			int i7 = 0;
			int i8 = 0;
			int i9 = 0;
			if ((0x1 & i3 >>> 2) != 0) {
				i4 = i3 - 5;
				int i12 = i3 - 4;
				int i13 = i3 + 3;
				i7 = i3 + 4;
				i8 = i13;
				i9 = i12;
				int i10 = 1 << i4 | 1 << i7;
				int i11 = 1 << i9 | 1 << i8;
				if ((i10 & paramInt1) == i10)
					drawSquare(paramCanvas, i4, i7, paramInt3, paramInt4);
				if ((i11 & paramInt1) == i11)
					drawSquare(paramCanvas, i9, i8, paramInt3, paramInt4);
				i2 &= i2 - 1;
			}
			while (true) {
				if (i2 != 0)
					break;
				// return;
				i4 = i3 - 4;
				int i5 = i3 - 3;
				int i6 = i3 + 4;
				i7 = i3 + 5;
				i8 = i6;
				i9 = i5;
				// break;
				i2 = i1;
			}
		}
	}

	/**
	 * Change Table's Color
	 */
	private final void changeColorTable() {
		switch (this.G) {
		default:
			return;
		case 1:
			this.paint4.setARGB(255, 102, 205, 170);
			return;
		case 2:
			this.paint4.setARGB(255, 69, 139, 116);
			return;
		case 3:
			this.paint4.setARGB(255, 30, 144, 255);
			return;
		case 4:
			this.paint4.setARGB(255, 142, 107, 35);
			return;
		case 5:
			this.paint4.setARGB(255, 108, 123, 139);
			return;
		case 6:
		}
		this.paint4.setARGB(255, 204, 204, 204);
	}

	private final void c(int paramInt) {
		d();
		boolean bool = true;
		if ((this.q != 1) && (this.q != 2)) {
			bool = false;
			this.v = 0;
			this.w = 0;
			this.x = this.p.b[paramInt];
			if (this.boolF) {
				this.l = 0.9F;
				if (!bool)
					// break;
					;
				this.m = (this.p.a[paramInt] & (this.r | this.t));
			}
		}
		for (this.n = 0;; this.n = (this.p.a[paramInt] & (this.s | this.u))) {
			this.p.a(paramInt);
			this.r = this.p.d;
			this.s = this.p.f;
			this.t = this.p.e;
			this.u = this.p.g;
			this.booly = false;
			this.text1 = null;
			switch (this.p.a(0, bool, this.boolB)) {
			default:
				// return;
				bool = true;
				// break;
				this.m = 0;
			case 0:
			case 1:
			case 2:
			}
			break; // Willy Zou
		}
		if (bool)
			;
		for (int i1 = 6;; i1 = 5) {
			this.q = i1;
			this.N = 0;
			// return;
			break; // Willy Zou
		}
		this.booly = true;
		this.N = this.p.c;
		if (this.q == 1) {
			if (this.z == 0) {
				this.q = 3;
				this.text1 = "free play";
				return;
			}
			this.q = 4;
			this.p.a(bool, this.boolB);
			return;
		}
		if (this.q == 3) {
			if (this.z == 0) {
				this.q = 1;
				this.text1 = "free play";
				return;
			}
			this.q = 2;
			this.p.a(bool, this.boolB);
			return;
		}
		if (this.q == 2) {
			this.q = 3;
			return;
		}
		this.q = 1;
	}

	private final void d() {
		int i1 = this.L;
		this.arrayH[i1] = this.p.d;
		this.arrayI[i1] = this.p.e;
		this.arrayJ[i1] = this.p.f;
		this.arrayK[i1] = this.p.g;
		if (this.L < 7)
			;
		for (this.L = (1 + this.L);; this.L = 0) {
			if (this.M < 8)
				this.M = (1 + this.M);
			return;
		}
	}

	private final boolean e() {
		return this.s == -1048576;
	}

	private final void alertDialog() {
		new AlertDialog.Builder(this.context).setMessage("Start a new game?")
				.setCancelable(false).setPositiveButton("Yes", new c(this))
				.setNegativeButton("No", new d(this)).show();
	}

	private final void g() {
	}

	private final boolean g(boolean paramBoolean) {
		if (this.M > 0) {
			this.M = (-1 + this.M);
			if (this.L > 0)
				;
			for (this.L = (-1 + this.L);; this.L = 7) {
				int i1 = this.L;
				this.p.a(this.arrayH[i1], this.arrayI[i1], this.arrayJ[i1],
						this.arrayK[i1], paramBoolean);
				return true;
			}
		}
		return false;
	}

	public final void a() {
		CharSequence[] arrayOfCharSequence = { "Wood", "Light Aquamarine",
				"Dark Aquamarine", "Blue", "Brown", "Grey", "Light Grey" };
		new AlertDialog.Builder(this.context).setTitle("Board Color")
				.setItems(arrayOfCharSequence, new g(this)).show();
	}

	public final void a(float paramFloat1, float paramFloat2) {
		int i1 = getWidth();
		int i2 = getHeight();
		int i3 = 0;
		int i4 = 0;
		if (i1 < i2) {
			i3 = i1;
			i4 = i3 >>> 3;
			int i5 = i4 << 3;
			if ((0.0F > this.P) || (this.P >= i5) || (0.0F > this.Q)
					|| (this.Q >= i5))
				// break;
				;
		}
		while (true) {
			try {
				this.P += paramFloat1 * i4;
				this.Q += paramFloat2 * i4;
				if (this.P < 0.0F) {
					this.P = 0.0F;
					if (this.Q >= 0.0F)
						break;
					this.Q = 0.0F;
					postInvalidate();
					// return;
					i3 = i2;
					// break;
					i4 = 16;
					break;
				}
				if (this.P < i1)
					continue;
				this.P = (i1 - 1);
				// continue;
			} finally {
			}
			if (this.Q >= i2)
				this.Q = (i2 - 1);
		}
	}

	public final void a(int paramInt1, int paramInt2, int paramInt3,
			int paramInt4) {
		if (gameStatus(true, paramInt1, paramInt2, paramInt3, paramInt4))
			postInvalidate();
	}

	public final void a(SharedPreferences.Editor paramEditor) {
		try {
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
			paramEditor.putBoolean("cap", this.booly);
			paramEditor.putInt("level", this.z);
			paramEditor.putBoolean("show", this.boolA);
			paramEditor.putBoolean("free", this.boolB);
			paramEditor.putBoolean("rot", this.boolC);
			paramEditor.putBoolean("full", this.boolD);
			paramEditor.putBoolean("start", this.boolE);
			paramEditor.putBoolean("anim", this.boolF);
			paramEditor.putInt("color", this.G);
			setPreferenceEditor(paramEditor, "lwp", this.arrayH);
			setPreferenceEditor(paramEditor, "lwk", this.arrayI);
			setPreferenceEditor(paramEditor, "lbp", this.arrayJ);
			setPreferenceEditor(paramEditor, "lbk", this.arrayK);
			paramEditor.putInt("lp", this.L);
			paramEditor.putInt("lc", this.M);
			return;
		} finally {
			// localObject = finally;
			// throw localObject;
		}
	}

	public final boolean a(int paramInt) {
		boolean bool1 = gameStatus(false, paramInt, 0, 0, 0);
		boolean bool2 = false;
		if (bool1) {
			postInvalidate();
			bool2 = true;
		}
		return bool2;
	}

	public final boolean a(boolean paramBoolean) {
		if (paramBoolean)
			;
		try {
			if (this.boolA)
				;
			for (boolean bool2 = false;; bool2 = true) {
				this.boolA = bool2;
				postInvalidate();
				boolean bool1 = this.boolA;
				return bool1;
			}
		} finally {
		}
	}

	public final void b() {
		try {
			int i1 = b(this.P, this.Q);
			if ((i1 != 0) && (gameStatus(false, i1, 0, 0, 0)))
				postInvalidate();
			return;
		} finally {
		}
	}

	public final boolean b(boolean paramBoolean) {
		int i2, i1 = 1;
		if (paramBoolean)
			;
		try {
			boolean bool2;
			if (this.boolB) {
				bool2 = false;
				this.boolB = bool2;
				if ((this.q == 3) || (this.q == i1)) {
					if (this.q != 3)
						// break;
						i2 = i1;
					this.v = 0;
					this.w = 0;
					this.x = 0;
					// if (this.p.a(0, i2, this.B) != i1)
					// break;
				}
			}
			while (true) {
				this.booly = true; // this.y = i1;
				this.N = this.p.c;
				postInvalidate();
				boolean bool1 = this.boolB;
				// return bool1;
				bool2 = true;// bool2 = i1;
				// break;
				int i3 = 0;
				// break;
				i1 = 0;
			}
		} finally {
		}
	}

	public final boolean rotatedBoardStatus(boolean paramBoolean) {
		if (paramBoolean)
			;
		try {
			boolean bool2 = this.boolC;
			boolean bool3 = false;
			if (bool2)
				;
			while (true) {
				this.boolC = bool3;
				Toast.makeText(this.context, "rotated board", 0).show();
				postInvalidate();
				boolean bool1 = this.boolC;
				// return bool1;
				bool3 = true;
			}
		} finally {
		}
	}

	public final boolean d(boolean paramBoolean) {
		if (paramBoolean)
			;
		try {
			if (this.boolD)
				;
			for (boolean bool2 = false;; bool2 = true) {
				this.boolD = bool2;
				boolean bool1 = this.boolD;
				return bool1;
			}
		} finally {
		}
	}

	public void draw(Canvas paramCanvas) {
		int i4 = 0;
		int i23 = 0;
		int i31 = 0;
		int i34 = 0;
		int i35 = 0;
		int i32 = 0;
		int i22 = 0;
		int i20 = 0;
		int i39 = 0;
		int i21 = 0;
		int i40 = 0;
		int i41 = 0;
		int i19 = 0;
		int i38 = 0;
		while (true) {
			int i6 = 0;
			int i7 = 0;
			int i8 = 0;
			int i10 = 0;
			int i11 = 0;
			int i12 = 0;
			int i13 = 0;
			int i18 = 0;
			int i29 = 0;
			int[] arrayOfInt1 = null;
			int[] arrayOfInt2 = null;
			int i30 = 0;
			int i16 = 0;
			int i15 = 0;
			int i36 = 0;
			int i37 = 0;
			try {
				super.draw(paramCanvas);
				int i1 = getWidth();
				int i2 = getHeight();
				int i3;
				int i5 = 0;
				Object localObject2;
				if (i1 < i2) {
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
					paramCanvas.drawPaint(this.paint1);
					if (this.G != 0)
						continue;
					localObject2 = this.paint3;
					this.drawable.setBounds(0, 0, i5, i5);
					this.drawable.draw(paramCanvas);
					// break;
					if (i23 < 8)
						break;
					if (!e())
						break;
					paramCanvas.drawText("Checkers for Android", i13, i12,
							this.paint2);
					paramCanvas.drawText("", i13, i12 + i7, this.paint2);
					if (!EndGameTableBase.loaded)
						paramCanvas.drawText("no endgame TBs", i13, i12 + i7
								* 2, this.paint2);
					if (this.booly)
						paramCanvas.drawText("MUST CAPTURE", i11, i10,
								this.redCase);
				}
				switch (this.q) {
				default:
					if ((this.boolA) && ((this.q == 1) || (this.q == 3))) {
						i29 = this.p.c;
						arrayOfInt1 = this.p.b;
						arrayOfInt2 = this.p.a;
						i30 = 0;
						break;
					}
					if (this.text1 != null)
						paramCanvas.drawText(this.text1, i11, i10 + i7 * 2,
								this.greenCase);
					boolean bool1 = 0.0F < this.P;
					int i24 = 0;
					if (!bool1) {
						boolean bool2 = this.P < i5;
						i24 = 0;
						if (bool2) {
							boolean bool3 = 0.0F < this.Q;
							i24 = 0;
							if (!bool3) {
								boolean bool4 = this.Q < i5;
								i24 = 0;
								if (bool4) {
									int i25 = (int) this.P / i4;
									int i26 = (int) this.Q / i4;
									i24 = 0;
									if (i25 >= 0) {
										i24 = 0;
										if (i25 < 8) {
											i24 = 0;
											if (i26 >= 0) {
												i24 = 0;
												if (i26 < 8) {
													int i27 = i4 * i25;
													int i28 = i4 * i26;
													paramCanvas.drawRect(i27,
															i28, i27 + i4, i28
																	+ i4,
															this.paint9);
													i24 = 1;
												}
											}
										}
									}
								}
							}
						}
					}
					if (i24 == 0) {
						paramCanvas.drawCircle(this.P, this.Q, 5.0F,
								this.paint2);
						paramCanvas.drawCircle(this.P, this.Q, 3.0F,
								this.paint1);
					}
					if (this.l > 0.0F) {
						this.l = ((float) (this.l - 0.05D));
						if (this.l <= 0.0F) {
							this.l = 0.0F;
							this.m = 0;
							this.n = 0;
						}
						postInvalidateDelayed(50L);
					}
					// return;
					i3 = i2;
					// continue;
					int i9 = i5 + 2;
					i10 = i5 - i7 * 2 - i8;
					i11 = i9;
					i12 = i7;
					i13 = i9;
					// continue;
					Paint localPaint = this.paint2;
					paramCanvas.drawRect(0.0F, 0.0F, i5, i5, this.paint4);
					localObject2 = localPaint;
					// break;
					int i17 = i4 * i16;
					paramCanvas.drawRect(i15, i17, i15 + i4, i17 + i4,
							(Paint) localObject2);
					i16 += 2;
					// break;
					if (!this.boolC)
						break;
					int i33 = i4 * (7 - i31);
					i34 = i4 * (7 - i23);
					i35 = i33;
					i36 = i6 + i35;
					i37 = i6 + i34;
					if ((i32 & this.v) != 0) {
						paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + i4),
								-1 + (i34 + i4), this.redCase);
						if ((i32 & this.r) == 0)
							break;
						drawCircle(paramCanvas, i36, i37, i6, i8, this.paint1,
								this.paint2, false);
						int i44 = i22 + 1;
						i39 = i20;
						i40 = i21;
						i41 = i44;
						i38 = i19;
						break;
					}
					if ((i32 & this.w) != 0) {
						paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + i4),
								-1 + (i34 + i4), this.paint6);
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
			} finally {
			}
			if ((this.boolA) && ((i32 & this.x) != 0)) {
				paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + i4), -1
						+ (i34 + i4), this.greenCase);
				// continue;
				if ((i32 & this.s) != 0) {
					drawCircle(paramCanvas, i36, i37, i6, i8, this.paint2,
							this.paint1, false);
					i39 = i20 + 1;
					i40 = i21;
					i41 = i22;
					i38 = i19;
					break;
				}
				if ((i32 & this.t) != 0) {
					drawCircle(paramCanvas, i36, i37, i6, i8, this.paint1,
							this.paint2, true);
					int i43 = i21 + 1;
					i39 = i20;
					i40 = i43;
					i41 = i22;
					i38 = i19;
					break;
				}
				if ((i32 & this.u) != 0) {
					drawCircle(paramCanvas, i36, i37, i6, i8, this.paint2,
							this.paint1, true);
					i38 = i19 + 1;
					i39 = i20;
					i40 = i21;
					i41 = i22;
					break;
				}
				if ((i32 & this.n) != 0) {
					paramCanvas.drawCircle(i36, i37, (i6 - 2) * this.l,
							this.paint2);
					paramCanvas.drawCircle(i36, i37, (i6 - 4) * this.l,
							this.paint1);
					i38 = i19;
					i39 = i20;
					i40 = i21;
					i41 = i22;
					break;
				}
				if ((i32 & this.m) == 0)
					break;
				paramCanvas
						.drawCircle(i36, i37, (i6 - 2) * this.l, this.paint1);
				paramCanvas
						.drawCircle(i36, i37, (i6 - 4) * this.l, this.paint2);
				// break;
				paramCanvas.drawText("White", i13, i12, this.paint2);
				paramCanvas.drawText("Black", i13, i12 + i7, this.paint2);
				paramCanvas.drawText("Moves", i13, i12 + i7 * 2, this.paint2);
				paramCanvas.drawText(":  " + i22 + "+" + i21, i13 + i7 * 3,
						i12, this.paint2);
				paramCanvas.drawText(":  " + i20 + "+" + i19, i13 + i7 * 3, i12
						+ i7, this.paint2);
				paramCanvas.drawText(":  " + this.N, i13 + i7 * 3,
						i12 + i7 * 2, this.paint2);
				// continue;
				paramCanvas.drawText("BLACK'S MOVE?", i11, i10 + i7,
						this.paint2);
				// continue;
				paramCanvas.drawText("WHITE'S MOVE?", i11, i10 + i7,
						this.paint2);
				// continue;
				paramCanvas
						.drawText("THINKING....", i11, i10 + i7, this.paint2);
				// continue;
				paramCanvas.drawText("WHITE WINS", i11, i10 + i7, this.paint2);
				// continue;
				paramCanvas.drawText("BLACK WINS", i11, i10 + i7, this.paint2);
				// continue;
				b(paramCanvas, arrayOfInt1[i30], arrayOfInt2[i30], i4, i6);
				i30++;
				for (int i14 = 0;; i14++) {
					if (i14 >= 8) {
						i18 = 1;
						i19 = 0;
						i20 = 0;
						i21 = 0;
						i22 = 0;
						i23 = 0;
						// break;
						if (i30 < i29)
							// break label1615;
							break;

					}
					i15 = i4 * i14;
					i16 = i14 & 0x1;
					if (i16 < 8)
						// break;
						;
				}
				i31 = 0x1 & 1 - i23;
				i32 = i18;
				if (i31 < 8)
					break;

				i23++;
				i18 = i32;
			}
			break;
		}
		while (true) {
			int i42 = i32 << 1;
			i31 += 2;
			i32 = i42;
			i19 = i38;
			i20 = i39;
			i21 = i40;
			i22 = i41;
			// break;
			// break;
			int i45 = i4 * i31;
			i34 = i4 * i23;
			i35 = i45;
			// break label773;
			label1789: i38 = i19;
			i39 = i20;
			i40 = i21;
			i41 = i22;
		}
	}

	public final boolean e(boolean paramBoolean) {
		if (paramBoolean)
			;
		try {
			if (this.boolE)
				;
			for (boolean bool2 = false;; bool2 = true) {
				this.boolE = bool2;
				boolean bool1 = this.boolE;
				return bool1;
			}
		} finally {
		}
	}

	public final boolean f(boolean paramBoolean) {
		if (paramBoolean)
			;
		try {
			if (this.boolF)
				;
			for (boolean bool2 = false;; bool2 = true) {
				this.boolF = bool2;
				boolean bool1 = this.boolF;
				return bool1;
			}
		} finally {
		}
	}

	public final int getLevel() {
		try {
			int i1 = this.z;
			return i1;
		} finally {
			// localObject = finally;
			// throw localObject;
		}
	}

	protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3,
			int paramInt4) {
		int i1 = 0;
		float f2;
		if (paramInt1 < paramInt2)
			i1 = paramInt1;
		while (true) {
			float f1;
			try {
				f1 = i1 / 24;
				if (paramInt1 > paramInt2) {
					f2 = (paramInt1 - i1) / 10;
					if (f2 < f1) {
						this.paint1.setTextSize(f2);
						this.paint2.setTextSize(f2);
						this.greenCase.setTextSize(f2);
						this.redCase.setTextSize(f2);
						this.k = (1 + (int) f2);
						// return;
						i1 = paramInt2;
						continue;
					}
				}
			} finally {
			}
			f2 = f1;
		}
	}

	public boolean onTouchEvent(MotionEvent paramMotionEvent) {
		if (paramMotionEvent.getAction() == 0) {
			int i1 = b(paramMotionEvent.getX(), paramMotionEvent.getY());
			if (i1 != 0) {
				if (gameStatus(false, i1, 0, 0, 0))
					postInvalidate();
				return true;
			}
		}
		return super.onTouchEvent(paramMotionEvent);
	}

	public final void setLevel(int paramInt) {
		int i1 = 1000;
		switch (paramInt) {
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
		try {
			while (true) {
				this.p.h = i1;
				this.z = paramInt;
				// return;
				i1 = -1;
				// continue;
				i1 = 0;
				// continue;
				i1 = 100;
				// continue;
				i1 = 5000;
				// continue;
				i1 = 10000;
				// continue;
				i1 = 15000;
				// continue;
				i1 = 30000;
				break;
			}
			i1 = 60000;
		} finally {
		}
	}
}

/*
 * Location:
 * /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar
 * .jar Qualified Name: com.xxogli.xadroid.checkers.b JD-Core Version: 0.6.2
 */
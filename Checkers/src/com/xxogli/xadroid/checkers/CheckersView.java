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
	private boolean moveCoach;
	private boolean onJoueLesNoirs;
	/**
	 * view from white
	 */
	private boolean viewFromWhite;
	private boolean fullscreen;
	private boolean startScreen;
	private boolean animation;
	private int boardColor;
	private int[] lastWhitePiecePlacement;
	private int[] lastWhiteKingPlacement;
	private int[] lastBlackPiecePlacement;
	private int[] lastBlackKingPlacement;
	private int lp;
	private int lc;
	private int nbPossibleMoves;
	private String text1;
	private float lastTouchedX;
	private float lastTouchedY;
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
	private CheckersController controller;
	private int state;
	private int whitePiecePlacement;
	private int blackPiecePlacement;
	private int whiteKingPlacement;
	private int blackKingPlacement;
	private int l1;
	private int l2;
	private int lm;
	/**
	 * Must capture / Do not show optional jumps
	 */
	private boolean capturePriority;
	private int level;

	public CheckersView(Context mContext,
			SharedPreferences paramSharedPreferences) {
		super(mContext);
		this.context = mContext;
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
		this.lastWhitePiecePlacement = new int[8];
		this.lastWhiteKingPlacement = new int[8];
		this.lastBlackPiecePlacement = new int[8];
		this.lastBlackKingPlacement = new int[8];
		EndGameTableBase.load(mContext);
		this.controller = new CheckersController(this);
		this.text1 = null;
		if (getData(paramSharedPreferences))
			if (!e())
				this.text1 = "restored game";
		while (true) {
			changeColorTable();
			this.lastTouchedX = -10.0F;
			this.lastTouchedY = -10.0F;
			this.R = 0;
			if ((this.startScreen) && (e()))
				g();
			// return;
			this.state = 1;
			this.whitePiecePlacement = this.controller.lastWhitePiecePlacement;
			this.blackPiecePlacement = this.controller.lastBlackPiecePlacement;
			this.whiteKingPlacement = this.controller.lastWhiteKingPlacement;
			this.blackKingPlacement = this.controller.lastBlackKingPlacement;
			this.l1 = 0;
			this.l2 = 0;
			this.lm = 0;
			this.capturePriority = false;
			this.level = 3;
			this.moveCoach = true;
			this.onJoueLesNoirs = false;
			this.viewFromWhite = false;
			this.fullscreen = false;
			this.startScreen = true;
			this.animation = true;
			this.boardColor = 0;
			this.lp = 0;
			this.lc = 0;
			this.nbPossibleMoves = this.controller.nbPossibleMoves;
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
	 * Draw square's case using canvas a()
	 * 
	 * @param paramCanvas
	 * @param paramInt1
	 * @param paramInt2
	 * @param paramInt3
	 * @param paramInt4
	 */
	private final void drawLine(Canvas paramCanvas, int paramInt1,
			int paramInt2, int paramInt3, int paramInt4) {
		int i1 = paramInt1 >>> 2;
		int i2 = 1 + 2 * (paramInt1 & 0x3) - (i1 & 0x1);
		int i3 = paramInt2 >>> 2;
		int i4 = 1 + 2 * (paramInt2 & 0x3) - (i3 & 0x1);
		int i8 = 0;
		int i5 = 0;
		int i6 = 0;
		if (this.viewFromWhite) {
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
	private final void drawCercle(Canvas paramCanvas, int cx, int cy,
			int radius, int letterOffset, Paint paramPaint1, Paint paramPaint2,
			boolean isKing) {
		paramCanvas.drawCircle(cx, cy, radius - 2, paramPaint1);
		paramCanvas.drawCircle(cx, cy, radius - 4, paramPaint2);
		paramCanvas.drawCircle(cx, cy, radius - 7, paramPaint1);
		paramCanvas.drawCircle(cx, cy, radius - 9, paramPaint2);
		if (paramBoolean) {
			int halfRadius = radius / 2;
			int c2X = cx - halfRadius;
			int c2Y = cy - halfRadius;
			paramCanvas.drawCircle(c2X, c2Y, radius - 2, paramPaint1);
			paramCanvas.drawCircle(c2X, c2Y, radius - 4, paramPaint2);
			paramCanvas.drawCircle(c2X, c2Y, radius - 7, paramPaint1);
			paramCanvas.drawCircle(c2X, c2Y, radius - 9, paramPaint2);
			paramCanvas.drawText("K", c2X - letterOffset, c2Y, paramPaint1);
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
				this.state = paramSharedPreferences.getInt("state", 1);
				this.whitePiecePlacement = paramSharedPreferences.getInt("wp",
						0);
				this.blackPiecePlacement = paramSharedPreferences.getInt("bp",
						0);
				this.whiteKingPlacement = paramSharedPreferences
						.getInt("wk", 0);
				this.blackKingPlacement = paramSharedPreferences
						.getInt("bk", 0);
				this.l1 = paramSharedPreferences.getInt("l1", 0);
				this.l2 = paramSharedPreferences.getInt("l2", 0);
				this.lm = paramSharedPreferences.getInt("lm", 0);
				this.capturePriority = paramSharedPreferences.getBoolean("cap",
						true);
				this.level = paramSharedPreferences.getInt("level", 3);
				this.moveCoach = paramSharedPreferences
						.getBoolean("show", true);
				this.onJoueLesNoirs = paramSharedPreferences.getBoolean("free",
						false);
				this.viewFromWhite = paramSharedPreferences.getBoolean("rot",
						false);
				this.fullscreen = paramSharedPreferences.getBoolean("full",
						false);
				this.startScreen = paramSharedPreferences.getBoolean("start",
						true);
				this.animation = paramSharedPreferences
						.getBoolean("anim", true);
				this.boardColor = paramSharedPreferences.getInt("color", 0);
				getValueFromPreferences(paramSharedPreferences, "lwp",
						this.lastWhitePiecePlacement);
				getValueFromPreferences(paramSharedPreferences, "lwk",
						this.lastWhiteKingPlacement);
				getValueFromPreferences(paramSharedPreferences, "lbp",
						this.lastBlackPiecePlacement);
				getValueFromPreferences(paramSharedPreferences, "lbk",
						this.lastBlackKingPlacement);
				this.lp = paramSharedPreferences.getInt("lp", 0);
				this.lc = paramSharedPreferences.getInt("lc", 0);
				setLevel(this.level);
				boolean bool2 = true;
				if ((this.state != 3) && (this.state != 4) && (this.state != 6))
					bool2 = false;
				synchronized (this.controller) {
					this.controller.a(this.whitePiecePlacement,
							this.whiteKingPlacement, this.blackPiecePlacement,
							this.blackKingPlacement, bool2);
					this.controller.a(0, bool2, this.onJoueLesNoirs);
					this.nbPossibleMoves = this.controller.nbPossibleMoves;
					if ((this.state == 4) || (this.state == 2))
						this.controller.a(bool2, this.onJoueLesNoirs);
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

	private final boolean gameStatus(boolean paramBoolean, int action,
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
								action = -2;
								if (this.state != 2)
									continue;
								i11 = 1;
								this.state = i11;
								setLevel(this.level);
								this.R = 0;
								paramBoolean = false;
							}
						} else {
							if (!paramBoolean)
								break;
							c(action);
							if ((this.state != 5) && (this.state != 6)) {
								if (paramInt3 != 0)
									continue;
								this.text1 = "random play";
							}
							i2 = 1;
							// return i2;
							return i2 == 1;
						}
						action = i1;
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
						if (action == -3) {
							alertDialog();
							i2 = 1;
						} else if (action == i1) {
							if ((this.state == 2) || (this.state == 4)) {
								this.R = 1;
								this.controller.level = 1;
								this.text1 = "stopping....";
								i2 = 1;
							} else {
								this.R = 0;
								this.controller.initPlateau();
								this.state = 1;
								this.whitePiecePlacement = this.controller.lastWhitePiecePlacement;
								this.blackPiecePlacement = this.controller.lastBlackPiecePlacement;
								this.whiteKingPlacement = this.controller.lastWhiteKingPlacement;
								this.blackKingPlacement = this.controller.lastBlackKingPlacement;
								this.l1 = 0;
								this.l2 = 0;
								this.lm = 0;
								this.capturePriority = false;
								this.lp = 0;
								this.lc = 0;
								this.nbPossibleMoves = this.controller.nbPossibleMoves;
								this.text1 = null;
								i2 = 1;
							}
						} else if (action == -2) {
							this.l1 = 0;
							this.l2 = 0;
							this.lm = 0;
							if ((this.state == 2) || (this.state == 4)) {
								this.R = 2;
								this.controller.level = 1;
								this.text1 = "stopping....";
								i2 = 1;
							} else {
								this.R = 0;
								if ((this.state == 1) || (this.state == 5))
									break;
								bool1 = false;
								if (g(bool1)) {
									if (bool1)
										;
									for (this.state = 3;; this.state = 1) {
										this.whitePiecePlacement = this.controller.lastWhitePiecePlacement;
										this.blackPiecePlacement = this.controller.lastBlackPiecePlacement;
										this.whiteKingPlacement = this.controller.lastWhiteKingPlacement;
										this.blackKingPlacement = this.controller.lastBlackKingPlacement;
										this.l1 = 0;
										this.l2 = 0;
										this.lm = 0;
										int i4 = this.controller.a(0, bool1,
												this.onJoueLesNoirs);
										boolean bool2 = false;
										if (i4 == 1)
											bool2 = true;
										this.capturePriority = bool2;
										this.nbPossibleMoves = this.controller.nbPossibleMoves;
										this.text1 = "undid half-move";
										i2 = 1;
										break;
									}
								}
								this.text1 = "no more undo";
								i2 = 1;
							}
						} else {
							if (action != -4)
								break;
							if (this.state == 1) {
								this.state = 2;
								this.controller.a(false, this.onJoueLesNoirs);
								Context localContext2 = this.context;
								if (!this.viewFromWhite)
									break;
								str2 = "computer now plays black";
								Toast.makeText(localContext2, str2, 0).show();
								i2 = 1;
							} else {
								int i5 = this.state;
								i2 = 0;
								if (i5 == 3) {
									this.state = 4;
									this.controller
											.a(true, this.onJoueLesNoirs);
									Context localContext1 = this.context;
									if (!this.viewFromWhite)
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
			} while (action != 1);
			if (this.state == 1)
				break;
			i10 = this.state;
			i2 = 0;
		} while (i10 != 3);
		this.l2 = 0;
		this.lm = 0;
		int i6 = this.controller.nbPossibleMoves;
		int[] arrayOfInt = this.controller.b;
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
			if ((this.l1 & arrayOfInt[i7]) == this.l1) {
				if (arrayOfInt[i7] != i2)
					;
				for (int i9 = i8 + 1;; i9 = i8) {
					int i3 = arrayOfInt[i7];
					this.l2 |= arrayOfInt[i7];
					i8 = i9;
					i1 = i7;
					// break;
					if (this.l2 == 0)
						this.l1 = 0;
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

	private final int b(float leP, float leQ) {
		int i1 = 1;
		while (true) {
			int widthDivedBy8 = 0;
			int i5 = 0;
			int i7, i8, i9, i10, i11;
			try {
				int width = getWidth();
				int height = getHeight();
				int i6 = 0;
				if (width < height) {
					widthDivedBy8 = width / 8;
					if (this.state != i1) {
						int localState = this.state;
						if (localState != 3)
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
					width = height;
					// continue;
				}
				i7 = 0x1 & 1 - i5;
				i8 = i6;
				if (i7 >= 8) {
					i5++;
					i6 = i8;
					continue;
				}
				if (this.viewFromWhite) {
					i9 = widthDivedBy8 * (7 - i7);
					i10 = widthDivedBy8 * (7 - i5);
					if ((i9 > leP) || (leP >= i9 + widthDivedBy8)
							|| (i10 > leQ) || (leQ >= i10 + widthDivedBy8))
						break;
					this.l1 = (i8 | this.l1);
					continue;
				}
			} finally {
			}
			i9 = widthDivedBy8 * i7;
			i10 = widthDivedBy8 * i5;
			// continue;
			i11 = i8 * 2;
			i7 += 2;
			i8 = i11;
		}
		return 0; // Willy Zou
	}

	private final void b(int paramInt) {

		try {
			if (this.boardColor != paramInt) {
				this.boardColor = paramInt;
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
			drawLine(paramCanvas, Integer.numberOfTrailingZeros(paramInt1),
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
					drawLine(paramCanvas, i4, i7, paramInt3, paramInt4);
				if ((i11 & paramInt1) == i11)
					drawLine(paramCanvas, i9, i8, paramInt3, paramInt4);
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
		switch (this.boardColor) {
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
		if ((this.state != 1) && (this.state != 2)) {
			bool = false;
			this.l1 = 0;
			this.l2 = 0;
			this.lm = this.controller.b[paramInt];
			if (this.animation) {
				this.l = 0.9F;
				if (!bool)
					// break;
					;
				this.m = (this.controller.a[paramInt] & (this.whitePiecePlacement | this.whiteKingPlacement));
			}
		}
		for (this.n = 0;; this.n = (this.controller.a[paramInt] & (this.blackPiecePlacement | this.blackKingPlacement))) {
			this.controller.a(paramInt);
			this.whitePiecePlacement = this.controller.lastWhitePiecePlacement;
			this.blackPiecePlacement = this.controller.lastBlackPiecePlacement;
			this.whiteKingPlacement = this.controller.lastWhiteKingPlacement;
			this.blackKingPlacement = this.controller.lastBlackKingPlacement;
			this.capturePriority = false;
			this.text1 = null;
			switch (this.controller.a(0, bool, this.onJoueLesNoirs)) {
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
			this.state = i1;
			this.nbPossibleMoves = 0;
			// return;
			break; // Willy Zou
		}
		this.capturePriority = true;
		this.nbPossibleMoves = this.controller.nbPossibleMoves;
		if (this.state == 1) {
			if (this.level == 0) {
				this.state = 3;
				this.text1 = "free play";
				return;
			}
			this.state = 4;
			this.controller.a(bool, this.onJoueLesNoirs);
			return;
		}
		if (this.state == 3) {
			if (this.level == 0) {
				this.state = 1;
				this.text1 = "free play";
				return;
			}
			this.state = 2;
			this.controller.a(bool, this.onJoueLesNoirs);
			return;
		}
		if (this.state == 2) {
			this.state = 3;
			return;
		}
		this.state = 1;
	}

	private final void d() {
		int i1 = this.lp;
		this.lastWhitePiecePlacement[i1] = this.controller.lastWhitePiecePlacement;
		this.lastWhiteKingPlacement[i1] = this.controller.lastWhiteKingPlacement;
		this.lastBlackPiecePlacement[i1] = this.controller.lastBlackPiecePlacement;
		this.lastBlackKingPlacement[i1] = this.controller.lastBlackKingPlacement;
		if (this.lp < 7)
			;
		for (this.lp = (1 + this.lp);; this.lp = 0) {
			if (this.lc < 8)
				this.lc = (1 + this.lc);
			return;
		}
	}

	private final boolean e() {
		return this.blackPiecePlacement == -1048576;
	}

	private final void alertDialog() {
		new AlertDialog.Builder(this.context)
				.setMessage("Start a new game?")
				.setCancelable(false)
				.setPositiveButton("Yes",
						new NewGameAlertDialogYesButtonListener(this))
				.setNegativeButton("No",
						new NewGameAlertDialogNoButtonListener(this)).show();
	}

	private final void g() {
	}

	private final boolean g(boolean paramBoolean) {
		if (this.lc > 0) {
			this.lc = (-1 + this.lc);
			if (this.lp > 0)
				;
			for (this.lp = (-1 + this.lp);; this.lp = 7) {
				int i1 = this.lp;
				this.controller.a(this.lastWhitePiecePlacement[i1],
						this.lastWhiteKingPlacement[i1],
						this.lastBlackPiecePlacement[i1],
						this.lastBlackKingPlacement[i1], paramBoolean);
				return true;
			}
		}
		return false;
	}

	public final void showBoardColorSelector() {
		CharSequence[] arrayOfCharSequence = { "Wood", "Light Aquamarine",
				"Dark Aquamarine", "Blue", "Brown", "Grey", "Light Grey" };
		new AlertDialog.Builder(this.context)
				.setTitle("Board Color")
				.setItems(arrayOfCharSequence,
						new BoardColorAlertDialogListener(this)).show();
	}

	public final void moveSelection(float dX, float dY) {
		int width = getWidth();
		int height = getHeight();
		int cellSize = 0;
		if (width < height) {
			cellSize = width / 8f;
			int roundedWidth = cellSize * 8;
			if ((0.0F > this.lastTouchedX) || (this.lastTouchedX >= roundedWidth) || (0.0F > this.lastTouchedY)
					|| (this.lastTouchedY >= roundedWidth))
				// break;
				;
		}
		while (true) {
			try {
				this.lastTouchedX += dX * cellSize;
				this.lastTouchedY += dY * cellSize;
				if (this.lastTouchedX < 0.0F) {
					this.lastTouchedX = 0.0F;
					if (this.lastTouchedY >= 0.0F)
						break;
					this.lastTouchedY = 0.0F;
					postInvalidate();
					// return;
					i3 = height;
					// break;
					cellSize = 16;
					break;
				}
				if (this.lastTouchedX < width)
					continue;
				this.lastTouchedX = (width - 1);
				// continue;
			} finally {
			}
			if (this.lastTouchedY >= height)
				this.lastTouchedY = (height - 1);
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
			paramEditor.putInt("state", this.state);
			paramEditor.putInt("wp", this.whitePiecePlacement);
			paramEditor.putInt("bp", this.blackPiecePlacement);
			paramEditor.putInt("wk", this.whiteKingPlacement);
			paramEditor.putInt("bk", this.blackKingPlacement);
			paramEditor.putInt("l1", this.l1);
			paramEditor.putInt("l2", this.l2);
			paramEditor.putInt("lm", this.lm);
			paramEditor.putBoolean("cap", this.capturePriority);
			paramEditor.putInt("level", this.level);
			paramEditor.putBoolean("show", this.moveCoach);
			paramEditor.putBoolean("free", this.onJoueLesNoirs);
			paramEditor.putBoolean("rot", this.viewFromWhite);
			paramEditor.putBoolean("full", this.fullscreen);
			paramEditor.putBoolean("start", this.startScreen);
			paramEditor.putBoolean("anim", this.animation);
			paramEditor.putInt("color", this.boardColor);
			setPreferenceEditor(paramEditor, "lwp",
					this.lastWhitePiecePlacement);
			setPreferenceEditor(paramEditor, "lwk", this.lastWhiteKingPlacement);
			setPreferenceEditor(paramEditor, "lbp",
					this.lastBlackPiecePlacement);
			setPreferenceEditor(paramEditor, "lbk", this.lastBlackKingPlacement);
			paramEditor.putInt("lp", this.lp);
			paramEditor.putInt("lc", this.lc);
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
			if (this.moveCoach)
				;
			for (boolean bool2 = false;; bool2 = true) {
				this.moveCoach = bool2;
				postInvalidate();
				boolean bool1 = this.moveCoach;
				return bool1;
			}
		} finally {
		}
	}

	public final void b() {
		try {
			int i1 = b(this.lastTouchedX, this.lastTouchedY);
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
			if (this.onJoueLesNoirs) {
				bool2 = false;
				this.onJoueLesNoirs = bool2;
				if ((this.state == 3) || (this.state == i1)) {
					if (this.state != 3)
						// break;
						i2 = i1;
					this.l1 = 0;
					this.l2 = 0;
					this.lm = 0;
					// if (this.p.a(0, i2, this.B) != i1)
					// break;
				}
			}
			while (true) {
				this.capturePriority = true; // this.y = i1;
				this.nbPossibleMoves = this.controller.nbPossibleMoves;
				postInvalidate();
				boolean bool1 = this.onJoueLesNoirs;
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
			boolean bool2 = this.viewFromWhite;
			boolean bool3 = false;
			if (bool2)
				;
			while (true) {
				this.viewFromWhite = bool3;
				Toast.makeText(this.context, "rotated board", 0).show();
				postInvalidate();
				boolean bool1 = this.viewFromWhite;
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
			if (this.fullscreen)
				;
			for (boolean bool2 = false;; bool2 = true) {
				this.fullscreen = bool2;
				boolean bool1 = this.fullscreen;
				return bool1;
			}
		} finally {
		}
	}

	public void draw(Canvas paramCanvas) {
		int cellSize = 0;
		int i23 = 0;
		int i31 = 0;
		int i34 = 0;
		int i35 = 0;
		int i32 = 0;
		int localNbWhitePieces = 0;
		int localNbBlackPieces = 0;
		int i39 = 0;
		int localNbWhiteKings = 0;
		int i40 = 0;
		int i41 = 0;
		int localNbBlackKings = 0;
		int i38 = 0;
		while (true) {
			int pieceRadius = 0;
			int i7 = 0;
			int letterOffset = 0;
			int i10 = 0;
			int i11 = 0;
			int i12 = 0;
			int i13 = 0;
			int i18 = 0;
			int i29 = 0;
			int[] arrayOfInt1 = null;
			int[] arrayOfInt2 = null;
			int i30 = 0;
			int line = 0;
			int x = 0;
			int i36 = 0;
			int i37 = 0;
			try {
				super.draw(paramCanvas);
				int width = getWidth();
				int height = getHeight();
				int i3;
				int roundedWidth = 0;
				Object localObject2;
				if (width < height) {
					i3 = width;
					cellSize = i3 / 8;
					roundedWidth = cellSize * 8;
					pieceRadius = cellSize / 2;
					i7 = this.k;
					letterOffset = i7 / 3;
					if (width >= height)
						continue;
					int i46 = roundedWidth - i7 * 11;
					int i47 = roundedWidth + i7;
					i10 = i47;
					i11 = i46;
					i12 = i47;
					i13 = 2;
					paramCanvas.drawPaint(this.paint1);
					if (this.boardColor != 0)
						continue;
					localObject2 = this.paint3;
					this.drawable.setBounds(0, 0, roundedWidth, roundedWidth);
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
					if (this.capturePriority)
						paramCanvas.drawText("MUST CAPTURE", i11, i10,
								this.redCase);
				}
				switch (this.state) {
				default:
					if ((this.moveCoach) && ((this.state == 1) || (this.state == 3))) {
						i29 = this.controller.nbPossibleMoves;
						arrayOfInt1 = this.controller.b;
						arrayOfInt2 = this.controller.a;
						i30 = 0;
						break;
					}
					if (this.text1 != null)
						paramCanvas.drawText(this.text1, i11, i10 + i7 * 2,
								this.greenCase);
					int selectedCell = 0;
					if (!(0.0F < this.lastTouchedX1) && (this.lastTouchedX < roundedWidth) && !(0.0F < this.lastTouchedY) && (this.lastTouchedY < roundedWidth)) {
						int cellX = (int) this.lastTouchedX / cellSize;
						int cellY = (int) this.lastTouchedY / cellSize;
						if(cellX >= 0 && cellX < 8 && cellY >= 0 && cellY < 8) {
							int selectedX = cellSize * cellX;
							int selectedY = cellSize * cellY;
							paramCanvas.drawRect(selectedX, selectedY, selectedX + cellSize, selectedY + cellSize, this.paint9);
							selectedCell = 1;
						}
					}
					if (selectedCell == 0) {
						paramCanvas.drawCircle(this.lastTouchedX, this.lastTouchedY, 5.0F, this.paint2);
						paramCanvas.drawCircle(this.lastTouchedX, this.lastTouchedY, 3.0F, this.paint1);
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
					int i9 = roundedWidth + 2;
					i10 = roundedWidth - i7 * 2 - letterOffset;
					i11 = i9;
					i12 = i7;
					i13 = i9;
					// continue;
					Paint localPaint = this.paint2;
					paramCanvas.drawRect(0.0F, 0.0F, roundedWidth, roundedWidth, this.paint4);
					localObject2 = localPaint;
					// break;
					int y = cellSize * line;
					paramCanvas.drawRect(x, y, x + cellSize, y + cellSize,
							(Paint) localObject2);
					line += 2;
					// break;
					if (!this.viewFromWhite)
						break;
					int i33 = cellSize * (7 - i31);
					i34 = cellSize * (7 - i23);
					i35 = i33;
					i36 = pieceRadius + i35;
					i37 = pieceRadius + i34;
					if ((i32 & this.l1) != 0) {
						paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + cellSize),
								-1 + (i34 + cellSize), this.redCase);
						if ((i32 & this.whitePiecePlacement) == 0)
							break;
						drawCercle(paramCanvas, i36, i37, pieceRadius, letterOffset, this.paint1,
								this.paint2, false);
						int i44 = localNbWhitePieces + 1;
						i39 = localNbBlackPieces;
						i40 = localNbWhiteKings;
						i41 = i44;
						i38 = localNbBlackKings;
						break;
					}
					if ((i32 & this.l2) != 0) {
						paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + cellSize),
								-1 + (i34 + cellSize), this.paint6);
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
			if ((this.moveCoach) && ((i32 & this.lm) != 0)) {
				paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + cellSize), -1
						+ (i34 + cellSize), this.greenCase);
				// continue;
				if ((i32 & this.blackPiecePlacement) != 0) {
					drawCercle(paramCanvas, i36, i37, pieceRadius, letterOffset, this.paint2,
							this.paint1, false);
					i39 = localNbBlackPieces + 1;
					i40 = localNbWhiteKings;
					i41 = localNbWhitePieces;
					i38 = localNbBlackKings;
					break;
				}
				if ((i32 & this.whiteKingPlacement) != 0) {
					drawCercle(paramCanvas, i36, i37, pieceRadius, letterOffset, this.paint1,
							this.paint2, true);
					int i43 = localNbWhiteKings + 1;
					i39 = localNbBlackPieces;
					i40 = i43;
					i41 = localNbWhitePieces;
					i38 = localNbBlackKings;
					break;
				}
				if ((i32 & this.blackKingPlacement) != 0) {
					drawCercle(paramCanvas, i36, i37, pieceRadius, letterOffset, this.paint2,
							this.paint1, true);
					i38 = localNbBlackKings + 1;
					i39 = localNbBlackPieces;
					i40 = localNbWhiteKings;
					i41 = localNbWhitePieces;
					break;
				}
				if ((i32 & this.n) != 0) {
					paramCanvas.drawCircle(i36, i37, (pieceRadius - 2) * this.l,
							this.paint2);
					paramCanvas.drawCircle(i36, i37, (pieceRadius - 4) * this.l,
							this.paint1);
					i38 = localNbBlackKings;
					i39 = localNbBlackPieces;
					i40 = localNbWhiteKings;
					i41 = localNbWhitePieces;
					break;
				}
				if ((i32 & this.m) == 0)
					break;
				paramCanvas
						.drawCircle(i36, i37, (pieceRadius - 2) * this.l, this.paint1);
				paramCanvas
						.drawCircle(i36, i37, (pieceRadius - 4) * this.l, this.paint2);
				// break;
				paramCanvas.drawText("White", i13, i12, this.paint2);
				paramCanvas.drawText("Black", i13, i12 + i7, this.paint2);
				paramCanvas.drawText("Moves", i13, i12 + i7 * 2, this.paint2);
				paramCanvas.drawText(":  " + localNbWhitePieces + "+"
						+ localNbWhiteKings, i13 + i7 * 3, i12, this.paint2);
				paramCanvas.drawText(":  " + localNbBlackPieces + "+"
						+ localNbBlackKings, i13 + i7 * 3, i12 + i7,
						this.paint2);
				paramCanvas.drawText(":  " + this.nbPossibleMoves,
						i13 + i7 * 3, i12 + i7 * 2, this.paint2);
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
				b(paramCanvas, arrayOfInt1[i30], arrayOfInt2[i30], cellSize, pieceRadius);
				i30++;
				for (int column = 0;; column++) {
					if (column >= 8) {
						i18 = 1;
						localNbBlackKings = 0;
						localNbBlackPieces = 0;
						localNbWhiteKings = 0;
						localNbWhitePieces = 0;
						i23 = 0;
						// break;
						if (i30 < i29)
							// break label1615;
							break;

					}
					x = cellSize * column;
					line = column & 0x1; // Si colonne impaire alors ligne 1, sinon 0.
					if (line < 8)
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
			int i42 = i32 * 2;
			i31 += 2;
			i32 = i42;
			localNbBlackKings = i38;
			localNbBlackPieces = i39;
			localNbWhiteKings = i40;
			localNbWhitePieces = i41;
			// break;
			// break;
			int i45 = cellSize * i31;
			i34 = cellSize * i23;
			i35 = i45;
			// break label773;
			i38 = localNbBlackKings;
			i39 = localNbBlackPieces;
			i40 = localNbWhiteKings;
			i41 = localNbWhitePieces;
		}
	}

	public final boolean e(boolean paramBoolean) {
		if (paramBoolean)
			;
		try {
			if (this.startScreen)
				;
			for (boolean bool2 = false;; bool2 = true) {
				this.startScreen = bool2;
				boolean bool1 = this.startScreen;
				return bool1;
			}
		} finally {
		}
	}

	public final boolean f(boolean paramBoolean) {
		if (paramBoolean)
			;
		try {
			if (this.animation)
				;
			for (boolean bool2 = false;; bool2 = true) {
				this.animation = bool2;
				boolean bool1 = this.animation;
				return bool1;
			}
		} finally {
		}
	}

	public final int getLevel() {
		try {
			int i1 = this.level;
			return i1;
		} finally {
			// localObject = finally;
			// throw localObject;
		}
	}

	protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
		int newWidth = 0;
		float f2;
		if (width < height)
			newWidth = width;
		while (true) {
			float f1;
			try {
				f1 = newWidth / 24;
				if (width > height) {
					f2 = (width - newWidth) / 10;
					if (f2 < f1) {
						this.paint1.setTextSize(f2);
						this.paint2.setTextSize(f2);
						this.greenCase.setTextSize(f2);
						this.redCase.setTextSize(f2);
						this.k = (1 + (int) f2);
						// return;
						newWidth = height;
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

	public final void setLevel(int level) {
		int i1 = 1000;
		switch (level) {
		default:
			level = 3;
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
				this.controller.level = i1;
				this.level = level;
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

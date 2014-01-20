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
	/**
	 * A
	 */
	private boolean moveCoach;
	/**
	 * B
	 */
	private boolean onJoueLesNoirs;
	/**
	 * C view from white
	 */
	private boolean viewFromWhite;
	/**
	 * D
	 */
	private boolean fullscreen;
	/**
	 * E
	 */
	private boolean startScreen;
	/**
	 * F
	 */
	private boolean animation;
	/**
	 * G
	 */
	private int boardColor;
	/**
	 * H
	 */
	private int[] lastWhitePiecePlacement;
	/**
	 * I
	 */
	private int[] lastWhiteKingPlacement;
	/**
	 * J
	 */
	private int[] lastBlackPiecePlacement;
	/**
	 * K
	 */
	private int[] lastBlackKingPlacement;
	/**
	 * L
	 */
	private int undoArrayPosition;
	/**
	 * M
	 */
	private int undoCpt;
	/**
	 * N
	 */
	private int nbPossibleMoves;
	/**
	 * O
	 */
	private String text1;
	/**
	 * P
	 */
	private float lastTouchedX;
	/**
	 * Q
	 */
	private float lastTouchedY;
	/**
	 * R
	 */
	private int R;
	/**
	 * a
	 */
	private Context context;
	/**
	 * b
	 */
	private Paint paint1;
	/**
	 * c
	 */
	private Paint paint2;
	/**
	 * d
	 */
	private Paint paint3;
	/**
	 * e
	 */
	private Paint paint4;
	/**
	 * f
	 */
	private Paint redCase;
	/**
	 * g
	 */
	private Paint paint6;
	/**
	 * h
	 */
	private Paint paint7;
	/**
	 * i
	 */
	private Paint greenCase;
	/**
	 * j
	 */
	private Paint paint9;
	/**
	 * k
	 */
	private int k;
	private float l;
	private int m;
	private int n;
	/**
	 * o
	 */
	private Drawable drawable;
	/**
	 * p
	 */
	private CheckersController controller;
	/**
	 * q
	 */
	private int state;
	/**
	 * r
	 */
	private int whitePiecePlacement;
	/**
	 * s
	 */
	private int blackPiecePlacement;
	/**
	 * t
	 */
	private int whiteKingPlacement;
	/**
	 * u
	 */
	private int blackKingPlacement;
	/**
	 * v
	 */
	private int l1;
	/**
	 * w
	 */
	private int l2;
	/**
	 * x
	 */
	private int lm;
	/**
	 * y Must capture / Do not show optional jumps
	 */
	private boolean capturePriority;
	/**
	 * z
	 */
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
			if (!blackDidNotMoved())
				this.text1 = "restored game";
		while (true) {
			changeColorTable();
			this.lastTouchedX = -10.0F;
			this.lastTouchedY = -10.0F;
			this.R = 0;
			if ((this.startScreen) && (blackDidNotMoved()))
				showStartDialog();
			// return;
			this.state = 1;
			this.whitePiecePlacement = this.controller.lastWhitePiecesPlacement;
			this.blackPiecePlacement = this.controller.lastBlackPiecesPlacement;
			this.whiteKingPlacement = this.controller.lastWhiteKingsPlacement;
			this.blackKingPlacement = this.controller.lastBlackKingsPlacement;
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
			this.undoArrayPosition = 0;
			this.undoCpt = 0;
			this.nbPossibleMoves = this.controller.nbPossibleMoves;
		}
	}

	/**
	 * Juste pour supprimer un warning.
	 * 
	 * @param mContext
	 */
	public CheckersView(Context mContext) {
		this(mContext, null);
	}

	/**
	 * a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[I) TFS Set
	 * SharedPreferences.Editor's value
	 * 
	 * @param editor
	 * @param key
	 * @param array
	 */
	private final void setPreferenceEditor(SharedPreferences.Editor editor,
			String key, int[] array) {
		for (int v0 = 0; v0 < 8; v0++) {
			editor.putInt(key + v0, array[v0]);
		}
	}

	/**
	 * a(Landroid/content/SharedPreferences;Ljava/lang/String;[I) TFS Get Values
	 * from SharedPreferences and put it in the array
	 * 
	 * @param sharedPreference
	 * @param key
	 * @param array
	 */
	private final void getArrayValuesFromPreferences(
			SharedPreferences sharedPreference, String key, int[] array) {
		for (int v0 = 0; v0 < 8; v0++) {
			array[v0] = sharedPreference.getInt(key + v0, 0);
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
		if (isKing) {
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
	 * a(Landroid/content/SharedPreferences;) Get Data from SharedPreferences
	 * 
	 * @param sharedPreferences
	 * @return
	 */
	private final boolean getData(SharedPreferences sharedPreferences) {
		boolean bool1 = false, bool2 = true;
		if (sharedPreferences != null) {
			if (sharedPreferences.getInt("format", 0) != 34)
				bool1 = false;
			try {
				while (true) {
					this.state = sharedPreferences.getInt("state", 1);
					this.whitePiecePlacement = sharedPreferences
							.getInt("wp", 0);
					this.blackPiecePlacement = sharedPreferences
							.getInt("bp", 0);
					this.whiteKingPlacement = sharedPreferences.getInt("wk", 0);
					this.blackKingPlacement = sharedPreferences.getInt("bk", 0);
					this.l1 = sharedPreferences.getInt("l1", 0);
					this.l2 = sharedPreferences.getInt("l2", 0);
					this.lm = sharedPreferences.getInt("lm", 0);
					this.capturePriority = sharedPreferences.getBoolean("cap",
							true);
					this.level = sharedPreferences.getInt("level", 3);
					this.moveCoach = sharedPreferences.getBoolean("show", true);
					this.onJoueLesNoirs = sharedPreferences.getBoolean("free",
							false);
					this.viewFromWhite = sharedPreferences.getBoolean("rot",
							false);
					this.fullscreen = sharedPreferences.getBoolean("full",
							false);
					this.startScreen = sharedPreferences.getBoolean("start",
							true);
					this.animation = sharedPreferences.getBoolean("anim", true);
					this.boardColor = sharedPreferences.getInt("color", 0);
					getArrayValuesFromPreferences(sharedPreferences, "lwp",
							this.lastWhitePiecePlacement);
					getArrayValuesFromPreferences(sharedPreferences, "lwk",
							this.lastWhiteKingPlacement);
					getArrayValuesFromPreferences(sharedPreferences, "lbp",
							this.lastBlackPiecePlacement);
					getArrayValuesFromPreferences(sharedPreferences, "lbk",
							this.lastBlackKingPlacement);
					this.undoArrayPosition = sharedPreferences.getInt("lp", 0);
					this.undoCpt = sharedPreferences.getInt("lc", 0);
					setLevel(this.level);

					if ((this.state != 3) && (this.state != 4)
							&& (this.state != 6))
						bool2 = false;
					synchronized (this.controller) {
						this.controller.setPlateau(this.whitePiecePlacement,
								this.whiteKingPlacement,
								this.blackPiecePlacement,
								this.blackKingPlacement, bool2);
						this.controller.a(0, bool2, this.onJoueLesNoirs);
						this.nbPossibleMoves = this.controller.nbPossibleMoves;
						if ((this.state == 4) || (this.state == 2))
							this.controller.a(bool2, this.onJoueLesNoirs);
						bool1 = true;
					}
				}

			} catch (ClassCastException localClassCastException) {
				bool1 = false;
			}
		}
		return bool1;
	}

	/**
	 * a(ZIIII) TFS
	 * 
	 * @param isIA
	 * @param moveIndex
	 *            Si négatif, contient l'action à entreprendre<br />
	 *            -3: new, -2: undo, -4: switch-color
	 * @param v
	 * @param d
	 * @param n
	 * @return
	 */
	private final boolean gameStatus(boolean isIA, int moveIndex, int v, int d,
			int n) {
		try {
			if (isIA) {
				if (this.R > 0) {
					if (this.R == 2) {
						moveIndex = -2;
					} else { // :cond_3
						moveIndex = -1;
					}
					// :goto_0
					if (this.state == 2) {
						this.state = 1;
					} else { // :cond_4
						this.state = 3;
					}
					// :goto_1
					setLevel(this.level);
					this.R = 0;
					isIA = false;
				}
			}
			// :cond_0
			if (isIA) {
				c(moveIndex);
				if (this.state != 5 && this.state != 6) {
					if (d == 0) {
						this.text1 = "random play";
					} else { // :cond_5
						if (d == -1) {
							this.text1 = "only reply";
						} else if (d == -2) { // :cond_6
							this.text1 = "opening";
						} else if (v <= -32000) {// :cond_7
							this.text1 = "loss in #" + (v + 32500) / 2;
						} else if (v >= 32000) { // :cond_8
							this.text1 = "win in #" + (32500 - v) / 2;
						} else { // cond_9
							this.text1 = "v=" + v + " d=" + d + " n=" + n;
						}
					}
				}
			} else { // :cond_a
				if (moveIndex == -3) {
					newGameAlertDialog();
				} else if (moveIndex == -1) { // :cond_b
					if (this.state == 2) {
						if (this.state == 4) {
							// :cond_c
							this.R = 1;
							this.controller.level = 1;
							this.text1 = "stopping....";
						} else { // :cond_d
							this.R = 0;
							this.controller.initPlateau();
							this.state = 1;
							this.whitePiecePlacement = this.controller.lastWhitePiecesPlacement;
							this.blackPiecePlacement = this.controller.lastBlackPiecesPlacement;
							this.whiteKingPlacement = this.controller.lastWhiteKingsPlacement;
							this.blackKingPlacement = this.controller.lastBlackKingsPlacement;
							this.l1 = 0;
							this.l2 = 0;
							this.lm = 0;
							this.capturePriority = false;
							this.undoArrayPosition = 0;
							this.undoCpt = 0;
							this.nbPossibleMoves = this.controller.nbPossibleMoves;
							this.text1 = null;
						}
					} else { // :cond_c
						this.R = 1;
						this.controller.level = 1;
						this.text1 = "stopping....";
					}
				} else if (moveIndex == -2) { // Undo :cond_e
					this.l1 = 0;
					this.l2 = 0;
					this.lm = 0;
					if (this.state != 2 && this.state == 4 || this.state == 2) {
						// :cond_f
						this.R = 2;
						this.controller.level = 1;
						this.text1 = "stopping....";
					} else { // :cond_10
						this.R = 0;
						boolean bool;
						bool = this.state == 1 || this.state == 5; // :cond_12
						// :goto_4
						if (undo(bool)) {
							if (bool) {
								this.state = 3;
							} else { // :cond_13
								this.state = 1;
							}
							// :goto_5
							this.whitePiecePlacement = this.controller.lastWhitePiecesPlacement;
							this.blackPiecePlacement = this.controller.lastBlackPiecesPlacement;
							this.whiteKingPlacement = this.controller.lastWhiteKingsPlacement;
							this.blackKingPlacement = this.controller.lastBlackKingsPlacement;
							this.l1 = 0;
							this.l2 = 0;
							this.lm = 0;
							if (this.controller.a(0, bool, this.onJoueLesNoirs) == 1)
								this.capturePriority = true;
							// :cond_11
							this.capturePriority = false;
							this.nbPossibleMoves = this.controller.nbPossibleMoves;
							this.text1 = "undid half-move";
						} else { // :cond_14
							this.text1 = "no more undo";
						}
					}
				} else if (moveIndex == -4) { // Switch color :cond_15
					if (this.state == 1) {
						this.state = 2;
						this.controller.a(false, this.onJoueLesNoirs);
						String text;
						if (this.viewFromWhite) {
							text = "computer now plays black";
						} else { // :cond_16
							text = "computer now plays black\ngoto options to rotate board";
						}
						// :goto_6
						Toast.makeText(this.context, text, Toast.LENGTH_SHORT)
								.show();
					} else { // :cond_17
						if (this.state == 3) {
							this.state = 0;
							this.controller.a(true, this.onJoueLesNoirs);
							String text;
							if (this.viewFromWhite) {
								text = "computer now plays white\ngoto options to rotate board";
							} else { // :cond_18
								text = "computer now plays white";
							}
							// :goto_7
							Toast.makeText(this.context, text,
									Toast.LENGTH_SHORT).show();
						}
					}
				} else if (moveIndex == 1) { // :cond_19
					if (this.state != 1 && this.state == 3 || this.state == 1) {
						// :cond_1a
						this.l2 = 0;
						this.lm = 0;
						int[] v6 = this.controller.b;
						int v2 = 0;
						int v3 = 0;
						// :goto_8
						int v1 = -1;
						while (v2 < this.controller.nbPossibleMoves) { // :cond_1b
							if ((this.l1 & v6[v2]) == this.l1) {
								if (v6[v2] != 0) {
									v1 = v3 + 1;
								} else { // :cond_1f
									v1 = v3;
								}
								// :goto_9
								this.l2 |= v6[v2];
								v3 = v1;
								v1 = v2;
							}
							// :cond_1c
							v2 += 1;
						}
						if (v3 == 1) {
							c(v1);
						} else { // :cond_1d
							if (this.l2 == 0)
								this.l1 = 0;
						}
					}
				}
			}
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * b(FF) TODO TFS
	 * 
	 * @param touchX
	 * @param touchY
	 * @return
	 */
	private final int onTouch(float touchX, float touchY) {
		int move = 1;
		while (true) {
			int cellSize = 0;
			int line = 0;
			int column, i8, cellX, cellY, i11;
			try {
				int width = getWidth();
				int height = getHeight();
				int i6 = 0;
				if (width < height) {
					cellSize = width / 8;
					if (this.state != move) {
						int localState = this.state;
						if (localState != 3)
							;
					} else {
						line = 0;
						i6 = move;
						if (line < 8)
							continue;
					}
					move = 0;
					return move;
				} else {
					width = height;
					// continue;
				}
				column = 0x1 & 1 - line;
				i8 = i6;
				if (column >= 8) {
					line++;
					i6 = i8;
					continue;
				}
				if (this.viewFromWhite) {
					cellX = cellSize * (7 - column);
					cellY = cellSize * (7 - line);
					if ((cellX > touchX) || (touchX >= cellX + cellSize)
							|| (cellY > touchY) || (touchY >= cellY + cellSize))
						break;
					this.l1 = (i8 | this.l1);
					continue;
				}
			} finally {
			}
			cellX = cellSize * column;
			cellY = cellSize * line;
			// continue;
			i11 = i8 * 2;
			column += 2;
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

	/**
	 * c(I) TODO TFS
	 * 
	 * @param moveIndex
	 */
	private final void c(int moveIndex) {
		d();
		boolean bool = true;
		if ((this.state != 1) && (this.state != 2)) {
			bool = false;
			this.l1 = 0;
			this.l2 = 0;
			this.lm = this.controller.b[moveIndex];
			if (this.animation) {
				this.l = 0.9F;
				if (!bool)
					// break;
					;
				this.m = (this.controller.a[moveIndex] & (this.whitePiecePlacement | this.whiteKingPlacement));
			}
		}
		for (this.n = 0;; this.n = (this.controller.a[moveIndex] & (this.blackPiecePlacement | this.blackKingPlacement))) {
			this.controller.a(moveIndex);
			this.whitePiecePlacement = this.controller.lastWhitePiecesPlacement;
			this.blackPiecePlacement = this.controller.lastBlackPiecesPlacement;
			this.whiteKingPlacement = this.controller.lastWhiteKingsPlacement;
			this.blackKingPlacement = this.controller.lastBlackKingsPlacement;
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
		int i1 = this.undoArrayPosition;
		this.lastWhitePiecePlacement[i1] = this.controller.lastWhitePiecesPlacement;
		this.lastWhiteKingPlacement[i1] = this.controller.lastWhiteKingsPlacement;
		this.lastBlackPiecePlacement[i1] = this.controller.lastBlackPiecesPlacement;
		this.lastBlackKingPlacement[i1] = this.controller.lastBlackKingsPlacement;
		if (this.undoArrayPosition < 7)
			;
		for (this.undoArrayPosition = (1 + this.undoArrayPosition);; this.undoArrayPosition = 0) {
			if (this.undoCpt < 8)
				this.undoCpt = (1 + this.undoCpt);
			return;
		}
	}

	/**
	 * e() TFS Checks if the black pieces are at their first position.
	 * 
	 * @return
	 */
	private final boolean blackDidNotMoved() {
		return this.blackPiecePlacement == -1048576;
	}

	/**
	 * f()
	 */
	private final void newGameAlertDialog() {
		new AlertDialog.Builder(this.context)
				.setMessage("Start a new game?")
				.setCancelable(false)
				.setPositiveButton("Yes",
						new NewGameAlertDialogYesButtonListener(this))
				.setNegativeButton("No",
						new NewGameAlertDialogNoButtonListener(this)).show();
	}

	/**
	 * g() TFS Affiche le Start Screen.
	 */
	private final void showStartDialog() {
		// return; au début du smali :/
		new AlertDialog.Builder(this.context)
				.setMessage(
						"Checkers for Android was written by Aart J.C. Bik."
								+ "\n\nUse the touch screen or trackball to make a move."
								+ " Press the MENU button for more options, such as making captures optional instead of mandatory."
								+ "\n\nThe application complies with the official American checkers rules, where black moves first,"
								+ " captures are mandatory, men only move and jump forward,"
								+ " and kings move and jump forward and backward (but not over a distance)."
								+ " Please note that many variants of checkers exist,"
								+ " and this game may not use the rules you are most familiar with.\n")
				.setCancelable(false)
				.setPositiveButton("KEEP SHOWING",
						new KeepShowingStartScreenOnClickListener(this))
				.setNegativeButton("STOP SHOWING",
						new StopShowingStartScreenOnClickListener(this)).show();
	}

	/**
	 * g(Z) TODO TFS
	 * 
	 * @param paramBoolean
	 * @return
	 */
	private final boolean undo(boolean paramBoolean) {
		if (this.undoCpt > 0) {
			this.undoCpt = (-1 + this.undoCpt);
			if (this.undoArrayPosition > 0)
				;
			for (this.undoArrayPosition = (-1 + this.undoArrayPosition);; this.undoArrayPosition = 7) {
				int i1 = this.undoArrayPosition;
				this.controller.setPlateau(this.lastWhitePiecePlacement[i1],
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
			cellSize = width / 8;
			int roundedWidth = cellSize * 8;
			if ((0.0F > this.lastTouchedX)
					|| (this.lastTouchedX >= roundedWidth)
					|| (0.0F > this.lastTouchedY)
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
					cellSize = height;
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

	/**
	 * a()
	 * 
	 * @param moveIndex
	 *            Index du mouvement choisi
	 * @param v
	 * @param d
	 * @param n
	 */
	public final void moveIA(int moveIndex, int v, int d, int n) {
		if (gameStatus(true, moveIndex, v, d, n))
			postInvalidate();
	}

	/**
	 * a(Landroid/content/SharedPreferences$Editor;)
	 * 
	 * @param paramEditor
	 */
	public final void saveData(SharedPreferences.Editor paramEditor) {
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
			paramEditor.putInt("lp", this.undoArrayPosition);
			paramEditor.putInt("lc", this.undoCpt);
		} finally {

		}
	}

	/**
	 * Remet le jeu dans un autre état.
	 * 
	 * @param action
	 *            -3: new, -2: undo, -4: switch-color
	 * @return
	 */
	public final boolean resetGame(int action) {
		boolean bool1 = gameStatus(false, action, 0, 0, 0);
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

	public final void touch() {
		try {
			int isHandled = onTouch(this.lastTouchedX, this.lastTouchedY);
			if ((isHandled != 0) && (gameStatus(false, isHandled, 0, 0, 0)))
				postInvalidate();
			return;
		} finally {
		}
	}

	/**
	 * b(Z) TODO TFS
	 * 
	 * @param paramBoolean
	 * @return
	 */
	public final boolean getOptionalJumpStatus(boolean paramBoolean) {
		int i1 = 1;
		boolean bool1 = false;
		if (paramBoolean) {
			try {
				if (this.onJoueLesNoirs) {
					this.onJoueLesNoirs = false;
					if ((this.state == 3) || (this.state == i1)) {
						this.l1 = 0;
						this.l2 = 0;
						this.lm = 0;
						// if (this.p.a(0, i2, this.B) != i1)
						// break;
					}
				}
				this.capturePriority = true; // this.y = i1;
				this.nbPossibleMoves = this.controller.nbPossibleMoves;
				postInvalidate();
				bool1 = this.onJoueLesNoirs;
				i1 = 0;
			} finally {

			}
		}
		return bool1;
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
		int cellToDraw = 0;
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
			int drawX = 0;
			int drawY = 0;
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
					if (!blackDidNotMoved())
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
					if ((this.moveCoach)
							&& ((this.state == 1) || (this.state == 3))) {
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
					if (!(0.0F < this.lastTouchedX)
							&& (this.lastTouchedX < roundedWidth)
							&& !(0.0F < this.lastTouchedY)
							&& (this.lastTouchedY < roundedWidth)) {
						int cellX = (int) this.lastTouchedX / cellSize;
						int cellY = (int) this.lastTouchedY / cellSize;
						if (cellX >= 0 && cellX < 8 && cellY >= 0 && cellY < 8) {
							int selectedX = cellSize * cellX;
							int selectedY = cellSize * cellY;
							paramCanvas.drawRect(selectedX, selectedY,
									selectedX + cellSize, selectedY + cellSize,
									this.paint9);
							selectedCell = 1;
						}
					}
					if (selectedCell == 0) {
						paramCanvas.drawCircle(this.lastTouchedX,
								this.lastTouchedY, 5.0F, this.paint2);
						paramCanvas.drawCircle(this.lastTouchedX,
								this.lastTouchedY, 3.0F, this.paint1);
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
					i3 = height;
					// continue;
					int i9 = roundedWidth + 2;
					i10 = roundedWidth - i7 * 2 - letterOffset;
					i11 = i9;
					i12 = i7;
					i13 = i9;
					// continue;
					Paint localPaint = this.paint2;
					paramCanvas.drawRect(0.0F, 0.0F, roundedWidth,
							roundedWidth, this.paint4);
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
					drawX = pieceRadius + i35;
					drawY = pieceRadius + i34;
					if ((cellToDraw & this.l1) != 0) {
						paramCanvas.drawRect(i35 + 1, i34 + 1, -1
								+ (i35 + cellSize), -1 + (i34 + cellSize),
								this.redCase);
						if ((cellToDraw & this.whitePiecePlacement) == 0)
							break;
						drawCercle(paramCanvas, drawX, drawY, pieceRadius,
								letterOffset, this.paint1, this.paint2, false);
						int i44 = localNbWhitePieces + 1;
						i39 = localNbBlackPieces;
						i40 = localNbWhiteKings;
						i41 = i44;
						i38 = localNbBlackKings;
						break;
					}
					if ((cellToDraw & this.l2) != 0) {
						paramCanvas.drawRect(i35 + 1, i34 + 1, -1
								+ (i35 + cellSize), -1 + (i34 + cellSize),
								this.paint6);
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
			if ((this.moveCoach) && ((cellToDraw & this.lm) != 0)) {
				paramCanvas.drawRect(i35 + 1, i34 + 1, -1 + (i35 + cellSize),
						-1 + (i34 + cellSize), this.greenCase);
				// continue;
				if ((cellToDraw & this.blackPiecePlacement) != 0) {
					drawCercle(paramCanvas, drawX, drawY, pieceRadius,
							letterOffset, this.paint2, this.paint1, false);
					i39 = localNbBlackPieces + 1;
					i40 = localNbWhiteKings;
					i41 = localNbWhitePieces;
					i38 = localNbBlackKings;
					break;
				}
				if ((cellToDraw & this.whiteKingPlacement) != 0) {
					drawCercle(paramCanvas, drawX, drawY, pieceRadius,
							letterOffset, this.paint1, this.paint2, true);
					int i43 = localNbWhiteKings + 1;
					i39 = localNbBlackPieces;
					i40 = i43;
					i41 = localNbWhitePieces;
					i38 = localNbBlackKings;
					break;
				}
				if ((cellToDraw & this.blackKingPlacement) != 0) {
					drawCercle(paramCanvas, drawX, drawY, pieceRadius,
							letterOffset, this.paint2, this.paint1, true);
					i38 = localNbBlackKings + 1;
					i39 = localNbBlackPieces;
					i40 = localNbWhiteKings;
					i41 = localNbWhitePieces;
					break;
				}
				if ((cellToDraw & this.n) != 0) {
					paramCanvas.drawCircle(drawX, drawY, (pieceRadius - 2)
							* this.l, this.paint2);
					paramCanvas.drawCircle(drawX, drawY, (pieceRadius - 4)
							* this.l, this.paint1);
					i38 = localNbBlackKings;
					i39 = localNbBlackPieces;
					i40 = localNbWhiteKings;
					i41 = localNbWhitePieces;
					break;
				}
				if ((cellToDraw & this.m) == 0)
					break;
				paramCanvas.drawCircle(drawX, drawY,
						(pieceRadius - 2) * this.l, this.paint1);
				paramCanvas.drawCircle(drawX, drawY,
						(pieceRadius - 4) * this.l, this.paint2);
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
				b(paramCanvas, arrayOfInt1[i30], arrayOfInt2[i30], cellSize,
						pieceRadius);
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
					line = column & 0x1; // Si colonne impaire alors ligne 1,
											// sinon 0.
					if (line < 8)
						// break;
						;
				}
				i31 = 0x1 & 1 - i23;
				cellToDraw = i18;
				if (i31 < 8)
					break;

				i23++;
				i18 = cellToDraw;
			}
			break;
		}
		while (true) {
			int i42 = cellToDraw * 2;
			i31 += 2;
			cellToDraw = i42;
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

	/**
	 * e(Z) TFS
	 * 
	 * @param switchValue
	 * @return
	 */
	public final boolean getStartScreen(boolean switchValue) {
		if (switchValue) {
			this.startScreen = !this.startScreen;
		}
		return this.startScreen;
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

	protected void onSizeChanged(int width, int height, int oldWidth,
			int oldHeight) {
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
			int move = onTouch(paramMotionEvent.getX(), paramMotionEvent.getY());
			if (move != 0) {
				if (gameStatus(false, move, 0, 0, 0))
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

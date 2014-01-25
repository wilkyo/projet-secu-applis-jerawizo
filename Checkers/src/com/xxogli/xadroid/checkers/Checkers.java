package com.xxogli.xadroid.checkers;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SubMenu;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;

import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;

public class Checkers extends Activity {
	private CheckersView view;

	/**
	 * a() Test du développeur pour vérifier qu'on n'a pas hacké. Mais
	 * totalement inutile.
	 * 
	 * @param key
	 *            Chaîne dont on fait la somme des caractères pour vérifier que
	 *            c'est bon.
	 */
	private final void test(String key) {
		int i = 0;
		int j = 0;
		while (true) {
			if (i >= key.length()) {
				if (j != 1218)
					System.exit(1);
				return;
			}
			j += key.charAt(i);
			i++;
		}
	}

	/**
	 * a() Ou un truc du genre...
	 * 
	 * @param paramBoolean
	 */
	private final void setFullscreen(boolean paramBoolean) {
		Window localWindow = getWindow();
		if (paramBoolean) {
			localWindow.addFlags(1152);
			localWindow.clearFlags(2048);
		}
		while (true) {
			this.view.requestLayout();
			// return;
			localWindow.addFlags(2176);
			localWindow.clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
		}
	}

	public void onConfigurationChanged(Configuration paramConfiguration) {
		super.onConfigurationChanged(paramConfiguration);
	}

	public void onCreate(Bundle paramBundle) {
		super.onCreate(paramBundle);
		requestWindowFeature(1);
		this.view = new CheckersView(this, getPreferences(0));
		test("by Aart J.C. Bik");
		setContentView(this.view);
		setFullscreen(this.view.manageFullScreen(false));
		AdView localAdView = new AdView(this, AdSize.BANNER, "a15255c5da8fc08");
		if (localAdView != null) {
			addContentView(localAdView, new ViewGroup.LayoutParams(-1, -1));
			localAdView.setGravity(80);
			localAdView.loadAd(new AdRequest());
		}
	}

	public boolean onCreateOptionsMenu(Menu paramMenu) {
		super.onCreateOptionsMenu(paramMenu);
		paramMenu.add(0, 0, 0, "New Game");
		paramMenu.add(0, 1, 1, "Undo");
		paramMenu.add(0, 2, 2, "Switch Side");
		SubMenu localSubMenu1 = paramMenu.addSubMenu(0, 3, 3, "Options");
		localSubMenu1.add(1, 0, 0, "Move Coach").setCheckable(true)
				.setChecked(this.view.a(false));
		localSubMenu1.add(1, 1, 1, "Optional Jumps").setCheckable(true)
				.setChecked(this.view.getOptionalJumpStatus(false));
		localSubMenu1.add(1, 2, 2, "View from White").setCheckable(true)
				.setChecked(this.view.rotatedBoardStatus(false));
		localSubMenu1.add(1, 3, 3, "Full Screen").setCheckable(true)
				.setChecked(this.view.manageFullScreen(false));
		localSubMenu1.add(1, 4, 4, "Start Screen").setCheckable(true)
				.setChecked(this.view.getStartScreen(false));
		localSubMenu1.add(1, 5, 5, "Animation").setCheckable(true)
				.setChecked(this.view.f(false));
		localSubMenu1.add(1, 6, 6, "Board Color");
		SubMenu localSubMenu2 = paramMenu.addSubMenu(0, 4, 4, "Level");
		localSubMenu2.add(2, 0, 0, "Free Play");
		localSubMenu2.add(2, 1, 1, "Random (0s)");
		localSubMenu2.add(2, 2, 2, "Level 1 (fast)");
		localSubMenu2.add(2, 3, 3, "Level 2 (1s)");
		localSubMenu2.add(2, 4, 4, "Level 3 (5s)");
		localSubMenu2.add(2, 5, 5, "Level 4 (10s)");
		localSubMenu2.add(2, 6, 6, "Level 5 (15s)");
		localSubMenu2.add(2, 7, 7, "Level 6 (30s)");
		localSubMenu2.add(2, 8, 8, "Level 7 (60s)");
		localSubMenu2.setGroupCheckable(2, true, true);
		localSubMenu2.findItem(this.view.getLevel()).setChecked(true);
		return true;
	}

	public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
		switch (paramInt) {
		default:
			return super.onKeyDown(paramInt, paramKeyEvent);
		case 23:
			this.view.touch();
			return true;
		case 21:
			this.view.moveSelection(-1.0F, 0.0F);
			return true;
		case 22:
			this.view.moveSelection(1.0F, 0.0F);
			return true;
		case 19:
			this.view.moveSelection(0.0F, -1.0F);
			return true;
		case 20:
		}
		this.view.moveSelection(0.0F, 1.0F);
		return true;
	}

	public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
		int i = paramMenuItem.getItemId();
		switch (paramMenuItem.getGroupId()) {
		default:
		case 0:
		case 1:
			do {
				do {
					// return super.onOptionsItemSelected(paramMenuItem);
					if (i == 0) {
						this.view.resetGame(-3);
						return true;
					}
					if (i == 1) {
						this.view.resetGame(-2);
						return true;
					}
					if (i == 2) {
						this.view.resetGame(-4);
						return true;
					}
				} while (i != 5);
				startActivity(new Intent("android.intent.action.VIEW",
						Uri.parse("http://www.aartbik.com/MISC/android.html")));
				// return true;
				if (i == 0) {
					paramMenuItem.setChecked(this.view.a(true));
					return true;
				}
				if (i == 1) {
					paramMenuItem.setChecked(this.view.getOptionalJumpStatus(true));
					return true;
				}
				if (i == 2) {
					paramMenuItem
							.setChecked(this.view.rotatedBoardStatus(true));
					return true;
				}
				if (i == 3) {
					boolean bool = this.view.manageFullScreen(true);
					paramMenuItem.setChecked(bool);
					setFullscreen(bool);
					return true;
				}
				if (i == 4) {
					paramMenuItem.setChecked(this.view.getStartScreen(true));
					return true;
				}
				if (i == 5) {
					paramMenuItem.setChecked(this.view.f(true));
					return true;
				}
			} while (i != 6);
			this.view.showBoardColorSelector();
			return true;
		case 2:
		}
		this.view.setLevel(i);
		paramMenuItem.setChecked(true);
		return true;
	}

	public void onPause() {
		super.onPause();
		SharedPreferences.Editor localEditor = getPreferences(0).edit();
		this.view.saveData(localEditor);
		localEditor.commit();
	}

	public void onStop() {
		super.onStop();
		System.exit(0);
	}

	public boolean onTrackballEvent(MotionEvent paramMotionEvent) {
		switch (paramMotionEvent.getAction()) {
		case 1:
		default:
			return super.onTrackballEvent(paramMotionEvent);
		case 0:
			this.view.touch();
			return true;
		case 2:
		}
		this.view.moveSelection(paramMotionEvent.getX(),
				paramMotionEvent.getY());
		return true;
	}
}

/*
 * Location:
 * /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar
 * .jar Qualified Name: com.xxogli.xadroid.checkers.Checkers JD-Core Version:
 * 0.6.2
 */

package com.xxogli.xadroid.checkers;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/**
 * Unused
 */
class SwitchStartScreenListener implements OnClickListener {

	/**
	 * a
	 */
	private CheckersView view;

	SwitchStartScreenListener(CheckersView view) {
		this.view = view;
	}

	public void onClick(DialogInterface paramDialogInterface, int paramInt) {
		this.view.getStartScreen(true);
	}
}

/*
 * Location:
 * /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar
 * .jar Qualified Name: com.xxogli.xadroid.checkers.f JD-Core Version: 0.6.2
 */
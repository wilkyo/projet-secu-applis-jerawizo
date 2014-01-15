package com.xxogli.xadroid.checkers;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class NewGameAlertDialogYesButtonListener implements OnClickListener {
	private CheckersView view;

	NewGameAlertDialogYesButtonListener(CheckersView view) {
		this.view = view;
	}

	public void onClick(DialogInterface paramDialogInterface, int paramInt) {
		// if (this.view.gameStatus(false, -1, 0, 0, 0))
		// this.view.postInvalidate();
	}
}

/*
 * Location:
 * /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar
 * .jar Qualified Name: com.xxogli.xadroid.checkers.c JD-Core Version: 0.6.2
 */
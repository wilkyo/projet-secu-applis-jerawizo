package com.xxogli.xadroid.checkers;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.text.InputType;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

/**
 * CheckersView.
 */
public class b extends View {

	private Context a;
	
	/**
	 * CheckersController.
	 */
	private a p;

	public b(Context mContext,
			SharedPreferences paramSharedPreferences) {
		super(mContext);
		this.a = mContext;
		this.p = new a(this);
	}
	
	public int newGameWhitePiecesPlacement = 4095;
	public int newGameWhiteKingsPlacement = 0;
	public int newGameBlackPiecesPlacement = -1048576;
	public int newGameBlackKingsPlacement = 0;

	private TextView textView(String s) {
		TextView tv = new TextView(a);
		tv.setLayoutParams(new TableRow.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
		tv.setText(s);
		return tv;
	}
	
	private EditText editText(String s) {
		EditText et = new EditText(a);
		et.setLayoutParams(new TableRow.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT, 1f));
		et.setText(s);
		et.setInputType(InputType.TYPE_CLASS_NUMBER);
		et.setEms(10);
		return et;
	}
	
	private TableRow tableRow(String s, EditText et) {
		TableRow tr = new TableRow(a);
		tr.setLayoutParams(new TableLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
		tr.addView(textView(s));
		tr.addView(et);
		return tr;
	}
	
	private TableLayout tableLayout(TableRow ...rows) {
		TableLayout tl = new TableLayout(a);
		tl.setLayoutParams(new LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT));
		for(TableRow tr : rows) {
			tl.addView(tr);
		}
		return tl;
	}
	
	private LinearLayout linearLayout(View ...views) {
		LinearLayout ll = new LinearLayout(a);
		ll.setLayoutParams(new LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT));
		ll.setOrientation(LinearLayout.VERTICAL);
		for(View v : views) {
			ll.addView(v);
		}
		return ll;
	}
	
	/**
	 * newGameDialog.
	 */
	public void f() {
		AlertDialog.Builder b = new AlertDialog.Builder(a);
		final EditText et1 = editText("000000000000");
		final EditText et2 = editText("000000000000");
		b.setView(tableLayout(tableRow("White:", et1), tableRow("Black:", et2)))
				.setMessage("Start a new game?")
				.setCancelable(false)
				.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int which) {
						int i = Integer.parseInt(new StringBuilder(et1.getText().toString()).reverse().toString(), 2);
						newGameWhitePiecesPlacement = ~i & 0xFFF;
						newGameWhiteKingsPlacement = i & 0xFFF;
						i = Integer.parseInt(new StringBuilder(et2.getText().toString()).reverse().toString(), 2) << 20;
						newGameBlackPiecesPlacement = ~i & 0xFFF00000;
						newGameBlackKingsPlacement = i & 0xFFF00000;
						a(false, -1, 0, 0, 0);
						postInvalidate();
					}
				})
				.setNegativeButton("No", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int which) {
					}
				}).show();
	}
	
	/**
	 * gameStatus.
	 */
	private final boolean a(boolean isIA, int moveIndex, int v, int d, int n) {
		return false;
	}

}

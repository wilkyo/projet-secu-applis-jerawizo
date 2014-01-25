package com.xxogli.xadroid.checkers;

import java.io.BufferedInputStream;
import java.io.IOException;

import android.content.Context;
import android.util.Log;

public class EndGameTableBase {
	public static byte[] a;
	public static byte[] b;
	public static byte[] c;
	public static byte[] d;
	public static byte[] e;
	public static byte[] f;
	public static byte[] g;
	public static byte[] h;
	public static byte[] i;
	public static byte[] j;
	public static byte[] k;
	public static byte[] l;
	public static byte[] m;
	public static byte[] n;
	public static byte[] o;
	public static byte[] p;
	public static byte[] q;
	/**
	 * r
	 */
	public static boolean loaded;
	private static BufferedInputStream s;

	public static void load(Context paramContext) {
		try {
			a = new byte[512];
			b = new byte[896];
			c = new byte[896];
			d = new byte[784];
			e = new byte[7936];
			f = new byte[7936];
			g = new byte[13888];
			h = new byte[13888];
			i = new byte[28672];
			j = new byte[28672];
			k = new byte[25088];
			l = new byte[25088];
			m = new byte[12096];
			n = new byte[12096];
			o = new byte[10584];
			p = new byte[10584];
			q = new byte[246016];
			s = new BufferedInputStream(paramContext.getResources()
					.openRawResource(2130903040), 8192);
			load(a);
			load(b);
			load(c);
			load(d);
			load(e);
			load(f);
			load(g);
			load(h);
			load(i);
			load(j);
			load(k);
			load(l);
			load(m);
			load(n);
			load(o);
			load(p);
			load(q);
			s.close();
			s = null;
			loaded = true;
			return;
		} catch (Exception localException) {
			Log.d("BIK", "cannot read tb: " + localException);
			a = null;
			b = null;
			c = null;
			d = null;
			e = null;
			f = null;
			g = null;
			h = null;
			i = null;
			j = null;
			k = null;
			l = null;
			m = null;
			n = null;
			o = null;
			p = null;
			q = null;
			loaded = false;
		}
	}

	private static boolean load(byte[] paramArrayOfByte) throws IOException {
		int i1 = paramArrayOfByte.length;
		for (int i2 = 0;; i2++) {
			if (i2 >= i1)
				return true;
			int i3 = s.read();
			if (i3 == -1)
				throw new IOException("tb eof");
			paramArrayOfByte[i2] = ((byte) i3);
		}
	}
}

/*
 * Location:
 * /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar
 * .jar Qualified Name: com.xxogli.xadroid.checkers.h JD-Core Version: 0.6.2
 */
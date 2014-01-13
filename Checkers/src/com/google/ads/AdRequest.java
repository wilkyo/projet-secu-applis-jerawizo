package com.google.ads;

import android.content.Context;
import android.location.Location;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AdRequest
{
  public static final String LOGTAG = "Ads";
  public static final String TEST_EMULATOR = AdUtil.a("emulator");
  public static final String VERSION = "4.3.1";
  private Gender a = null;
  private String b = null;
  private Set<String> c = null;
  private boolean d = false;
  private Map<String, Object> e = null;
  private Location f = null;
  private boolean g = false;
  private boolean h = false;
  private Set<String> i = null;

  public void addExtra(String paramString, Object paramObject)
  {
    if (this.e == null)
      this.e = new HashMap();
    this.e.put(paramString, paramObject);
  }

  public void addKeyword(String paramString)
  {
    if (this.c == null)
      this.c = new HashSet();
    this.c.add(paramString);
  }

  public void addTestDevice(String paramString)
  {
    if (this.i == null)
      this.i = new HashSet();
    this.i.add(paramString);
  }

  public Map<String, Object> getRequestMap(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    if (this.c != null)
      localHashMap.put("kw", this.c);
    if (this.a != null)
      localHashMap.put("cust_gender", Integer.valueOf(this.a.ordinal()));
    if (this.b != null)
      localHashMap.put("cust_age", this.b);
    if (this.f != null)
      localHashMap.put("uule", AdUtil.a(this.f));
    if (this.g)
      localHashMap.put("testing", Integer.valueOf(1));
    if (this.d)
    {
      localHashMap.put("pto", Integer.valueOf(1));
      if (!isTestDevice(paramContext))
        break label208;
      localHashMap.put("adtest", "on");
    }
    label208: 
    while (this.h)
    {
      if (this.e != null)
        localHashMap.put("extras", this.e);
      return localHashMap;
      if (aa.a(paramContext));
      for (int j = 1; ; j = 0)
      {
        localHashMap.put("cipa", Integer.valueOf(j));
        break;
      }
    }
    if (AdUtil.c());
    for (String str = "AdRequest.TEST_EMULATOR"; ; str = "\"" + AdUtil.a(paramContext) + "\"")
    {
      a.c("To get test ads on this device, call adRequest.addTestDevice(" + str + ");");
      this.h = true;
      break;
    }
  }

  public boolean isTestDevice(Context paramContext)
  {
    if (this.i != null)
    {
      String str = AdUtil.a(paramContext);
      if (str == null)
        return false;
      if (this.i.contains(str))
        return true;
    }
    return false;
  }

  public void setBirthday(String paramString)
  {
    this.b = paramString;
  }

  public void setExtras(Map<String, Object> paramMap)
  {
    this.e = paramMap;
  }

  public void setGender(Gender paramGender)
  {
    this.a = paramGender;
  }

  public void setKeywords(Set<String> paramSet)
  {
    this.c = paramSet;
  }

  public void setLocation(Location paramLocation)
  {
    this.f = paramLocation;
  }

  public void setPlusOneOptOut(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public void setTestDevices(Set<String> paramSet)
  {
    this.i = paramSet;
  }

  public void setTesting(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public static enum ErrorCode
  {
    private String a;

    static
    {
      NETWORK_ERROR = new ErrorCode("NETWORK_ERROR", 2, "A network error occurred.");
      INTERNAL_ERROR = new ErrorCode("INTERNAL_ERROR", 3, "There was an internal error.");
      ErrorCode[] arrayOfErrorCode = new ErrorCode[4];
      arrayOfErrorCode[0] = INVALID_REQUEST;
      arrayOfErrorCode[1] = NO_FILL;
      arrayOfErrorCode[2] = NETWORK_ERROR;
      arrayOfErrorCode[3] = INTERNAL_ERROR;
    }

    private ErrorCode(String paramString)
    {
      this.a = paramString;
    }

    public final String toString()
    {
      return this.a;
    }
  }

  public static enum Gender
  {
    static
    {
      MALE = new Gender("MALE", 1);
      FEMALE = new Gender("FEMALE", 2);
      Gender[] arrayOfGender = new Gender[3];
      arrayOfGender[0] = UNKNOWN;
      arrayOfGender[1] = MALE;
      arrayOfGender[2] = FEMALE;
    }
  }
}

/* Location:           /home/willy/git/projet-secu-applis-jerawizo/com.xxogli.xadroid.checkers_dex2jar.jar
 * Qualified Name:     com.google.ads.AdRequest
 * JD-Core Version:    0.6.2
 */
.class public Lcom/google/ads/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdRequest$Gender;,
        Lcom/google/ads/AdRequest$ErrorCode;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "Ads"

.field public static final TEST_EMULATOR:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "4.3.1"


# instance fields
.field private a:Lcom/google/ads/AdRequest$Gender;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/location/Location;

.field private g:Z

.field private h:Z

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object v0, p0, Lcom/google/ads/AdRequest;->a:Lcom/google/ads/AdRequest$Gender;

    .line 134
    iput-object v0, p0, Lcom/google/ads/AdRequest;->b:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    .line 140
    iput-boolean v1, p0, Lcom/google/ads/AdRequest;->d:Z

    .line 143
    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Map;

    .line 146
    iput-object v0, p0, Lcom/google/ads/AdRequest;->f:Landroid/location/Location;

    .line 149
    iput-boolean v1, p0, Lcom/google/ads/AdRequest;->g:Z

    .line 152
    iput-boolean v1, p0, Lcom/google/ads/AdRequest;->h:Z

    .line 165
    iput-object v0, p0, Lcom/google/ads/AdRequest;->i:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Map;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public addKeyword(Ljava/lang/String;)V
    .locals 1
    .parameter "keyword"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public addTestDevice(Ljava/lang/String;)V
    .locals 1
    .parameter "testDevice"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->i:Ljava/util/Set;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "kw"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/google/ads/AdRequest;->a:Lcom/google/ads/AdRequest$Gender;

    if-eqz v1, :cond_1

    .line 301
    const-string v1, "cust_gender"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->a:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v2}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/google/ads/AdRequest;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 306
    const-string v1, "cust_age"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/google/ads/AdRequest;->f:Landroid/location/Location;

    if-eqz v1, :cond_3

    .line 311
    const-string v1, "uule"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->f:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_3
    iget-boolean v1, p0, Lcom/google/ads/AdRequest;->g:Z

    if-eqz v1, :cond_4

    .line 315
    const-string v1, "testing"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_4
    iget-boolean v1, p0, Lcom/google/ads/AdRequest;->d:Z

    if-eqz v1, :cond_7

    .line 319
    const-string v1, "pto"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/ads/AdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 327
    const-string v1, "adtest"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 344
    const-string v1, "extras"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_6
    return-object v0

    .line 321
    :cond_7
    const-string v1, "cipa"

    invoke-static {p1}, Lcom/google/ads/aa;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 329
    :cond_9
    iget-boolean v1, p0, Lcom/google/ads/AdRequest;->h:Z

    if-nez v1, :cond_5

    .line 330
    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 332
    const-string v1, "AdRequest.TEST_EMULATOR"

    .line 336
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 338
    iput-boolean v4, p0, Lcom/google/ads/AdRequest;->h:Z

    goto :goto_1

    .line 334
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 401
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 403
    if-nez v0, :cond_0

    move v0, v2

    .line 412
    :goto_0
    return v0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/google/ads/AdRequest;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 412
    goto :goto_0
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/ads/AdRequest;->b:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Map;

    .line 239
    return-void
.end method

.method public setGender(Lcom/google/ads/AdRequest$Gender;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/ads/AdRequest;->a:Lcom/google/ads/AdRequest$Gender;

    .line 174
    return-void
.end method

.method public setKeywords(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    .line 209
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/ads/AdRequest;->f:Landroid/location/Location;

    .line 268
    return-void
.end method

.method public setPlusOneOptOut(Z)V
    .locals 0
    .parameter "plusOneOptOut"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/google/ads/AdRequest;->d:Z

    .line 197
    return-void
.end method

.method public setTestDevices(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, testDevices:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->i:Ljava/util/Set;

    .line 386
    return-void
.end method

.method public setTesting(Z)V
    .locals 0
    .parameter "testing"

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/google/ads/AdRequest;->g:Z

    .line 282
    return-void
.end method

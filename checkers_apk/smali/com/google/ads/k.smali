.class public final Lcom/google/ads/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 31
    const-string v0, "urls"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string v0, "Could not get the urls param from canOpenURLs gmsg."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 41
    array-length v3, v0

    move v4, v9

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 43
    const-string v6, ";"

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 44
    aget-object v7, v6, v9

    .line 45
    array-length v8, v6

    if-lt v8, v11, :cond_1

    aget-object v6, v6, v10

    .line 49
    :goto_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 50
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 51
    const/high16 v6, 0x1

    invoke-virtual {v2, v8, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 53
    if-eqz v6, :cond_2

    move v6, v10

    .line 54
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 45
    :cond_1
    const-string v6, "android.intent.action.VIEW"

    goto :goto_2

    :cond_2
    move v6, v9

    .line 53
    goto :goto_3

    .line 58
    :cond_3
    invoke-static {p3, v1}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    goto :goto_0
.end method

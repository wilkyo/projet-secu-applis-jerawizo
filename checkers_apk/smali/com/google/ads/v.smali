.class public final Lcom/google/ads/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/DisplayMetrics;",
            ")I"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 45
    if-eqz p0, :cond_0

    .line 48
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    float-to-int v0, v0

    .line 55
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" in a video gmsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    :cond_0
    move v0, p2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ads/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 9
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
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 66
    const-string v0, "action"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const-string v0, "No \"action\" parameter in a video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 74
    :cond_0
    instance-of v0, p3, Lcom/google/ads/h;

    if-eqz v0, :cond_1

    .line 75
    check-cast p3, Lcom/google/ads/h;

    .line 82
    invoke-virtual {p3}, Lcom/google/ads/h;->b()Lcom/google/ads/AdActivity;

    move-result-object v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    const-string v0, "Could not get adActivity for a video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "Could not get adWebView for a video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v1, "new"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 90
    const-string v2, "position"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 91
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    .line 93
    :cond_3
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 94
    const-string v3, "x"

    invoke-static {p2, v3, v4, v2}, Lcom/google/ads/v;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 95
    const-string v5, "y"

    invoke-static {p2, v5, v4, v2}, Lcom/google/ads/v;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 96
    const-string v5, "w"

    invoke-static {p2, v5, v7, v2}, Lcom/google/ads/v;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v5

    .line 97
    const-string v6, "h"

    invoke-static {p2, v6, v7, v2}, Lcom/google/ads/v;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 99
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->getAdVideoView()Lcom/google/ads/g;

    move-result-object v1

    if-nez v1, :cond_4

    .line 100
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/google/ads/AdActivity;->newAdVideoView(IIII)V

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/google/ads/AdActivity;->moveAdVideoView(IIII)V

    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->getAdVideoView()Lcom/google/ads/g;

    move-result-object v8

    .line 107
    if-nez v8, :cond_6

    .line 109
    const-string v0, "onVideoEvent"

    const-string v1, "{\'event\': \'error\', \'what\': \'no_video_view\'}"

    invoke-static {p3, v0, v1}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_6
    const-string v1, "click"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 117
    const-string v1, "x"

    invoke-static {p2, v1, v4, v0}, Lcom/google/ads/v;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 118
    const-string v1, "y"

    invoke-static {p2, v1, v4, v0}, Lcom/google/ads/v;->a(Ljava/util/HashMap;Ljava/lang/String;ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 122
    int-to-float v5, v2

    int-to-float v6, v3

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 123
    invoke-virtual {v8, v0}, Lcom/google/ads/g;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 124
    :cond_7
    const-string v0, "controls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 126
    if-nez p0, :cond_8

    .line 127
    const-string v0, "No \"enabled\" parameter in a controls video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_8
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/google/ads/g;->a(Z)V

    goto/16 :goto_0

    .line 133
    :cond_9
    invoke-virtual {v8, v4}, Lcom/google/ads/g;->a(Z)V

    goto/16 :goto_0

    .line 135
    :cond_a
    const-string v0, "currentTime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 136
    const-string v0, "time"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 137
    if-nez p0, :cond_b

    .line 138
    const-string v0, "No \"time\" parameter in a currentTime video gmsg."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_b
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 143
    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 144
    invoke-virtual {v8, v0}, Lcom/google/ads/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \"time\" parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_c
    const-string v0, "hide"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 149
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/google/ads/g;->setVisibility(I)V

    goto/16 :goto_0

    .line 150
    :cond_d
    const-string v0, "load"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    invoke-virtual {v8}, Lcom/google/ads/g;->a()V

    goto/16 :goto_0

    .line 152
    :cond_e
    const-string v0, "pause"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    invoke-virtual {v8}, Lcom/google/ads/g;->b()V

    goto/16 :goto_0

    .line 154
    :cond_f
    const-string v0, "play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 155
    invoke-virtual {v8}, Lcom/google/ads/g;->c()V

    goto/16 :goto_0

    .line 156
    :cond_10
    const-string v0, "show"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 157
    invoke-virtual {v8, v4}, Lcom/google/ads/g;->setVisibility(I)V

    goto/16 :goto_0

    .line 158
    :cond_11
    const-string v0, "src"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 159
    const-string v0, "src"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Lcom/google/ads/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown video action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

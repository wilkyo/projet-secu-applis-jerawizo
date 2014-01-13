.class public final Lcom/google/ads/util/b$b;
.super Lcom/google/ads/util/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static final synthetic g:Z

.field private static final h:[B

.field private static final i:[B


# instance fields
.field public c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field private final j:[B

.field private k:I

.field private final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 571
    const-class v0, Lcom/google/ads/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/ads/util/b$b;->g:Z

    .line 583
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/util/b$b;->h:[B

    .line 594
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/util/b$b;->i:[B

    return-void

    .line 571
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 594
    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 610
    invoke-direct {p0}, Lcom/google/ads/util/b$a;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/util/b$b;->a:[B

    .line 613
    iput-boolean v1, p0, Lcom/google/ads/util/b$b;->d:Z

    .line 614
    iput-boolean v1, p0, Lcom/google/ads/util/b$b;->e:Z

    .line 615
    iput-boolean v1, p0, Lcom/google/ads/util/b$b;->f:Z

    .line 616
    sget-object v0, Lcom/google/ads/util/b$b;->i:[B

    iput-object v0, p0, Lcom/google/ads/util/b$b;->l:[B

    .line 618
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/util/b$b;->j:[B

    .line 619
    iput v1, p0, Lcom/google/ads/util/b$b;->c:I

    .line 621
    iget-boolean v0, p0, Lcom/google/ads/util/b$b;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    :goto_0
    iput v0, p0, Lcom/google/ads/util/b$b;->k:I

    .line 622
    return-void

    .line 621
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a([BI)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/ads/util/b$b;->l:[B

    .line 637
    iget-object v1, p0, Lcom/google/ads/util/b$b;->a:[B

    .line 638
    const/4 v2, 0x0

    .line 639
    iget v3, p0, Lcom/google/ads/util/b$b;->k:I

    .line 641
    const/4 v4, 0x0

    .line 642
    add-int/lit8 v5, p2, 0x0

    .line 643
    const/4 v6, -0x1

    .line 649
    iget v7, p0, Lcom/google/ads/util/b$b;->c:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    move v10, v6

    move v6, v4

    move v4, v10

    .line 675
    :goto_1
    const/4 v7, -0x1

    if-eq v4, v7, :cond_14

    .line 676
    const/4 v7, 0x0

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v8, v4, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 677
    const/4 v7, 0x1

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 678
    const/4 v7, 0x2

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 679
    const/4 v7, 0x3

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, v1, v7

    .line 680
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_14

    .line 681
    iget-boolean v3, p0, Lcom/google/ads/util/b$b;->f:Z

    if-eqz v3, :cond_1

    .line 682
    const/4 v3, 0x4

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v1, v3

    .line 684
    :cond_1
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xa

    aput-byte v4, v1, v2

    .line 685
    const/16 v2, 0x13

    move v4, v3

    move v3, v2

    move v2, v6

    .line 694
    :cond_2
    :goto_2
    add-int/lit8 v6, v2, 0x3

    if-gt v6, v5, :cond_3

    .line 695
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 697
    shr-int/lit8 v7, v6, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v1, v4

    .line 698
    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 699
    add-int/lit8 v7, v4, 0x2

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 700
    add-int/lit8 v7, v4, 0x3

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v0, v6

    aput-byte v6, v1, v7

    .line 701
    add-int/lit8 v2, v2, 0x3

    .line 702
    add-int/lit8 v4, v4, 0x4

    .line 703
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    .line 704
    iget-boolean v3, p0, Lcom/google/ads/util/b$b;->f:Z

    if-eqz v3, :cond_13

    .line 705
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xd

    aput-byte v6, v1, v4

    .line 707
    :goto_3
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0xa

    aput-byte v6, v1, v3

    .line 708
    const/16 v3, 0x13

    goto :goto_2

    :pswitch_0
    move v10, v6

    move v6, v4

    move v4, v10

    .line 652
    goto/16 :goto_1

    .line 655
    :pswitch_1
    const/4 v7, 0x2

    if-gt v7, v5, :cond_0

    .line 658
    iget-object v6, p0, Lcom/google/ads/util/b$b;->j:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    const/4 v7, 0x0

    add-int/lit8 v4, v4, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 660
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/ads/util/b$b;->c:I

    move v10, v6

    move v6, v4

    move v4, v10

    goto/16 :goto_1

    .line 666
    :pswitch_2
    if-lez v5, :cond_0

    .line 668
    iget-object v6, p0, Lcom/google/ads/util/b$b;->j:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    iget-object v7, p0, Lcom/google/ads/util/b$b;->j:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    add-int/lit8 v4, v4, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 670
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/ads/util/b$b;->c:I

    goto/16 :goto_0

    .line 712
    :cond_3
    iget v6, p0, Lcom/google/ads/util/b$b;->c:I

    sub-int v6, v2, v6

    const/4 v7, 0x1

    sub-int v7, v5, v7

    if-ne v6, v7, :cond_7

    .line 719
    const/4 v6, 0x0

    .line 720
    iget v7, p0, Lcom/google/ads/util/b$b;->c:I

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/google/ads/util/b$b;->j:[B

    const/4 v8, 0x0

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v7, v8

    move v10, v7

    move v7, v6

    move v6, v2

    move v2, v10

    :goto_4
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    .line 721
    iget v8, p0, Lcom/google/ads/util/b$b;->c:I

    sub-int v7, v8, v7

    iput v7, p0, Lcom/google/ads/util/b$b;->c:I

    .line 722
    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v4

    .line 723
    add-int/lit8 v4, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    aget-byte v0, v0, v2

    aput-byte v0, v1, v7

    .line 724
    iget-boolean v0, p0, Lcom/google/ads/util/b$b;->d:Z

    if-eqz v0, :cond_12

    .line 725
    add-int/lit8 v0, v4, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v1, v4

    .line 726
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v1, v0

    move v0, v2

    .line 728
    :goto_5
    iget-boolean v2, p0, Lcom/google/ads/util/b$b;->e:Z

    if-eqz v2, :cond_5

    .line 729
    iget-boolean v2, p0, Lcom/google/ads/util/b$b;->f:Z

    if-eqz v2, :cond_4

    .line 730
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xd

    aput-byte v4, v1, v0

    move v0, v2

    .line 732
    :cond_4
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xa

    aput-byte v4, v1, v0

    move v0, v2

    :cond_5
    move v1, v0

    move v0, v6

    .line 760
    :goto_6
    sget-boolean v2, Lcom/google/ads/util/b$b;->g:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/google/ads/util/b$b;->c:I

    if-eqz v2, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 720
    :cond_6
    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p1, v2

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_4

    .line 735
    :cond_7
    iget v6, p0, Lcom/google/ads/util/b$b;->c:I

    sub-int v6, v2, v6

    const/4 v7, 0x2

    sub-int v7, v5, v7

    if-ne v6, v7, :cond_c

    .line 736
    const/4 v6, 0x0

    .line 737
    iget v7, p0, Lcom/google/ads/util/b$b;->c:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    iget-object v7, p0, Lcom/google/ads/util/b$b;->j:[B

    const/4 v8, 0x0

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v7, v8

    move v10, v7

    move v7, v6

    move v6, v2

    move v2, v10

    :goto_7
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    iget v8, p0, Lcom/google/ads/util/b$b;->c:I

    if-lez v8, :cond_b

    iget-object v8, p0, Lcom/google/ads/util/b$b;->j:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v8, v7

    move v8, v9

    move v10, v6

    move v6, v7

    move v7, v10

    :goto_8
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v2, v6

    .line 739
    iget v6, p0, Lcom/google/ads/util/b$b;->c:I

    sub-int/2addr v6, v8

    iput v6, p0, Lcom/google/ads/util/b$b;->c:I

    .line 740
    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v8, v2, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v4

    .line 741
    add-int/lit8 v4, v6, 0x1

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v6

    .line 742
    add-int/lit8 v6, v4, 0x1

    and-int/lit8 v2, v2, 0x3f

    aget-byte v0, v0, v2

    aput-byte v0, v1, v4

    .line 743
    iget-boolean v0, p0, Lcom/google/ads/util/b$b;->d:Z

    if-eqz v0, :cond_11

    .line 744
    add-int/lit8 v0, v6, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v1, v6

    .line 746
    :goto_9
    iget-boolean v2, p0, Lcom/google/ads/util/b$b;->e:Z

    if-eqz v2, :cond_9

    .line 747
    iget-boolean v2, p0, Lcom/google/ads/util/b$b;->f:Z

    if-eqz v2, :cond_8

    .line 748
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xd

    aput-byte v4, v1, v0

    move v0, v2

    .line 750
    :cond_8
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xa

    aput-byte v4, v1, v0

    move v0, v2

    :cond_9
    move v1, v0

    move v0, v7

    .line 752
    goto/16 :goto_6

    .line 737
    :cond_a
    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p1, v2

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_7

    :cond_b
    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p1, v6

    move v10, v8

    move v8, v7

    move v7, v10

    goto :goto_8

    .line 753
    :cond_c
    iget-boolean v0, p0, Lcom/google/ads/util/b$b;->e:Z

    if-eqz v0, :cond_d

    if-lez v4, :cond_d

    const/16 v0, 0x13

    if-eq v3, v0, :cond_d

    .line 754
    iget-boolean v0, p0, Lcom/google/ads/util/b$b;->f:Z

    if-eqz v0, :cond_10

    .line 755
    add-int/lit8 v0, v4, 0x1

    const/16 v6, 0xd

    aput-byte v6, v1, v4

    .line 757
    :goto_a
    add-int/lit8 v4, v0, 0x1

    const/16 v6, 0xa

    aput-byte v6, v1, v0

    :cond_d
    move v0, v2

    move v1, v4

    goto/16 :goto_6

    .line 761
    :cond_e
    sget-boolean v2, Lcom/google/ads/util/b$b;->g:Z

    if-nez v2, :cond_f

    if-eq v0, v5, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 767
    :cond_f
    iput v1, p0, Lcom/google/ads/util/b$b;->b:I

    .line 777
    iput v3, p0, Lcom/google/ads/util/b$b;->k:I

    .line 779
    const/4 v0, 0x1

    return v0

    :cond_10
    move v0, v4

    goto :goto_a

    :cond_11
    move v0, v6

    goto :goto_9

    :cond_12
    move v0, v4

    goto/16 :goto_5

    :cond_13
    move v3, v4

    goto/16 :goto_3

    :cond_14
    move v4, v2

    move v2, v6

    goto/16 :goto_2

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

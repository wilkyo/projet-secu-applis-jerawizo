.class public Lcom/xxogli/xadroid/checkers/b;
.super Landroid/view/View;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:I

.field private H:[I

.field private I:[I

.field private J:[I

.field private K:[I

.field private L:I

.field private M:I

.field private N:I

.field private O:Ljava/lang/String;

.field private P:F

.field private Q:F

.field private R:I

.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Lcom/xxogli/xadroid/checkers/a;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:I

.field private switchdame:Z

########## MODIF JEREMY ##########
.field public newGameBlackKingsPlacement:I

.field public newGameBlackPiecesPlacement:I

.field public newGameWhiteKingsPlacement:I

.field public newGameWhitePiecesPlacement:I
##################################

# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 9

    ########## MODIF JEREMY ##########
    .line 35
    const/4 v6, 0x0
    const/16 v7, 0xfff
    iput v7, p0, Lcom/xxogli/xadroid/checkers/b;->newGameWhitePiecesPlacement:I
    .line 36
    iput v6, p0, Lcom/xxogli/xadroid/checkers/b;->newGameWhiteKingsPlacement:I
    .line 37
    const/high16 v7, -0x10
    iput v6, p0, Lcom/xxogli/xadroid/checkers/b;->newGameBlackPiecesPlacement:I
    .line 38
    iput v7, p0, Lcom/xxogli/xadroid/checkers/b;->newGameBlackKingsPlacement:I
    ##################################

    const/high16 v8, -0x3ee0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->d:Landroid/graphics/Paint;

    const/16 v1, 0xfb

    const/16 v2, 0xd7

    const/16 v3, 0xae

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->g:Landroid/graphics/Paint;

    const/16 v1, 0xa5

    invoke-virtual {v0, v5, v5, v1, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->h:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v5, v5, v1, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->j:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v0, 0xc

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->l:F

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->m:I

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->n:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->o:Landroid/graphics/drawable/Drawable;

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->H:[I

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->I:[I

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->J:[I

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->K:[I

    invoke-static {p1}, Lcom/xxogli/xadroid/checkers/h;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/xxogli/xadroid/checkers/a;

    invoke-direct {v0, p0}, Lcom/xxogli/xadroid/checkers/a;-><init>(Lcom/xxogli/xadroid/checkers/b;)V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "restored game"

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/b;->c()V

    iput v8, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    iput v8, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->R:I

    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->E:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/b;->g()V

    :cond_1
    return-void

    :cond_2
    iput v6, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->r:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->t:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->u:I

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    iput-boolean v4, p0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->z:I

    iput-boolean v6, p0, Lcom/xxogli/xadroid/checkers/b;->A:Z

    iput-boolean v4, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    iput-boolean v4, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    iput-boolean v4, p0, Lcom/xxogli/xadroid/checkers/b;->D:Z

    iput-boolean v6, p0, Lcom/xxogli/xadroid/checkers/b;->E:Z

    iput-boolean v6, p0, Lcom/xxogli/xadroid/checkers/b;->F:Z

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->G:I

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    iput v4, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->N:I

    goto :goto_0
.end method

########## MODIF JEREMY ##########
.method static synthetic access$0(Lcom/xxogli/xadroid/checkers/b;ZIIII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct/range {p0 .. p5}, Lcom/xxogli/xadroid/checkers/b;->a(ZIIII)Z

    move-result v0

    return v0
.end method
##################################

################## Modif Raya #######################

.method public final  permuter(Z)Z
.locals 1

    ## monitor-enter p0 ###

    if-eqz p1, :cond_0

    ##:try_start_0 ####
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->switchdame:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->switchdame:Z

    :cond_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->switchdame:Z
    ####:try_end_0 
    #.catchall {:try_start_0 .. :try_end_0} :catchall_0

    #monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    #:catchall_0
    #move-exception v0

    # monitor-exit p0

    # throw v0

.end method

###################################################
.method private final a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v2, p3, v0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final a(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final a(Landroid/graphics/Canvas;IIII)V
    .locals 6

    ushr-int/lit8 v3, p2, 0x2

    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, v3, 0x1

    sub-int v2, v0, v1

    ushr-int/lit8 v1, p3, 0x2

    and-int/lit8 v0, p3, 0x3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v4, v1, 0x1

    sub-int/2addr v0, v4

    iget-boolean v4, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    if-eqz v4, :cond_0

    rsub-int/lit8 v3, v3, 0x7

    rsub-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v1, v1, 0x7

    rsub-int/lit8 v0, v0, 0x7

    move v4, v1

    move v1, v2

    move v2, v3

    :goto_0
    mul-int/2addr v1, p4

    add-int/2addr v1, p5

    int-to-float v1, v1

    mul-int/2addr v2, p4

    add-int/2addr v2, p5

    int-to-float v2, v2

    mul-int/2addr v0, p4

    add-int/2addr v0, p5

    int-to-float v3, v0

    mul-int v0, p4, v4

    add-int/2addr v0, p5

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xxogli/xadroid/checkers/b;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move v4, v1

    move v1, v2

    move v2, v3

    goto :goto_0
.end method

.method private final a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 5
    
    const/4 v5, 0x0

    int-to-float v0, p2

    int-to-float v1, p3

    add-int/lit8 v2, p4, -0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v0, p2

    int-to-float v1, p3

    add-int/lit8 v2, p4, -0x4

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v0, p2

    int-to-float v1, p3

    add-int/lit8 v2, p4, -0x7

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v0, p2

    int-to-float v1, p3

    add-int/lit8 v2, p4, -0x9

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p8, :cond_0

    shr-int/lit8 v0, p4, 0x2

    sub-int v1, p2, v0

    sub-int v0, p3, v0

    int-to-float v2, v1

    int-to-float v3, v0

    add-int/lit8 v4, p4, -0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v2, v1

    int-to-float v3, v0

    add-int/lit8 v4, p4, -0x4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v2, v1

    int-to-float v3, v0

    add-int/lit8 v4, p4, -0x7

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v2, v1

    int-to-float v3, v0

    add-int/lit8 v4, p4, -0x9

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-string v2, "K"

    sub-int/2addr v1, p5

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xxogli/xadroid/checkers/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xxogli/xadroid/checkers/b;->b(I)V

    return-void
.end method

.method private final declared-synchronized a(Landroid/content/SharedPreferences;)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    const-string v0, "format"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    move v0, v6

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "state"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const-string v0, "wp"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->r:I

    const-string v0, "bp"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    const-string v0, "wk"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->t:I

    const-string v0, "bk"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->u:I

    const-string v0, "l1"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    const-string v0, "l2"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    const-string v0, "lm"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    const-string v0, "cap"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    const-string v0, "level"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->z:I

    const-string v0, "show"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->A:Z

    const-string v0, "free"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    const-string v0, "rot"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    const-string v0, "full"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->D:Z

    const-string v0, "start"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->E:Z

    const-string v0, "anim"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->F:Z

    const-string v0, "color"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->G:I

    const-string v0, "lwp"

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->H:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V

    const-string v0, "lwk"

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->I:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V

    const-string v0, "lbp"

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->J:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V

    const-string v0, "lbk"

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->K:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;[I)V

    const-string v0, "lp"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    const-string v0, "lc"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->z:I

    invoke-virtual {p0, v0}, Lcom/xxogli/xadroid/checkers/b;->setLevel(I)V

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v0, v9, :cond_3

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    move v5, v6

    :goto_1
    iget-object v8, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->r:I

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->t:I

    iget v3, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    iget v4, p0, Lcom/xxogli/xadroid/checkers/b;->u:I

    invoke-virtual/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIIZ)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v0, v1, v5, v2}, Lcom/xxogli/xadroid/checkers/a;->a(IZZ)I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->N:I

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v0, v9, :cond_1

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v0, v5, v1}, Lcom/xxogli/xadroid/checkers/a;->a(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move v0, v7

    goto/16 :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    :cond_4
    move v0, v6

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/xxogli/xadroid/checkers/b;ZIIII)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/xxogli/xadroid/checkers/b;->a(ZIIII)Z

    move-result v0

    return v0
.end method

.method private final declared-synchronized a(ZIIII)Z
    .locals 9

    const/4 v3, 0x3

    const/4 v1, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->R:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->R:I

    if-ne v2, v5, :cond_3

    const/4 p2, -0x2

    :goto_0
    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v2, v5, :cond_4

    move v2, v4

    :goto_1
    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->z:I

    invoke-virtual {p0, v2}, Lcom/xxogli/xadroid/checkers/b;->setLevel(I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->R:I

    move p1, v0

    :cond_0
    if-eqz p1, :cond_a

    invoke-direct {p0, p2}, Lcom/xxogli/xadroid/checkers/b;->c(I)V

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    if-nez p4, :cond_5

    const-string v0, "random play"

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_2
    move v0, v4

    :cond_2
    :goto_3
    monitor-exit p0

    return v0

    :cond_3
    move p2, v1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    if-ne p4, v1, :cond_6

    :try_start_1
    const-string v0, "only reply"

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    const/4 v0, -0x2

    if-ne p4, v0, :cond_7

    :try_start_2
    const-string v0, "opening"

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/16 v0, -0x7d00

    if-gt p3, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loss in #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v1, p3, 0x7ef4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const/16 v0, 0x7d00

    if-lt p3, v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win in #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int v1, p3, 0x7ef4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const/4 v2, -0x3

    if-ne p2, v2, :cond_b

    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/b;->f()V

    move v0, v4

    goto :goto_3

    :cond_b
    if-ne p2, v1, :cond_e

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v0, v5, :cond_c

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    :cond_c
    const/4 v0, 0x1

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->R:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xxogli/xadroid/checkers/a;->h:I

    const-string v0, "stopping...."

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    move v0, v4

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->R:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    invoke-virtual {v0}, Lcom/xxogli/xadroid/checkers/a;->a()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->r:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->t:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->u:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->N:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    move v0, v4

    goto/16 :goto_3

    :cond_e
    const/4 v2, -0x2

    if-ne p2, v2, :cond_15

    const/4 v1, 0x0

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v1, v5, :cond_f

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    :cond_f
    const/4 v0, 0x2

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->R:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xxogli/xadroid/checkers/a;->h:I

    const-string v0, "stopping...."

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    move v0, v4

    goto/16 :goto_3

    :cond_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->R:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v1, v4, :cond_12

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_12

    move v1, v0

    :goto_4
    invoke-direct {p0, v1}, Lcom/xxogli/xadroid/checkers/b;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v1, :cond_13

    const/4 v2, 0x3

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    :goto_5
    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v2, v2, Lcom/xxogli/xadroid/checkers/a;->d:I

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->r:I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v2, v2, Lcom/xxogli/xadroid/checkers/a;->f:I

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v2, v2, Lcom/xxogli/xadroid/checkers/a;->e:I

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->t:I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v2, v2, Lcom/xxogli/xadroid/checkers/a;->g:I

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->u:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v2, v3, v1, v5}, Lcom/xxogli/xadroid/checkers/a;->a(IZZ)I

    move-result v1

    if-ne v1, v4, :cond_11

    move v0, v4

    :cond_11
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->N:I

    const-string v0, "undid half-move"

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    move v0, v4

    goto/16 :goto_3

    :cond_12
    move v1, v4

    goto :goto_4

    :cond_13
    const/4 v2, 0x1

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    goto :goto_5

    :cond_14
    const-string v0, "no more undo"

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    move v0, v4

    goto/16 :goto_3

    :cond_15
    const/4 v2, -0x4

    if-ne p2, v2, :cond_19
    
    #if moveIndex=-4
    ######################
    # Raya

	iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->switchdame:Z
    
    const/4 v8, 0x1
    
     
    if-ne v1, v8, :reverse1

    iget-object v8, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;
    
    iget v1, v8, Lcom/xxogli/xadroid/checkers/a;->f:I
    
    iget v2, v8, Lcom/xxogli/xadroid/checkers/a;->g:I
    
    iput v1, v8, Lcom/xxogli/xadroid/checkers/a;->g:I
    
    iput v2, v8, Lcom/xxogli/xadroid/checkers/a;->f:I
    
    iget v1, v8, Lcom/xxogli/xadroid/checkers/a;->d:I
    
    iget v2, v8, Lcom/xxogli/xadroid/checkers/a;->e:I
    
    iput v1, v8, Lcom/xxogli/xadroid/checkers/a;->e:I
    
    iput v2, v8, Lcom/xxogli/xadroid/checkers/a;->d:I
    
    :reverse1
    
    
        
  #########################
    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v1, v4, :cond_17

    const/4 v0, 0x2

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v0, v1, v2}, Lcom/xxogli/xadroid/checkers/a;->a(ZZ)V

	######### Get this Context #########
	
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    if-eqz v0, :cond_16

    const-string v0, "computer now plays black"

    :goto_6
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    goto/16 :goto_3

    :cond_16
    const-string v0, "computer now plays black\ngoto options to rotate board"

    goto :goto_6

    :cond_17
    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v1, v3, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v0, v1, v2}, Lcom/xxogli/xadroid/checkers/a;->a(ZZ)V

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    if-eqz v0, :cond_18

    const-string v0, "computer now plays white\ngoto options to rotate board"

    :goto_7
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    goto/16 :goto_3

    :cond_18
    const-string v0, "computer now plays white"

    goto :goto_7

    :cond_19
    if-ne p2, v4, :cond_2

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v2, v4, :cond_1a

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v2, v3, :cond_2

    :cond_1a
    const/4 v2, 0x0

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v5, v2, Lcom/xxogli/xadroid/checkers/a;->c:I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-object v6, v2, Lcom/xxogli/xadroid/checkers/a;->b:[I

    move v2, v0

    move v3, v0

    :goto_8
    if-lt v2, v5, :cond_1b

    if-ne v3, v4, :cond_1d

    invoke-direct {p0, v1}, Lcom/xxogli/xadroid/checkers/b;->c(I)V

    move v0, v4

    goto/16 :goto_3

    :cond_1b
    iget v7, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    aget v8, v6, v2

    and-int/2addr v7, v8

    iget v8, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    if-ne v7, v8, :cond_1c

    aget v1, v6, v2

    if-eq v1, v0, :cond_1f

    add-int/lit8 v1, v3, 0x1

    :goto_9
    aget v0, v6, v2

    iget v3, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    aget v7, v6, v2

    or-int/2addr v3, v7

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    move v3, v1

    move v1, v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->v:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1e
    move v0, v4

    goto/16 :goto_3

    :cond_1f
    move v1, v3

    goto :goto_9
.end method

.method private final declared-synchronized b(FF)I
    .locals 10

    const/16 v9, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    :goto_0
    ushr-int/lit8 v7, v2, 0x3

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    move v6, v1

    move v3, v0

    :goto_1
    if-lt v6, v9, :cond_3

    :cond_1
    move v0, v1

    :goto_2
    monitor-exit p0

    return v0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    rsub-int/lit8 v2, v6, 0x1

    and-int/lit8 v2, v2, 0x1

    move v4, v2

    move v5, v3

    :goto_3
    if-lt v4, v9, :cond_4

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v3, v5

    goto :goto_1

    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    if-eqz v2, :cond_5

    rsub-int/lit8 v2, v4, 0x7

    mul-int v3, v7, v2

    rsub-int/lit8 v2, v6, 0x7

    mul-int/2addr v2, v7

    :goto_4
    int-to-float v8, v3

    cmpg-float v8, v8, p1

    if-gtz v8, :cond_6

    add-int/2addr v3, v7

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    int-to-float v3, v2

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_6

    add-int/2addr v2, v7

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    or-int/2addr v1, v5

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->v:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    mul-int v3, v7, v4

    mul-int v2, v7, v6

    goto :goto_4

    :cond_6
    shl-int/lit8 v3, v5, 0x1

    add-int/lit8 v2, v4, 0x2

    move v4, v2

    move v5, v3

    goto :goto_3
.end method

.method private final declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->G:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/xxogli/xadroid/checkers/b;->G:I

    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/b;->c()V

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final b(Landroid/graphics/Canvas;IIII)V
    .locals 10

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p3

    if-nez v0, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/graphics/Canvas;IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    ushr-int/lit8 v0, v3, 0x2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    add-int/lit8 v2, v3, -0x5

    add-int/lit8 v1, v3, -0x4

    add-int/lit8 v0, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    move v6, v0

    move v7, v1

    :goto_1
    const/4 v0, 0x1

    shl-int/2addr v0, v2

    const/4 v1, 0x1

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v1, v7

    const/4 v4, 0x1

    shl-int/2addr v4, v6

    or-int v9, v1, v4

    and-int v1, v0, p2

    if-ne v1, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/graphics/Canvas;IIII)V

    :cond_1
    and-int v0, v9, p2

    if-ne v0, v9, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v6

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/graphics/Canvas;IIII)V

    :cond_2
    add-int/lit8 v0, v8, -0x1

    and-int/2addr v0, v8

    move v8, v0

    :goto_2
    if-nez v8, :cond_0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v3, -0x4

    add-int/lit8 v1, v3, -0x3

    add-int/lit8 v0, v3, 0x4

    add-int/lit8 v3, v3, 0x5

    move v6, v0

    move v7, v1

    goto :goto_1

    :cond_4
    move v8, v0

    goto :goto_2
.end method

.method private final c()V
    .locals 5

    const/16 v3, 0x8b

    const/16 v1, 0xcc

    const/16 v4, 0xff

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->G:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    const/16 v1, 0x66

    const/16 v2, 0xcd

    const/16 v3, 0xaa

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    const/16 v1, 0x45

    const/16 v2, 0x74

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    const/16 v2, 0x90

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    const/16 v1, 0x8e

    const/16 v2, 0x6b

    const/16 v3, 0x23

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    const/16 v1, 0x6c

    const/16 v2, 0x7b

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final c(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/b;->d()V

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v0, v6, :cond_1

    move v0, v1

    :goto_0
    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-object v3, v3, Lcom/xxogli/xadroid/checkers/a;->b:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    iget-boolean v3, p0, Lcom/xxogli/xadroid/checkers/b;->F:Z

    if-eqz v3, :cond_0

    const v3, 0x3f666666

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->l:F

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-object v3, v3, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v3, v3, p1

    iget v4, p0, Lcom/xxogli/xadroid/checkers/b;->r:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/b;->t:I

    or-int/2addr v4, v5

    and-int/2addr v3, v4

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->m:I

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->n:I

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    invoke-virtual {v3, p1}, Lcom/xxogli/xadroid/checkers/a;->a(I)V

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v3, v3, Lcom/xxogli/xadroid/checkers/a;->d:I

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->r:I

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v3, v3, Lcom/xxogli/xadroid/checkers/a;->f:I

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v3, v3, Lcom/xxogli/xadroid/checkers/a;->e:I

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->t:I

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v3, v3, Lcom/xxogli/xadroid/checkers/a;->g:I

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->u:I

    iput-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-boolean v4, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v3, v1, v0, v4}, Lcom/xxogli/xadroid/checkers/a;->a(IZZ)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->m:I

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-object v3, v3, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v3, v3, p1

    iget v4, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/b;->u:I

    or-int/2addr v4, v5

    and-int/2addr v3, v4

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->n:I

    goto :goto_1

    :pswitch_0
    if-eqz v0, :cond_3

    const/4 v0, 0x6

    :goto_3
    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->N:I

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    goto :goto_3

    :pswitch_1
    iput-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    :pswitch_2
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v1, v1, Lcom/xxogli/xadroid/checkers/a;->c:I

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->N:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->z:I

    if-nez v1, :cond_4

    iput v7, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const-string v0, "free play"

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v1, v0, v2}, Lcom/xxogli/xadroid/checkers/a;->a(ZZ)V

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v1, v7, :cond_7

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->z:I

    if-nez v1, :cond_6

    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const-string v0, "free play"

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iput v6, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v1, v0, v2}, Lcom/xxogli/xadroid/checkers/a;->a(ZZ)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v0, v6, :cond_8

    iput v7, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    goto :goto_2

    :cond_8
    iput v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final d()V
    .locals 3

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->H:[I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v2, v2, Lcom/xxogli/xadroid/checkers/a;->d:I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->I:[I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v2, v2, Lcom/xxogli/xadroid/checkers/a;->e:I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->J:[I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v2, v2, Lcom/xxogli/xadroid/checkers/a;->f:I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->K:[I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v2, v2, Lcom/xxogli/xadroid/checkers/a;->g:I

    aput v2, v1, v0

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    :goto_0
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    goto :goto_0
.end method

.method private final e()Z
    .locals 2

	########## HACKED ##########
	# Vu qu'on ne commence qu'avec des dames, il faut changer cette méthode
	iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->u:I
    #iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    const/high16 v1, -0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

########## MODIF JEREMY ##########
.method private editText(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 5
    .parameter "s"

    .prologue
    .line 41
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, et:Landroid/widget/EditText;
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 45
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEms(I)V

    .line 46
    return-object v0
.end method

.method private varargs linearLayout([Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 4
    .parameter "views"

    .prologue
    const/4 v3, -0x1

    .line 67
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, ll:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 73
    return-object v0

    .line 70
    :cond_0
    aget-object v1, p1, v2

    .line 71
    .local v1, v:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private varargs tableLayout([Landroid/widget/TableRow;)Landroid/widget/TableLayout;
    .locals 4
    .parameter "rows"

    .prologue
    const/4 v3, -0x1

    .line 58
    new-instance v0, Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, tl:Landroid/widget/TableLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 63
    return-object v0

    .line 60
    :cond_0
    aget-object v1, p1, v2

    .line 61
    .local v1, tr:Landroid/widget/TableRow;
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private tableRow(Ljava/lang/String;Landroid/widget/EditText;)Landroid/widget/TableRow;
    .locals 3
    .parameter "s"
    .parameter "et"

    .prologue
    const/4 v2, -0x2

    .line 50
    new-instance v0, Landroid/widget/TableRow;

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, tr:Landroid/widget/TableRow;
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/xxogli/xadroid/checkers/b;->textView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {v0, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 54
    return-object v0
.end method

.method private textView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, -0x2

    .line 34
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, tv:Landroid/widget/TextView;
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object v0
.end method
##################################

.method private final f()V
    ########## MODIF JEREMY ##########
   .locals 7

    .prologue
    const/4 v6, 0x0

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const-string v3, "000000000000"

    invoke-direct {p0, v3}, Lcom/xxogli/xadroid/checkers/b;->editText(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v1

    .line 89
    .local v1, et1:Landroid/widget/EditText;
    const-string v3, "000000000000"

    invoke-direct {p0, v3}, Lcom/xxogli/xadroid/checkers/b;->editText(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    .line 90
    .local v2, et2:Landroid/widget/EditText;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TableRow;

    const-string v4, "White:"

    invoke-direct {p0, v4, v1}, Lcom/xxogli/xadroid/checkers/b;->tableRow(Ljava/lang/String;Landroid/widget/EditText;)Landroid/widget/TableRow;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "Black:"

    invoke-direct {p0, v5, v2}, Lcom/xxogli/xadroid/checkers/b;->tableRow(Ljava/lang/String;Landroid/widget/EditText;)Landroid/widget/TableRow;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/xxogli/xadroid/checkers/b;->tableLayout([Landroid/widget/TableRow;)Landroid/widget/TableLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 91
    const-string v4, "Start a new game?"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 93
    const-string v4, "Yes"

    new-instance v5, Lcom/xxogli/xadroid/checkers/b$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/xxogli/xadroid/checkers/b$1;-><init>(Lcom/xxogli/xadroid/checkers/b;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 105
    const-string v4, "No"

    new-instance v5, Lcom/xxogli/xadroid/checkers/b$2;

    invoke-direct {v5, p0}, Lcom/xxogli/xadroid/checkers/b$2;-><init>(Lcom/xxogli/xadroid/checkers/b;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    return-void
    ##################################
.end method

.method private final g()V
    .locals 3

	########## HACKED ##########
	# Un return, ici ? C'est mieux sans.
    #return-void

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Checkers for Android was written by Aart J.C. Bik.\n\nUse the touch screen or trackball to make a move. Press the MENU button for more options, such as making captures optional instead of mandatory.\n\nThe application complies with the official American checkers rules, where black moves first, captures are mandatory, men only move and jump forward, and kings move and jump forward and backward (but not over a distance). Please note that many variants of checkers exist, and this game may not use the rules you are most familiar with.\n"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "KEEP SHOWING"

    new-instance v2, Lcom/xxogli/xadroid/checkers/e;

    invoke-direct {v2, p0}, Lcom/xxogli/xadroid/checkers/e;-><init>(Lcom/xxogli/xadroid/checkers/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "STOP SHOWING"

    new-instance v2, Lcom/xxogli/xadroid/checkers/f;

    invoke-direct {v2, p0}, Lcom/xxogli/xadroid/checkers/f;-><init>(Lcom/xxogli/xadroid/checkers/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final g(Z)Z
    .locals 6

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    :goto_0
    iget v4, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->H:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->I:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->J:[I

    aget v3, v3, v4

    iget-object v5, p0, Lcom/xxogli/xadroid/checkers/b;->K:[I

    aget v4, v5, v4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIIZ)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Wood"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Light Aquamarine"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Dark Aquamarine"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Blue"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Brown"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Grey"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Light Grey"

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Board Color"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/xxogli/xadroid/checkers/g;

    invoke-direct {v2, p0}, Lcom/xxogli/xadroid/checkers/g;-><init>(Lcom/xxogli/xadroid/checkers/b;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# a(TouchedX,TouchedY)
.method public final a(FF)V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2
    
    #### TOAST ######
    const/4 v7, 0x1
	
	const/4 v9, 0x0
	
	const-string v8, "Moveeee!"
	
	iget-object v7, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;
	
	invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
	
	###### TOAST ######

    move v0, v1

    :goto_0
    ushr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    iget v4, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    int-to-float v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget v4, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_3

    :goto_1
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    int-to-float v4, v0

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    iget v3, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v3

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    :cond_0
    :goto_2
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    :cond_1
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    goto :goto_1

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    int-to-float v3, v1

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :try_start_2
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


.method public final a(IIII)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->a(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v0, "format"

    const/16 v1, 0x22

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "state"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "wp"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->r:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "bp"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->s:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "wk"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->t:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "bk"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->u:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "l1"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "l2"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lm"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cap"

    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "level"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->z:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "show"

    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->A:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "free"

    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "rot"

    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "full"

    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->D:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "start"

    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->E:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "anim"

    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->F:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "color"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->G:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lwp"

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->H:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[I)V

    const-string v0, "lwk"

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->I:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[I)V

    const-string v0, "lbp"

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->J:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[I)V

    const-string v0, "lbk"

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->K:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[I)V

    const-string v0, "lp"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->L:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lc"

    iget v1, p0, Lcom/xxogli/xadroid/checkers/b;->M:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Z
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->a(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final declared-synchronized a(Z)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->A:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->A:Z

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    :cond_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->P:F

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    invoke-direct {p0, v0, v2}, Lcom/xxogli/xadroid/checkers/b;->b(FF)I

    move-result v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move-object v0, p0

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->a(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Z)Z
    .locals 6

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v2, v0, :cond_1

    :cond_0
    iget v2, p0, Lcom/xxogli/xadroid/checkers/b;->q:I

    if-ne v2, v3, :cond_3

    move v2, v0

    :goto_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->v:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->w:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/xxogli/xadroid/checkers/b;->x:I

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z

    invoke-virtual {v3, v4, v2, v5}, Lcom/xxogli/xadroid/checkers/a;->a(IZZ)I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_2
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->N:I

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    :cond_1
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Z)Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v1, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b;->a:Landroid/content/Context;

    const-string v1, "rotated board"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    :cond_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Z)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->D:Z

    :cond_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 29

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/xxogli/xadroid/checkers/b;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/xxogli/xadroid/checkers/b;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_9

    move v2, v3

    :goto_0
    ushr-int/lit8 v23, v2, 0x3

    shl-int/lit8 v24, v23, 0x3

    ushr-int/lit8 v25, v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/b;->k:I

    move/from16 v21, v0

    div-int/lit8 v26, v21, 0x3

    if-ge v3, v4, :cond_a

    const/4 v4, 0x2

    mul-int/lit8 v2, v21, 0xb

    sub-int v3, v24, v2

    add-int v2, v24, v21

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v2

    move/from16 v22, v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->G:I

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/b;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/b;->o:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v24

    move/from16 v1, v24

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/b;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    const/4 v2, 0x0

    move v9, v2

    :goto_3
    const/16 v2, 0x8

    if-lt v9, v2, :cond_c

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_4
    const/16 v2, 0x8

    move/from16 v0, v17

    if-lt v0, v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/xxogli/xadroid/checkers/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "Checkers for Android"

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v2, ""

    move/from16 v0, v22

    int-to-float v3, v0

    add-int v4, v20, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-boolean v2, Lcom/xxogli/xadroid/checkers/h;->r:Z

    if-nez v2, :cond_0

    const-string v2, "no endgame TBs"

    move/from16 v0, v22

    int-to-float v3, v0

    mul-int/lit8 v4, v21, 0x2

    add-int v4, v4, v20

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xxogli/xadroid/checkers/b;->y:Z

    if-eqz v2, :cond_1

    const-string v2, "MUST CAPTURE"

    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->q:I

    packed-switch v2, :pswitch_data_0

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xxogli/xadroid/checkers/b;->A:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->q:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget v9, v2, Lcom/xxogli/xadroid/checkers/a;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-object v10, v2, Lcom/xxogli/xadroid/checkers/a;->b:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iget-object v11, v2, Lcom/xxogli/xadroid/checkers/a;->a:[I

    const/4 v2, 0x0

    move v8, v2

    :goto_7
    if-lt v8, v9, :cond_1b

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/b;->O:Ljava/lang/String;

    move/from16 v0, v19

    int-to-float v3, v0

    mul-int/lit8 v4, v21, 0x2

    add-int v4, v4, v18

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/b;->P:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->P:F

    move/from16 v0, v24

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    move/from16 v0, v24

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->P:F

    float-to-int v3, v3

    div-int v3, v3, v23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    float-to-int v4, v4

    div-int v4, v4, v23

    if-ltz v3, :cond_5

    const/16 v5, 0x8

    if-ge v3, v5, :cond_5

    if-ltz v4, :cond_5

    const/16 v5, 0x8

    if-ge v4, v5, :cond_5

    mul-int v2, v23, v3

    mul-int v6, v23, v4

    int-to-float v3, v2

    int-to-float v4, v6

    add-int v2, v2, v23

    int-to-float v5, v2

    add-int v2, v6, v23

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/b;->j:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->P:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    const/high16 v4, 0x40a0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->P:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->Q:F

    const/high16 v4, 0x4040

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xxogli/xadroid/checkers/b;->m:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xxogli/xadroid/checkers/b;->n:I

    :cond_7
    const-wide/16 v2, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/xxogli/xadroid/checkers/b;->postInvalidateDelayed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    move v2, v4

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v3, v24, 0x2

    mul-int/lit8 v2, v21, 0x2

    sub-int v2, v24, v2

    sub-int v2, v2, v26

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v21

    move/from16 v22, v3

    goto/16 :goto_1

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v24

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/b;->e:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v7, v8

    goto/16 :goto_2

    :cond_c
    mul-int v10, v23, v9

    and-int/lit8 v2, v9, 0x1

    move v8, v2

    :goto_8
    const/16 v2, 0x8

    if-lt v8, v2, :cond_d

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_3

    :cond_d
    mul-int v2, v23, v8

    int-to-float v3, v10

    int-to-float v4, v2

    add-int v5, v10, v23

    int-to-float v5, v5

    add-int v2, v2, v23

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v8, 0x2

    move v8, v2

    goto :goto_8

    :cond_e
    rsub-int/lit8 v2, v17, 0x1

    and-int/lit8 v2, v2, 0x1

    move v15, v2

    move/from16 v16, v3

    :goto_9
    const/16 v2, 0x8

    if-lt v15, v2, :cond_f

    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    move/from16 v3, v16

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xxogli/xadroid/checkers/b;->C:Z

    if-eqz v2, :cond_11

    rsub-int/lit8 v2, v15, 0x7

    mul-int v3, v23, v2

    rsub-int/lit8 v2, v17, 0x7

    mul-int v2, v2, v23

    move v5, v3

    :goto_a
    add-int v27, v25, v5

    add-int v28, v25, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->v:I

    and-int v3, v3, v16

    if-eqz v3, :cond_12

    add-int/lit8 v3, v5, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    add-int v5, v5, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    add-int v2, v2, v23

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/b;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->r:I

    and-int v2, v2, v16

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v25

    move/from16 v7, v26

    invoke-direct/range {v2 .. v10}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    add-int/lit8 v2, v14, 0x1

    move v3, v12

    move v4, v13

    move v5, v2

    move v2, v11

    :goto_c
    shl-int/lit8 v7, v16, 0x1

    add-int/lit8 v6, v15, 0x2

    move v15, v6

    move/from16 v16, v7

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    goto :goto_9

    :cond_11
    mul-int v3, v23, v15

    mul-int v2, v23, v17

    move v5, v3

    goto :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->w:I

    and-int v3, v3, v16

    if-eqz v3, :cond_13

    add-int/lit8 v3, v5, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    add-int v5, v5, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    add-int v2, v2, v23

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/b;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_13
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xxogli/xadroid/checkers/b;->A:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->x:I

    and-int v3, v3, v16

    if-eqz v3, :cond_10

    add-int/lit8 v3, v5, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    add-int v5, v5, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    add-int v2, v2, v23

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/b;->i:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->s:I

    and-int v2, v2, v16

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v25

    move/from16 v7, v26

    invoke-direct/range {v2 .. v10}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    add-int/lit8 v2, v12, 0x1

    move v3, v2

    move v4, v13

    move v5, v14

    move v2, v11

    goto/16 :goto_c

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->t:I

    and-int v2, v2, v16

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v25

    move/from16 v7, v26

    invoke-direct/range {v2 .. v10}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    add-int/lit8 v2, v13, 0x1

    move v3, v12

    move v4, v2

    move v5, v14

    move v2, v11

    goto/16 :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->u:I

    and-int v2, v2, v16

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v25

    move/from16 v7, v26

    invoke-direct/range {v2 .. v10}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    add-int/lit8 v2, v11, 0x1

    move v3, v12

    move v4, v13

    move v5, v14

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->n:I

    and-int v2, v2, v16

    if-eqz v2, :cond_18

    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v28

    int-to-float v3, v0

    add-int/lit8 v4, v25, -0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v28

    int-to-float v3, v0

    add-int/lit8 v4, v25, -0x4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    goto/16 :goto_c

    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/b;->m:I

    and-int v2, v2, v16

    if-eqz v2, :cond_19

    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v28

    int-to-float v3, v0

    add-int/lit8 v4, v25, -0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v28

    int-to-float v3, v0

    add-int/lit8 v4, v25, -0x4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/b;->l:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_19
    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    goto/16 :goto_c

    :cond_1a
    const-string v2, "White"

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v2, "Black"

    move/from16 v0, v22

    int-to-float v3, v0

    add-int v4, v20, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v2, "Moves"

    move/from16 v0, v22

    int-to-float v3, v0

    mul-int/lit8 v4, v21, 0x2

    add-int v4, v4, v20

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v21, 0x3

    add-int v3, v3, v22

    int-to-float v3, v3

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v21, 0x3

    add-int v3, v3, v22

    int-to-float v3, v3

    add-int v4, v20, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/b;->N:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v21, 0x3

    add-int v3, v3, v22

    int-to-float v3, v3

    mul-int/lit8 v4, v21, 0x2

    add-int v4, v4, v20

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :pswitch_0
    const-string v2, "BLACK\'S MOVE?"

    move/from16 v0, v19

    int-to-float v3, v0

    add-int v4, v18, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_1
    const-string v2, "WHITE\'S MOVE?"

    move/from16 v0, v19

    int-to-float v3, v0

    add-int v4, v18, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_2
    const-string v2, "THINKING...."

    move/from16 v0, v19

    int-to-float v3, v0

    add-int v4, v18, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_3
    const-string v2, "WHITE WINS"

    move/from16 v0, v19

    int-to-float v3, v0

    add-int v4, v18, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_4
    const-string v2, "BLACK WINS"

    move/from16 v0, v19

    int-to-float v3, v0

    add-int v4, v18, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_1b
    aget v4, v10, v8

    aget v5, v11, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, v23

    move/from16 v7, v25

    invoke-direct/range {v2 .. v7}, Lcom/xxogli/xadroid/checkers/b;->b(Landroid/graphics/Canvas;IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final declared-synchronized e(Z)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->E:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->E:Z

    :cond_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Z)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->F:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->F:Z

    :cond_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/b;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLevel()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xxogli/xadroid/checkers/b;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 3

    monitor-enter p0

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    :try_start_0
    div-int/lit8 v1, v0, 0x18

    int-to-float v1, v1

    if-le p1, p2, :cond_1

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xxogli/xadroid/checkers/b;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    move v0, p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0
    
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/xxogli/xadroid/checkers/b;->b(FF)I

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p0

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->a(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized setLevel(I)V
    .locals 2

    const/16 v0, 0x3e8

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x3

    :goto_0
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/b;->p:Lcom/xxogli/xadroid/checkers/a;

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->h:I

    iput p1, p0, Lcom/xxogli/xadroid/checkers/b;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1388

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x2710

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x3a98

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x7530

    goto :goto_0

    :pswitch_8
    const v0, 0xea60

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

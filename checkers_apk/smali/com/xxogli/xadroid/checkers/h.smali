.class public Lcom/xxogli/xadroid/checkers/h;
.super Ljava/lang/Object;


# static fields
.field public static a:[B

.field public static b:[B

.field public static c:[B

.field public static d:[B

.field public static e:[B

.field public static f:[B

.field public static g:[B

.field public static h:[B

.field public static i:[B

.field public static j:[B

.field public static k:[B

.field public static l:[B

.field public static m:[B

.field public static n:[B

.field public static o:[B

.field public static p:[B

.field public static q:[B

.field public static r:Z

.field private static s:Ljava/io/BufferedInputStream;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x200

    :try_start_0
    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->a:[B

    const/16 v0, 0x380

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->b:[B

    const/16 v0, 0x380

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->c:[B

    const/16 v0, 0x310

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->d:[B

    const/16 v0, 0x1f00

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->e:[B

    const/16 v0, 0x1f00

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->f:[B

    const/16 v0, 0x3640

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->g:[B

    const/16 v0, 0x3640

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->h:[B

    const/16 v0, 0x7000

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->i:[B

    const/16 v0, 0x7000

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->j:[B

    const/16 v0, 0x6200

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->k:[B

    const/16 v0, 0x6200

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->l:[B

    const/16 v0, 0x2f40

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->m:[B

    const/16 v0, 0x2f40

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->n:[B

    const/16 v0, 0x2958

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->o:[B

    const/16 v0, 0x2958

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->p:[B

    const v0, 0x3c100

    new-array v0, v0, [B

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->q:[B

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sput-object v1, Lcom/xxogli/xadroid/checkers/h;->s:Ljava/io/BufferedInputStream;

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->a:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->b:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->c:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->d:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->e:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->f:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->g:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->h:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->i:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->j:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->k:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->l:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->m:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->n:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->o:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->p:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->q:[B

    invoke-static {v0}, Lcom/xxogli/xadroid/checkers/h;->a([B)Z

    sget-object v0, Lcom/xxogli/xadroid/checkers/h;->s:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/xxogli/xadroid/checkers/h;->s:Ljava/io/BufferedInputStream;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xxogli/xadroid/checkers/h;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BIK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot read tb: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->a:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->b:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->c:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->d:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->e:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->f:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->g:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->h:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->i:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->j:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->k:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->l:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->m:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->n:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->o:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->p:[B

    sput-object v4, Lcom/xxogli/xadroid/checkers/h;->q:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xxogli/xadroid/checkers/h;->r:Z

    goto :goto_0
.end method

.method private static a([B)Z
    .locals 4

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->s:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "tb eof"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

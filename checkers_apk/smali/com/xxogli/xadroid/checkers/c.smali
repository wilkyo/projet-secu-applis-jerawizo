.class Lcom/xxogli/xadroid/checkers/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xxogli/xadroid/checkers/b;


# direct methods
.method constructor <init>(Lcom/xxogli/xadroid/checkers/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xxogli/xadroid/checkers/c;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/c;->a:Lcom/xxogli/xadroid/checkers/b;

    const/4 v2, -0x1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->a(Lcom/xxogli/xadroid/checkers/b;ZIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/c;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    :cond_0
    return-void
.end method

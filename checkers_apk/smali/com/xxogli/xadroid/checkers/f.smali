.class Lcom/xxogli/xadroid/checkers/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xxogli/xadroid/checkers/b;


# direct methods
.method constructor <init>(Lcom/xxogli/xadroid/checkers/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xxogli/xadroid/checkers/f;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/f;->a:Lcom/xxogli/xadroid/checkers/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xxogli/xadroid/checkers/b;->e(Z)Z

    return-void
.end method

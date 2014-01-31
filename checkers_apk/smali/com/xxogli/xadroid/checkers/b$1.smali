########## MODIF JEREMY ##########
.class Lcom/xxogli/xadroid/checkers/b$1;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xxogli/xadroid/checkers/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxogli/xadroid/checkers/b;

.field private final synthetic val$et1:Landroid/widget/EditText;

.field private final synthetic val$et2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/xxogli/xadroid/checkers/b;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    iput-object p2, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et2:Landroid/widget/EditText;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x2

    const/high16 v3, -0x10

    const/4 v1, 0x0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 96
    .local v6, i:I
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    xor-int/lit8 v2, v6, -0x1

    and-int/lit16 v2, v2, 0xfff

    iput v2, v0, Lcom/xxogli/xadroid/checkers/b;->newGameWhitePiecesPlacement:I

    .line 97
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    and-int/lit16 v2, v6, 0xfff

    iput v2, v0, Lcom/xxogli/xadroid/checkers/b;->newGameWhiteKingsPlacement:I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    shl-int/lit8 v6, v0, 0x14

    .line 99
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    xor-int/lit8 v2, v6, -0x1

    and-int/2addr v2, v3

    iput v2, v0, Lcom/xxogli/xadroid/checkers/b;->newGameBlackPiecesPlacement:I

    .line 100
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    and-int v2, v6, v3

    iput v2, v0, Lcom/xxogli/xadroid/checkers/b;->newGameBlackKingsPlacement:I

    .line 101
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    const/4 v2, -0x1

    move v3, v1

    move v4, v1

    move v5, v1

    #calls: Lcom/xxogli/xadroid/checkers/b;->a(ZIIII)Z
    invoke-static/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->access$0(Lcom/xxogli/xadroid/checkers/b;ZIIII)Z

    .line 102
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    .line 103
    return-void
.end method
##################################

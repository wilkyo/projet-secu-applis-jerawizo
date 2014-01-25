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

.field private final synthetic val$et3:Landroid/widget/EditText;

.field private final synthetic val$et4:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/xxogli/xadroid/checkers/b;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    iput-object p2, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et4:Landroid/widget/EditText;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/xxogli/xadroid/checkers/b;->newGameWhitePiecesPlacement:I
    invoke-static {v0, v2}, Lcom/xxogli/xadroid/checkers/b;->access$0(Lcom/xxogli/xadroid/checkers/b;I)V

    .line 98
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/xxogli/xadroid/checkers/b;->newGameWhiteKingsPlacement:I
    invoke-static {v0, v2}, Lcom/xxogli/xadroid/checkers/b;->access$1(Lcom/xxogli/xadroid/checkers/b;I)V

    .line 99
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et3:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x14

    #setter for: Lcom/xxogli/xadroid/checkers/b;->newGameBlackPiecesPlacement:I
    invoke-static {v0, v2}, Lcom/xxogli/xadroid/checkers/b;->access$2(Lcom/xxogli/xadroid/checkers/b;I)V

    .line 100
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xxogli/xadroid/checkers/b$1;->val$et4:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x14

    #setter for: Lcom/xxogli/xadroid/checkers/b;->newGameBlackKingsPlacement:I
    invoke-static {v0, v2}, Lcom/xxogli/xadroid/checkers/b;->access$3(Lcom/xxogli/xadroid/checkers/b;I)V

    .line 101
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    const/4 v2, -0x1

    move v3, v1

    move v4, v1

    move v5, v1

    #calls: Lcom/xxogli/xadroid/checkers/b;->a(ZIIII)Z
    invoke-static/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/b;->access$4(Lcom/xxogli/xadroid/checkers/b;ZIIII)Z

    .line 102
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/b$1;->this$0:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v0}, Lcom/xxogli/xadroid/checkers/b;->postInvalidate()V

    .line 103
    return-void
.end method
##################################

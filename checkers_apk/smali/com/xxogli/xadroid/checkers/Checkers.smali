.class public Lcom/xxogli/xadroid/checkers/Checkers;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/xxogli/xadroid/checkers/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    const/16 v0, 0x4c2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/Checkers;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x480

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v0}, Lcom/xxogli/xadroid/checkers/b;->requestLayout()V

    return-void

    :cond_0
    const/16 v1, 0x880

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xxogli/xadroid/checkers/Checkers;->requestWindowFeature(I)Z

    new-instance v0, Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {p0, v2}, Lcom/xxogli/xadroid/checkers/Checkers;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xxogli/xadroid/checkers/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    const-string v0, "by Aart J.C. Bik"

    invoke-direct {p0, v0}, Lcom/xxogli/xadroid/checkers/Checkers;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {p0, v0}, Lcom/xxogli/xadroid/checkers/Checkers;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v0, v2}, Lcom/xxogli/xadroid/checkers/b;->d(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xxogli/xadroid/checkers/Checkers;->a(Z)V

    new-instance v0, Lcom/google/ads/AdView;

    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v2, "a15255c5da8fc08"

    move-object/from16 p1, p0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .local v0, adView:Lcom/google/ads/AdView;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, -0x1

    const/16 p0, -0x1

    invoke-direct/range {v1 .. v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lcom/xxogli/xadroid/checkers/Checkers;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setGravity(I)V

    #new-instance v1, Lcom/google/ads/AdRequest;

    #invoke-direct/range {v1 .. v1}, Lcom/google/ads/AdRequest;-><init>()V

	#invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10 # Incrément du nombre de variables locales

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

	########## HACKED ##########

	const/4 v9, 0x7

	########## HACKED ##########

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const-string v0, "New Game"

    invoke-interface {p1, v5, v5, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "Undo"

    invoke-interface {p1, v5, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

	########## HACKED ##########

	const-string v0, "Exit"

    invoke-interface {p1, v5, v9, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

	########## HACKED ##########

    const-string v0, "Switch Side"

    invoke-interface {p1, v5, v6, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "Options"

    invoke-interface {p1, v5, v7, v7, v0}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    const-string v1, "Move Coach"

    invoke-interface {v0, v4, v5, v5, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v2, v5}, Lcom/xxogli/xadroid/checkers/b;->a(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const-string v1, "Optional Jumps"

    invoke-interface {v0, v4, v4, v4, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v2, v5}, Lcom/xxogli/xadroid/checkers/b;->b(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const-string v1, "View from White"

    invoke-interface {v0, v4, v6, v6, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v2, v5}, Lcom/xxogli/xadroid/checkers/b;->c(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const-string v1, "Full Screen"

    invoke-interface {v0, v4, v7, v7, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v2, v5}, Lcom/xxogli/xadroid/checkers/b;->d(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;



    const-string v1, "Start Screen"

    invoke-interface {v0, v4, v8, v8, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v2, v5}, Lcom/xxogli/xadroid/checkers/b;->e(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "Animation"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v2, v5}, Lcom/xxogli/xadroid/checkers/b;->f(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
##############################################################################################
#RAYA
 const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "Switcher les Dames"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v2, v5}, Lcom/xxogli/xadroid/checkers/b;->permuter(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

#######################################


    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "Board Color"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "Level"

    invoke-interface {p1, v5, v8, v8, v0}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    const-string v1, "Free Play"

    invoke-interface {v0, v6, v5, v5, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v1, "Random (0s)"

    invoke-interface {v0, v6, v4, v4, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v1, "Level 1 (fast)"

    invoke-interface {v0, v6, v6, v6, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v1, "Level 2 (1s)"

    invoke-interface {v0, v6, v7, v7, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v1, "Level 3 (5s)"

    invoke-interface {v0, v6, v8, v8, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "Level 4 (10s)"

    invoke-interface {v0, v6, v1, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "Level 5 (15s)"

    invoke-interface {v0, v6, v1, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "Level 6 (30s)"

    invoke-interface {v0, v6, v1, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "Level 7 (60s)"

    invoke-interface {v0, v6, v1, v2, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v0, v6, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1}, Lcom/xxogli/xadroid/checkers/b;->getLevel()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const/4 v1, 0x5

    const-string v2, "Website"

    return v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/high16 v4, 0x3f80

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    const/4 v0, 0x1
    
    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0
	
    :goto_0
    return v0

    :pswitch_0
    
    ########### TOAST 2 #############
 
    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/Checkers;->getApplicationContext()Landroid/content/Context;

    move-result-object v6
    
    const-string v5, "Hacked 2!"

    invoke-static {v6, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
	
	########### TOAST 2 ###############
    
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1}, Lcom/xxogli/xadroid/checkers/b;->b()V

    goto :goto_0

    :pswitch_1
    
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v3, v2}, Lcom/xxogli/xadroid/checkers/b;->a(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v4, v2}, Lcom/xxogli/xadroid/checkers/b;->a(FF)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v2, v3}, Lcom/xxogli/xadroid/checkers/b;->a(FF)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v2, v4}, Lcom/xxogli/xadroid/checkers/b;->a(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6 # Incrément du nombre de variables locales

	########## HACKED ##########
	# Valeur pour le bouton exit

    const/16 v5, 0x7

	########## HACKED ##########

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/xxogli/xadroid/checkers/b;->a(I)Z

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/xxogli/xadroid/checkers/b;->a(I)Z

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_42 # On va au test pour le bouton Exit

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/xxogli/xadroid/checkers/b;->a(I)Z

    goto :goto_0

	########## HACKED ##########
	# Gestion du bouton Exit

    :cond_42
    if-ne v1, v5, :cond_3 # On retourne au test suivant

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

	########## HACKED ##########

    :cond_3
    if-ne v1, v4, :cond_0

    const-string v1, "http://www.aartbik.com/MISC/android.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/xxogli/xadroid/checkers/Checkers;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v0}, Lcom/xxogli/xadroid/checkers/b;->a(Z)Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v0}, Lcom/xxogli/xadroid/checkers/b;->b(Z)Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v0}, Lcom/xxogli/xadroid/checkers/b;->c(Z)Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v0}, Lcom/xxogli/xadroid/checkers/b;->d(Z)Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0, v1}, Lcom/xxogli/xadroid/checkers/Checkers;->a(Z)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v0}, Lcom/xxogli/xadroid/checkers/b;->e(Z)Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_8
    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v0}, Lcom/xxogli/xadroid/checkers/b;->f(Z)Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
############# Raya ##################
    :cond_9
    const/4 v2, 0x6

    if-ne v1, v2, :cond_10
   
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v0}, Lcom/xxogli/xadroid/checkers/b;->permuter(Z)Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;


    goto/16 :goto_0
##########################

:cond_10
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1}, Lcom/xxogli/xadroid/checkers/b;->a()V

    goto/16 :goto_0

##################
    :pswitch_2
    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v2, v1}, Lcom/xxogli/xadroid/checkers/b;->setLevel(I)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xxogli/xadroid/checkers/Checkers;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1, v0}, Lcom/xxogli/xadroid/checkers/b;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1 

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    
    
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {v1}, Lcom/xxogli/xadroid/checkers/b;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/Checkers;->a:Lcom/xxogli/xadroid/checkers/b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xxogli/xadroid/checkers/b;->a(FF)V
    

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

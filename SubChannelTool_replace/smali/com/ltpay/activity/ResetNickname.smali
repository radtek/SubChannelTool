.class public Lcom/ltpay/activity/ResetNickname;
.super Landroid/app/Activity;
.source "ResetNickname.java"


# instance fields
.field private Instance:Landroid/app/Activity;

.field com:Lcom/ltpay/function/Component;

.field listener:Lcom/ltpay/function/Component$ClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/ltpay/activity/ResetNickname$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/ResetNickname$1;-><init>(Lcom/ltpay/activity/ResetNickname;)V

    iput-object v0, p0, Lcom/ltpay/activity/ResetNickname;->listener:Lcom/ltpay/function/Component$ClickListener;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/ResetNickname;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ltpay/activity/ResetNickname;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ltpay/activity/ResetNickname;->Instance:Landroid/app/Activity;

    const-class v1, Lcom/ltpay/activity/SettingPage;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0}, Lcom/ltpay/activity/ResetNickname;->finish()V

    .line 35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iput-object p0, p0, Lcom/ltpay/activity/ResetNickname;->Instance:Landroid/app/Activity;

    .line 27
    const-string v0, "ltpay_layout_reset_nickname"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/ResetNickname;->setContentView(I)V

    .line 28
    new-instance v0, Lcom/ltpay/function/Component;

    iget-object v1, p0, Lcom/ltpay/activity/ResetNickname;->Instance:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ltpay/activity/ResetNickname;->listener:Lcom/ltpay/function/Component$ClickListener;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ltpay_edit"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "ltpay_btn"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/ltpay/function/Component;-><init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ltpay/activity/ResetNickname;->com:Lcom/ltpay/function/Component;

    .line 29
    return-void
.end method

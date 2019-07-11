.class public Lcom/ltpay/activity/UserCenter;
.super Landroid/app/Activity;
.source "UserCenter.java"


# static fields
.field public static Instance:Lcom/ltpay/activity/UserCenter;


# instance fields
.field balanceCall:Lcom/ltpay/function/CallBack2;

.field com:Lcom/ltpay/function/Component;

.field listener:Lcom/ltpay/function/Component$ClickListener;

.field photoCall:Lcom/ltpay/function/CallBack2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/ltpay/activity/UserCenter$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/UserCenter$1;-><init>(Lcom/ltpay/activity/UserCenter;)V

    iput-object v0, p0, Lcom/ltpay/activity/UserCenter;->balanceCall:Lcom/ltpay/function/CallBack2;

    .line 92
    new-instance v0, Lcom/ltpay/activity/UserCenter$2;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/UserCenter$2;-><init>(Lcom/ltpay/activity/UserCenter;)V

    iput-object v0, p0, Lcom/ltpay/activity/UserCenter;->photoCall:Lcom/ltpay/function/CallBack2;

    .line 154
    new-instance v0, Lcom/ltpay/activity/UserCenter$3;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/UserCenter$3;-><init>(Lcom/ltpay/activity/UserCenter;)V

    iput-object v0, p0, Lcom/ltpay/activity/UserCenter;->listener:Lcom/ltpay/function/Component$ClickListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/UserCenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/ltpay/activity/UserCenter;->showUserBalance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ltpay/activity/UserCenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/ltpay/activity/UserCenter;->showUserPhoto(Ljava/lang/String;)V

    return-void
.end method

.method private showUserBalance(Ljava/lang/String;)V
    .locals 1
    .param p1, "balanceStr"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lcom/ltpay/activity/UserCenter$4;

    invoke-direct {v0, p0, p1}, Lcom/ltpay/activity/UserCenter$4;-><init>(Lcom/ltpay/activity/UserCenter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/UserCenter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method private showUserPhoto(Ljava/lang/String;)V
    .locals 1
    .param p1, "picData"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Lcom/ltpay/activity/UserCenter$5;

    invoke-direct {v0, p0, p1}, Lcom/ltpay/activity/UserCenter$5;-><init>(Lcom/ltpay/activity/UserCenter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/UserCenter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/ltpay/activity/UserCenter;->finish()V

    .line 141
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 147
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 152
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sput-object p0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    .line 36
    sget-boolean v0, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    const-class v1, Lcom/ltpay/activity/Login;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    invoke-virtual {v0}, Lcom/ltpay/activity/UserCenter;->finish()V

    .line 56
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "ltpay_layout_user_center"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/UserCenter;->setContentView(I)V

    .line 45
    new-instance v0, Lcom/ltpay/function/Component;

    iget-object v1, p0, Lcom/ltpay/activity/UserCenter;->listener:Lcom/ltpay/function/Component$ClickListener;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ltpay_usercenter1"

    aput-object v3, v2, v5

    const-string v3, "ltpay_usercenter2"

    aput-object v3, v2, v6

    const-string v3, "ltpay_usercenter3"

    aput-object v3, v2, v7

    const-string v3, "ltpay_usercenter4"

    aput-object v3, v2, v8

    const-string v3, "ltpay_usercenter5"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 46
    const-string v4, "ltpay_usercenter6"

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v1, v2}, Lcom/ltpay/function/Component;-><init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V

    .line 45
    iput-object v0, p0, Lcom/ltpay/activity/UserCenter;->com:Lcom/ltpay/function/Component;

    .line 47
    iget-object v0, p0, Lcom/ltpay/activity/UserCenter;->com:Lcom/ltpay/function/Component;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "ltpay_username"

    aput-object v2, v1, v5

    const-string v2, "ltpay_userid"

    aput-object v2, v1, v6

    const-string v2, "ltpay_btn"

    aput-object v2, v1, v7

    const-string v2, "ltpay_text_version"

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->AddView([Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/ltpay/activity/UserCenter;->com:Lcom/ltpay/function/Component;

    const-string v1, "ltpay_username"

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/ltpay/activity/UserCenter;->com:Lcom/ltpay/function/Component;

    const-string v1, "ltpay_userid"

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/ltpay/activity/UserCenter;->com:Lcom/ltpay/function/Component;

    const-string v1, "ltpay_text_version"

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK\u7248\u672c: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ltpay/LtSDK;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    sget-object v1, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ltpay/activity/UserCenter;->photoCall:Lcom/ltpay/function/CallBack2;

    invoke-static {v0, v1, v2}, Lcom/ltpay/function/Server;->getPhoto(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    .line 55
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    sget-object v1, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ltpay/activity/UserCenter;->balanceCall:Lcom/ltpay/function/CallBack2;

    invoke-static {v0, v1, v2}, Lcom/ltpay/function/Server;->getBalance(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    goto/16 :goto_0
.end method

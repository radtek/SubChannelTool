.class public Lcom/ltpay/activity/LoginSuccess;
.super Landroid/app/Activity;
.source "LoginSuccess.java"


# instance fields
.field private Instance:Landroid/app/Activity;

.field text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/LoginSuccess;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ltpay/activity/LoginSuccess;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iput-object p0, p0, Lcom/ltpay/activity/LoginSuccess;->Instance:Landroid/app/Activity;

    .line 25
    const-string v2, "ltpay_layout_login_success"

    const-string v3, "layout"

    invoke-static {p0, v2, v3}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ltpay/activity/LoginSuccess;->setContentView(I)V

    .line 26
    const-string v2, "ltpay_text"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ltpay/activity/LoginSuccess;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ltpay/activity/LoginSuccess;->text:Landroid/widget/TextView;

    .line 28
    iget-object v2, p0, Lcom/ltpay/activity/LoginSuccess;->text:Landroid/widget/TextView;

    sget-object v3, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const-string v2, "ShowRealName"

    invoke-static {p0, v2}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    .local v0, "ShowRealName":Z
    new-instance v1, Lcom/ltpay/activity/LoginSuccess$1;

    invoke-direct {v1, p0, v0}, Lcom/ltpay/activity/LoginSuccess$1;-><init>(Lcom/ltpay/activity/LoginSuccess;Z)V

    .line 42
    .local v1, "call":Lcom/ltpay/function/CallBackF;
    iget-object v2, p0, Lcom/ltpay/activity/LoginSuccess;->Instance:Landroid/app/Activity;

    const/16 v3, 0x2bc

    invoke-static {v2, v3, v1}, Lcom/ltpay/function/Tools;->AutoHide(Landroid/app/Activity;ILcom/ltpay/function/CallBackF;)V

    .line 43
    return-void
.end method

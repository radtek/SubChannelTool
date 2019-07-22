.class public Lcom/ltpay/activity/UserProtocal;
.super Landroid/app/Activity;
.source "UserProtocal.java"


# static fields
.field private static Instance:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static Hide()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/ltpay/activity/UserProtocal;->Instance:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ltpay/activity/UserProtocal;->Instance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 66
    :cond_0
    return-void
.end method

.method public static Show(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/UserProtocal$1;

    invoke-direct {v1, p0}, Lcom/ltpay/activity/UserProtocal$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/ltpay/activity/UserProtocal;->finish()V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sput-object p0, Lcom/ltpay/activity/UserProtocal;->Instance:Landroid/app/Activity;

    .line 27
    const-string v5, "ltpay_layout_userprotocal"

    const-string v6, "layout"

    invoke-static {p0, v5, v6}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/ltpay/activity/UserProtocal;->setContentView(I)V

    .line 30
    sget-object v5, Lcom/ltpay/activity/UserProtocal;->Instance:Landroid/app/Activity;

    const-string v6, "ltpay_userprotocal_webview"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 31
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/ltpay/activity/UserProtocal;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 33
    .local v4, "webview":Landroid/webkit/WebView;
    sget-object v5, Lcom/ltpay/activity/UserProtocal;->Instance:Landroid/app/Activity;

    const-string v6, "ltpay_tv_BodyInfo"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 34
    .local v2, "tv_id":I
    invoke-virtual {p0, v2}, Lcom/ltpay/activity/UserProtocal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    .local v1, "tv":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHeight(I)V

    .line 36
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    sget-object v5, Lcom/ltpay/activity/UserProtocal;->Instance:Landroid/app/Activity;

    const-string v6, "UserProtocalUrl"

    invoke-static {v5, v6}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "url":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

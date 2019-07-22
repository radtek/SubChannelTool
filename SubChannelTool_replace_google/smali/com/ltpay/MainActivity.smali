.class public Lcom/ltpay/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field loginCall:Lcom/ltpay/function/CallBack;

.field loginOutCall:Lcom/ltpay/function/CallBack;

.field payCall:Lcom/ltpay/function/CallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/ltpay/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/ltpay/MainActivity$1;-><init>(Lcom/ltpay/MainActivity;)V

    iput-object v0, p0, Lcom/ltpay/MainActivity;->loginOutCall:Lcom/ltpay/function/CallBack;

    .line 71
    new-instance v0, Lcom/ltpay/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/ltpay/MainActivity$2;-><init>(Lcom/ltpay/MainActivity;)V

    iput-object v0, p0, Lcom/ltpay/MainActivity;->loginCall:Lcom/ltpay/function/CallBack;

    .line 94
    new-instance v0, Lcom/ltpay/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/ltpay/MainActivity$3;-><init>(Lcom/ltpay/MainActivity;)V

    iput-object v0, p0, Lcom/ltpay/MainActivity;->payCall:Lcom/ltpay/function/CallBack;

    .line 14
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/ltpay/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/ltpay/MainActivity$5;-><init>(Lcom/ltpay/MainActivity;)V

    invoke-static {p0, v0}, Lcom/ltpay/LtSDK;->QuitCustom(Landroid/content/Context;Lcom/ltpay/function/CallBack;)V

    .line 159
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600b9

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/ltpay/MainActivity;->loginCall:Lcom/ltpay/function/CallBack;

    invoke-static {v0}, Lcom/ltpay/LtSDK;->Login(Lcom/ltpay/function/CallBack;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600ea

    if-ne v0, v1, :cond_2

    .line 122
    const-string v0, "001"

    const-string v1, "\u5546\u54c1\u540d\u79f01"

    const/4 v2, 0x1

    const-string v3, "8001"

    const-string v4, "\u652f\u4ed8\u900f\u4f20\u5b57\u6bb5x"

    iget-object v5, p0, Lcom/ltpay/MainActivity;->payCall:Lcom/ltpay/function/CallBack;

    invoke-static/range {v0 .. v5}, Lcom/ltpay/LtSDK;->Pay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600f0

    if-ne v0, v1, :cond_0

    .line 127
    invoke-static {}, Lcom/ltpay/LtSDK;->ShowActivityCenter()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/ltpay/MainActivity;->setContentView(I)V

    .line 23
    const v1, 0x7f0600e9

    invoke-virtual {p0, v1}, Lcom/ltpay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    .local v0, "text":Landroid/widget/TextView;
    sget-object v1, Lcom/ltpay/LtSDK;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const-string v1, "1002"

    invoke-static {p0, v1}, Lcom/ltpay/LtSDK;->Init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/ltpay/MainActivity;->loginOutCall:Lcom/ltpay/function/CallBack;

    invoke-static {v1}, Lcom/ltpay/LtSDK;->SetLoginOut(Lcom/ltpay/function/CallBack;)V

    .line 34
    new-instance v1, Lcom/ltpay/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/ltpay/MainActivity$4;-><init>(Lcom/ltpay/MainActivity;)V

    invoke-static {v1}, Lcom/ltpay/LtSDK;->SetAcceptMessage(Lcom/ltpay/function/CallBack;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 163
    invoke-static {}, Lcom/ltpay/LtSDK;->HideFloat()V

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 165
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-static {}, Lcom/ltpay/LtSDK;->HideFloat()V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    invoke-static {p0}, Lcom/ltpay/LtSDK;->ShowFloat(Landroid/content/Context;)V

    .line 141
    return-void
.end method

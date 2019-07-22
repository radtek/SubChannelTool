.class public Lcom/ltpay/activity/ChargeRecord;
.super Landroid/app/Activity;
.source "ChargeRecord.java"


# instance fields
.field private Instance:Landroid/app/Activity;

.field call:Lcom/ltpay/function/CallBack2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Lcom/ltpay/activity/ChargeRecord$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/ChargeRecord$1;-><init>(Lcom/ltpay/activity/ChargeRecord;)V

    iput-object v0, p0, Lcom/ltpay/activity/ChargeRecord;->call:Lcom/ltpay/function/CallBack2;

    .line 19
    return-void
.end method

.method private InitContent()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    .line 45
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/ltpay/activity/ChargeRecord;->call:Lcom/ltpay/function/CallBack2;

    invoke-static {p0, v0, v1}, Lcom/ltpay/function/Server;->GetChargeRecodeList(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    .line 46
    return-void
.end method

.method private ShowInListView([Lcom/ltpay/activity/ChargeRecord_T;)V
    .locals 1
    .param p1, "datas"    # [Lcom/ltpay/activity/ChargeRecord_T;

    .prologue
    .line 65
    new-instance v0, Lcom/ltpay/activity/ChargeRecord$2;

    invoke-direct {v0, p0, p1}, Lcom/ltpay/activity/ChargeRecord$2;-><init>(Lcom/ltpay/activity/ChargeRecord;[Lcom/ltpay/activity/ChargeRecord_T;)V

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/ChargeRecord;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/ChargeRecord;[Lcom/ltpay/activity/ChargeRecord_T;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/ltpay/activity/ChargeRecord;->ShowInListView([Lcom/ltpay/activity/ChargeRecord_T;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ltpay/activity/ChargeRecord;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ltpay/activity/ChargeRecord;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/ltpay/activity/ChargeRecord;->finish()V

    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iput-object p0, p0, Lcom/ltpay/activity/ChargeRecord;->Instance:Landroid/app/Activity;

    .line 28
    const-string v1, "ltpay_layout_activity_center"

    const-string v2, "layout"

    invoke-static {p0, v1, v2}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ltpay/activity/ChargeRecord;->setContentView(I)V

    .line 29
    iget-object v1, p0, Lcom/ltpay/activity/ChargeRecord;->Instance:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ltpay/activity/ChargeRecord;->Instance:Landroid/app/Activity;

    const-string v3, "ltpay_text_tittle"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    .local v0, "tittle":Landroid/widget/TextView;
    const-string v1, "\u5145\u503c\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-direct {p0}, Lcom/ltpay/activity/ChargeRecord;->InitContent()V

    .line 34
    return-void
.end method

.class public Lcom/ltpay/activity/ActivityCenter;
.super Landroid/app/Activity;
.source "ActivityCenter.java"


# instance fields
.field private Instance:Landroid/app/Activity;

.field call:Lcom/ltpay/function/CallBack2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/ltpay/activity/ActivityCenter$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/ActivityCenter$1;-><init>(Lcom/ltpay/activity/ActivityCenter;)V

    iput-object v0, p0, Lcom/ltpay/activity/ActivityCenter;->call:Lcom/ltpay/function/CallBack2;

    .line 23
    return-void
.end method

.method private ShowInListView([Lcom/ltpay/activity/ActivityCenter_T;)V
    .locals 1
    .param p1, "datas"    # [Lcom/ltpay/activity/ActivityCenter_T;

    .prologue
    .line 69
    new-instance v0, Lcom/ltpay/activity/ActivityCenter$2;

    invoke-direct {v0, p0, p1}, Lcom/ltpay/activity/ActivityCenter$2;-><init>(Lcom/ltpay/activity/ActivityCenter;[Lcom/ltpay/activity/ActivityCenter_T;)V

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/ActivityCenter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/ActivityCenter;[Lcom/ltpay/activity/ActivityCenter_T;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/ltpay/activity/ActivityCenter;->ShowInListView([Lcom/ltpay/activity/ActivityCenter_T;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ltpay/activity/ActivityCenter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ltpay/activity/ActivityCenter;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected InitContent()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ltpay/activity/ActivityCenter;->call:Lcom/ltpay/function/CallBack2;

    invoke-static {p0, v0, v1}, Lcom/ltpay/function/Server;->GetActivityList(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    .line 50
    return-void
.end method

.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/ltpay/activity/ActivityCenter;->finish()V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iput-object p0, p0, Lcom/ltpay/activity/ActivityCenter;->Instance:Landroid/app/Activity;

    .line 33
    const-string v0, "ltpay_layout_activity_center"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/ActivityCenter;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/ltpay/activity/ActivityCenter;->InitContent()V

    .line 37
    return-void
.end method

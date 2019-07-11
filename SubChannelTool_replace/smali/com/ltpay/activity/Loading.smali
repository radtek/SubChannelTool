.class public Lcom/ltpay/activity/Loading;
.super Landroid/app/Activity;
.source "Loading.java"


# static fields
.field private static Instatnce:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/ltpay/activity/Loading;->Instatnce:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sput-object p0, Lcom/ltpay/activity/Loading;->Instatnce:Landroid/app/Activity;

    .line 24
    const-string v1, "ltpay_layout_loading"

    const-string v2, "layout"

    invoke-static {p0, v1, v2}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ltpay/activity/Loading;->setContentView(I)V

    .line 26
    new-instance v0, Lcom/ltpay/activity/Loading$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Loading$1;-><init>(Lcom/ltpay/activity/Loading;)V

    .line 37
    .local v0, "call":Lcom/ltpay/function/CallBackF;
    sget-object v1, Lcom/ltpay/activity/Loading;->Instatnce:Landroid/app/Activity;

    const/16 v2, 0x3e8

    invoke-static {v1, v2, v0}, Lcom/ltpay/function/Tools;->AutoHide(Landroid/app/Activity;ILcom/ltpay/function/CallBackF;)V

    .line 38
    return-void
.end method

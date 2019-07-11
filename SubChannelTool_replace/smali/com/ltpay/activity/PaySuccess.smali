.class public Lcom/ltpay/activity/PaySuccess;
.super Landroid/app/Activity;
.source "PaySuccess.java"


# static fields
.field private static Instance:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sput-object p0, Lcom/ltpay/activity/PaySuccess;->Instance:Landroid/app/Activity;

    .line 21
    const-string v0, "ltpay_layout_pay_success"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/PaySuccess;->setContentView(I)V

    .line 22
    sget-object v0, Lcom/ltpay/activity/PaySuccess;->Instance:Landroid/app/Activity;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ltpay/function/Tools;->AutoHide(Landroid/app/Activity;ILcom/ltpay/function/CallBackF;)V

    .line 23
    return-void
.end method

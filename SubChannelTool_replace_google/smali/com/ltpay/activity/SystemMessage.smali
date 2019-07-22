.class public Lcom/ltpay/activity/SystemMessage;
.super Lcom/ltpay/activity/ActivityCenter;
.source "SystemMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ltpay/activity/ActivityCenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected InitContent()V
    .locals 4

    .prologue
    .line 19
    const-string v2, "ltpay_text_tittle"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 20
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/ltpay/activity/SystemMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 21
    .local v1, "text":Landroid/widget/TextView;
    const-string v2, "\u7cfb\u7edf\u6d88\u606f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    sget-object v2, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ltpay/activity/SystemMessage;->call:Lcom/ltpay/function/CallBack2;

    invoke-static {p0, v2, v3}, Lcom/ltpay/function/Server;->GetSystemMessageList(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    .line 24
    return-void
.end method

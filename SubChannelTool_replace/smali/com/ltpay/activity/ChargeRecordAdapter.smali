.class Lcom/ltpay/activity/ChargeRecordAdapter;
.super Lcom/ltpay/function/ListViewCommonAdapter;
.source "ChargeRecord.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ltpay/function/ListViewCommonAdapter",
        "<",
        "Lcom/ltpay/activity/ChargeRecord_T;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/ltpay/activity/ChargeRecord_T;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutName"    # Ljava/lang/String;
    .param p3, "IteamDatas"    # [Lcom/ltpay/activity/ChargeRecord_T;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/ltpay/function/ListViewCommonAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method public setIteamClick(Landroid/content/Context;Lcom/ltpay/activity/ChargeRecord_T;)V
    .locals 0
    .param p1, "iteamContext"    # Landroid/content/Context;
    .param p2, "iteamData"    # Lcom/ltpay/activity/ChargeRecord_T;

    .prologue
    .line 113
    return-void
.end method

.method public bridge synthetic setIteamClick(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/ltpay/activity/ChargeRecord_T;

    invoke-virtual {p0, p1, p2}, Lcom/ltpay/activity/ChargeRecordAdapter;->setIteamClick(Landroid/content/Context;Lcom/ltpay/activity/ChargeRecord_T;)V

    return-void
.end method

.method public setIteamView(Landroid/view/View;Lcom/ltpay/activity/ChargeRecord_T;)V
    .locals 5
    .param p1, "iteamView"    # Landroid/view/View;
    .param p2, "iteamData"    # Lcom/ltpay/activity/ChargeRecord_T;

    .prologue
    .line 97
    const-string v3, "ltpay_text1"

    invoke-virtual {p0, p1, v3}, Lcom/ltpay/activity/ChargeRecordAdapter;->getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, "text1":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/ltpay/activity/ChargeRecord_T;->chargeTime:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const-string v3, "ltpay_text2"

    invoke-virtual {p0, p1, v3}, Lcom/ltpay/activity/ChargeRecordAdapter;->getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    .local v1, "text2":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/ltpay/activity/ChargeRecord_T;->appName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const-string v3, "ltpay_text3"

    invoke-virtual {p0, p1, v3}, Lcom/ltpay/activity/ChargeRecordAdapter;->getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    .local v2, "text3":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/ltpay/activity/ChargeRecord_T;->money:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public bridge synthetic setIteamView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/ltpay/activity/ChargeRecord_T;

    invoke-virtual {p0, p1, p2}, Lcom/ltpay/activity/ChargeRecordAdapter;->setIteamView(Landroid/view/View;Lcom/ltpay/activity/ChargeRecord_T;)V

    return-void
.end method

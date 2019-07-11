.class Lcom/ltpay/activity/ActivityCenterAdapter;
.super Lcom/ltpay/function/ListViewCommonAdapter;
.source "ActivityCenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ltpay/function/ListViewCommonAdapter",
        "<",
        "Lcom/ltpay/activity/ActivityCenter_T;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/ltpay/activity/ActivityCenter_T;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutName"    # Ljava/lang/String;
    .param p3, "IteamDatas"    # [Lcom/ltpay/activity/ActivityCenter_T;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/ltpay/function/ListViewCommonAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method


# virtual methods
.method public setIteamClick(Landroid/content/Context;Lcom/ltpay/activity/ActivityCenter_T;)V
    .locals 4
    .param p1, "iteamContext"    # Landroid/content/Context;
    .param p2, "iteamData"    # Lcom/ltpay/activity/ActivityCenter_T;

    .prologue
    .line 110
    const-class v0, Lcom/ltpay/activity/ActivityCenter_detail;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tittle"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/ltpay/activity/ActivityCenter_T;->Title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/ltpay/activity/ActivityCenter_T;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "content"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/ltpay/activity/ActivityCenter_T;->content:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public bridge synthetic setIteamClick(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/ltpay/activity/ActivityCenter_T;

    invoke-virtual {p0, p1, p2}, Lcom/ltpay/activity/ActivityCenterAdapter;->setIteamClick(Landroid/content/Context;Lcom/ltpay/activity/ActivityCenter_T;)V

    return-void
.end method

.method public setIteamView(Landroid/view/View;Lcom/ltpay/activity/ActivityCenter_T;)V
    .locals 2
    .param p1, "iteamView"    # Landroid/view/View;
    .param p2, "iteamData"    # Lcom/ltpay/activity/ActivityCenter_T;

    .prologue
    .line 101
    const-string v1, "ltpay_text"

    invoke-virtual {p0, p1, v1}, Lcom/ltpay/activity/ActivityCenterAdapter;->getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p2, Lcom/ltpay/activity/ActivityCenter_T;->Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public bridge synthetic setIteamView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/ltpay/activity/ActivityCenter_T;

    invoke-virtual {p0, p1, p2}, Lcom/ltpay/activity/ActivityCenterAdapter;->setIteamView(Landroid/view/View;Lcom/ltpay/activity/ActivityCenter_T;)V

    return-void
.end method

.class public Lcom/ltpay/activity/Announcement;
.super Landroid/app/Activity;
.source "Announcement.java"


# instance fields
.field private Instance:Landroid/app/Activity;

.field body:Landroid/widget/TextView;

.field btn:Landroid/widget/Button;

.field tittle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private InitContent()V
    .locals 5

    .prologue
    .line 52
    iget-object v3, p0, Lcom/ltpay/activity/Announcement;->Instance:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 53
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 55
    iget-object v3, p0, Lcom/ltpay/activity/Announcement;->Instance:Landroid/app/Activity;

    const-string v4, "\u65e0\u516c\u544a\u76f8\u5173\u53c2\u6570\uff01"

    invoke-static {v3, v4}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v3, "appId"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "appId":Ljava/lang/String;
    new-instance v1, Lcom/ltpay/activity/Announcement$1;

    invoke-direct {v1, p0}, Lcom/ltpay/activity/Announcement$1;-><init>(Lcom/ltpay/activity/Announcement;)V

    .line 100
    .local v1, "call":Lcom/ltpay/function/CallBack2;
    iget-object v3, p0, Lcom/ltpay/activity/Announcement;->Instance:Landroid/app/Activity;

    invoke-static {v3, v0, v1}, Lcom/ltpay/function/Server;->GetAnnounceMent(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    goto :goto_0
.end method

.method public static Show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/ltpay/activity/Announcement;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/Announcement;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ltpay/activity/Announcement;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/ltpay/activity/Announcement;->finish()V

    .line 106
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iput-object p0, p0, Lcom/ltpay/activity/Announcement;->Instance:Landroid/app/Activity;

    .line 38
    const-string v0, "ltpay_layout_announcement"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Announcement;->setContentView(I)V

    .line 40
    const-string v0, "ltpay_text_tittle"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Announcement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Announcement;->tittle:Landroid/widget/TextView;

    .line 41
    const-string v0, "ltpay_text_body"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Announcement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Announcement;->body:Landroid/widget/TextView;

    .line 42
    const-string v0, "ltpay_btn"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Announcement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ltpay/activity/Announcement;->btn:Landroid/widget/Button;

    .line 44
    invoke-direct {p0}, Lcom/ltpay/activity/Announcement;->InitContent()V

    .line 45
    return-void
.end method

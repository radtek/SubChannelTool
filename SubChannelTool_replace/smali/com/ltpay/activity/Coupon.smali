.class public Lcom/ltpay/activity/Coupon;
.super Landroid/app/Activity;
.source "Coupon.java"


# static fields
.field public static SelectedCoupon:Lcom/ltpay/activity/Coupon_T;


# instance fields
.field private Instance:Landroid/app/Activity;

.field ProductId:Ljava/lang/String;

.field call:Lcom/ltpay/function/CallBack2;

.field com:Lcom/ltpay/function/Component;

.field listener:Lcom/ltpay/function/Component$ClickListener;

.field unuseableCoupon:[Lcom/ltpay/activity/Coupon_T;

.field useableCoupon:[Lcom/ltpay/activity/Coupon_T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/ltpay/activity/Coupon;->SelectedCoupon:Lcom/ltpay/activity/Coupon_T;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Lcom/ltpay/activity/Coupon$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Coupon$1;-><init>(Lcom/ltpay/activity/Coupon;)V

    iput-object v0, p0, Lcom/ltpay/activity/Coupon;->listener:Lcom/ltpay/function/Component$ClickListener;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/ltpay/activity/Coupon;->ProductId:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/ltpay/activity/Coupon$2;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Coupon$2;-><init>(Lcom/ltpay/activity/Coupon;)V

    iput-object v0, p0, Lcom/ltpay/activity/Coupon;->call:Lcom/ltpay/function/CallBack2;

    .line 30
    return-void
.end method

.method public static CheckCoupon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "ProductId"    # Ljava/lang/String;
    .param p4, "ProductName"    # Ljava/lang/String;
    .param p5, "ProductMoney"    # Ljava/lang/String;
    .param p6, "checkCall"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 206
    new-instance v6, Lcom/ltpay/activity/Coupon$4;

    invoke-direct {v6, p6}, Lcom/ltpay/activity/Coupon$4;-><init>(Lcom/ltpay/function/CallBack;)V

    .local v6, "call":Lcom/ltpay/function/CallBack2;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 238
    invoke-static/range {v0 .. v6}, Lcom/ltpay/function/Server;->GetCouponList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    .line 239
    return-void
.end method

.method private InitContent()V
    .locals 8

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ltpay/activity/Coupon;->Instance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 94
    .local v7, "extras":Landroid/os/Bundle;
    if-nez v7, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ltpay/activity/Coupon;->Instance:Landroid/app/Activity;

    const-string v3, "\u65e0\u4f18\u60e0\u5238\u76f8\u5173\u53c2\u6570\uff01"

    invoke-static {v0, v3}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/ltpay/activity/Coupon;->Instance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "appId"

    const-string v3, ""

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "appId":Ljava/lang/String;
    const-string v0, "uid"

    const-string v3, ""

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "uid":Ljava/lang/String;
    const-string v0, "ProductId"

    const-string v3, ""

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon;->ProductId:Ljava/lang/String;

    .line 104
    const-string v0, "ProductName"

    const-string v3, ""

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "ProductName":Ljava/lang/String;
    const-string v0, "ProductMoney"

    const-string v3, ""

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "ProductMoney":Ljava/lang/String;
    iget-object v3, p0, Lcom/ltpay/activity/Coupon;->ProductId:Ljava/lang/String;

    iget-object v6, p0, Lcom/ltpay/activity/Coupon;->call:Lcom/ltpay/function/CallBack2;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ltpay/function/Server;->GetCouponList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    goto :goto_0
.end method

.method public static Show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "ProductId"    # Ljava/lang/String;
    .param p4, "ProductName"    # Ljava/lang/String;
    .param p5, "ProductMoney"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ltpay/activity/Coupon;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "ProductId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "ProductName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "ProductMoney"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method private ShowInListView([Lcom/ltpay/activity/Coupon_T;Z)V
    .locals 1
    .param p1, "datas"    # [Lcom/ltpay/activity/Coupon_T;
    .param p2, "useable"    # Z

    .prologue
    .line 162
    new-instance v0, Lcom/ltpay/activity/Coupon$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ltpay/activity/Coupon$3;-><init>(Lcom/ltpay/activity/Coupon;[Lcom/ltpay/activity/Coupon_T;Z)V

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Coupon;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/Coupon;I)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/ltpay/activity/Coupon;->setShowMode(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/ltpay/activity/Coupon;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ltpay/activity/Coupon;->Instance:Landroid/app/Activity;

    return-object v0
.end method

.method private setShowMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    .line 142
    const-string v2, "#b9b9b9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "gray":I
    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "black":I
    if-ne p1, v4, :cond_1

    .line 147
    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_text_useable"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_text_unuseable"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->useableCoupon:[Lcom/ltpay/activity/Coupon_T;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->useableCoupon:[Lcom/ltpay/activity/Coupon_T;

    invoke-direct {p0, v2, v4}, Lcom/ltpay/activity/Coupon;->ShowInListView([Lcom/ltpay/activity/Coupon_T;Z)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_text_useable"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_text_unuseable"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->unuseableCoupon:[Lcom/ltpay/activity/Coupon_T;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->unuseableCoupon:[Lcom/ltpay/activity/Coupon_T;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/ltpay/activity/Coupon;->ShowInListView([Lcom/ltpay/activity/Coupon_T;Z)V

    goto :goto_0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/ltpay/activity/Coupon;->finish()V

    .line 71
    iget-object v0, p0, Lcom/ltpay/activity/Coupon;->ProductId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ltpay/activity/Coupon;->Instance:Landroid/app/Activity;

    const-class v1, Lcom/ltpay/activity/PayPage;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iput-object p0, p0, Lcom/ltpay/activity/Coupon;->Instance:Landroid/app/Activity;

    .line 61
    const-string v0, "ltpay_layout_coupon"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Coupon;->setContentView(I)V

    .line 63
    new-instance v0, Lcom/ltpay/function/Component;

    iget-object v1, p0, Lcom/ltpay/activity/Coupon;->Instance:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ltpay/activity/Coupon;->listener:Lcom/ltpay/function/Component$ClickListener;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ltpay_text_useable"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "ltpay_text_unuseable"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "ltpay_content"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/ltpay/function/Component;-><init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ltpay/activity/Coupon;->com:Lcom/ltpay/function/Component;

    .line 65
    invoke-direct {p0}, Lcom/ltpay/activity/Coupon;->InitContent()V

    .line 66
    return-void
.end method

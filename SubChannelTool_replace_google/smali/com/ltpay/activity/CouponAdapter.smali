.class Lcom/ltpay/activity/CouponAdapter;
.super Lcom/ltpay/function/ListViewCommonAdapter;
.source "Coupon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ltpay/function/ListViewCommonAdapter",
        "<",
        "Lcom/ltpay/activity/Coupon_T;",
        ">;"
    }
.end annotation


# instance fields
.field call:Lcom/ltpay/function/CallBackF;

.field useable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/ltpay/activity/Coupon_T;ZLcom/ltpay/function/CallBackF;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutName"    # Ljava/lang/String;
    .param p3, "IteamDatas"    # [Lcom/ltpay/activity/Coupon_T;
    .param p4, "useable"    # Z
    .param p5, "call"    # Lcom/ltpay/function/CallBackF;

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/ltpay/function/ListViewCommonAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ltpay/activity/CouponAdapter;->useable:Z

    .line 349
    iput-boolean p4, p0, Lcom/ltpay/activity/CouponAdapter;->useable:Z

    .line 350
    iput-object p5, p0, Lcom/ltpay/activity/CouponAdapter;->call:Lcom/ltpay/function/CallBackF;

    .line 351
    return-void
.end method


# virtual methods
.method public setIteamClick(Landroid/content/Context;Lcom/ltpay/activity/Coupon_T;)V
    .locals 1
    .param p1, "iteamContext"    # Landroid/content/Context;
    .param p2, "iteamData"    # Lcom/ltpay/activity/Coupon_T;

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/ltpay/activity/CouponAdapter;->useable:Z

    if-eqz v0, :cond_1

    .line 380
    sput-object p2, Lcom/ltpay/activity/Coupon;->SelectedCoupon:Lcom/ltpay/activity/Coupon_T;

    .line 381
    iget-object v0, p0, Lcom/ltpay/activity/CouponAdapter;->call:Lcom/ltpay/function/CallBackF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ltpay/activity/CouponAdapter;->call:Lcom/ltpay/function/CallBackF;

    invoke-interface {v0}, Lcom/ltpay/function/CallBackF;->F()V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const-string v0, "\u8bf7\u9009\u62e9\u53ef\u7528\u7684\u4f18\u60e0\u5238"

    invoke-static {p1, v0}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic setIteamClick(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/ltpay/activity/Coupon_T;

    invoke-virtual {p0, p1, p2}, Lcom/ltpay/activity/CouponAdapter;->setIteamClick(Landroid/content/Context;Lcom/ltpay/activity/Coupon_T;)V

    return-void
.end method

.method public setIteamView(Landroid/view/View;Lcom/ltpay/activity/Coupon_T;)V
    .locals 6
    .param p1, "iteamView"    # Landroid/view/View;
    .param p2, "iteamData"    # Lcom/ltpay/activity/Coupon_T;

    .prologue
    .line 357
    const-string v5, "ltpay_text1"

    invoke-virtual {p0, p1, v5}, Lcom/ltpay/activity/CouponAdapter;->getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 358
    .local v1, "text1":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/ltpay/activity/Coupon_T;->TypeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const-string v5, "ltpay_text2"

    invoke-virtual {p0, p1, v5}, Lcom/ltpay/activity/CouponAdapter;->getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 361
    .local v2, "text2":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/ltpay/activity/Coupon_T;->ValueString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const-string v5, "ltpay_text3"

    invoke-virtual {p0, p1, v5}, Lcom/ltpay/activity/CouponAdapter;->getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 364
    .local v3, "text3":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/ltpay/activity/CouponAdapter;->useable:Z

    if-eqz v5, :cond_1

    const-string v5, "\u9009\u53d6"

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-boolean v5, p0, Lcom/ltpay/activity/CouponAdapter;->useable:Z

    if-nez v5, :cond_0

    .line 368
    const-string v5, "ltpay_layout_bg"

    invoke-virtual {p0, p1, v5}, Lcom/ltpay/activity/CouponAdapter;->getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 369
    .local v0, "ltpay_layout_bg":Landroid/widget/RelativeLayout;
    const-string v5, "#c493a2"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 370
    .local v4, "unuseableColor":I
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 372
    .end local v0    # "ltpay_layout_bg":Landroid/widget/RelativeLayout;
    .end local v4    # "unuseableColor":I
    :cond_0
    return-void

    .line 364
    :cond_1
    const-string v5, "\u4e0d\u53ef\u7528"

    goto :goto_0
.end method

.method public bridge synthetic setIteamView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/ltpay/activity/Coupon_T;

    invoke-virtual {p0, p1, p2}, Lcom/ltpay/activity/CouponAdapter;->setIteamView(Landroid/view/View;Lcom/ltpay/activity/Coupon_T;)V

    return-void
.end method

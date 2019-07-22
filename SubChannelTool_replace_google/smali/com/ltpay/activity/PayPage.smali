.class public Lcom/ltpay/activity/PayPage;
.super Landroid/app/Activity;
.source "PayPage.java"


# static fields
.field private static Instance:Landroid/app/Activity; = null

.field public static LtOrderId:Ljava/lang/String; = null

.field private static final ORDER_URL:Ljava/lang/String; = "http://10.80.5.71:88/Order/jmpay"

.field private static payInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field MoneyAmount:Ljava/lang/Double;

.field RealPayMoneyFloat:Ljava/lang/Double;

.field appId:Ljava/lang/String;

.field com:Lcom/ltpay/function/Component;

.field couponAmount:Ljava/lang/Double;

.field listener:Lcom/ltpay/function/Component$ClickListener;

.field localInfo:Lcom/ltpay/function/Preference;

.field private mPayInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field payType:I

.field productId:Ljava/lang/String;

.field productName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/PayPage;->LtOrderId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/ltpay/activity/PayPage;->payType:I

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/PayPage;->MoneyAmount:Ljava/lang/Double;

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/PayPage;->couponAmount:Ljava/lang/Double;

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/PayPage;->RealPayMoneyFloat:Ljava/lang/Double;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/ltpay/activity/PayPage;->appId:Ljava/lang/String;

    .line 82
    const-string v0, "001"

    iput-object v0, p0, Lcom/ltpay/activity/PayPage;->productId:Ljava/lang/String;

    .line 83
    const-string v0, "\u5546\u54c1XXX"

    iput-object v0, p0, Lcom/ltpay/activity/PayPage;->productName:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/ltpay/activity/PayPage$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/PayPage$1;-><init>(Lcom/ltpay/activity/PayPage;)V

    iput-object v0, p0, Lcom/ltpay/activity/PayPage;->listener:Lcom/ltpay/function/Component$ClickListener;

    .line 40
    return-void
.end method

.method public static AppendPayParams(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "request":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "SubChannelId"

    sget-object v1, Lcom/ltpay/LtSDK;->SubChannelId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "PackageName"

    sget-object v1, Lcom/ltpay/LtSDK;->PackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v0, "AppName"

    sget-object v1, Lcom/ltpay/LtSDK;->AppName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v0, "LtAppId"

    sget-object v1, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v0, "DeviceID"

    sget-object v1, Lcom/ltpay/LtSDK;->DeviceID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v0, "DeviceModel"

    sget-object v1, Lcom/ltpay/LtSDK;->DeviceModel:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v0, "DeviceBrand"

    sget-object v1, Lcom/ltpay/LtSDK;->DeviceBrand:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method

.method private CM_Pay(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "mActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p2, "mPayInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/PayPage$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/activity/PayPage$7;-><init>(Lcom/ltpay/activity/PayPage;Landroid/app/Activity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method

.method public static PayFail(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/PayPage$6;

    invoke-direct {v1, p0}, Lcom/ltpay/activity/PayPage$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method

.method public static PaySuccess(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/PayPage$5;

    invoke-direct {v1, p0}, Lcom/ltpay/activity/PayPage$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method private SetCouponInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Lcom/ltpay/activity/PayPage$3;

    invoke-direct {v0, p0, p1}, Lcom/ltpay/activity/PayPage$3;-><init>(Lcom/ltpay/activity/PayPage;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/PayPage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public static ShowPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "payInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p1, Lcom/ltpay/activity/PayPage;->payInfo:Ljava/util/HashMap;

    .line 50
    const-string v2, "/Order/jmpay"

    invoke-static {p0, v2}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "ORDER_URL":Ljava/lang/String;
    const-string v2, "PrivOrderUrl"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p0}, Lcom/joymeng/payment/util/AndroidUtil;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string v2, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {p0, v2}, Lcom/joymeng/payment/util/AndroidUtil;->printToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ltpay/activity/PayPage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "payInfo"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private Un_Pay(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "mActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "mPayInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/PayPage$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/activity/PayPage$8;-><init>(Lcom/ltpay/activity/PayPage;Landroid/app/Activity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method

.method private Ye_Pay(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "mActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p2, "mPayInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/PayPage$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/activity/PayPage$9;-><init>(Lcom/ltpay/activity/PayPage;Landroid/app/Activity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ltpay/activity/PayPage;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/ltpay/activity/PayPage;->payWithBalance()V

    return-void
.end method

.method static synthetic access$2(Lcom/ltpay/activity/PayPage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/ltpay/activity/PayPage;->setPayType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ltpay/activity/PayPage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/ltpay/activity/PayPage;->SetCouponInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/ltpay/activity/PayPage;D)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/ltpay/activity/PayPage;->payLogic(D)V

    return-void
.end method

.method private checkCoupon()V
    .locals 8

    .prologue
    .line 160
    sget-object v0, Lcom/ltpay/activity/Coupon;->SelectedCoupon:Lcom/ltpay/activity/Coupon_T;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/ltpay/activity/Coupon;->SelectedCoupon:Lcom/ltpay/activity/Coupon_T;

    iget-object v1, p0, Lcom/ltpay/activity/PayPage;->MoneyAmount:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ltpay/activity/Coupon_T;->Deductible(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/PayPage;->couponAmount:Ljava/lang/Double;

    .line 163
    sget-object v0, Lcom/ltpay/activity/Coupon;->SelectedCoupon:Lcom/ltpay/activity/Coupon_T;

    invoke-virtual {v0}, Lcom/ltpay/activity/Coupon_T;->ToString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ltpay/activity/PayPage;->SetCouponInfo(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v1, "CouponId"

    sget-object v2, Lcom/ltpay/activity/Coupon;->SelectedCoupon:Lcom/ltpay/activity/Coupon_T;

    iget-object v2, v2, Lcom/ltpay/activity/Coupon_T;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v1, "CouponId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v6, Lcom/ltpay/activity/PayPage$2;

    invoke-direct {v6, p0}, Lcom/ltpay/activity/PayPage$2;-><init>(Lcom/ltpay/activity/PayPage;)V

    .line 185
    .local v6, "call":Lcom/ltpay/function/CallBack;
    sget-object v0, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ltpay/activity/PayPage;->appId:Ljava/lang/String;

    sget-object v2, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ltpay/activity/PayPage;->productId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ltpay/activity/PayPage;->productName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ltpay/activity/PayPage;->MoneyAmount:Ljava/lang/Double;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/ltpay/activity/Coupon;->CheckCoupon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    goto :goto_0
.end method

.method private loadPrePayType()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/ltpay/activity/PayPage;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "LastPayType"

    invoke-virtual {v1, v2}, Lcom/ltpay/function/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "LastPayType":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ltpay/activity/PayPage;->payType:I

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ltpay/activity/PayPage;->payType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ltpay/activity/PayPage;->setPayType(Ljava/lang/String;)V

    .line 209
    iget v1, p0, Lcom/ltpay/activity/PayPage;->payType:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/ltpay/activity/PayPage;->listener:Lcom/ltpay/function/Component$ClickListener;

    const-string v2, "ltpay_more_paytype"

    invoke-interface {v1, v2}, Lcom/ltpay/function/Component$ClickListener;->Click(Ljava/lang/String;)V

    .line 210
    :cond_1
    return-void
.end method

.method private pay(ILjava/util/HashMap;)V
    .locals 1
    .param p1, "payType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p2, "mPayInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 409
    sget-object v0, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/joymeng/payment/channel/Alipay;->Pay(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 411
    sget-object v0, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/joymeng/payment/channel/Iapppay;->Pay(Landroid/app/Activity;Ljava/util/HashMap;)V

    goto :goto_0

    .line 412
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 413
    sget-object v0, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/joymeng/payment/channel/Unionpay;->Pay(Landroid/app/Activity;Ljava/util/HashMap;)V

    goto :goto_0

    .line 414
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 415
    sget-object v0, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    invoke-direct {p0, v0, p2}, Lcom/ltpay/activity/PayPage;->CM_Pay(Landroid/app/Activity;Ljava/util/HashMap;)V

    goto :goto_0

    .line 416
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 417
    sget-object v0, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    invoke-direct {p0, v0, p2}, Lcom/ltpay/activity/PayPage;->Un_Pay(Landroid/app/Activity;Ljava/util/HashMap;)V

    goto :goto_0

    .line 418
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    invoke-direct {p0, v0, p2}, Lcom/ltpay/activity/PayPage;->Ye_Pay(Landroid/app/Activity;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private payLogic(D)V
    .locals 7
    .param p1, "balance"    # D

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "NeedMoney":I
    const-wide/16 v1, 0x0

    .line 344
    .local v1, "balanceCounsume":D
    iget-object v3, p0, Lcom/ltpay/activity/PayPage;->RealPayMoneyFloat:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, v3, p1

    if-ltz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/ltpay/activity/PayPage;->RealPayMoneyFloat:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v3, p1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 347
    move-wide v1, p1

    .line 357
    :goto_0
    iget-object v3, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v4, "MoneyAmount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v3, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v4, "BalanceCounsume"

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->FormatMoneyStr(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v3, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v4, "UserPassword"

    sget-object v5, Lcom/ltpay/activity/Login;->password:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget v3, p0, Lcom/ltpay/activity/PayPage;->payType:I

    iget-object v4, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    invoke-direct {p0, v3, v4}, Lcom/ltpay/activity/PayPage;->pay(ILjava/util/HashMap;)V

    .line 364
    sget-object v3, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 365
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    .line 352
    iget-object v3, p0, Lcom/ltpay/activity/PayPage;->RealPayMoneyFloat:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method private payWithBalance()V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lcom/ltpay/activity/PayPage$4;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/PayPage$4;-><init>(Lcom/ltpay/activity/PayPage;)V

    .line 334
    .local v0, "call":Lcom/ltpay/function/CallBack2;
    sget-object v1, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    sget-object v2, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ltpay/function/Server;->getBalance(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    .line 335
    return-void
.end method

.method private setPayType(Ljava/lang/String;)V
    .locals 5
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    .line 233
    return-void

    .line 228
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ltpay_iteam"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ltpay_radioButton"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 230
    .local v1, "isSelect":Z
    :goto_1
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ltpay_radioButton"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->RadioButton(Ljava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 231
    if-eqz v1, :cond_1

    iput v0, p0, Lcom/ltpay/activity/PayPage;->payType:I

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "isSelect":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private setProductInfo()V
    .locals 6

    .prologue
    .line 143
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_product"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/ltpay/activity/PayPage;->productName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->MoneyAmount:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ltpay/function/Tools;->FormatMoneyStr(D)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "ProductMoney":Ljava/lang/String;
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->MoneyAmount:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ltpay/activity/PayPage;->couponAmount:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/ltpay/function/Tools;->FormatMoneyStr(D)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "RealPayMoney":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->RealPayMoneyFloat:Ljava/lang/Double;

    .line 149
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_money"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_money_need"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/ltpay/activity/PayPage;->finish()V

    .line 215
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    sput-object v0, Lcom/ltpay/activity/Coupon;->SelectedCoupon:Lcom/ltpay/activity/Coupon_T;

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sput-object p0, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    .line 91
    sget-boolean v2, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    if-nez v2, :cond_0

    .line 93
    sget-object v2, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 94
    sget-object v2, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    const-class v3, Lcom/ltpay/activity/Login;

    invoke-static {v2, v3}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v2, Lcom/ltpay/function/Preference;

    const-string v5, "LtAccountInfo"

    invoke-direct {v2, p0, v5}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->localInfo:Lcom/ltpay/function/Preference;

    .line 101
    invoke-virtual {p0}, Lcom/ltpay/activity/PayPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "payInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    .line 103
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 105
    sget-object v2, Lcom/ltpay/activity/PayPage;->payInfo:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    .line 106
    sget-object v2, Lcom/ltpay/activity/PayPage;->payInfo:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "ProductId"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "ProductId"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->productId:Ljava/lang/String;

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "ProductName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "ProductName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->productName:Ljava/lang/String;

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "MoneyAmount"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "MoneyAmount"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->MoneyAmount:Ljava/lang/Double;

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "LtAppId"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "LtAppId"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->appId:Ljava/lang/String;

    .line 119
    :cond_5
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->mPayInfo:Ljava/util/HashMap;

    const-string v5, "ProductMoney"

    iget-object v6, p0, Lcom/ltpay/activity/PayPage;->MoneyAmount:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ltpay/function/Tools;->FormatMoneyStr(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lcom/ltpay/activity/PayPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ltpay/function/Tools;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    .line 124
    .local v1, "isLandscape":Z
    if-eqz v1, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/ltpay/activity/PayPage;->setRequestedOrientation(I)V

    .line 126
    const-string v2, "ltpay_layout_pay"

    const-string v5, "layout"

    invoke-static {p0, v2, v5}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ltpay/activity/PayPage;->setContentView(I)V

    .line 129
    new-instance v2, Lcom/ltpay/function/Component;

    sget-object v5, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ltpay/activity/PayPage;->listener:Lcom/ltpay/function/Component$ClickListener;

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "ltpay_more_paytype"

    aput-object v8, v7, v3

    const-string v8, "ltpay_btn"

    aput-object v8, v7, v4

    const-string v8, "ltpay_iteam_others"

    aput-object v8, v7, v9

    invoke-direct {v2, v5, v6, v7}, Lcom/ltpay/function/Component;-><init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    .line 131
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "ltpay_product"

    aput-object v6, v5, v3

    const-string v6, "ltpay_money"

    aput-object v6, v5, v4

    const-string v6, "ltpay_coupon"

    aput-object v6, v5, v9

    const-string v6, "ltpay_money_need"

    aput-object v6, v5, v10

    invoke-virtual {v2, v5}, Lcom/ltpay/function/Component;->AddView([Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "ltpay_iteam1"

    aput-object v6, v5, v3

    const-string v6, "ltpay_iteam2"

    aput-object v6, v5, v4

    const-string v6, "ltpay_iteam3"

    aput-object v6, v5, v9

    const-string v6, "ltpay_iteam4"

    aput-object v6, v5, v10

    const-string v6, "ltpay_iteam5"

    aput-object v6, v5, v11

    const/4 v6, 0x5

    const-string v7, "ltpay_iteam6"

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Lcom/ltpay/function/Component;->AddView([Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "ltpay_radioButton1"

    aput-object v6, v5, v3

    const-string v3, "ltpay_radioButton2"

    aput-object v3, v5, v4

    const-string v3, "ltpay_radioButton3"

    aput-object v3, v5, v9

    const-string v3, "ltpay_radioButton4"

    aput-object v3, v5, v10

    const-string v3, "ltpay_radioButton5"

    aput-object v3, v5, v11

    const/4 v3, 0x5

    const-string v4, "ltpay_radioButton6"

    aput-object v4, v5, v3

    invoke-virtual {v2, v5}, Lcom/ltpay/function/Component;->AddView([Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/ltpay/activity/PayPage;->loadPrePayType()V

    .line 136
    invoke-direct {p0}, Lcom/ltpay/activity/PayPage;->checkCoupon()V

    .line 137
    invoke-direct {p0}, Lcom/ltpay/activity/PayPage;->setProductInfo()V

    goto/16 :goto_0

    .line 109
    .end local v1    # "isLandscape":Z
    :cond_6
    sget-object v2, Lcom/ltpay/activity/PayPage;->Instance:Landroid/app/Activity;

    const-string v3, "\u65e0\u652f\u4ed8\u76f8\u5173\u53c2\u6570\uff0c\u9000\u51fa\u5f53\u524d\u652f\u4ed8\u8c03\u7528"

    invoke-static {v2, v3}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v1    # "isLandscape":Z
    :cond_7
    move v2, v4

    .line 124
    goto/16 :goto_1
.end method

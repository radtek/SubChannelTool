.class public Lcom/ltsdk/union/platform/LtsdkGoogle;
.super Landroid/app/Activity;
.source "LtsdkGoogle.java"

# interfaces
.implements Lcom/ltsdk/union/platform/IabBroadcastReceiver$IabBroadcastListener;


# static fields
.field private static LTSDK_CALLBACK_URL:Ljava/lang/String; = null

.field private static LTSDK_ORDER_URL:Ljava/lang/String; = null

.field private static LTSDK_PRODUCTLIST_URL:Ljava/lang/String; = null

.field public static LTSDK_SERVER_NAME:Ljava/lang/String; = null

.field private static final RC_REQUEST:I = 0x2711

.field private static mProductList:Ljava/util/HashMap;
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
.field private Instance:Landroid/app/Activity;

.field LtUserId:Ljava/lang/String;

.field ProductMoneyFen:Ljava/lang/String;

.field Reserve:Ljava/lang/String;

.field ServerId:Ljava/lang/String;

.field appId:Ljava/lang/String;

.field private isInitSuccess:Z

.field mConsumeFinishedListener:Lcom/ltsdk/union/platform/IabHelper$OnConsumeFinishedListener;

.field private mHelper:Lcom/ltsdk/union/platform/IabHelper;

.field private mLtOrderId:Ljava/lang/String;

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

.field mPurchaseFinishedListener:Lcom/ltsdk/union/platform/IabHelper$OnIabPurchaseFinishedListener;

.field private packageName:Ljava/lang/String;

.field productId:Ljava/lang/String;

.field productName:Ljava/lang/String;

.field private publickey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "netuser.joymeng.com"

    sput-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_SERVER_NAME:Ljava/lang/String;

    .line 48
    const-string v0, "http://netuser.joymeng.com/charge_google/productlist"

    sput-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_PRODUCTLIST_URL:Ljava/lang/String;

    .line 49
    const-string v0, "http://netuser.joymeng.com/order/allplat"

    sput-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_ORDER_URL:Ljava/lang/String;

    .line 50
    const-string v0, "http://netuser.joymeng.com/charge_google/notify"

    sput-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_CALLBACK_URL:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mProductList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->isInitSuccess:Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->appId:Ljava/lang/String;

    .line 88
    const-string v0, "001"

    iput-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->productId:Ljava/lang/String;

    .line 89
    const-string v0, "\u5546\u54c1XXX"

    iput-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->productName:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->ProductMoneyFen:Ljava/lang/String;

    .line 527
    new-instance v0, Lcom/ltsdk/union/platform/LtsdkGoogle$1;

    invoke-direct {v0, p0}, Lcom/ltsdk/union/platform/LtsdkGoogle$1;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;)V

    iput-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPurchaseFinishedListener:Lcom/ltsdk/union/platform/IabHelper$OnIabPurchaseFinishedListener;

    .line 586
    new-instance v0, Lcom/ltsdk/union/platform/LtsdkGoogle$2;

    invoke-direct {v0, p0}, Lcom/ltsdk/union/platform/LtsdkGoogle$2;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;)V

    iput-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mConsumeFinishedListener:Lcom/ltsdk/union/platform/IabHelper$OnConsumeFinishedListener;

    .line 29
    return-void
.end method

.method private InitHelper(Lcom/ltpay/function/CallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    new-instance v1, Lcom/ltsdk/union/platform/LtsdkGoogle$6;

    invoke-direct {v1, p0, p1}, Lcom/ltsdk/union/platform/LtsdkGoogle$6;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltpay/function/CallBack;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method private LoadProductList(Lcom/ltpay/function/CallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 179
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ltsdk/union/platform/LtsdkGoogle$5;

    invoke-direct {v1, p0, p1}, Lcom/ltsdk/union/platform/LtsdkGoogle$5;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltpay/function/CallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    return-void
.end method

.method public static ShowPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
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
    .line 36
    .local p1, "payInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p1, Lcom/ltsdk/union/platform/LtsdkGoogle;->payInfo:Ljava/util/HashMap;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "payInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static UpdateServerName(Ljava/lang/String;)V
    .locals 2
    .param p0, "serverName"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sput-object p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_SERVER_NAME:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_SERVER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge_google/productlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_PRODUCTLIST_URL:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_SERVER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/order/allplat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_ORDER_URL:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_SERVER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge_google/notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_CALLBACK_URL:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/ltsdk/union/platform/LtsdkGoogle;)Lcom/ltsdk/union/platform/IabHelper;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mHelper:Lcom/ltsdk/union/platform/IabHelper;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_CALLBACK_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltsdk/union/platform/IabHelper;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mHelper:Lcom/ltsdk/union/platform/IabHelper;

    return-void
.end method

.method static synthetic access$11(Lcom/ltsdk/union/platform/LtsdkGoogle;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->queryInventoryAsync()V

    return-void
.end method

.method static synthetic access$2(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltsdk/union/platform/Purchase;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->consumeAsync(Lcom/ltsdk/union/platform/Purchase;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ltsdk/union/platform/LtsdkGoogle;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->isInitSuccess:Z

    return-void
.end method

.method static synthetic access$5(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->InitHelper(Lcom/ltpay/function/CallBack;)V

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_PRODUCTLIST_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ltsdk/union/platform/LtsdkGoogle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mProductList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ltsdk/union/platform/LtsdkGoogle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->publickey:Ljava/lang/String;

    return-object v0
.end method

.method private consumeAsync(Lcom/ltsdk/union/platform/Purchase;)V
    .locals 2
    .param p1, "purchase"    # Lcom/ltsdk/union/platform/Purchase;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    new-instance v1, Lcom/ltsdk/union/platform/LtsdkGoogle$8;

    invoke-direct {v1, p0, p1}, Lcom/ltsdk/union/platform/LtsdkGoogle$8;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltsdk/union/platform/Purchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method private createLtOrder(Lcom/ltpay/function/CallBack;)V
    .locals 7
    .param p1, "callback"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 434
    :try_start_0
    const-string v5, "createLtOrder()"

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 436
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 438
    .local v3, "reqData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/ltpay/activity/PayPage;->AppendPayParams(Ljava/util/HashMap;)V

    .line 440
    const-string v5, "userid"

    iget-object v6, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LtUserId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v5, "appId"

    iget-object v6, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->appId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v5, "instantid"

    iget-object v6, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->ServerId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v6, "reserve"

    iget-object v5, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Reserve:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "reserve\u503c"

    :goto_0
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 447
    .local v1, "platData":Lorg/json/JSONObject;
    const-string v5, "version"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string v5, "plat_type"

    const-string v6, "google"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v5, "plat_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createLtOrder() ->> request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u521b\u5efa\u8ba2\u5355\u8bf7\u6c42 ->> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_ORDER_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 454
    sget-object v5, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_ORDER_URL:Ljava/lang/String;

    const-string v6, "post"

    invoke-static {v5, v3, v6}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "rdata":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createLtOrder() ->> rdata:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 457
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 458
    .local v4, "rjson":Lorg/json/JSONObject;
    const-string v5, "orderId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mLtOrderId:Ljava/lang/String;

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ltUserId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LtUserId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "orderId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mLtOrderId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 464
    iget-object v5, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mLtOrderId:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mLtOrderId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 466
    const-string v5, "\u8ba2\u5355\u521b\u5efa\u6210\u529f"

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 467
    invoke-interface {p1}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 482
    .end local v1    # "platData":Lorg/json/JSONObject;
    .end local v2    # "rdata":Ljava/lang/String;
    .end local v3    # "reqData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "rjson":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 444
    .restart local v3    # "reqData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Reserve:Ljava/lang/String;

    goto/16 :goto_0

    .line 471
    .restart local v1    # "platData":Lorg/json/JSONObject;
    .restart local v2    # "rdata":Ljava/lang/String;
    .restart local v4    # "rjson":Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8ba2\u5355\u521b\u5efa\u5931\u8d25, orderid=0 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Reserve:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 472
    invoke-interface {p1}, Lcom/ltpay/function/CallBack;->Onfail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 475
    .end local v1    # "platData":Lorg/json/JSONObject;
    .end local v2    # "rdata":Ljava/lang/String;
    .end local v3    # "reqData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "rjson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8ba2\u5355\u521b\u5efa\u5931\u8d25, orderid=0 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Reserve:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 478
    invoke-interface {p1}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 480
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private queryInventoryAsync()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    new-instance v1, Lcom/ltsdk/union/platform/LtsdkGoogle$7;

    invoke-direct {v1, p0}, Lcom/ltsdk/union/platform/LtsdkGoogle$7;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method


# virtual methods
.method public Pay()V
    .locals 3

    .prologue
    .line 407
    iget-boolean v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->isInitSuccess:Z

    if-eqz v1, :cond_0

    .line 409
    new-instance v0, Lcom/ltsdk/union/platform/LtsdkGoogle$9;

    invoke-direct {v0, p0}, Lcom/ltsdk/union/platform/LtsdkGoogle$9;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;)V

    .line 425
    .local v0, "orderCall":Lcom/ltpay/function/CallBack;
    invoke-direct {p0, v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->createLtOrder(Lcom/ltpay/function/CallBack;)V

    .line 428
    .end local v0    # "orderCall":Lcom/ltpay/function/CallBack;
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    const-string v2, "Google\u652f\u4ed8\u521d\u59cb\u5316\u672a\u5b8c\u6210"

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method alert(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 395
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    .local v0, "bld":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 397
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Showing alert dialog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 400
    return-void
.end method

.method complain(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**** Google pay Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->alert(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/ltpay/function/CallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 146
    const-string v3, "google_LtsdkServerName"

    invoke-static {p1, v3}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "serverName":Ljava/lang/String;
    invoke-static {v2}, Lcom/ltsdk/union/platform/LtsdkGoogle;->UpdateServerName(Ljava/lang/String;)V

    .line 149
    const-string v3, "notifyUrl"

    invoke-static {p1, v3}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "notifyUrl":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sput-object v1, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_CALLBACK_URL:Ljava/lang/String;

    .line 151
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u652f\u4ed8\u56de\u8c03\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_CALLBACK_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 153
    const-string v3, "google_publickey"

    invoke-static {p1, v3}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->publickey:Ljava/lang/String;

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "google_publickey:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->publickey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->packageName:Ljava/lang/String;

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/ltsdk/union/platform/LtsdkGoogle$4;

    invoke-direct {v0, p0, p2}, Lcom/ltsdk/union/platform/LtsdkGoogle$4;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltpay/function/CallBack;)V

    .line 173
    .local v0, "ProductListCall":Lcom/ltpay/function/CallBack;
    invoke-direct {p0, v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->LoadProductList(Lcom/ltpay/function/CallBack;)V

    .line 174
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mHelper:Lcom/ltsdk/union/platform/IabHelper;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mHelper:Lcom/ltsdk/union/platform/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ltsdk/union/platform/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 620
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    iput-object p0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    .line 99
    invoke-virtual {p0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "payInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    .line 101
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 103
    sget-object v2, Lcom/ltsdk/union/platform/LtsdkGoogle;->payInfo:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    .line 104
    sget-object v2, Lcom/ltsdk/union/platform/LtsdkGoogle;->payInfo:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "LtJoyId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "LtJoyId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->LtUserId:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "LtAppId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "LtAppId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->appId:Ljava/lang/String;

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "LtInstantId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "LtInstantId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->ServerId:Ljava/lang/String;

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "LtReserve"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "LtReserve"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Reserve:Ljava/lang/String;

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "ProductId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "ProductId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->productId:Ljava/lang/String;

    .line 118
    :cond_5
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "ProductName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "ProductName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->productName:Ljava/lang/String;

    .line 119
    :cond_6
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "MoneyAmount"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPayInfo:Ljava/util/HashMap;

    const-string v3, "MoneyAmount"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->ProductMoneyFen:Ljava/lang/String;

    .line 121
    :cond_7
    new-instance v0, Lcom/ltsdk/union/platform/LtsdkGoogle$3;

    invoke-direct {v0, p0}, Lcom/ltsdk/union/platform/LtsdkGoogle$3;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;)V

    .line 140
    .local v0, "call":Lcom/ltpay/function/CallBack;
    invoke-virtual {p0, p0, v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->init(Landroid/app/Activity;Lcom/ltpay/function/CallBack;)V

    .line 141
    .end local v0    # "call":Lcom/ltpay/function/CallBack;
    :goto_0
    return-void

    .line 107
    :cond_8
    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    const-string v3, "\u65e0\u652f\u4ed8\u76f8\u5173\u53c2\u6570\uff0c\u9000\u51fa\u5f53\u524d\u652f\u4ed8\u8c03\u7528"

    invoke-static {v2, v3}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 625
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 626
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mHelper:Lcom/ltsdk/union/platform/IabHelper;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mHelper:Lcom/ltsdk/union/platform/IabHelper;

    invoke-virtual {v0}, Lcom/ltsdk/union/platform/IabHelper;->disposeWhenFinished()V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mHelper:Lcom/ltsdk/union/platform/IabHelper;

    .line 631
    :cond_0
    return-void
.end method

.method protected platformPay(Lcom/ltpay/function/CallBack;)V
    .locals 9
    .param p1, "callback"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 489
    :try_start_0
    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->productId:Ljava/lang/String;

    .line 490
    .local v8, "pid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u652f\u4ed8\u5546\u54c1id: id_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mProductList:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u670d\u52a1\u5668\u5546\u54c1\u5217\u8868\u4e2d\u4e0d\u542b\u6709: id_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0c\u6e38\u620f\u63a5\u5165\u65f6\uff0cProductId\u8bf7\u4f7f\u7528\u8ba1\u8d39\u670d\u52a1\u5668\u4e2d\u914d\u7f6e\u7684\u5546\u54c1id\u4fe1\u606f\r\n \u5982\u5546\u54c1\uff1a \"id_25\":\"paid.card.2\"\uff0c \u6e38\u620f\u4f20\u53c2\u6570\uff1aProductId=25 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 495
    .local v7, "info":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\nLtsdkGoogle.\u83b7\u53d6\u670d\u52a1\u5668\u5546\u54c1\u5217\u8868\u4fe1\u606f ->> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ltsdk/union/platform/LtsdkGoogle;->LTSDK_PRODUCTLIST_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-static {v7}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 512
    .end local v7    # "info":Ljava/lang/String;
    .end local v8    # "pid":Ljava/lang/String;
    :goto_0
    return-void

    .line 503
    .restart local v8    # "pid":Ljava/lang/String;
    :cond_0
    const-string v0, "\u8c03\u7528google\u652f\u4ed8\u63a5\u53e3"

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mHelper:Lcom/ltsdk/union/platform/IabHelper;

    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->Instance:Landroid/app/Activity;

    sget-object v2, Lcom/ltsdk/union/platform/LtsdkGoogle;->mProductList:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mPurchaseFinishedListener:Lcom/ltsdk/union/platform/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v5, p0, Lcom/ltsdk/union/platform/LtsdkGoogle;->mLtOrderId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/ltsdk/union/platform/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ltsdk/union/platform/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    .end local v8    # "pid":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 510
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public receivedBroadcast()V
    .locals 0

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->queryInventoryAsync()V

    .line 639
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 517
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltsdk/union/platform/LtsdkGoogle$10;

    invoke-direct {v1, p0, p1}, Lcom/ltsdk/union/platform/LtsdkGoogle$10;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    return-void
.end method

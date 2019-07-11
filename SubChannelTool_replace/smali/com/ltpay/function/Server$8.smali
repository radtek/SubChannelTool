.class Lcom/ltpay/function/Server$8;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->GetCouponList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ProductId:Ljava/lang/String;

.field private final synthetic val$ProductMoney:Ljava/lang/String;

.field private final synthetic val$ProductName:Ljava/lang/String;

.field private final synthetic val$appId:Ljava/lang/String;

.field private final synthetic val$call:Lcom/ltpay/function/CallBack2;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Server$8;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Server$8;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$8;->val$uid:Ljava/lang/String;

    iput-object p4, p0, Lcom/ltpay/function/Server$8;->val$ProductMoney:Ljava/lang/String;

    iput-object p5, p0, Lcom/ltpay/function/Server$8;->val$ProductId:Ljava/lang/String;

    iput-object p6, p0, Lcom/ltpay/function/Server$8;->val$ProductName:Ljava/lang/String;

    iput-object p7, p0, Lcom/ltpay/function/Server$8;->val$call:Lcom/ltpay/function/CallBack2;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 416
    :try_start_0
    iget-object v8, p0, Lcom/ltpay/function/Server$8;->val$context:Landroid/content/Context;

    const-string v9, "/Coupon/lists"

    invoke-static {v8, v9}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "Url":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 419
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "app_id"

    iget-object v9, p0, Lcom/ltpay/function/Server$8;->val$appId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v8, "uid"

    iget-object v9, p0, Lcom/ltpay/function/Server$8;->val$uid:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v8, "omoney"

    iget-object v9, p0, Lcom/ltpay/function/Server$8;->val$ProductMoney:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v8, "productId"

    iget-object v9, p0, Lcom/ltpay/function/Server$8;->val$ProductId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v8, "productName"

    iget-object v9, p0, Lcom/ltpay/function/Server$8;->val$ProductName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {v3, v0}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 426
    const-string v8, "get"

    invoke-static {v0, v3, v8}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "rdata":Ljava/lang/String;
    sget-object v8, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u83b7\u53d6\u4f18\u60e0\u5238\u4fe1\u606f ->> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v3, v10}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v8, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 436
    .local v7, "userJson":Lorg/json/JSONObject;
    const-string v8, "status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 437
    .local v6, "status":I
    const-string v8, "msg"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "msg":Ljava/lang/String;
    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 443
    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 445
    .local v1, "data":Lorg/json/JSONObject;
    packed-switch v6, :pswitch_data_0

    .line 452
    iget-object v8, p0, Lcom/ltpay/function/Server$8;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v8, v9}, Lcom/ltpay/function/CallBack2;->Onfail([Ljava/lang/Object;)V

    .line 461
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "rdata":Ljava/lang/String;
    .end local v6    # "status":I
    .end local v7    # "userJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 448
    .restart local v0    # "Url":Ljava/lang/String;
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "msg":Ljava/lang/String;
    .restart local v5    # "rdata":Ljava/lang/String;
    .restart local v6    # "status":I
    .restart local v7    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    iget-object v8, p0, Lcom/ltpay/function/Server$8;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-interface {v8, v9}, Lcom/ltpay/function/CallBack2;->OnSuccess([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "rdata":Ljava/lang/String;
    .end local v6    # "status":I
    .end local v7    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 458
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/ltpay/function/Server$8;->val$context:Landroid/content/Context;

    const-string v9, "\u83b7\u53d6\u4f18\u60e0\u5238\u4fe1\u606f\u5f02\u5e38\uff01"

    invoke-static {v8, v9}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

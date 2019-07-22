.class Lcom/ltpay/function/Server$14;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->getBalance(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$call:Lcom/ltpay/function/CallBack2;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Server$14;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Server$14;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$14;->val$call:Lcom/ltpay/function/CallBack2;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 750
    :try_start_0
    iget-object v9, p0, Lcom/ltpay/function/Server$14;->val$context:Landroid/content/Context;

    const-string v10, "/Order/balance"

    invoke-static {v9, v10}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "Url":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "uid"

    iget-object v10, p0, Lcom/ltpay/function/Server$14;->val$uid:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-static {v4, v0}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 756
    const-string v9, "get"

    invoke-static {v0, v4, v9}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 757
    .local v6, "rdata":Ljava/lang/String;
    sget-object v9, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u83b7\u53d6\u7528\u6237\u4f59\u989d ->> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v4, v11}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    sget-object v9, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 761
    .local v8, "userJson":Lorg/json/JSONObject;
    const-string v9, "status"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 762
    .local v7, "status":I
    const-string v9, "msg"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 764
    .local v5, "msg":Ljava/lang/String;
    const-string v9, "data"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 765
    .local v2, "data":Lorg/json/JSONObject;
    const-string v9, "balance"

    const-string v10, "0"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "balance":Ljava/lang/String;
    invoke-static {v5}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 770
    packed-switch v7, :pswitch_data_0

    .line 777
    iget-object v9, p0, Lcom/ltpay/function/Server$14;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v9, v10}, Lcom/ltpay/function/CallBack2;->Onfail([Ljava/lang/Object;)V

    .line 786
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "balance":Ljava/lang/String;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "rdata":Ljava/lang/String;
    .end local v7    # "status":I
    .end local v8    # "userJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 773
    .restart local v0    # "Url":Ljava/lang/String;
    .restart local v1    # "balance":Ljava/lang/String;
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "rdata":Ljava/lang/String;
    .restart local v7    # "status":I
    .restart local v8    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    iget-object v9, p0, Lcom/ltpay/function/Server$14;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-interface {v9, v10}, Lcom/ltpay/function/CallBack2;->OnSuccess([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 781
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "balance":Ljava/lang/String;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "rdata":Ljava/lang/String;
    .end local v7    # "status":I
    .end local v8    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 783
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/ltpay/function/Server$14;->val$context:Landroid/content/Context;

    const-string v10, "\u83b7\u53d6\u7528\u6237\u4f59\u989d\u5f02\u5e38\uff01"

    invoke-static {v9, v10}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 784
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

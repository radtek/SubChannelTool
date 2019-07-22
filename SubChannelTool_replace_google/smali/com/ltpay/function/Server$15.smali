.class Lcom/ltpay/function/Server$15;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->UserRegisterAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$account:Ljava/lang/String;

.field private final synthetic val$call:Lcom/ltpay/function/CallBack2;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Server$15;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Server$15;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$15;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/ltpay/function/Server$15;->val$call:Lcom/ltpay/function/CallBack2;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 801
    :try_start_0
    iget-object v7, p0, Lcom/ltpay/function/Server$15;->val$context:Landroid/content/Context;

    const-string v8, "/User/regUname"

    invoke-static {v7, v8}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "Url":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 804
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "account"

    iget-object v8, p0, Lcom/ltpay/function/Server$15;->val$account:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v7, "password"

    iget-object v8, p0, Lcom/ltpay/function/Server$15;->val$password:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v7, "SubChannelId"

    sget-object v8, Lcom/ltpay/LtSDK;->SubChannelId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v7, "DeviceID"

    sget-object v8, Lcom/ltpay/LtSDK;->DeviceID:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v7, "DeviceModel"

    sget-object v8, Lcom/ltpay/LtSDK;->DeviceModel:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v7, "DeviceBrand"

    sget-object v8, Lcom/ltpay/LtSDK;->DeviceBrand:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    invoke-static {v2, v0}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 814
    const-string v7, "get"

    invoke-static {v0, v2, v7}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 815
    .local v4, "rdata":Ljava/lang/String;
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u7528\u6237\u8d26\u53f7\u6ce8\u518c ->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 819
    .local v6, "userJson":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 820
    .local v5, "status":I
    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, "msg":Ljava/lang/String;
    iget-object v7, p0, Lcom/ltpay/function/Server$15;->val$context:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 824
    packed-switch v5, :pswitch_data_0

    .line 831
    iget-object v7, p0, Lcom/ltpay/function/Server$15;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-interface {v7, v8}, Lcom/ltpay/function/CallBack2;->Onfail([Ljava/lang/Object;)V

    .line 840
    .end local v0    # "Url":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "rdata":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "userJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 827
    .restart local v0    # "Url":Ljava/lang/String;
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "rdata":Ljava/lang/String;
    .restart local v5    # "status":I
    .restart local v6    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    iget-object v7, p0, Lcom/ltpay/function/Server$15;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-interface {v7, v8}, Lcom/ltpay/function/CallBack2;->OnSuccess([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 835
    .end local v0    # "Url":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "rdata":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 837
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/ltpay/function/Server$15;->val$context:Landroid/content/Context;

    const-string v8, "\u7528\u6237\u8d26\u53f7\u6ce8\u518c\u5f02\u5e38\uff01"

    invoke-static {v7, v8}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 838
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

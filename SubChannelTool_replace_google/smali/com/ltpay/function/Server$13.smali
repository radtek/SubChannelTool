.class Lcom/ltpay/function/Server$13;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->getPhoto(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
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
    iput-object p1, p0, Lcom/ltpay/function/Server$13;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Server$13;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$13;->val$call:Lcom/ltpay/function/CallBack2;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 697
    :try_start_0
    iget-object v10, p0, Lcom/ltpay/function/Server$13;->val$context:Landroid/content/Context;

    const-string v11, "/User/getUserInfo"

    invoke-static {v10, v11}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "Url":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 700
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "uid"

    iget-object v11, p0, Lcom/ltpay/function/Server$13;->val$uid:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {v3, v0}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 703
    const-string v10, "get"

    invoke-static {v0, v3, v10}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 704
    .local v7, "rdata":Ljava/lang/String;
    sget-object v10, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u83b7\u53d6\u7528\u6237\u5934\u50cf ->> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v3, v12}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    sget-object v10, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 708
    .local v9, "userJson":Lorg/json/JSONObject;
    const-string v10, "status"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 709
    .local v8, "status":I
    const-string v10, "msg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, "msg":Ljava/lang/String;
    const-string v10, "data"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 712
    .local v1, "data":Lorg/json/JSONObject;
    const-string v10, "head_img"

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "picData":Ljava/lang/String;
    const-string v10, "heads"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 716
    .local v6, "pics":Lorg/json/JSONArray;
    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 719
    packed-switch v8, :pswitch_data_0

    .line 726
    iget-object v10, p0, Lcom/ltpay/function/Server$13;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v10, v11}, Lcom/ltpay/function/CallBack2;->Onfail([Ljava/lang/Object;)V

    .line 735
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "picData":Ljava/lang/String;
    .end local v6    # "pics":Lorg/json/JSONArray;
    .end local v7    # "rdata":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "userJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 722
    .restart local v0    # "Url":Ljava/lang/String;
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "msg":Ljava/lang/String;
    .restart local v5    # "picData":Ljava/lang/String;
    .restart local v6    # "pics":Lorg/json/JSONArray;
    .restart local v7    # "rdata":Ljava/lang/String;
    .restart local v8    # "status":I
    .restart local v9    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    iget-object v10, p0, Lcom/ltpay/function/Server$13;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-interface {v10, v11}, Lcom/ltpay/function/CallBack2;->OnSuccess([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "picData":Ljava/lang/String;
    .end local v6    # "pics":Lorg/json/JSONArray;
    .end local v7    # "rdata":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 732
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/ltpay/function/Server$13;->val$context:Landroid/content/Context;

    const-string v11, "\u83b7\u53d6\u7528\u6237\u5934\u50cf\u5f02\u5e38\uff01"

    invoke-static {v10, v11}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

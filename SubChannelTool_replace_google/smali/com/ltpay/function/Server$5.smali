.class Lcom/ltpay/function/Server$5;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->GetAnnounceMent(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appId:Ljava/lang/String;

.field private final synthetic val$call:Lcom/ltpay/function/CallBack2;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Server$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Server$5;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$5;->val$call:Lcom/ltpay/function/CallBack2;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 237
    :try_start_0
    iget-object v11, p0, Lcom/ltpay/function/Server$5;->val$context:Landroid/content/Context;

    const-string v12, "/Notice/detail"

    invoke-static {v11, v12}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "Url":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "app_id"

    iget-object v12, p0, Lcom/ltpay/function/Server$5;->val$appId:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {v5, v0}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 244
    const-string v11, "get"

    invoke-static {v0, v5, v11}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "rdata":Ljava/lang/String;
    sget-object v11, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u83b7\u53d6\u516c\u544a\u4fe1\u606f ->> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v5, v13}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v11, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v10, "userJson":Lorg/json/JSONObject;
    const-string v11, "status"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 250
    .local v8, "status":I
    const-string v11, "msg"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "msg":Ljava/lang/String;
    invoke-static {v6}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 255
    const-string v11, "data"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 256
    .local v2, "data":Lorg/json/JSONObject;
    const-string v11, "id"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "id":Ljava/lang/String;
    const-string v11, "title"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "tittle":Ljava/lang/String;
    const-string v11, "content"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "content":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 267
    iget-object v11, p0, Lcom/ltpay/function/Server$5;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v11, v12}, Lcom/ltpay/function/CallBack2;->Onfail([Ljava/lang/Object;)V

    .line 276
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "rdata":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "tittle":Ljava/lang/String;
    .end local v10    # "userJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 263
    .restart local v0    # "Url":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v7    # "rdata":Ljava/lang/String;
    .restart local v8    # "status":I
    .restart local v9    # "tittle":Ljava/lang/String;
    .restart local v10    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    iget-object v11, p0, Lcom/ltpay/function/Server$5;->val$call:Lcom/ltpay/function/CallBack2;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-interface {v11, v12}, Lcom/ltpay/function/CallBack2;->OnSuccess([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "rdata":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "tittle":Ljava/lang/String;
    .end local v10    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 273
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/ltpay/function/Server$5;->val$context:Landroid/content/Context;

    const-string v12, "\u83b7\u53d6\u516c\u544a\u5f02\u5e38\uff01"

    invoke-static {v11, v12}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

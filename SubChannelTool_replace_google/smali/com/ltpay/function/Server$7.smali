.class Lcom/ltpay/function/Server$7;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->GetSystemMessageList(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
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
    iput-object p1, p0, Lcom/ltpay/function/Server$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Server$7;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$7;->val$call:Lcom/ltpay/function/CallBack2;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 355
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$7;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "/System/lists"

    invoke-static/range {v17 .. v18}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "Url":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "app_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$7;->val$appId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {v9, v3}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 362
    const-string v17, "get"

    move-object/from16 v0, v17

    invoke-static {v3, v9, v0}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, "rdata":Ljava/lang/String;
    sget-object v17, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u83b7\u53d6\u6d3b\u52a8\u5217\u8868 ->> "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v17, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    .local v16, "userJson":Lorg/json/JSONObject;
    const-string v17, "status"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 368
    .local v13, "status":I
    const-string v17, "msg"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, "msg":Ljava/lang/String;
    invoke-static {v10}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 374
    const-string v17, "data"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 376
    .local v5, "data":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v2, v0, [Lcom/ltpay/activity/ActivityCenter_T;

    .line 377
    .local v2, "Array":[Lcom/ltpay/activity/ActivityCenter_T;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_0

    .line 390
    packed-switch v13, :pswitch_data_0

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$7;->val$call:Lcom/ltpay/function/CallBack2;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/ltpay/function/CallBack2;->Onfail([Ljava/lang/Object;)V

    .line 406
    .end local v2    # "Array":[Lcom/ltpay/activity/ActivityCenter_T;
    .end local v3    # "Url":Ljava/lang/String;
    .end local v5    # "data":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "msg":Ljava/lang/String;
    .end local v12    # "rdata":Ljava/lang/String;
    .end local v13    # "status":I
    .end local v16    # "userJson":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 379
    .restart local v2    # "Array":[Lcom/ltpay/activity/ActivityCenter_T;
    .restart local v3    # "Url":Ljava/lang/String;
    .restart local v5    # "data":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "msg":Ljava/lang/String;
    .restart local v12    # "rdata":Ljava/lang/String;
    .restart local v13    # "status":I
    .restart local v16    # "userJson":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 381
    .local v11, "obj":Lorg/json/JSONObject;
    const-string v17, "id"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, "id":Ljava/lang/String;
    const-string v17, "title"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 383
    .local v14, "title":Ljava/lang/String;
    const-string v17, "url"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 385
    .local v15, "url":Ljava/lang/String;
    const-string v17, "content"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "content":Ljava/lang/String;
    new-instance v17, Lcom/ltpay/activity/ActivityCenter_T;

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    const/16 v19, 0x2

    aput-object v15, v18, v19

    const/16 v19, 0x3

    aput-object v4, v18, v19

    invoke-direct/range {v17 .. v18}, Lcom/ltpay/activity/ActivityCenter_T;-><init>([Ljava/lang/String;)V

    aput-object v17, v2, v7

    .line 377
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 393
    .end local v4    # "content":Ljava/lang/String;
    .end local v8    # "id":Ljava/lang/String;
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "url":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$7;->val$call:Lcom/ltpay/function/CallBack2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/ltpay/function/CallBack2;->OnSuccess([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    .end local v2    # "Array":[Lcom/ltpay/activity/ActivityCenter_T;
    .end local v3    # "Url":Ljava/lang/String;
    .end local v5    # "data":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "msg":Ljava/lang/String;
    .end local v12    # "rdata":Ljava/lang/String;
    .end local v13    # "status":I
    .end local v16    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 403
    .local v6, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$7;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "\u83b7\u53d6\u6d3b\u52a8\u5217\u8868\u5f02\u5e38\uff01"

    invoke-static/range {v17 .. v18}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

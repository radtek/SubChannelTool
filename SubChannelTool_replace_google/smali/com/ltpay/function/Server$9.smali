.class Lcom/ltpay/function/Server$9;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->GetChargeRecodeList(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
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
    iput-object p1, p0, Lcom/ltpay/function/Server$9;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Server$9;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$9;->val$call:Lcom/ltpay/function/CallBack2;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 480
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$9;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "/Order/orderRecord"

    invoke-static/range {v17 .. v18}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "Url":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$9;->val$uid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-static {v10, v3}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 486
    const-string v17, "get"

    move-object/from16 v0, v17

    invoke-static {v3, v10, v0}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 487
    .local v14, "rdata":Ljava/lang/String;
    sget-object v17, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u83b7\u53d6\u5145\u503c\u8bb0\u5f55 ->> "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget-object v17, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    .local v16, "userJson":Lorg/json/JSONObject;
    const-string v17, "status"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 492
    .local v15, "status":I
    const-string v17, "msg"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 494
    .local v12, "msg":Ljava/lang/String;
    invoke-static {v12}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 498
    const-string v17, "data"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 500
    .local v6, "data":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v2, v0, [Lcom/ltpay/activity/ChargeRecord_T;

    .line 501
    .local v2, "Array":[Lcom/ltpay/activity/ChargeRecord_T;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_0

    .line 514
    packed-switch v15, :pswitch_data_0

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$9;->val$call:Lcom/ltpay/function/CallBack2;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/ltpay/function/CallBack2;->Onfail([Ljava/lang/Object;)V

    .line 530
    .end local v2    # "Array":[Lcom/ltpay/activity/ChargeRecord_T;
    .end local v3    # "Url":Ljava/lang/String;
    .end local v6    # "data":Lorg/json/JSONArray;
    .end local v8    # "i":I
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "msg":Ljava/lang/String;
    .end local v14    # "rdata":Ljava/lang/String;
    .end local v15    # "status":I
    .end local v16    # "userJson":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 503
    .restart local v2    # "Array":[Lcom/ltpay/activity/ChargeRecord_T;
    .restart local v3    # "Url":Ljava/lang/String;
    .restart local v6    # "data":Lorg/json/JSONArray;
    .restart local v8    # "i":I
    .restart local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "msg":Ljava/lang/String;
    .restart local v14    # "rdata":Ljava/lang/String;
    .restart local v15    # "status":I
    .restart local v16    # "userJson":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 505
    .local v13, "obj":Lorg/json/JSONObject;
    const-string v17, "id"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 506
    .local v9, "id":Ljava/lang/String;
    const-string v17, "chargeTime"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, "chargeTime":Ljava/lang/String;
    const-string v17, "app_name"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "appName":Ljava/lang/String;
    const-string v17, "money"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 511
    .local v11, "money":Ljava/lang/String;
    new-instance v17, Lcom/ltpay/activity/ChargeRecord_T;

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    const/16 v19, 0x2

    aput-object v4, v18, v19

    const/16 v19, 0x3

    aput-object v11, v18, v19

    invoke-direct/range {v17 .. v18}, Lcom/ltpay/activity/ChargeRecord_T;-><init>([Ljava/lang/String;)V

    aput-object v17, v2, v8

    .line 501
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 517
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "chargeTime":Ljava/lang/String;
    .end local v9    # "id":Ljava/lang/String;
    .end local v11    # "money":Ljava/lang/String;
    .end local v13    # "obj":Lorg/json/JSONObject;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$9;->val$call:Lcom/ltpay/function/CallBack2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/ltpay/function/CallBack2;->OnSuccess([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 525
    .end local v2    # "Array":[Lcom/ltpay/activity/ChargeRecord_T;
    .end local v3    # "Url":Ljava/lang/String;
    .end local v6    # "data":Lorg/json/JSONArray;
    .end local v8    # "i":I
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "msg":Ljava/lang/String;
    .end local v14    # "rdata":Ljava/lang/String;
    .end local v15    # "status":I
    .end local v16    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 527
    .local v7, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ltpay/function/Server$9;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "\u83b7\u53d6\u5145\u503c\u8bb0\u5f55\u5f02\u5e38\uff01"

    invoke-static/range {v17 .. v18}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

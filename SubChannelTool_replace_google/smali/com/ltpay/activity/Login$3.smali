.class Lcom/ltpay/activity/Login$3;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Login;->UserLogin(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Login;

.field private final synthetic val$call:Lcom/ltpay/function/CallBack;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Login;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    iput-object p2, p0, Lcom/ltpay/activity/Login$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/activity/Login$3;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 319
    :try_start_0
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v7}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "/User/login"

    invoke-static {v7, v8}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "Url":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "uname"

    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v7, "password"

    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->val$password:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v7, "SubChannelId"

    sget-object v8, Lcom/ltpay/LtSDK;->SubChannelId:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {v3, v0}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 327
    const-string v7, "PackageName"

    sget-object v8, Lcom/ltpay/LtSDK;->PackageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v7, "AppName"

    sget-object v8, Lcom/ltpay/LtSDK;->AppName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v7, "LtAppId"

    sget-object v8, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v7, "DeviceID"

    sget-object v8, Lcom/ltpay/LtSDK;->DeviceID:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v7, "DeviceModel"

    sget-object v8, Lcom/ltpay/LtSDK;->DeviceModel:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v7, "DeviceBrand"

    sget-object v8, Lcom/ltpay/LtSDK;->DeviceBrand:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v7, "get"

    invoke-static {v0, v3, v7}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "rdata":Ljava/lang/String;
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4e50\u5802\u7528\u6237\u767b\u5f55 ->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v3, v9}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u767b\u5f55\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 344
    .local v6, "userJson":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 345
    .local v5, "status":I
    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/activity/Login;->login_msg:Ljava/lang/String;

    .line 347
    packed-switch v5, :pswitch_data_0

    .line 372
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v7}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4e50\u5802\u7528\u6237\u767b\u5f55\u5931\u8d25\uff01"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/ltpay/activity/Login;->login_msg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    const/4 v7, 0x0

    sput-boolean v7, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    .line 375
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v7}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 385
    .end local v0    # "Url":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "rdata":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "userJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 350
    .restart local v0    # "Url":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "rdata":Ljava/lang/String;
    .restart local v5    # "status":I
    .restart local v6    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 352
    .local v1, "contentJson":Lorg/json/JSONObject;
    const-string v7, "uid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    .line 353
    const-string v7, "uname"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    .line 354
    const-string v7, "nname"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/activity/Login;->nname:Ljava/lang/String;

    .line 355
    const-string v7, "reg_date"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/activity/Login;->reg_date:Ljava/lang/String;

    .line 356
    const-string v7, "token"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/activity/Login;->token:Ljava/lang/String;

    .line 357
    const-string v7, "ip"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/activity/Login;->ip:Ljava/lang/String;

    .line 359
    const/4 v7, 0x1

    sput-boolean v7, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    .line 360
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v7}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 361
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u4e50\u5802\u7528\u6237\u767b\u5f55\u6210\u529f\uff0c\u7528\u6237\u540d: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff0c\u7528\u6237ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 364
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v7}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/ltpay/activity/LoginSuccess;

    invoke-static {v7, v8}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v7}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/ltpay/floatView/FloatService;->ShowFloat(Landroid/content/Context;)V

    .line 367
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v7}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    .end local v0    # "Url":Ljava/lang/String;
    .end local v1    # "contentJson":Lorg/json/JSONObject;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "rdata":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 381
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v7}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "\u4e50\u5802\u7528\u6237\u767b\u5f55\u5f02\u5e38\uff01"

    invoke-static {v7, v8}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v7}, Lcom/ltpay/function/CallBack;->Onfail()V

    goto/16 :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

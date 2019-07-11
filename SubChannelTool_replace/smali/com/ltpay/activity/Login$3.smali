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

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 314
    :try_start_0
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v8}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, "/User/login"

    invoke-static {v8, v9}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "Url":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "uname"

    iget-object v9, p0, Lcom/ltpay/activity/Login$3;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v8, "password"

    iget-object v9, p0, Lcom/ltpay/activity/Login$3;->val$password:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v8, "SubChannelId"

    sget-object v9, Lcom/ltpay/LtSDK;->SubChannelId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {v4, v1}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 322
    const-string v8, "PackageName"

    sget-object v9, Lcom/ltpay/LtSDK;->PackageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v8, "AppName"

    sget-object v9, Lcom/ltpay/LtSDK;->AppName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v8, "LtAppId"

    sget-object v9, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v8, "get"

    invoke-static {v1, v4, v8}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "rdata":Ljava/lang/String;
    sget-object v8, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u4e50\u5802\u7528\u6237\u767b\u5f55 ->> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v4, v10}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v8, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u767b\u5f55\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    .local v7, "userJson":Lorg/json/JSONObject;
    const-string v8, "status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 335
    .local v6, "status":I
    const-string v8, "msg"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ltpay/activity/Login;->login_msg:Ljava/lang/String;

    .line 337
    packed-switch v6, :pswitch_data_0

    .line 362
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v8}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u4e50\u5802\u7528\u6237\u767b\u5f55\u5931\u8d25\uff01"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/ltpay/activity/Login;->login_msg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 364
    const/4 v8, 0x0

    sput-boolean v8, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    .line 365
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v8}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 375
    .end local v1    # "Url":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "rdata":Ljava/lang/String;
    .end local v6    # "status":I
    .end local v7    # "userJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 340
    .restart local v1    # "Url":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "rdata":Ljava/lang/String;
    .restart local v6    # "status":I
    .restart local v7    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 342
    .local v2, "contentJson":Lorg/json/JSONObject;
    const-string v8, "uid"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    .line 343
    const-string v8, "uname"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    .line 344
    const-string v8, "nname"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ltpay/activity/Login;->nname:Ljava/lang/String;

    .line 345
    const-string v8, "reg_date"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ltpay/activity/Login;->reg_date:Ljava/lang/String;

    .line 346
    const-string v8, "token"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ltpay/activity/Login;->token:Ljava/lang/String;

    .line 347
    const-string v8, "ip"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ltpay/activity/Login;->ip:Ljava/lang/String;

    .line 349
    const/4 v8, 0x1

    sput-boolean v8, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    .line 350
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v8}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 351
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4e50\u5802\u7528\u6237\u767b\u5f55\u6210\u529f\uff0c\u7528\u6237\u540d: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0c\u7528\u6237ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 352
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v8}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, "ShowRealName"

    invoke-static {v8, v9}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 353
    .local v0, "ShowRealName":Z
    if-eqz v0, :cond_2

    .line 354
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v8}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/ltpay/activity/LoginSuccess;

    invoke-static {v8, v9}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    :cond_2
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v8}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/ltpay/floatView/FloatService;->ShowFloat(Landroid/content/Context;)V

    .line 357
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v8}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 369
    .end local v0    # "ShowRealName":Z
    .end local v1    # "Url":Ljava/lang/String;
    .end local v2    # "contentJson":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "rdata":Ljava/lang/String;
    .end local v6    # "status":I
    .end local v7    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 371
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v8}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, "\u4e50\u5802\u7528\u6237\u767b\u5f55\u5f02\u5e38\uff01"

    invoke-static {v8, v9}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ltpay/activity/Login$3;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v8}, Lcom/ltpay/function/CallBack;->Onfail()V

    goto/16 :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

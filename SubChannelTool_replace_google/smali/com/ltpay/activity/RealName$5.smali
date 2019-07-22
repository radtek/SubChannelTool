.class Lcom/ltpay/activity/RealName$5;
.super Ljava/lang/Object;
.source "RealName.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/RealName;->checkRealName(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appId:Ljava/lang/String;

.field private final synthetic val$call:Lcom/ltpay/function/CallBack;

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/RealName$5;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/ltpay/activity/RealName$5;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/activity/RealName$5;->val$call:Lcom/ltpay/function/CallBack;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 171
    :try_start_0
    const-string v1, "http://netuser.joymeng.com/valid/check"

    .line 173
    .local v1, "loginUrl":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "appId"

    iget-object v7, p0, Lcom/ltpay/activity/RealName$5;->val$appId:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v6, "uid"

    iget-object v7, p0, Lcom/ltpay/activity/RealName$5;->val$uid:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v6, Lcom/ltpay/activity/RealName;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u68c0\u6d4b\u662f\u5426\u5df2\u5b9e\u540d ->> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v6, "get"

    invoke-static {v1, v2, v6}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "rdata":Ljava/lang/String;
    sget-object v6, Lcom/ltpay/activity/RealName;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    .local v5, "userJson":Lorg/json/JSONObject;
    const-string v6, "msg"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "msg":Ljava/lang/String;
    const-string v6, "fail"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    iget-object v6, p0, Lcom/ltpay/activity/RealName$5;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ltpay/activity/RealName$5;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v6}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 201
    .end local v1    # "loginUrl":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "rdata":Ljava/lang/String;
    .end local v5    # "userJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local v1    # "loginUrl":Ljava/lang/String;
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "rdata":Ljava/lang/String;
    .restart local v5    # "userJson":Lorg/json/JSONObject;
    :cond_1
    iget-object v6, p0, Lcom/ltpay/activity/RealName$5;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ltpay/activity/RealName$5;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v6}, Lcom/ltpay/function/CallBack;->OnSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v1    # "loginUrl":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "rdata":Ljava/lang/String;
    .end local v5    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "\u662f\u5426\u5df2\u5b9e\u540d\uff0c\u68c0\u6d4b\u5f02\u5e38\uff01"

    invoke-static {v6}, Lcom/ltpay/activity/RealName;->showToast(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    iget-object v6, p0, Lcom/ltpay/activity/RealName$5;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ltpay/activity/RealName$5;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v6}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    goto :goto_0
.end method

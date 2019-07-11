.class Lcom/ltpay/function/Server$16;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->UserRegister(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$app_id:Ljava/lang/String;

.field private final synthetic val$call:Lcom/ltpay/function/CallBack;

.field private final synthetic val$channel_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Server$16;->val$channel_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ltpay/function/Server$16;->val$app_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$16;->val$call:Lcom/ltpay/function/CallBack;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 857
    :try_start_0
    const-string v4, "http://netuser.joymeng.com/User/quickReg"

    .line 859
    .local v4, "regUrl":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 860
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "channel_id"

    iget-object v8, p0, Lcom/ltpay/function/Server$16;->val$channel_id:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string v7, "app_id"

    iget-object v8, p0, Lcom/ltpay/function/Server$16;->val$app_id:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string v7, "uuid"

    const-string v8, "test"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v7, "post"

    invoke-static {v4, v2, v7}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 864
    .local v3, "rdata":Ljava/lang/String;
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4e50\u5802\u7528\u6237\u6ce8\u518c ->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 865
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u6ce8\u518c\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 868
    .local v6, "userJson":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 869
    .local v5, "status":I
    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/function/Server;->reg_msg:Ljava/lang/String;

    .line 871
    packed-switch v5, :pswitch_data_0

    .line 890
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u4e50\u5802\u7528\u6237\u5e10\u53f7\u6ce8\u518c\u5931\u8d25\uff01"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/ltpay/function/Server;->reg_msg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 891
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4e50\u5802\u7528\u6237\u5e10\u53f7\u6ce8\u518c\u5931\u8d25\uff01"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/ltpay/function/Server;->reg_msg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v7, p0, Lcom/ltpay/function/Server$16;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ltpay/function/Server$16;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v7}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 902
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "rdata":Ljava/lang/String;
    .end local v4    # "regUrl":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "userJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 874
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "rdata":Ljava/lang/String;
    .restart local v4    # "regUrl":Ljava/lang/String;
    .restart local v5    # "status":I
    .restart local v6    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    const-string v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 877
    .local v0, "contentJson":Lorg/json/JSONObject;
    const-string v7, "uid"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/function/Server;->uid:Ljava/lang/String;

    .line 878
    const-string v7, "uname"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/function/Server;->uname:Ljava/lang/String;

    .line 879
    const-string v7, "password"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/function/Server;->password:Ljava/lang/String;

    .line 880
    const-string v7, "reg_date"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/ltpay/function/Server;->reg_date:Ljava/lang/String;

    .line 882
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u4e50\u5802\u7528\u6237\u5e10\u53f7\u6ce8\u518c\u6210\u529f\uff0c\u7528\u6237\u540d\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/ltpay/function/Server;->uname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u5bc6\u7801:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/ltpay/function/Server;->password:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 883
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    const-string v8, "\u4e50\u5802\u7528\u6237\u5e10\u53f7\u6ce8\u518c\u6210\u529f"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4e50\u5802\u7528\u6237ID: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/ltpay/function/Server;->uid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v7, p0, Lcom/ltpay/function/Server$16;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ltpay/function/Server$16;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v7}, Lcom/ltpay/function/CallBack;->OnSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    .end local v0    # "contentJson":Lorg/json/JSONObject;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "rdata":Ljava/lang/String;
    .end local v4    # "regUrl":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 899
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    const-string v8, "\u4e50\u5802\u7528\u6237\u5e10\u53f7\u6ce8\u518c\u5f02\u5e38\uff01"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

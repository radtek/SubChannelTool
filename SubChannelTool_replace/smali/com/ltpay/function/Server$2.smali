.class Lcom/ltpay/function/Server$2;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Server;->verifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$account:Ljava/lang/String;

.field private final synthetic val$call:Lcom/ltpay/function/CallBack;

.field private final synthetic val$code:Ljava/lang/String;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Server$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Server$2;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/function/Server$2;->val$code:Ljava/lang/String;

    iput-object p4, p0, Lcom/ltpay/function/Server$2;->val$codeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/ltpay/function/Server$2;->val$call:Lcom/ltpay/function/CallBack;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 81
    :try_start_0
    iget-object v7, p0, Lcom/ltpay/function/Server$2;->val$context:Landroid/content/Context;

    const-string v8, "/User/verifyVcode"

    invoke-static {v7, v8}, Lcom/ltpay/function/LtpayConfig;->URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "Url":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "uname"

    iget-object v8, p0, Lcom/ltpay/function/Server$2;->val$account:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v7, "vcode"

    iget-object v8, p0, Lcom/ltpay/function/Server$2;->val$code:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v7, "vtype"

    iget-object v8, p0, Lcom/ltpay/function/Server$2;->val$codeType:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v2, v0}, Lcom/ltpay/function/Tools;->AddSign(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 89
    const-string v7, "get"

    invoke-static {v0, v2, v7}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "rdata":Ljava/lang/String;
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u9a8c\u8bc1\u9a8c\u8bc1\u7801 ->> "

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

    .line 91
    sget-object v7, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v6, "userJson":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 95
    .local v5, "status":I
    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "msg":Ljava/lang/String;
    iget-object v7, p0, Lcom/ltpay/function/Server$2;->val$context:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    packed-switch v5, :pswitch_data_0

    .line 106
    iget-object v7, p0, Lcom/ltpay/function/Server$2;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v7}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 115
    .end local v0    # "Url":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "rdata":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "userJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 102
    .restart local v0    # "Url":Ljava/lang/String;
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "rdata":Ljava/lang/String;
    .restart local v5    # "status":I
    .restart local v6    # "userJson":Lorg/json/JSONObject;
    :pswitch_0
    iget-object v7, p0, Lcom/ltpay/function/Server$2;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v7}, Lcom/ltpay/function/CallBack;->OnSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0    # "Url":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "rdata":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v6    # "userJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/ltpay/function/Server$2;->val$context:Landroid/content/Context;

    const-string v8, "\u9a8c\u8bc1\u7801\u9a8c\u8bc1\u5f02\u5e38\uff01"

    invoke-static {v7, v8}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

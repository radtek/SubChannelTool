.class Lcom/ltsdk/union/platform/LtsdkGoogle$5;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle;->LoadProductList(Lcom/ltpay/function/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

.field private final synthetic val$callback:Lcom/ltpay/function/CallBack;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iput-object p2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 187
    :try_start_0
    const-string v7, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .local v7, "req":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$6()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "package="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v10}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$7(Lcom/ltsdk/union/platform/LtsdkGoogle;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "post"

    invoke-static {v8, v9, v10}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 200
    :goto_0
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LtsdkGoogle.\u83b7\u53d6\u5546\u54c1\u5217\u8868\u4fe1\u606f ->> request:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v9}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$7(Lcom/ltsdk/union/platform/LtsdkGoogle;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> userData:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 203
    if-eqz v7, :cond_4

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 205
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .local v5, "main":Lorg/json/JSONObject;
    const-string v8, "status"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 209
    const-string v8, "product_list"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 210
    .local v6, "productList":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 211
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ProductList:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$8()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$8()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 220
    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-interface {v8}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 247
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "main":Lorg/json/JSONObject;
    .end local v6    # "productList":Lorg/json/JSONObject;
    .end local v7    # "req":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 192
    .restart local v7    # "req":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LtsdkGoogle.\u83b7\u53d6\u5546\u54c1\u5217\u8868\u4fe1\u606f ->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v9}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$7(Lcom/ltsdk/union/platform/LtsdkGoogle;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "info":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\r\nLtsdkGoogle.\u83b7\u53d6\u5546\u54c1\u5217\u8868\u4fe1\u606f\u5f02\u5e38\uff01-> \r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v2}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 240
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "info":Ljava/lang/String;
    .end local v7    # "req":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u83b7\u53d6\u5546\u54c1\u5217\u8868\u4fe1\u606f\uff0c\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 245
    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-interface {v8}, Lcom/ltpay/function/CallBack;->Onfail()V

    goto :goto_2

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "main":Lorg/json/JSONObject;
    .restart local v6    # "productList":Lorg/json/JSONObject;
    .restart local v7    # "req":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$8()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 224
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    const-string v8, "\u83b7\u53d6\u5546\u54c1\u5217\u8868\u4fe1\u606f\uff0cmProductList\u4e3a\u7a7a"

    invoke-static {v8}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 225
    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-interface {v8}, Lcom/ltpay/function/CallBack;->Onfail()V

    goto/16 :goto_2

    .line 230
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "productList":Lorg/json/JSONObject;
    :cond_3
    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v8}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, "\u8ba1\u8d39\u670d\u52a1\u5668\u7aef\uff0c\u9700\u914d\u7f6egoogle\u5546\u54c1\u5217\u8868\u4fe1\u606f"

    invoke-static {v8, v9}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-interface {v8}, Lcom/ltpay/function/CallBack;->Onfail()V

    goto/16 :goto_2

    .line 236
    .end local v5    # "main":Lorg/json/JSONObject;
    :cond_4
    const-string v8, "\u83b7\u53d6\u5546\u54c1\u5217\u8868\u4fe1\u606f\uff0c\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v8}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 237
    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$5;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-interface {v8}, Lcom/ltpay/function/CallBack;->Onfail()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

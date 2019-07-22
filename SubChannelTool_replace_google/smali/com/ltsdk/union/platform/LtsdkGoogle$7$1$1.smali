.class Lcom/ltsdk/union/platform/LtsdkGoogle$7$1$1;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;->onQueryInventoryFinished(Lcom/ltsdk/union/platform/IabResult;Lcom/ltsdk/union/platform/Inventory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;

.field private final synthetic val$purchases:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1$1;->this$2:Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;

    iput-object p2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1$1;->val$purchases:Ljava/util/List;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 331
    :try_start_0
    iget-object v3, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1$1;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 349
    :goto_1
    return-void

    .line 331
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ltsdk/union/platform/Purchase;

    .line 333
    .local v1, "purchase":Lcom/ltsdk/union/platform/Purchase;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "item_type"

    invoke-virtual {v1}, Lcom/ltsdk/union/platform/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v4, "purchase"

    invoke-virtual {v1}, Lcom/ltsdk/union/platform/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v4, "signature"

    invoke-virtual {v1}, Lcom/ltsdk/union/platform/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$1()Ljava/lang/String;

    move-result-object v4

    const-string v5, "post"

    invoke-static {v4, v0, v5}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "reqData":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Google\u652f\u4ed8\u56de\u8c03 ->> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e50\u5802\u8ba1\u8d39\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 340
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1$1;->this$2:Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;

    invoke-static {v4}, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;)Lcom/ltsdk/union/platform/LtsdkGoogle$7;

    move-result-object v4

    invoke-static {v4}, Lcom/ltsdk/union/platform/LtsdkGoogle$7;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$7;)Lcom/ltsdk/union/platform/LtsdkGoogle;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$2(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltsdk/union/platform/Purchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 347
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "purchase":Lcom/ltsdk/union/platform/Purchase;
    .end local v2    # "reqData":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

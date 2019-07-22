.class Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle$1;->onIabPurchaseFinished(Lcom/ltsdk/union/platform/IabResult;Lcom/ltsdk/union/platform/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$1;

.field private final synthetic val$purchase:Lcom/ltsdk/union/platform/Purchase;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/LtsdkGoogle$1;Lcom/ltsdk/union/platform/Purchase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;->this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$1;

    iput-object p2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;->val$purchase:Lcom/ltsdk/union/platform/Purchase;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 544
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "item_type"

    iget-object v4, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;->val$purchase:Lcom/ltsdk/union/platform/Purchase;

    invoke-virtual {v4}, Lcom/ltsdk/union/platform/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v3, "purchase"

    iget-object v4, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;->val$purchase:Lcom/ltsdk/union/platform/Purchase;

    invoke-virtual {v4}, Lcom/ltsdk/union/platform/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v3, "signature"

    iget-object v4, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;->val$purchase:Lcom/ltsdk/union/platform/Purchase;

    invoke-virtual {v4}, Lcom/ltsdk/union/platform/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "post"

    invoke-static {v3, v1, v4}, Lcom/fxlib/util/FJHttp;->request(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "reqData":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Google\u652f\u4ed8\u56de\u8c03 ->> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lcom/fxlib/util/FJHttp;->praseMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e50\u5802\u8ba1\u8d39\u670d\u52a1\u5668\u8fd4\u56de\u4fe1\u606f ->> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 551
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;->this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$1;

    invoke-static {v3}, Lcom/ltsdk/union/platform/LtsdkGoogle$1;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$1;)Lcom/ltsdk/union/platform/LtsdkGoogle;

    move-result-object v3

    iget-object v4, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;->val$purchase:Lcom/ltsdk/union/platform/Purchase;

    invoke-static {v3, v4}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$2(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltsdk/union/platform/Purchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "reqData":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    iget-object v3, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;->this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$1;

    invoke-static {v3}, Lcom/ltsdk/union/platform/LtsdkGoogle$1;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$1;)Lcom/ltsdk/union/platform/LtsdkGoogle;

    move-result-object v3

    invoke-static {v3}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

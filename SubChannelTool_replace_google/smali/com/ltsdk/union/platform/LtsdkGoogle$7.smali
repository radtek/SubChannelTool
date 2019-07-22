.class Lcom/ltsdk/union/platform/LtsdkGoogle$7;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle;->queryInventoryAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/LtsdkGoogle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$7;)Lcom/ltsdk/union/platform/LtsdkGoogle;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 302
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v1, "moreSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$8()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v3}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle;)Lcom/ltsdk/union/platform/IabHelper;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;

    invoke-direct {v6, p0}, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle$7;)V

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/ltsdk/union/platform/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;)V

    .line 362
    .end local v1    # "moreSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 303
    .restart local v1    # "moreSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, "str":Ljava/lang/String;
    invoke-static {}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$8()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v1    # "moreSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "queryInventoryAsync\u5f02\u5e38\uff01"

    invoke-static {v3}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

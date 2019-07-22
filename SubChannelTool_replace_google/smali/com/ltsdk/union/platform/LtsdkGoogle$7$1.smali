.class Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$7;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/LtsdkGoogle$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;->this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$7;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;)Lcom/ltsdk/union/platform/LtsdkGoogle$7;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;->this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$7;

    return-object v0
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/ltsdk/union/platform/IabResult;Lcom/ltsdk/union/platform/Inventory;)V
    .locals 3
    .param p1, "result"    # Lcom/ltsdk/union/platform/IabResult;
    .param p2, "inventory"    # Lcom/ltsdk/union/platform/Inventory;

    .prologue
    .line 312
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;->this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$7;

    invoke-static {v1}, Lcom/ltsdk/union/platform/LtsdkGoogle$7;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$7;)Lcom/ltsdk/union/platform/LtsdkGoogle;

    move-result-object v1

    invoke-static {v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle;)Lcom/ltsdk/union/platform/IabHelper;

    move-result-object v1

    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p1}, Lcom/ltsdk/union/platform/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to query inventory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    const-string v1, "Query inventory was successful."

    invoke-static {v1}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Lcom/ltsdk/union/platform/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/ltsdk/union/platform/Purchase;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1$1;

    invoke-direct {v2, p0, v0}, Lcom/ltsdk/union/platform/LtsdkGoogle$7$1$1;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle$7$1;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

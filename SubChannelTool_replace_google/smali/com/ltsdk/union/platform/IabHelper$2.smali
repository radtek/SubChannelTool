.class Lcom/ltsdk/union/platform/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltsdk/union/platform/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreItemSkus:Ljava/util/List;

.field private final synthetic val$moreSubsSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/IabHelper$2;->this$0:Lcom/ltsdk/union/platform/IabHelper;

    iput-boolean p2, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    iput-object p5, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$listener:Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;

    iput-object p6, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$handler:Landroid/os/Handler;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 695
    new-instance v3, Lcom/ltsdk/union/platform/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/ltsdk/union/platform/IabResult;-><init>(ILjava/lang/String;)V

    .line 696
    .local v3, "result":Lcom/ltsdk/union/platform/IabResult;
    const/4 v1, 0x0

    .line 698
    .local v1, "inv":Lcom/ltsdk/union/platform/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/ltsdk/union/platform/IabHelper$2;->this$0:Lcom/ltsdk/union/platform/IabHelper;

    iget-boolean v6, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iget-object v8, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7, v8}, Lcom/ltsdk/union/platform/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/ltsdk/union/platform/Inventory;
    :try_end_0
    .catch Lcom/ltsdk/union/platform/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 704
    :goto_0
    iget-object v5, p0, Lcom/ltsdk/union/platform/IabHelper$2;->this$0:Lcom/ltsdk/union/platform/IabHelper;

    invoke-virtual {v5}, Lcom/ltsdk/union/platform/IabHelper;->flagEndAsync()V

    .line 706
    move-object v4, v3

    .line 707
    .local v4, "result_f":Lcom/ltsdk/union/platform/IabResult;
    move-object v2, v1

    .line 708
    .local v2, "inv_f":Lcom/ltsdk/union/platform/Inventory;
    iget-object v5, p0, Lcom/ltsdk/union/platform/IabHelper$2;->this$0:Lcom/ltsdk/union/platform/IabHelper;

    iget-boolean v5, v5, Lcom/ltsdk/union/platform/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$listener:Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 709
    iget-object v5, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/ltsdk/union/platform/IabHelper$2$1;

    iget-object v7, p0, Lcom/ltsdk/union/platform/IabHelper$2;->val$listener:Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lcom/ltsdk/union/platform/IabHelper$2$1;-><init>(Lcom/ltsdk/union/platform/IabHelper$2;Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;Lcom/ltsdk/union/platform/IabResult;Lcom/ltsdk/union/platform/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    :cond_0
    return-void

    .line 700
    .end local v2    # "inv_f":Lcom/ltsdk/union/platform/Inventory;
    .end local v4    # "result_f":Lcom/ltsdk/union/platform/IabResult;
    :catch_0
    move-exception v0

    .line 701
    .local v0, "ex":Lcom/ltsdk/union/platform/IabException;
    invoke-virtual {v0}, Lcom/ltsdk/union/platform/IabException;->getResult()Lcom/ltsdk/union/platform/IabResult;

    move-result-object v3

    goto :goto_0
.end method

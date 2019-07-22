.class Lcom/ltsdk/union/platform/LtsdkGoogle$8;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle;->consumeAsync(Lcom/ltsdk/union/platform/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

.field private final synthetic val$purchase:Lcom/ltsdk/union/platform/Purchase;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltsdk/union/platform/Purchase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$8;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iput-object p2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$8;->val$purchase:Lcom/ltsdk/union/platform/Purchase;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$8;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle;)Lcom/ltsdk/union/platform/IabHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$8;->val$purchase:Lcom/ltsdk/union/platform/Purchase;

    iget-object v3, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$8;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iget-object v3, v3, Lcom/ltsdk/union/platform/LtsdkGoogle;->mConsumeFinishedListener:Lcom/ltsdk/union/platform/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v1, v2, v3}, Lcom/ltsdk/union/platform/IabHelper;->consumeAsync(Lcom/ltsdk/union/platform/Purchase;Lcom/ltsdk/union/platform/IabHelper$OnConsumeFinishedListener;)V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$8;->val$purchase:Lcom/ltsdk/union/platform/Purchase;

    invoke-virtual {v2}, Lcom/ltsdk/union/platform/Purchase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ltsdk/union/platform/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Lcom/ltsdk/union/platform/IabHelper$IabAsyncInProgressException;
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$8;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    const-string v2, "Error consuming gas. Another async operation in progress."

    invoke-virtual {v1, v2}, Lcom/ltsdk/union/platform/LtsdkGoogle;->complain(Ljava/lang/String;)V

    goto :goto_0
.end method

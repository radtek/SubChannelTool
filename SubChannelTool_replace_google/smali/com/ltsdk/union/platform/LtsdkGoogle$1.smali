.class Lcom/ltsdk/union/platform/LtsdkGoogle$1;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Lcom/ltsdk/union/platform/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle;
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
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$1;)Lcom/ltsdk/union/platform/LtsdkGoogle;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    return-object v0
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/ltsdk/union/platform/IabResult;Lcom/ltsdk/union/platform/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/ltsdk/union/platform/IabResult;
    .param p2, "purchase"    # Lcom/ltsdk/union/platform/Purchase;

    .prologue
    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ltsdk/union/platform/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ltsdk/union/platform/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle;)Lcom/ltsdk/union/platform/IabHelper;

    move-result-object v1

    if-nez v1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    invoke-virtual {p1}, Lcom/ltsdk/union/platform/IabResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;

    invoke-direct {v2, p0, p2}, Lcom/ltsdk/union/platform/LtsdkGoogle$1$1;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle$1;Lcom/ltsdk/union/platform/Purchase;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 568
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 576
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u5931\u8d25-IabResult-fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iget-object v2, v2, Lcom/ltsdk/union/platform/LtsdkGoogle;->Reserve:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 577
    sget-object v1, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    if-eqz v1, :cond_0

    .line 579
    sget-object v1, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    invoke-interface {v1}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 580
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$1;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

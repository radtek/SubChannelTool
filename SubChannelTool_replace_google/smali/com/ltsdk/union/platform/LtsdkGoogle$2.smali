.class Lcom/ltsdk/union/platform/LtsdkGoogle$2;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Lcom/ltsdk/union/platform/IabHelper$OnConsumeFinishedListener;


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
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$2;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/ltsdk/union/platform/Purchase;Lcom/ltsdk/union/platform/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/ltsdk/union/platform/Purchase;
    .param p2, "result"    # Lcom/ltsdk/union/platform/IabResult;

    .prologue
    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consumption finished. Purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$2;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle;)Lcom/ltsdk/union/platform/IabHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 610
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-virtual {p2}, Lcom/ltsdk/union/platform/IabResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u6210\u529f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$2;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iget-object v2, v2, Lcom/ltsdk/union/platform/LtsdkGoogle;->Reserve:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 599
    sget-object v1, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    invoke-interface {v1}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$2;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 606
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u5931\u8d25-ConsumeFinished-fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$2;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iget-object v2, v2, Lcom/ltsdk/union/platform/LtsdkGoogle;->Reserve:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 607
    sget-object v1, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    invoke-interface {v1}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 608
    :cond_3
    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$2;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.class Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Lcom/ltsdk/union/platform/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$6;

.field private final synthetic val$callback:Lcom/ltpay/function/CallBack;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/LtsdkGoogle$6;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;->this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$6;

    iput-object p2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;->val$callback:Lcom/ltpay/function/CallBack;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/ltsdk/union/platform/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/ltsdk/union/platform/IabResult;

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/ltsdk/union/platform/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    const-string v0, "onIabSetupFinished() -> IabHelper\uff0c\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;->val$callback:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ltsdk/union/platform/IabResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 273
    const-string v0, "google init end"

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;->this$1:Lcom/ltsdk/union/platform/LtsdkGoogle$6;

    invoke-static {v0}, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$6;)Lcom/ltsdk/union/platform/LtsdkGoogle;

    move-result-object v0

    invoke-static {v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$11(Lcom/ltsdk/union/platform/LtsdkGoogle;)V

    .line 281
    const-string v0, "IabHelper\uff0c\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;->val$callback:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    goto :goto_0
.end method

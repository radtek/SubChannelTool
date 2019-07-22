.class Lcom/ltsdk/union/platform/LtsdkGoogle$6;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle;->InitHelper(Lcom/ltpay/function/CallBack;)V
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
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iput-object p2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->val$callback:Lcom/ltpay/function/CallBack;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltsdk/union/platform/LtsdkGoogle$6;)Lcom/ltsdk/union/platform/LtsdkGoogle;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    new-instance v1, Lcom/ltsdk/union/platform/IabHelper;

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v2}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v3}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$9(Lcom/ltsdk/union/platform/LtsdkGoogle;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ltsdk/union/platform/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$10(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltsdk/union/platform/IabHelper;)V

    .line 260
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle;)Lcom/ltsdk/union/platform/IabHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ltsdk/union/platform/IabHelper;->enableDebugLogging(Z)V

    .line 262
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$0(Lcom/ltsdk/union/platform/LtsdkGoogle;)Lcom/ltsdk/union/platform/IabHelper;

    move-result-object v0

    new-instance v1, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;

    iget-object v2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$6;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-direct {v1, p0, v2}, Lcom/ltsdk/union/platform/LtsdkGoogle$6$1;-><init>(Lcom/ltsdk/union/platform/LtsdkGoogle$6;Lcom/ltpay/function/CallBack;)V

    invoke-virtual {v0, v1}, Lcom/ltsdk/union/platform/IabHelper;->startSetup(Lcom/ltsdk/union/platform/IabHelper$OnIabSetupFinishedListener;)V

    .line 288
    return-void
.end method

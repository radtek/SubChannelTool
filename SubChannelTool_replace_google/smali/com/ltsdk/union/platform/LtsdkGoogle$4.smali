.class Lcom/ltsdk/union/platform/LtsdkGoogle$4;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle;->init(Landroid/app/Activity;Lcom/ltpay/function/CallBack;)V
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
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$4;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iput-object p2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$4;->val$callback:Lcom/ltpay/function/CallBack;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$4;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iget-object v1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$4;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-static {v0, v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$5(Lcom/ltsdk/union/platform/LtsdkGoogle;Lcom/ltpay/function/CallBack;)V

    .line 171
    return-void
.end method

.method public Onfail()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$4;->val$callback:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$4;->val$callback:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 165
    :cond_0
    return-void
.end method

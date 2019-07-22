.class Lcom/ltsdk/union/platform/LtsdkGoogle$3;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$3;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$3;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$4(Lcom/ltsdk/union/platform/LtsdkGoogle;Z)V

    .line 136
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$3;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-virtual {v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->Pay()V

    .line 137
    return-void
.end method

.method public Onfail()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$3;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$4(Lcom/ltsdk/union/platform/LtsdkGoogle;Z)V

    .line 127
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$3;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "google\u8ba1\u8d39\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$3;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    invoke-static {v0}, Lcom/ltsdk/union/platform/LtsdkGoogle;->access$3(Lcom/ltsdk/union/platform/LtsdkGoogle;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 130
    return-void
.end method

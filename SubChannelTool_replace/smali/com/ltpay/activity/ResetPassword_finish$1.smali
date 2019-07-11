.class Lcom/ltpay/activity/ResetPassword_finish$1;
.super Ljava/lang/Object;
.source "ResetPassword_finish.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/ResetPassword_finish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/ResetPassword_finish;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ResetPassword_finish;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ResetPassword_finish$1;->this$0:Lcom/ltpay/activity/ResetPassword_finish;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword_finish$1;->this$0:Lcom/ltpay/activity/ResetPassword_finish;

    iget-object v0, v0, Lcom/ltpay/activity/ResetPassword_finish;->Btn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword_finish$1;->this$0:Lcom/ltpay/activity/ResetPassword_finish;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword_finish;->access$0(Lcom/ltpay/activity/ResetPassword_finish;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/Login;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword_finish$1;->this$0:Lcom/ltpay/activity/ResetPassword_finish;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword_finish;->access$0(Lcom/ltpay/activity/ResetPassword_finish;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 52
    :cond_0
    return-void
.end method

.class Lcom/ltpay/activity/PasswordRecover_code$1$1;
.super Ljava/lang/Object;
.source "PasswordRecover_code.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PasswordRecover_code$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/PasswordRecover_code$1;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PasswordRecover_code$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PasswordRecover_code$1$1;->this$1:Lcom/ltpay/activity/PasswordRecover_code$1;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_code$1$1;->this$1:Lcom/ltpay/activity/PasswordRecover_code$1;

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_code$1;->access$0(Lcom/ltpay/activity/PasswordRecover_code$1;)Lcom/ltpay/activity/PasswordRecover_code;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_code;->access$0(Lcom/ltpay/activity/PasswordRecover_code;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/ResetPassword;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_code$1$1;->this$1:Lcom/ltpay/activity/PasswordRecover_code$1;

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_code$1;->access$0(Lcom/ltpay/activity/PasswordRecover_code$1;)Lcom/ltpay/activity/PasswordRecover_code;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_code;->access$0(Lcom/ltpay/activity/PasswordRecover_code;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 68
    return-void
.end method

.method public Onfail()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

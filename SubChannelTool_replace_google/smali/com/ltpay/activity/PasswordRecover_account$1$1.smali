.class Lcom/ltpay/activity/PasswordRecover_account$1$1;
.super Ljava/lang/Object;
.source "PasswordRecover_account.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PasswordRecover_account$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/PasswordRecover_account$1;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PasswordRecover_account$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PasswordRecover_account$1$1;->this$1:Lcom/ltpay/activity/PasswordRecover_account$1;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account$1$1;->this$1:Lcom/ltpay/activity/PasswordRecover_account$1;

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_account$1;->access$0(Lcom/ltpay/activity/PasswordRecover_account$1;)Lcom/ltpay/activity/PasswordRecover_account;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_account;->access$0(Lcom/ltpay/activity/PasswordRecover_account;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/PasswordRecover_code;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account$1$1;->this$1:Lcom/ltpay/activity/PasswordRecover_account$1;

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_account$1;->access$0(Lcom/ltpay/activity/PasswordRecover_account$1;)Lcom/ltpay/activity/PasswordRecover_account;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_account;->access$0(Lcom/ltpay/activity/PasswordRecover_account;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 66
    return-void
.end method

.method public Onfail()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account$1$1;->this$1:Lcom/ltpay/activity/PasswordRecover_account$1;

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_account$1;->access$0(Lcom/ltpay/activity/PasswordRecover_account$1;)Lcom/ltpay/activity/PasswordRecover_account;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/PasswordRecover_account;->access$0(Lcom/ltpay/activity/PasswordRecover_account;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8d26\u53f7\u4fe1\u606f\uff0c\u518d\u8fdb\u884c\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

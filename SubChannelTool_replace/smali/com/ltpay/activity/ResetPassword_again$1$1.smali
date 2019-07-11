.class Lcom/ltpay/activity/ResetPassword_again$1$1;
.super Ljava/lang/Object;
.source "ResetPassword_again.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/ResetPassword_again$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/ResetPassword_again$1;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ResetPassword_again$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ResetPassword_again$1$1;->this$1:Lcom/ltpay/activity/ResetPassword_again$1;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 4

    .prologue
    .line 76
    iget-object v2, p0, Lcom/ltpay/activity/ResetPassword_again$1$1;->this$1:Lcom/ltpay/activity/ResetPassword_again$1;

    invoke-static {v2}, Lcom/ltpay/activity/ResetPassword_again$1;->access$0(Lcom/ltpay/activity/ResetPassword_again$1;)Lcom/ltpay/activity/ResetPassword_again;

    move-result-object v2

    invoke-static {v2}, Lcom/ltpay/activity/ResetPassword_again;->access$0(Lcom/ltpay/activity/ResetPassword_again;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/ltpay/activity/ResetPassword_finish;

    invoke-static {v2, v3}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    sget-object v2, Lcom/ltpay/activity/ResetPassword_again;->password:Ljava/lang/String;

    sput-object v2, Lcom/ltpay/activity/Login;->password:Ljava/lang/String;

    .line 80
    new-instance v1, Lcom/ltpay/function/Preference;

    iget-object v2, p0, Lcom/ltpay/activity/ResetPassword_again$1$1;->this$1:Lcom/ltpay/activity/ResetPassword_again$1;

    invoke-static {v2}, Lcom/ltpay/activity/ResetPassword_again$1;->access$0(Lcom/ltpay/activity/ResetPassword_again$1;)Lcom/ltpay/activity/ResetPassword_again;

    move-result-object v2

    invoke-static {v2}, Lcom/ltpay/activity/ResetPassword_again;->access$0(Lcom/ltpay/activity/ResetPassword_again;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "LtAccountInfo"

    invoke-direct {v1, v2, v3}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .local v1, "localInfo":Lcom/ltpay/function/Preference;
    const-string v2, "uname"

    sget-object v3, Lcom/ltpay/activity/PasswordRecover_account;->account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "password"

    sget-object v3, Lcom/ltpay/activity/ResetPassword_again;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/ltpay/function/Preference;

    iget-object v2, p0, Lcom/ltpay/activity/ResetPassword_again$1$1;->this$1:Lcom/ltpay/activity/ResetPassword_again$1;

    invoke-static {v2}, Lcom/ltpay/activity/ResetPassword_again$1;->access$0(Lcom/ltpay/activity/ResetPassword_again$1;)Lcom/ltpay/activity/ResetPassword_again;

    move-result-object v2

    invoke-static {v2}, Lcom/ltpay/activity/ResetPassword_again;->access$0(Lcom/ltpay/activity/ResetPassword_again;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "LtAccountInfo_Accounts"

    invoke-direct {v0, v2, v3}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .local v0, "localAccounts":Lcom/ltpay/function/Preference;
    sget-object v2, Lcom/ltpay/activity/PasswordRecover_account;->account:Ljava/lang/String;

    sget-object v3, Lcom/ltpay/activity/ResetPassword_again;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/ltpay/activity/ResetPassword_again$1$1;->this$1:Lcom/ltpay/activity/ResetPassword_again$1;

    invoke-static {v2}, Lcom/ltpay/activity/ResetPassword_again$1;->access$0(Lcom/ltpay/activity/ResetPassword_again$1;)Lcom/ltpay/activity/ResetPassword_again;

    move-result-object v2

    invoke-static {v2}, Lcom/ltpay/activity/ResetPassword_again;->access$0(Lcom/ltpay/activity/ResetPassword_again;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 88
    return-void
.end method

.method public Onfail()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword_again$1$1;->this$1:Lcom/ltpay/activity/ResetPassword_again$1;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword_again$1;->access$0(Lcom/ltpay/activity/ResetPassword_again$1;)Lcom/ltpay/activity/ResetPassword_again;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword_again;->access$0(Lcom/ltpay/activity/ResetPassword_again;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u91cd\u7f6e\u5bc6\u7801\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword_again$1$1;->this$1:Lcom/ltpay/activity/ResetPassword_again$1;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword_again$1;->access$0(Lcom/ltpay/activity/ResetPassword_again$1;)Lcom/ltpay/activity/ResetPassword_again;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword_again;->access$0(Lcom/ltpay/activity/ResetPassword_again;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 71
    return-void
.end method

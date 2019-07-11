.class Lcom/ltpay/activity/ResetPassword$1;
.super Ljava/lang/Object;
.source "ResetPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/ResetPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/ResetPassword;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ResetPassword;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ResetPassword$1;->this$0:Lcom/ltpay/activity/ResetPassword;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword$1;->this$0:Lcom/ltpay/activity/ResetPassword;

    iget-object v0, v0, Lcom/ltpay/activity/ResetPassword;->Btn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword$1;->this$0:Lcom/ltpay/activity/ResetPassword;

    iget-object v0, v0, Lcom/ltpay/activity/ResetPassword;->Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltpay/activity/ResetPassword;->password:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword$1;->this$0:Lcom/ltpay/activity/ResetPassword;

    iget-boolean v0, v0, Lcom/ltpay/activity/ResetPassword;->ResetByPassword:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword$1;->this$0:Lcom/ltpay/activity/ResetPassword;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword;->access$0(Lcom/ltpay/activity/ResetPassword;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/ResetPassword_again;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ResetByPassword"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword$1;->this$0:Lcom/ltpay/activity/ResetPassword;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword;->access$0(Lcom/ltpay/activity/ResetPassword;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword$1;->this$0:Lcom/ltpay/activity/ResetPassword;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPassword;->access$0(Lcom/ltpay/activity/ResetPassword;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/ResetPassword_again;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

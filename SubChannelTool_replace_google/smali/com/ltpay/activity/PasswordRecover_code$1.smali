.class Lcom/ltpay/activity/PasswordRecover_code$1;
.super Ljava/lang/Object;
.source "PasswordRecover_code.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/PasswordRecover_code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/PasswordRecover_code;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PasswordRecover_code;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PasswordRecover_code$1;->this$0:Lcom/ltpay/activity/PasswordRecover_code;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/PasswordRecover_code$1;)Lcom/ltpay/activity/PasswordRecover_code;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_code$1;->this$0:Lcom/ltpay/activity/PasswordRecover_code;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/ltpay/activity/PasswordRecover_code$1;->this$0:Lcom/ltpay/activity/PasswordRecover_code;

    iget-object v1, v1, Lcom/ltpay/activity/PasswordRecover_code;->Btn:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/ltpay/activity/PasswordRecover_code$1;->this$0:Lcom/ltpay/activity/PasswordRecover_code;

    iget-object v1, v1, Lcom/ltpay/activity/PasswordRecover_code;->Edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/PasswordRecover_code;->code:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/ltpay/activity/PasswordRecover_code$1$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/PasswordRecover_code$1$1;-><init>(Lcom/ltpay/activity/PasswordRecover_code$1;)V

    .line 71
    .local v0, "call":Lcom/ltpay/function/CallBack;
    iget-object v1, p0, Lcom/ltpay/activity/PasswordRecover_code$1;->this$0:Lcom/ltpay/activity/PasswordRecover_code;

    invoke-static {v1}, Lcom/ltpay/activity/PasswordRecover_code;->access$0(Lcom/ltpay/activity/PasswordRecover_code;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/ltpay/activity/PasswordRecover_account;->account:Ljava/lang/String;

    sget-object v3, Lcom/ltpay/activity/PasswordRecover_code;->code:Ljava/lang/String;

    const-string v4, "2"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ltpay/function/Server;->verifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    .line 73
    .end local v0    # "call":Lcom/ltpay/function/CallBack;
    :cond_0
    return-void
.end method

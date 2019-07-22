.class Lcom/ltpay/activity/PasswordRecover_account$1;
.super Ljava/lang/Object;
.source "PasswordRecover_account.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/PasswordRecover_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/PasswordRecover_account;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PasswordRecover_account;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PasswordRecover_account$1;->this$0:Lcom/ltpay/activity/PasswordRecover_account;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/PasswordRecover_account$1;)Lcom/ltpay/activity/PasswordRecover_account;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account$1;->this$0:Lcom/ltpay/activity/PasswordRecover_account;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/ltpay/activity/PasswordRecover_account$1;->this$0:Lcom/ltpay/activity/PasswordRecover_account;

    iget-object v1, v1, Lcom/ltpay/activity/PasswordRecover_account;->Btn:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/ltpay/activity/PasswordRecover_account$1;->this$0:Lcom/ltpay/activity/PasswordRecover_account;

    iget-object v1, v1, Lcom/ltpay/activity/PasswordRecover_account;->Edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/PasswordRecover_account;->account:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/ltpay/activity/PasswordRecover_account$1$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/PasswordRecover_account$1$1;-><init>(Lcom/ltpay/activity/PasswordRecover_account$1;)V

    .line 69
    .local v0, "call":Lcom/ltpay/function/CallBack;
    iget-object v1, p0, Lcom/ltpay/activity/PasswordRecover_account$1;->this$0:Lcom/ltpay/activity/PasswordRecover_account;

    invoke-static {v1}, Lcom/ltpay/activity/PasswordRecover_account;->access$0(Lcom/ltpay/activity/PasswordRecover_account;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/ltpay/activity/PasswordRecover_account;->account:Ljava/lang/String;

    const-string v3, ""

    const-string v4, "2"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/ltpay/function/Server;->sendCode(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v0    # "call":Lcom/ltpay/function/CallBack;
    :cond_0
    return-void
.end method

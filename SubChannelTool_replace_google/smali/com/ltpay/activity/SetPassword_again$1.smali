.class Lcom/ltpay/activity/SetPassword_again$1;
.super Ljava/lang/Object;
.source "SetPassword_again.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/SetPassword_again;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/SetPassword_again;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/SetPassword_again;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/SetPassword_again$1;->this$0:Lcom/ltpay/activity/SetPassword_again;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/SetPassword_again$1;)Lcom/ltpay/activity/SetPassword_again;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword_again$1;->this$0:Lcom/ltpay/activity/SetPassword_again;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword_again$1;->this$0:Lcom/ltpay/activity/SetPassword_again;

    iget-object v0, v0, Lcom/ltpay/activity/SetPassword_again;->Btn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword_again$1;->this$0:Lcom/ltpay/activity/SetPassword_again;

    iget-object v0, v0, Lcom/ltpay/activity/SetPassword_again;->Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltpay/activity/SetPassword_again;->password:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/ltpay/activity/SetPassword_again;->password:Ljava/lang/String;

    sget-object v1, Lcom/ltpay/activity/SetPassword;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v4, Lcom/ltpay/activity/SetPassword_again$1$1;

    invoke-direct {v4, p0}, Lcom/ltpay/activity/SetPassword_again$1$1;-><init>(Lcom/ltpay/activity/SetPassword_again$1;)V

    .line 84
    .local v4, "call":Lcom/ltpay/function/CallBack;
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword_again$1;->this$0:Lcom/ltpay/activity/SetPassword_again;

    invoke-static {v0}, Lcom/ltpay/activity/SetPassword_again;->access$0(Lcom/ltpay/activity/SetPassword_again;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    sget-object v2, Lcom/ltpay/activity/SetPassword_again;->password:Ljava/lang/String;

    sget-object v3, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    sget-object v5, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/ltpay/function/Server;->UserRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;Ljava/lang/String;)V

    .line 92
    .end local v4    # "call":Lcom/ltpay/function/CallBack;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword_again$1;->this$0:Lcom/ltpay/activity/SetPassword_again;

    invoke-static {v0}, Lcom/ltpay/activity/SetPassword_again;->access$0(Lcom/ltpay/activity/SetPassword_again;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e\uff01"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword_again$1;->this$0:Lcom/ltpay/activity/SetPassword_again;

    invoke-static {v0}, Lcom/ltpay/activity/SetPassword_again;->access$0(Lcom/ltpay/activity/SetPassword_again;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/SetPassword;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

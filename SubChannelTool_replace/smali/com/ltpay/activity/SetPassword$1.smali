.class Lcom/ltpay/activity/SetPassword$1;
.super Ljava/lang/Object;
.source "SetPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/SetPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/SetPassword;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/SetPassword;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/SetPassword$1;->this$0:Lcom/ltpay/activity/SetPassword;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/SetPassword$1;)Lcom/ltpay/activity/SetPassword;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword$1;->this$0:Lcom/ltpay/activity/SetPassword;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword$1;->this$0:Lcom/ltpay/activity/SetPassword;

    iget-object v0, v0, Lcom/ltpay/activity/SetPassword;->Btn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword$1;->this$0:Lcom/ltpay/activity/SetPassword;

    iget-object v0, v0, Lcom/ltpay/activity/SetPassword;->Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltpay/activity/SetPassword;->password:Ljava/lang/String;

    .line 74
    new-instance v4, Lcom/ltpay/activity/SetPassword$1$1;

    invoke-direct {v4, p0}, Lcom/ltpay/activity/SetPassword$1$1;-><init>(Lcom/ltpay/activity/SetPassword$1;)V

    .line 102
    .local v4, "call":Lcom/ltpay/function/CallBack;
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword$1;->this$0:Lcom/ltpay/activity/SetPassword;

    invoke-static {v0}, Lcom/ltpay/activity/SetPassword;->access$0(Lcom/ltpay/activity/SetPassword;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    sget-object v2, Lcom/ltpay/activity/SetPassword;->password:Ljava/lang/String;

    sget-object v3, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    sget-object v5, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/ltpay/function/Server;->UserRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;Ljava/lang/String;)V

    .line 104
    .end local v4    # "call":Lcom/ltpay/function/CallBack;
    :cond_0
    return-void
.end method

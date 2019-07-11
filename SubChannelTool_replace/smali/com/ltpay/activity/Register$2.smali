.class Lcom/ltpay/activity/Register$2;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Register;->UserRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Register;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Register;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Register$2;->this$0:Lcom/ltpay/activity/Register;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ltpay/activity/Register$2;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v0}, Lcom/ltpay/activity/Register;->access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/SetPassword;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    iget-object v0, p0, Lcom/ltpay/activity/Register$2;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v0}, Lcom/ltpay/activity/Register;->access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 237
    return-void
.end method

.method public Onfail()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ltpay/activity/Register$2;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v0}, Lcom/ltpay/activity/Register;->access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef\uff0c\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801\uff01"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    return-void
.end method

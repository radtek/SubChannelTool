.class Lcom/ltpay/activity/Register$3;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


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
    iput-object p1, p0, Lcom/ltpay/activity/Register$3;->this$0:Lcom/ltpay/activity/Register;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/ltpay/activity/Register$3;->this$0:Lcom/ltpay/activity/Register;

    iget-object v1, v1, Lcom/ltpay/activity/Register;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "uname"

    sget-object v3, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/ltpay/activity/Register$3;->this$0:Lcom/ltpay/activity/Register;

    iget-object v1, v1, Lcom/ltpay/activity/Register;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "password"

    sget-object v3, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/ltpay/function/Preference;

    iget-object v1, p0, Lcom/ltpay/activity/Register$3;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v1}, Lcom/ltpay/activity/Register;->access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "LtAccountInfo_Accounts"

    invoke-direct {v0, v1, v2}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    .local v0, "localAccounts":Lcom/ltpay/function/Preference;
    sget-object v1, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    sget-object v2, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/ltpay/activity/Register$3;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v1}, Lcom/ltpay/activity/Register;->access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/ltpay/activity/Login;

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    iget-object v1, p0, Lcom/ltpay/activity/Register$3;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v1}, Lcom/ltpay/activity/Register;->access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 281
    return-void
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 265
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/ltpay/activity/Register$3;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v1}, Lcom/ltpay/activity/Register;->access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d26\u53f7\u6ce8\u518c\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    return-void
.end method

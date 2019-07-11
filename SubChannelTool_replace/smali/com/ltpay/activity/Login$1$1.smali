.class Lcom/ltpay/activity/Login$1$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Login$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/Login$1;

.field private final synthetic val$account:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Login$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Login$1$1;->this$1:Lcom/ltpay/activity/Login$1;

    iput-object p2, p0, Lcom/ltpay/activity/Login$1$1;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/ltpay/activity/Login$1$1;->val$password:Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/ltpay/activity/Login$1$1;->this$1:Lcom/ltpay/activity/Login$1;

    invoke-static {v1}, Lcom/ltpay/activity/Login$1;->access$0(Lcom/ltpay/activity/Login$1;)Lcom/ltpay/activity/Login;

    move-result-object v1

    iget-object v1, v1, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "uname"

    iget-object v3, p0, Lcom/ltpay/activity/Login$1$1;->val$account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/ltpay/activity/Login$1$1;->this$1:Lcom/ltpay/activity/Login$1;

    invoke-static {v1}, Lcom/ltpay/activity/Login$1;->access$0(Lcom/ltpay/activity/Login$1;)Lcom/ltpay/activity/Login;

    move-result-object v1

    iget-object v1, v1, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "password"

    iget-object v3, p0, Lcom/ltpay/activity/Login$1$1;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/ltpay/function/Preference;

    iget-object v1, p0, Lcom/ltpay/activity/Login$1$1;->this$1:Lcom/ltpay/activity/Login$1;

    invoke-static {v1}, Lcom/ltpay/activity/Login$1;->access$0(Lcom/ltpay/activity/Login$1;)Lcom/ltpay/activity/Login;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "LtAccountInfo_Accounts"

    invoke-direct {v0, v1, v2}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    .local v0, "localAccounts":Lcom/ltpay/function/Preference;
    iget-object v1, p0, Lcom/ltpay/activity/Login$1$1;->val$account:Ljava/lang/String;

    iget-object v2, p0, Lcom/ltpay/activity/Login$1$1;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/ltpay/activity/Login$1$1;->this$1:Lcom/ltpay/activity/Login$1;

    invoke-static {v1}, Lcom/ltpay/activity/Login$1;->access$0(Lcom/ltpay/activity/Login$1;)Lcom/ltpay/activity/Login;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/ltpay/activity/Login;

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    iget-object v1, p0, Lcom/ltpay/activity/Login$1$1;->this$1:Lcom/ltpay/activity/Login$1;

    invoke-static {v1}, Lcom/ltpay/activity/Login$1;->access$0(Lcom/ltpay/activity/Login$1;)Lcom/ltpay/activity/Login;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 268
    return-void
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 252
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/ltpay/activity/Login$1$1;->this$1:Lcom/ltpay/activity/Login$1;

    invoke-static {v1}, Lcom/ltpay/activity/Login$1;->access$0(Lcom/ltpay/activity/Login$1;)Lcom/ltpay/activity/Login;

    move-result-object v1

    invoke-static {v1}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d26\u53f7\u6ce8\u518c\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    return-void
.end method

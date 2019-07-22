.class Lcom/ltpay/activity/Login$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Login;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Login;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/Login$1;)Lcom/ltpay/activity/Login;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 218
    iget-object v4, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v4, v4, Lcom/ltpay/activity/Login;->ShowPassword:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_3

    .line 220
    iget-object v4, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v5, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-boolean v5, v5, Lcom/ltpay/activity/Login;->showPassword:Z

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    :cond_0
    iput-boolean v3, v4, Lcom/ltpay/activity/Login;->showPassword:Z

    .line 221
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-boolean v3, v3, Lcom/ltpay/activity/Login;->showPassword:Z

    if-eqz v3, :cond_2

    .line 222
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v3, v3, Lcom/ltpay/activity/Login;->passWord:Landroid/widget/EditText;

    const/16 v4, 0x90

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v3, v3, Lcom/ltpay/activity/Login;->passWord:Landroid/widget/EditText;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v4, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v4, v4, Lcom/ltpay/activity/Login;->LoginBtn:Landroid/widget/Button;

    if-ne p1, v4, :cond_4

    .line 232
    iget-object v4, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v4, v4, Lcom/ltpay/activity/Login;->userName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    .line 233
    iget-object v4, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v4, v4, Lcom/ltpay/activity/Login;->passWord:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/ltpay/activity/Login;->password:Ljava/lang/String;

    .line 236
    iget-object v4, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    sget-object v5, Lcom/ltpay/LtSDK;->LoginCallBack:Lcom/ltpay/function/CallBack;

    invoke-static {v4, v5}, Lcom/ltpay/activity/Login;->access$0(Lcom/ltpay/activity/Login;Lcom/ltpay/function/CallBack;)V

    .line 237
    iget-object v4, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    sget-object v5, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    sget-object v6, Lcom/ltpay/activity/Login;->password:Ljava/lang/String;

    iget-object v7, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v7}, Lcom/ltpay/activity/Login;->access$1(Lcom/ltpay/activity/Login;)Lcom/ltpay/function/CallBack;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/ltpay/activity/Login;->UserLogin(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    .line 239
    iget-object v4, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v4, v3}, Lcom/ltpay/activity/Login;->access$2(Lcom/ltpay/activity/Login;Z)V

    .line 240
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v3}, Lcom/ltpay/activity/Login;->access$3(Lcom/ltpay/activity/Login;)V

    goto :goto_0

    .line 242
    :cond_4
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v3, v3, Lcom/ltpay/activity/Login;->RegisterBtn:Landroid/widget/TextView;

    if-ne p1, v3, :cond_5

    .line 244
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v3}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/ltpay/activity/Register;

    invoke-static {v3, v4}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v3}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 247
    :cond_5
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v3, v3, Lcom/ltpay/activity/Login;->RegisterBtn_q:Landroid/widget/TextView;

    if-ne p1, v3, :cond_6

    .line 249
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v3}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/ltpay/function/Tools;->GenAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "account":Ljava/lang/String;
    invoke-static {}, Lcom/ltpay/function/Tools;->GenPassword()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "password":Ljava/lang/String;
    new-instance v1, Lcom/ltpay/activity/Login$1$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/ltpay/activity/Login$1$1;-><init>(Lcom/ltpay/activity/Login$1;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v1, "call":Lcom/ltpay/function/CallBack2;
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v3}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/ltpay/function/Server;->UserRegisterAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    goto/16 :goto_0

    .line 278
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "call":Lcom/ltpay/function/CallBack2;
    .end local v2    # "password":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    iget-object v3, v3, Lcom/ltpay/activity/Login;->ForgetBtn:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v3}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/ltpay/activity/PasswordRecover_account;

    invoke-static {v3, v4}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    iget-object v3, p0, Lcom/ltpay/activity/Login$1;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v3}, Lcom/ltpay/activity/Login;->access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

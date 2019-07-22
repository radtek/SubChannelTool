.class Lcom/ltpay/activity/SettingPage$1;
.super Ljava/lang/Object;
.source "SettingPage.java"

# interfaces
.implements Lcom/ltpay/function/Component$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/SettingPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/SettingPage;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/SettingPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Click(Ljava/lang/String;)V
    .locals 6
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v1, "ltpay_nickname"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    invoke-static {v1}, Lcom/ltpay/activity/SettingPage;->access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/ltpay/activity/ResetNickname;

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    invoke-static {v1}, Lcom/ltpay/activity/SettingPage;->access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v1, "ltpay_photo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ltpay_userphoto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    invoke-static {v1}, Lcom/ltpay/activity/SettingPage;->access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/ltpay/activity/ResetPhoto;

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    invoke-static {v1}, Lcom/ltpay/activity/SettingPage;->access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 83
    :cond_3
    const-string v1, "ltpay_password"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    invoke-static {v1}, Lcom/ltpay/activity/SettingPage;->access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/ltpay/activity/ResetPassword;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ResetByPassword"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "true"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    const-string v1, "ltpay_phone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    invoke-static {v1}, Lcom/ltpay/activity/SettingPage;->access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u6682\u4e0d\u652f\u6301\u624b\u673a\u53f7\u4fee\u6539"

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_5
    const-string v1, "ltpay_loginout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 93
    sget-object v1, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    invoke-virtual {v1}, Lcom/ltpay/activity/UserCenter;->finish()V

    .line 94
    :cond_6
    sget-object v1, Lcom/ltpay/LtSDK;->LoginOutCallBack:Lcom/ltpay/function/CallBack;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/ltpay/LtSDK;->LoginOutCallBack:Lcom/ltpay/function/CallBack;

    invoke-interface {v1}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 96
    :cond_7
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    invoke-static {v1}, Lcom/ltpay/activity/SettingPage;->access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 97
    invoke-static {}, Lcom/ltpay/floatView/FloatService;->HideFloat()V

    .line 99
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    invoke-static {v1}, Lcom/ltpay/activity/SettingPage;->access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5df2\u9000\u51fa\u5f53\u524d\u767b\u5f55\u5e10\u53f7"

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_8
    const-string v1, "ltpay_toggleButton"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    iget-object v1, v1, Lcom/ltpay/activity/SettingPage;->com:Lcom/ltpay/function/Component;

    const-string v2, "ltpay_toggleButton"

    invoke-virtual {v1, v2}, Lcom/ltpay/function/Component;->ToggleButton(Ljava/lang/String;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 105
    .local v0, "isChecked":Z
    sput-boolean v0, Lcom/ltpay/activity/SettingPage;->acceptLtMessage:Z

    .line 106
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage$1;->this$0:Lcom/ltpay/activity/SettingPage;

    iget-object v2, v1, Lcom/ltpay/activity/SettingPage;->localInfo:Lcom/ltpay/function/Preference;

    const-string v3, "acceptLtMessage"

    if-eqz v0, :cond_9

    const-string v1, "true"

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/ltpay/LtSDK;->AcceptMessageCallBack:Lcom/ltpay/function/CallBack;

    if-eqz v1, :cond_0

    .line 110
    if-eqz v0, :cond_a

    sget-object v1, Lcom/ltpay/LtSDK;->AcceptMessageCallBack:Lcom/ltpay/function/CallBack;

    invoke-interface {v1}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    goto/16 :goto_0

    .line 106
    :cond_9
    const-string v1, "false"

    goto :goto_1

    .line 111
    :cond_a
    sget-object v1, Lcom/ltpay/LtSDK;->AcceptMessageCallBack:Lcom/ltpay/function/CallBack;

    invoke-interface {v1}, Lcom/ltpay/function/CallBack;->Onfail()V

    goto/16 :goto_0
.end method

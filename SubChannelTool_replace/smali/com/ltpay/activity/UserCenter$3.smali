.class Lcom/ltpay/activity/UserCenter$3;
.super Ljava/lang/Object;
.source "UserCenter.java"

# interfaces
.implements Lcom/ltpay/function/Component$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/UserCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/UserCenter;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/UserCenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/UserCenter$3;->this$0:Lcom/ltpay/activity/UserCenter;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Click(Ljava/lang/String;)V
    .locals 6
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "ltpay_usercenter1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    const-class v1, Lcom/ltpay/activity/ActivityCenter;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v0, "ltpay_usercenter2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    const-class v1, Lcom/ltpay/activity/SystemMessage;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string v0, "ltpay_usercenter3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    sget-object v1, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    sget-object v2, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/ltpay/activity/Coupon;->Show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v0, "ltpay_usercenter4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    const-class v1, Lcom/ltpay/activity/SettingPage;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    invoke-virtual {v0}, Lcom/ltpay/activity/UserCenter;->finish()V

    goto :goto_0

    .line 178
    :cond_4
    const-string v0, "ltpay_usercenter5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    const-string v1, "\u6682\u65e0\u5ba2\u670d"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_5
    const-string v0, "ltpay_usercenter6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    const-class v1, Lcom/ltpay/activity/ChargeRecord;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 186
    :cond_6
    const-string v0, "ltpay_btn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    invoke-virtual {v0}, Lcom/ltpay/activity/UserCenter;->finish()V

    goto :goto_0
.end method

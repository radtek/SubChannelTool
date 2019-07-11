.class public Lcom/ltpay/LtSDK;
.super Ljava/lang/Object;
.source "LtSDK.java"


# static fields
.field public static AcceptMessageCallBack:Lcom/ltpay/function/CallBack;

.field public static AppId:Ljava/lang/String;

.field public static AppName:Ljava/lang/String;

.field public static LoginCallBack:Lcom/ltpay/function/CallBack;

.field public static LoginOutCallBack:Lcom/ltpay/function/CallBack;

.field public static PackageName:Ljava/lang/String;

.field public static PayCallBack:Lcom/ltpay/function/CallBack;

.field private static PreLoginTime:J

.field public static SubChannelId:Ljava/lang/String;

.field public static context:Landroid/app/Activity;

.field static isInit:Z

.field public static sdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, ""

    sput-object v0, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/ltpay/LtSDK;->SubChannelId:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/ltpay/LtSDK;->PackageName:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/ltpay/LtSDK;->AppName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ltpay/LtSDK;->isInit:Z

    .line 40
    const-string v0, "v20190704"

    sput-object v0, Lcom/ltpay/LtSDK;->sdkVersion:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ltpay/LtSDK;->PreLoginTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HideFloat()V
    .locals 3

    .prologue
    .line 153
    sget-object v1, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    const-string v2, "ShowFloat"

    invoke-static {v1, v2}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    .local v0, "ShowFloat":Z
    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/ltpay/floatView/FloatService;->HideFloat()V

    .line 158
    :cond_0
    return-void
.end method

.method public static Init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "AppId"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-boolean v0, Lcom/ltpay/LtSDK;->isInit:Z

    if-nez v0, :cond_0

    .line 47
    sput-object p0, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    .line 48
    sput-object p1, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lcom/ltpay/function/LtpayConfig;->SubChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltpay/LtSDK;->SubChannelId:Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/ltpay/function/Tools;->getPackageName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltpay/LtSDK;->PackageName:Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lcom/ltpay/function/Tools;->getAppName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ltpay/LtSDK;->AppName:Ljava/lang/String;

    .line 53
    const-class v0, Lcom/ltpay/activity/Loading;

    invoke-static {p0, v0}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ltpay/LtSDK;->isInit:Z

    .line 57
    :cond_0
    return-void
.end method

.method public static Login(Lcom/ltpay/function/CallBack;)V
    .locals 8
    .param p0, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 64
    const-string v4, "Login()"

    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 66
    .local v3, "elem":[Ljava/lang/StackTraceElement;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 72
    sget-boolean v4, Lcom/ltpay/LtSDK;->isInit:Z

    if-eqz v4, :cond_3

    .line 74
    sput-object p0, Lcom/ltpay/LtSDK;->LoginCallBack:Lcom/ltpay/function/CallBack;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, "CurLoginTime":J
    sget-boolean v4, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    if-eqz v4, :cond_2

    sget-wide v4, Lcom/ltpay/LtSDK;->PreLoginTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1b58

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 79
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 80
    :cond_0
    const-string v4, "7\u79d2\u5185\u5df2\u767b\u5f55\u6210\u529f,\u4e0d\u518d\u8c03\u7528\u767b\u5f55\u63a5\u53e3"

    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 89
    .end local v0    # "CurLoginTime":J
    :goto_1
    return-void

    .line 66
    :cond_1
    aget-object v2, v3, v4

    .line 68
    .local v2, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "e":Ljava/lang/StackTraceElement;
    .restart local v0    # "CurLoginTime":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/ltpay/LtSDK;->PreLoginTime:J

    .line 85
    sget-object v4, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    const-class v5, Lcom/ltpay/activity/Login;

    invoke-static {v4, v5}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 88
    .end local v0    # "CurLoginTime":J
    :cond_3
    const-string v4, "\u8c03\u7528\u767b\u5f55\u524d\u9700\u5148\u8fdb\u884c\u521d\u59cb\u5316Init()"

    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static Pay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 4
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "ProductName"    # Ljava/lang/String;
    .param p2, "ProductMoneyFen"    # I
    .param p3, "ServerId"    # Ljava/lang/String;
    .param p4, "Reserve"    # Ljava/lang/String;
    .param p5, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 112
    sget-boolean v1, Lcom/ltpay/LtSDK;->isInit:Z

    if-eqz v1, :cond_0

    .line 114
    sput-object p5, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v0, "payInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "LtAppId"

    sget-object v2, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "LtJoyId"

    sget-object v2, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "LtInstantId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "LtReserve"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "MoneyAmount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "ProductId"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "ProductName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "ProductDescript"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/ltpay/activity/PayPage;->ShowPay(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 130
    .end local v0    # "payInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v1, "\u8c03\u7528\u652f\u4ed8\u524d\u9700\u5148\u8fdb\u884c\u521d\u59cb\u5316Init()"

    invoke-static {v1}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static QuitCustom(Landroid/content/Context;Lcom/ltpay/function/CallBack;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u786e\u8ba4\u9000\u51fa\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 166
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ltpay/LtSDK$1;

    invoke-direct {v2, p1}, Lcom/ltpay/LtSDK$1;-><init>(Lcom/ltpay/function/CallBack;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ltpay/LtSDK$2;

    invoke-direct {v2, p1}, Lcom/ltpay/LtSDK$2;-><init>(Lcom/ltpay/function/CallBack;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    return-void
.end method

.method public static SetAcceptMessage(Lcom/ltpay/function/CallBack;)V
    .locals 0
    .param p0, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 100
    sput-object p0, Lcom/ltpay/LtSDK;->AcceptMessageCallBack:Lcom/ltpay/function/CallBack;

    .line 101
    return-void
.end method

.method public static SetLoginOut(Lcom/ltpay/function/CallBack;)V
    .locals 0
    .param p0, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 94
    sput-object p0, Lcom/ltpay/LtSDK;->LoginOutCallBack:Lcom/ltpay/function/CallBack;

    .line 95
    return-void
.end method

.method public static ShowActivityCenter()V
    .locals 2

    .prologue
    .line 135
    sget-boolean v0, Lcom/ltpay/LtSDK;->isInit:Z

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/ltpay/LtSDK;->context:Landroid/app/Activity;

    const-class v1, Lcom/ltpay/activity/UserCenter;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/ltpay/activity/UserCenter;->Instance:Lcom/ltpay/activity/UserCenter;

    invoke-virtual {v0}, Lcom/ltpay/activity/UserCenter;->finish()V

    goto :goto_0

    .line 141
    :cond_1
    const-string v0, "\u8c03\u7528\u7528\u6237\u4e2d\u5fc3\u524d\u9700\u5148\u8fdb\u884c\u521d\u59cb\u5316Init()"

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static ShowFloat(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/ltpay/floatView/FloatService;->ShowFloat(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public static isAcceptMessage()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/ltpay/activity/SettingPage;->acceptLtMessage:Z

    return v0
.end method

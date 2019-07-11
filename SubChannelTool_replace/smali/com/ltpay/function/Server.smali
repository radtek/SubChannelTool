.class public Lcom/ltpay/function/Server;
.super Ljava/lang/Object;
.source "Server.java"


# static fields
.field public static password:Ljava/lang/String;

.field public static reg_date:Ljava/lang/String;

.field public static reg_msg:Ljava/lang/String;

.field public static uid:Ljava/lang/String;

.field public static uname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 838
    const-string v0, ""

    sput-object v0, Lcom/ltpay/function/Server;->uid:Ljava/lang/String;

    .line 839
    const-string v0, ""

    sput-object v0, Lcom/ltpay/function/Server;->uname:Ljava/lang/String;

    .line 840
    const-string v0, ""

    sput-object v0, Lcom/ltpay/function/Server;->password:Ljava/lang/String;

    .line 841
    const-string v0, ""

    sput-object v0, Lcom/ltpay/function/Server;->reg_date:Ljava/lang/String;

    .line 842
    const-string v0, ""

    sput-object v0, Lcom/ltpay/function/Server;->reg_msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetActivityList(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack2;

    .prologue
    .line 278
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/function/Server$6;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method public static GetAnnounceMent(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack2;

    .prologue
    .line 225
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/function/Server$5;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public static GetChargeRecodeList(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack2;

    .prologue
    .line 468
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/function/Server$9;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 527
    return-void
.end method

.method public static GetCouponList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "ProductId"    # Ljava/lang/String;
    .param p4, "ProductName"    # Ljava/lang/String;
    .param p5, "ProductMoney"    # Ljava/lang/String;
    .param p6, "call"    # Lcom/ltpay/function/CallBack2;

    .prologue
    .line 409
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v0, Lcom/ltpay/function/Server$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ltpay/function/Server$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method public static GetSystemMessageList(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack2;

    .prologue
    .line 343
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/function/Server$7;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public static OrderFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "LtOrderId"    # Ljava/lang/String;
    .param p3, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 533
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ltpay/function/Server$10;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method public static ResetNickname(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 582
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ltpay/function/Server$11;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public static UploadPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "picData"    # Ljava/lang/String;
    .param p3, "picIndex"    # Ljava/lang/String;
    .param p4, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 630
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/ltpay/function/Server$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ltpay/function/Server$12;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 679
    return-void
.end method

.method public static UserRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "call"    # Lcom/ltpay/function/CallBack;
    .param p5, "mprefix"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v0, Lcom/ltpay/function/Server$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ltpay/function/Server$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public static UserRegister(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 2
    .param p0, "channel_id"    # Ljava/lang/String;
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 850
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/function/Server$16;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 904
    return-void
.end method

.method public static UserRegisterAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "call"    # Lcom/ltpay/function/CallBack2;

    .prologue
    .line 789
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ltpay/function/Server$15;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 832
    return-void
.end method

.method public static getBalance(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack2;

    .prologue
    .line 737
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/function/Server$14;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 783
    return-void
.end method

.method public static getPhoto(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack2;

    .prologue
    .line 684
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Server$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/function/Server$13;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 732
    return-void
.end method

.method public static resetPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "prePassword"    # Ljava/lang/String;
    .param p5, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 175
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v0, Lcom/ltpay/function/Server$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ltpay/function/Server$4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public static sendCode(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack;
    .param p3, "mprefix"    # Ljava/lang/String;
    .param p4, "codeType"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/ltpay/function/Server$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ltpay/function/Server$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public static verifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "codeType"    # Ljava/lang/String;
    .param p4, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 74
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/ltpay/function/Server$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ltpay/function/Server$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

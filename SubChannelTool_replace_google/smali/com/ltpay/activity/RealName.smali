.class public Lcom/ltpay/activity/RealName;
.super Landroid/app/Activity;
.source "RealName.java"


# static fields
.field static Instance:Lcom/ltpay/activity/RealName;

.field static RealNameCall:Lcom/ltpay/function/CallBack;

.field static TAG:Ljava/lang/String;

.field public static appId:Ljava/lang/String;

.field public static uid:Ljava/lang/String;


# instance fields
.field IdNumber:Landroid/widget/EditText;

.field SubmitBtn:Landroid/widget/TextView;

.field clickListener:Landroid/view/View$OnClickListener;

.field userName:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "ltsdk"

    sput-object v0, Lcom/ltpay/activity/RealName;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/ltpay/activity/RealName$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/RealName$1;-><init>(Lcom/ltpay/activity/RealName;)V

    iput-object v0, p0, Lcom/ltpay/activity/RealName;->clickListener:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method

.method public static Show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "RealNameCall"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 112
    sput-object p1, Lcom/ltpay/activity/RealName;->appId:Ljava/lang/String;

    .line 113
    sput-object p2, Lcom/ltpay/activity/RealName;->uid:Ljava/lang/String;

    .line 114
    sput-object p3, Lcom/ltpay/activity/RealName;->RealNameCall:Lcom/ltpay/function/CallBack;

    .line 116
    new-instance v0, Lcom/ltpay/activity/RealName$2;

    invoke-direct {v0, p0, p3}, Lcom/ltpay/activity/RealName$2;-><init>(Landroid/content/Context;Lcom/ltpay/function/CallBack;)V

    .line 131
    .local v0, "call":Lcom/ltpay/function/CallBack;
    invoke-static {p1, p2, v0}, Lcom/ltpay/activity/RealName;->checkRealName(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    .line 132
    return-void
.end method

.method static checkRealName(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 164
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/RealName$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/activity/RealName$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method static showRealNameActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/RealName$3;

    invoke-direct {v1, p0}, Lcom/ltpay/activity/RealName$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method static showToast(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/RealName$4;

    invoke-direct {v1, p0}, Lcom/ltpay/activity/RealName$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/ltpay/activity/RealName;->finish()V

    .line 63
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/ltpay/activity/RealName;->Instance:Lcom/ltpay/activity/RealName;

    .line 106
    sget-object v0, Lcom/ltpay/activity/RealName;->RealNameCall:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ltpay/activity/RealName;->RealNameCall:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 107
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sput-object p0, Lcom/ltpay/activity/RealName;->Instance:Lcom/ltpay/activity/RealName;

    .line 50
    const-string v0, "ltpay_layout_realname_authentication"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/RealName;->setContentView(I)V

    .line 52
    const-string v0, "ltpay_edit_name"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/RealName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/RealName;->userName:Landroid/widget/EditText;

    .line 53
    const-string v0, "ltpay_edit_identificaiton"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/RealName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/RealName;->IdNumber:Landroid/widget/EditText;

    .line 55
    const-string v0, "ltpay_btn"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/RealName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/RealName;->SubmitBtn:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/ltpay/activity/RealName;->SubmitBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ltpay/activity/RealName;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method upload_RealNameInfo(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "IdNumber"    # Ljava/lang/String;
    .param p3, "uploadCall"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 208
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/RealName$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ltpay/activity/RealName$6;-><init>(Lcom/ltpay/activity/RealName;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

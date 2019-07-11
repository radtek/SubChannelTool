.class Lcom/ltpay/activity/PayPage$6;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage;->PayFail(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$6;->val$context:Landroid/content/Context;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 393
    sget-object v0, Lcom/ltpay/activity/PayPage;->LtOrderId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$6;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    sget-object v2, Lcom/ltpay/activity/PayPage;->LtOrderId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ltpay/function/Server;->OrderFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    .line 397
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/PayPage;->LtOrderId:Ljava/lang/String;

    .line 400
    sget-object v0, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 401
    :cond_1
    return-void
.end method

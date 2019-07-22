.class Lcom/ltpay/activity/PayPage$5;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage;->PaySuccess(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$5;->val$context:Landroid/content/Context;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$5;->val$context:Landroid/content/Context;

    const-class v1, Lcom/ltpay/activity/PaySuccess;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    sget-object v0, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ltpay/LtSDK;->PayCallBack:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 381
    :cond_0
    return-void
.end method

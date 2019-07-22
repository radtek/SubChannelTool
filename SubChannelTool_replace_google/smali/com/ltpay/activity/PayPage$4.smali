.class Lcom/ltpay/activity/PayPage$4;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage;->payWithBalance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/PayPage;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PayPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$4;->this$0:Lcom/ltpay/activity/PayPage;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/PayPage$4;)Lcom/ltpay/activity/PayPage;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$4;->this$0:Lcom/ltpay/activity/PayPage;

    return-object v0
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    const-wide/16 v5, 0x0

    .line 282
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 284
    .local v0, "balance":D
    const-string v2, "ltpay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "balance double:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    cmpl-double v2, v0, v5

    if-lez v2, :cond_0

    .line 293
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ltpay/activity/PayPage$4$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/ltpay/activity/PayPage$4$1;-><init>(Lcom/ltpay/activity/PayPage$4;D)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/ltpay/activity/PayPage$4;->this$0:Lcom/ltpay/activity/PayPage;

    invoke-static {v2, v5, v6}, Lcom/ltpay/activity/PayPage;->access$4(Lcom/ltpay/activity/PayPage;D)V

    goto :goto_0
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 276
    return-void
.end method

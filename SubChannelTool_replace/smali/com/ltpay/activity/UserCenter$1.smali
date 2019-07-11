.class Lcom/ltpay/activity/UserCenter$1;
.super Ljava/lang/Object;
.source "UserCenter.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


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
    iput-object p1, p0, Lcom/ltpay/activity/UserCenter$1;->this$0:Lcom/ltpay/activity/UserCenter;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 72
    .local v0, "balance":Ljava/lang/Double;
    const-string v1, "ltpay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "balance:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/ltpay/activity/UserCenter$1;->this$0:Lcom/ltpay/activity/UserCenter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ltpay/activity/UserCenter;->access$0(Lcom/ltpay/activity/UserCenter;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 66
    return-void
.end method

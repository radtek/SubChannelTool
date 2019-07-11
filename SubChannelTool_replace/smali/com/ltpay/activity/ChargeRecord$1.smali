.class Lcom/ltpay/activity/ChargeRecord$1;
.super Ljava/lang/Object;
.source "ChargeRecord.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/ChargeRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/ChargeRecord;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ChargeRecord;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ChargeRecord$1;->this$0:Lcom/ltpay/activity/ChargeRecord;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, [Lcom/ltpay/activity/ChargeRecord_T;

    .line 58
    .local v0, "datas":[Lcom/ltpay/activity/ChargeRecord_T;
    iget-object v1, p0, Lcom/ltpay/activity/ChargeRecord$1;->this$0:Lcom/ltpay/activity/ChargeRecord;

    invoke-static {v1, v0}, Lcom/ltpay/activity/ChargeRecord;->access$0(Lcom/ltpay/activity/ChargeRecord;[Lcom/ltpay/activity/ChargeRecord_T;)V

    .line 59
    return-void
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 52
    return-void
.end method

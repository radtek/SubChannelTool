.class Lcom/ltpay/activity/ActivityCenter$1;
.super Ljava/lang/Object;
.source "ActivityCenter.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/ActivityCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/ActivityCenter;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ActivityCenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ActivityCenter$1;->this$0:Lcom/ltpay/activity/ActivityCenter;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 61
    move-object v0, p1

    check-cast v0, [Lcom/ltpay/activity/ActivityCenter_T;

    .line 62
    .local v0, "datas":[Lcom/ltpay/activity/ActivityCenter_T;
    iget-object v1, p0, Lcom/ltpay/activity/ActivityCenter$1;->this$0:Lcom/ltpay/activity/ActivityCenter;

    invoke-static {v1, v0}, Lcom/ltpay/activity/ActivityCenter;->access$0(Lcom/ltpay/activity/ActivityCenter;[Lcom/ltpay/activity/ActivityCenter_T;)V

    .line 63
    return-void
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 56
    return-void
.end method

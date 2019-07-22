.class public Lcom/ltpay/activity/ChargeRecord_T;
.super Ljava/lang/Object;
.source "ChargeRecord_T.java"


# instance fields
.field public appName:Ljava/lang/String;

.field public chargeTime:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public money:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ChargeRecord_T;->id:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ChargeRecord_T;->chargeTime:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ChargeRecord_T;->appName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ChargeRecord_T;->money:Ljava/lang/String;

    .line 18
    return-void
.end method

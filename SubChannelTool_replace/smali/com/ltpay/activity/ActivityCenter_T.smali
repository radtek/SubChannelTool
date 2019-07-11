.class public Lcom/ltpay/activity/ActivityCenter_T;
.super Ljava/lang/Object;
.source "ActivityCenter_T.java"


# instance fields
.field public Title:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ActivityCenter_T;->id:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ActivityCenter_T;->Title:Ljava/lang/String;

    .line 19
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ActivityCenter_T;->url:Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ActivityCenter_T;->content:Ljava/lang/String;

    .line 21
    return-void
.end method

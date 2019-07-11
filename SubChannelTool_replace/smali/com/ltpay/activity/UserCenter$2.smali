.class Lcom/ltpay/activity/UserCenter$2;
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
    iput-object p1, p0, Lcom/ltpay/activity/UserCenter$2;->this$0:Lcom/ltpay/activity/UserCenter;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 103
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "picData":Ljava/lang/String;
    array-length v2, p1

    if-lez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ltpay/activity/ResetPhoto;->picData:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/ltpay/activity/UserCenter$2;->this$0:Lcom/ltpay/activity/UserCenter;

    sget-object v3, Lcom/ltpay/activity/ResetPhoto;->picData:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ltpay/activity/UserCenter;->access$1(Lcom/ltpay/activity/UserCenter;Ljava/lang/String;)V

    .line 110
    :cond_0
    array-length v2, p1

    if-le v2, v4, :cond_1

    aget-object v2, p1, v4

    if-eqz v2, :cond_1

    .line 112
    aget-object v1, p1, v4

    check-cast v1, Lorg/json/JSONArray;

    .line 113
    .local v1, "pics":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/ltpay/activity/ResetPhoto$Photo_T;->Array(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    .line 116
    .end local v1    # "pics":Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 96
    return-void
.end method

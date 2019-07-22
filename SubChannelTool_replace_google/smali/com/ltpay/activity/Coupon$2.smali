.class Lcom/ltpay/activity/Coupon$2;
.super Ljava/lang/Object;
.source "Coupon.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/Coupon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Coupon;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Coupon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Coupon$2;->this$0:Lcom/ltpay/activity/Coupon;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 6
    .param p1, "datas"    # [Ljava/lang/Object;

    .prologue
    .line 122
    const/4 v4, 0x0

    :try_start_0
    aget-object v0, p1, v4

    check-cast v0, Lorg/json/JSONObject;

    .line 123
    .local v0, "data":Lorg/json/JSONObject;
    const-string v4, "useable"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 124
    .local v3, "useableJ":Lorg/json/JSONArray;
    const-string v4, "unuseable"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 126
    .local v2, "unuseableJ":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/ltpay/activity/Coupon$2;->this$0:Lcom/ltpay/activity/Coupon;

    invoke-static {v3}, Lcom/ltpay/activity/Coupon_T;->ToArray(Lorg/json/JSONArray;)[Lcom/ltpay/activity/Coupon_T;

    move-result-object v5

    iput-object v5, v4, Lcom/ltpay/activity/Coupon;->useableCoupon:[Lcom/ltpay/activity/Coupon_T;

    .line 127
    iget-object v4, p0, Lcom/ltpay/activity/Coupon$2;->this$0:Lcom/ltpay/activity/Coupon;

    invoke-static {v2}, Lcom/ltpay/activity/Coupon_T;->ToArray(Lorg/json/JSONArray;)[Lcom/ltpay/activity/Coupon_T;

    move-result-object v5

    iput-object v5, v4, Lcom/ltpay/activity/Coupon;->unuseableCoupon:[Lcom/ltpay/activity/Coupon_T;

    .line 129
    iget-object v4, p0, Lcom/ltpay/activity/Coupon$2;->this$0:Lcom/ltpay/activity/Coupon;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/ltpay/activity/Coupon;->access$0(Lcom/ltpay/activity/Coupon;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "unuseableJ":Lorg/json/JSONArray;
    .end local v3    # "useableJ":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const-string v4, "\u89e3\u6790\u53ef\u7528\u4f18\u60e0\u5238\u4fe1\u606f\u5f02\u5e38"

    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 115
    return-void
.end method

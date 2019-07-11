.class Lcom/ltpay/activity/Coupon$4;
.super Ljava/lang/Object;
.source "Coupon.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Coupon;->CheckCoupon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$checkCall:Lcom/ltpay/function/CallBack;


# direct methods
.method constructor <init>(Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Coupon$4;->val$checkCall:Lcom/ltpay/function/CallBack;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 5
    .param p1, "datas"    # [Ljava/lang/Object;

    .prologue
    .line 215
    iget-object v4, p0, Lcom/ltpay/activity/Coupon$4;->val$checkCall:Lcom/ltpay/function/CallBack;

    if-eqz v4, :cond_0

    .line 219
    const/4 v4, 0x0

    :try_start_0
    aget-object v0, p1, v4

    check-cast v0, Lorg/json/JSONObject;

    .line 220
    .local v0, "data":Lorg/json/JSONObject;
    const-string v4, "useable"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 222
    .local v3, "useableJ":Lorg/json/JSONArray;
    invoke-static {v3}, Lcom/ltpay/activity/Coupon_T;->ToArray(Lorg/json/JSONArray;)[Lcom/ltpay/activity/Coupon_T;

    move-result-object v2

    .line 224
    .local v2, "useableCoupon":[Lcom/ltpay/activity/Coupon_T;
    array-length v4, v2

    if-lez v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/ltpay/activity/Coupon$4;->val$checkCall:Lcom/ltpay/function/CallBack;

    invoke-interface {v4}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 235
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "useableCoupon":[Lcom/ltpay/activity/Coupon_T;
    .end local v3    # "useableJ":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "useableCoupon":[Lcom/ltpay/activity/Coupon_T;
    .restart local v3    # "useableJ":Lorg/json/JSONArray;
    :cond_1
    iget-object v4, p0, Lcom/ltpay/activity/Coupon$4;->val$checkCall:Lcom/ltpay/function/CallBack;

    invoke-interface {v4}, Lcom/ltpay/function/CallBack;->Onfail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "useableCoupon":[Lcom/ltpay/activity/Coupon_T;
    .end local v3    # "useableJ":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    const-string v4, "\u89e3\u6790\u53ef\u7528\u4f18\u60e0\u5238\u4fe1\u606f\u5f02\u5e38"

    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lcom/ltpay/activity/Coupon$4;->val$checkCall:Lcom/ltpay/function/CallBack;

    invoke-interface {v4}, Lcom/ltpay/function/CallBack;->Onfail()V

    goto :goto_0
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 210
    return-void
.end method

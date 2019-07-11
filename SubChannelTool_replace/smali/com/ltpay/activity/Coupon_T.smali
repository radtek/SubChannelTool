.class Lcom/ltpay/activity/Coupon_T;
.super Ljava/lang/Object;
.source "Coupon.java"


# instance fields
.field public id:Ljava/lang/String;

.field public limit:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public value_type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const-string v0, "cid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon_T;->id:Ljava/lang/String;

    .line 263
    const-string v0, "value_type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    .line 264
    const-string v0, "value"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon_T;->value:Ljava/lang/String;

    .line 265
    const-string v0, "limit"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon_T;->limit:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon_T;->id:Ljava/lang/String;

    .line 254
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    .line 255
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon_T;->value:Ljava/lang/String;

    .line 256
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/Coupon_T;->limit:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public static ToArray(Lorg/json/JSONArray;)[Lcom/ltpay/activity/Coupon_T;
    .locals 5
    .param p0, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v0, v4, [Lcom/ltpay/activity/Coupon_T;

    .line 275
    .local v0, "Array":[Lcom/ltpay/activity/Coupon_T;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 288
    return-object v0

    .line 279
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 280
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/ltpay/activity/Coupon_T;

    invoke-direct {v4, v3}, Lcom/ltpay/activity/Coupon_T;-><init>(Lorg/json/JSONObject;)V

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 284
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    const-string v4, "\u4f18\u60e0\u5238\u6570\u636eCoupon_T\u89e3\u6790\u5f02\u5e38!"

    invoke-static {v4}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public Deductible(D)D
    .locals 6
    .param p1, "productMoney"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 323
    iget-object v4, p0, Lcom/ltpay/activity/Coupon_T;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 325
    .local v0, "couponValue":D
    iget-object v4, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 335
    .end local p1    # "productMoney":D
    :goto_0
    return-wide p1

    .restart local p1    # "productMoney":D
    :cond_0
    move-wide p1, v0

    .line 328
    goto :goto_0

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 332
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    move-wide p1, v2

    goto :goto_0

    .line 333
    :cond_2
    mul-double v2, p1, v0

    sub-double/2addr p1, v2

    goto :goto_0

    :cond_3
    move-wide p1, v2

    .line 335
    goto :goto_0
.end method

.method public ToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ltpay/activity/Coupon_T;->TypeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ltpay/activity/Coupon_T;->ValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "\u73b0\u91d1\u62b5\u7528\u5238"

    .line 298
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "\u73b0\u91d1\u6298\u6263\u5238"

    goto :goto_0

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\u6298\u6263\u5238"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ValueString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ltpay/activity/Coupon_T;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    :goto_0
    return-object v1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/ltpay/activity/Coupon_T;->value_type:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/ltpay/activity/Coupon_T;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 309
    .local v0, "v":F
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Lcom/ltpay/function/Tools;->FormatDiscount(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u6298"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 311
    .end local v0    # "v":F
    :cond_1
    iget-object v1, p0, Lcom/ltpay/activity/Coupon_T;->value:Ljava/lang/String;

    goto :goto_0
.end method

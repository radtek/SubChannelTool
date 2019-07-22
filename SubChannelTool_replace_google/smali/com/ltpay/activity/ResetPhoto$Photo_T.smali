.class public Lcom/ltpay/activity/ResetPhoto$Photo_T;
.super Ljava/lang/Object;
.source "ResetPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/ResetPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Photo_T"
.end annotation


# instance fields
.field head_img:Ljava/lang/String;

.field id:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "-1"

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->id:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "J"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "-1"

    iput-object v1, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->id:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;

    .line 46
    :try_start_0
    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->id:Ljava/lang/String;

    .line 47
    const-string v1, "head_img"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "-1"

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->id:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->id:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static Array(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "pics"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ltpay/activity/ResetPhoto$Photo_T;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ltpay/activity/ResetPhoto$Photo_T;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 75
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 90
    .end local v2    # "i":I
    :cond_0
    return-object v3

    .line 79
    .restart local v2    # "i":I
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    .local v0, "J":Lorg/json/JSONObject;
    new-instance v4, Lcom/ltpay/activity/ResetPhoto$Photo_T;

    invoke-direct {v4, v0}, Lcom/ltpay/activity/ResetPhoto$Photo_T;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "J":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;

    invoke-static {v1}, Lcom/ltpay/tackePhoto/BitmapTool;->ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method

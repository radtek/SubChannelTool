.class Lcom/ltpay/activity/ResetPhoto$1;
.super Ljava/lang/Object;
.source "ResetPhoto.java"

# interfaces
.implements Lcom/ltpay/function/Component$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/ResetPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/ResetPhoto;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ResetPhoto;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/ResetPhoto$1;)Lcom/ltpay/activity/ResetPhoto;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    return-object v0
.end method


# virtual methods
.method public Click(Ljava/lang/String;)V
    .locals 6
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 156
    const-string v2, "ltpay_liner1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ltpay_image"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    invoke-static {v2}, Lcom/ltpay/activity/ResetPhoto;->access$0(Lcom/ltpay/activity/ResetPhoto;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ltpay/activity/ResetPhoto;->SelectPhoto(Landroid/view/View;)V

    .line 159
    const-string v2, "-1"

    sput-object v2, Lcom/ltpay/activity/ResetPhoto;->headIndex:Ljava/lang/String;

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    const-string v2, "ltpay_liner_m"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ltpay_photo_m"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    invoke-static {v2, v4}, Lcom/ltpay/activity/ResetPhoto;->access$1(Lcom/ltpay/activity/ResetPhoto;I)V

    .line 165
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 167
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ltpay/activity/ResetPhoto$Photo_T;

    .line 168
    .local v1, "pic":Lcom/ltpay/activity/ResetPhoto$Photo_T;
    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    invoke-virtual {v1}, Lcom/ltpay/activity/ResetPhoto$Photo_T;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ltpay/activity/ResetPhoto;->PhotoResult(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v2, v1, Lcom/ltpay/activity/ResetPhoto$Photo_T;->id:Ljava/lang/String;

    sput-object v2, Lcom/ltpay/activity/ResetPhoto;->headIndex:Ljava/lang/String;

    goto :goto_0

    .line 172
    .end local v1    # "pic":Lcom/ltpay/activity/ResetPhoto$Photo_T;
    :cond_4
    const-string v2, "ltpay_liner_f"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ltpay_photo_f"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    :cond_5
    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/ltpay/activity/ResetPhoto;->access$1(Lcom/ltpay/activity/ResetPhoto;I)V

    .line 176
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 178
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ltpay/activity/ResetPhoto$Photo_T;

    .line 179
    .restart local v1    # "pic":Lcom/ltpay/activity/ResetPhoto$Photo_T;
    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    invoke-virtual {v1}, Lcom/ltpay/activity/ResetPhoto$Photo_T;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ltpay/activity/ResetPhoto;->PhotoResult(Landroid/graphics/Bitmap;)V

    .line 180
    iget-object v2, v1, Lcom/ltpay/activity/ResetPhoto$Photo_T;->id:Ljava/lang/String;

    sput-object v2, Lcom/ltpay/activity/ResetPhoto;->headIndex:Ljava/lang/String;

    goto :goto_0

    .line 183
    .end local v1    # "pic":Lcom/ltpay/activity/ResetPhoto$Photo_T;
    :cond_6
    const-string v2, "ltpay_liner_c"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 185
    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/ltpay/activity/ResetPhoto;->access$1(Lcom/ltpay/activity/ResetPhoto;I)V

    .line 186
    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    invoke-static {v2}, Lcom/ltpay/activity/ResetPhoto;->access$0(Lcom/ltpay/activity/ResetPhoto;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ltpay/activity/ResetPhoto;->TakePhoto(Landroid/view/View;)V

    .line 187
    const-string v2, "-1"

    sput-object v2, Lcom/ltpay/activity/ResetPhoto;->headIndex:Ljava/lang/String;

    goto/16 :goto_0

    .line 189
    :cond_7
    const-string v2, "ltpay_btn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    new-instance v0, Lcom/ltpay/activity/ResetPhoto$1$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/ResetPhoto$1$1;-><init>(Lcom/ltpay/activity/ResetPhoto$1;)V

    .line 209
    .local v0, "call":Lcom/ltpay/function/CallBack;
    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    invoke-static {v2}, Lcom/ltpay/activity/ResetPhoto;->access$0(Lcom/ltpay/activity/ResetPhoto;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v2

    sget-object v3, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ltpay/activity/ResetPhoto$1;->this$0:Lcom/ltpay/activity/ResetPhoto;

    iget-object v4, v4, Lcom/ltpay/activity/ResetPhoto;->curPicData:Ljava/lang/String;

    sget-object v5, Lcom/ltpay/activity/ResetPhoto;->headIndex:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/ltpay/function/Server;->UploadPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    goto/16 :goto_0
.end method

.class public Lcom/ltpay/activity/ResetPhoto;
.super Lcom/ltpay/tackePhoto/PhotoActivity;
.source "ResetPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ltpay/activity/ResetPhoto$Photo_T;
    }
.end annotation


# static fields
.field public static headIndex:Ljava/lang/String;

.field public static heads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ltpay/activity/ResetPhoto$Photo_T;",
            ">;"
        }
    .end annotation
.end field

.field public static picData:Ljava/lang/String;


# instance fields
.field private Instance:Lcom/ltpay/activity/ResetPhoto;

.field com:Lcom/ltpay/function/Component;

.field curPicData:Ljava/lang/String;

.field listener:Lcom/ltpay/function/Component$ClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/ResetPhoto;->picData:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    .line 101
    const-string v0, "-1"

    sput-object v0, Lcom/ltpay/activity/ResetPhoto;->headIndex:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ltpay/tackePhoto/PhotoActivity;-><init>()V

    .line 151
    new-instance v0, Lcom/ltpay/activity/ResetPhoto$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/ResetPhoto$1;-><init>(Lcom/ltpay/activity/ResetPhoto;)V

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->listener:Lcom/ltpay/function/Component$ClickListener;

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->curPicData:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private SetMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_circle_m"

    invoke-virtual {v0, v3}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_circle_f"

    invoke-virtual {v0, v3}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_circle_c"

    invoke-virtual {v0, v3}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void

    :cond_0
    move v0, v2

    .line 216
    goto :goto_0

    :cond_1
    move v0, v2

    .line 217
    goto :goto_1

    :cond_2
    move v1, v2

    .line 218
    goto :goto_2
.end method

.method static synthetic access$0(Lcom/ltpay/activity/ResetPhoto;)Lcom/ltpay/activity/ResetPhoto;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->Instance:Lcom/ltpay/activity/ResetPhoto;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ltpay/activity/ResetPhoto;I)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/ltpay/activity/ResetPhoto;->SetMode(I)V

    return-void
.end method

.method private showPhotos()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 122
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->picData:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->picData:Ljava/lang/String;

    invoke-static {v2}, Lcom/ltpay/tackePhoto/BitmapTool;->ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_image"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->ImageView(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 131
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 133
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ltpay/activity/ResetPhoto$Photo_T;

    iget-object v2, v2, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;

    invoke-static {v2}, Lcom/ltpay/tackePhoto/BitmapTool;->ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_photo_m"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->ImageView(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 139
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->heads:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ltpay/activity/ResetPhoto$Photo_T;

    iget-object v2, v2, Lcom/ltpay/activity/ResetPhoto$Photo_T;->head_img:Ljava/lang/String;

    invoke-static {v2}, Lcom/ltpay/tackePhoto/BitmapTool;->ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 140
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_photo_f"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->ImageView(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/ltpay/activity/ResetPhoto;->finish()V

    .line 148
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->Instance:Lcom/ltpay/activity/ResetPhoto;

    const-class v1, Lcom/ltpay/activity/SettingPage;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    return-void
.end method

.method public PhotoResult(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->com:Lcom/ltpay/function/Component;

    const-string v1, "ltpay_image"

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->ImageView(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    invoke-static {p1}, Lcom/ltpay/tackePhoto/BitmapTool;->ToString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->curPicData:Ljava/lang/String;

    .line 236
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 105
    invoke-super {p0, p1}, Lcom/ltpay/tackePhoto/PhotoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    iput-object p0, p0, Lcom/ltpay/activity/ResetPhoto;->Instance:Lcom/ltpay/activity/ResetPhoto;

    .line 108
    const-string v0, "ltpay_layout_reset_photo"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/ResetPhoto;->setContentView(I)V

    .line 110
    new-instance v0, Lcom/ltpay/function/Component;

    iget-object v1, p0, Lcom/ltpay/activity/ResetPhoto;->Instance:Lcom/ltpay/activity/ResetPhoto;

    iget-object v2, p0, Lcom/ltpay/activity/ResetPhoto;->listener:Lcom/ltpay/function/Component$ClickListener;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ltpay_liner1"

    aput-object v5, v3, v4

    const-string v4, "ltpay_liner_m"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "ltpay_liner_f"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "ltpay_liner_c"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "ltpay_btn"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "ltpay_image"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "ltpay_photo_m"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 111
    const-string v5, "ltpay_photo_f"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/ltpay/function/Component;-><init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V

    .line 110
    iput-object v0, p0, Lcom/ltpay/activity/ResetPhoto;->com:Lcom/ltpay/function/Component;

    .line 112
    invoke-direct {p0, v6}, Lcom/ltpay/activity/ResetPhoto;->SetMode(I)V

    .line 115
    invoke-direct {p0}, Lcom/ltpay/activity/ResetPhoto;->showPhotos()V

    .line 116
    return-void
.end method

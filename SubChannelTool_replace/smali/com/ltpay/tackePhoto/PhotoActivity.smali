.class public Lcom/ltpay/tackePhoto/PhotoActivity;
.super Landroid/app/Activity;
.source "PhotoActivity.java"


# instance fields
.field Height:I

.field Width:I

.field outPath:Ljava/lang/String;

.field photoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x12c

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->photoPath:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->outPath:Ljava/lang/String;

    .line 99
    iput v1, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->Height:I

    .line 100
    iput v1, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->Width:I

    .line 15
    return-void
.end method


# virtual methods
.method public PhotoResult(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    return-void
.end method

.method public SelectPhoto(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    :try_start_0
    invoke-static {p0}, Lcom/ltpay/tackePhoto/PhotoTool;->SelectPicture(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public TakePhoto(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/ltpay/tackePhoto/PhotoTool;->TakePhoto(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->photoPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "\u4e0d\u652f\u6301\u62cd\u7167"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->photoPath:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->photoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 112
    .local v1, "sourceImage":Landroid/net/Uri;
    iget v2, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->Height:I

    iget v3, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->Width:I

    invoke-static {p0, v1, v2, v3}, Lcom/ltpay/tackePhoto/PhotoTool;->startPhotoZoom(Landroid/app/Activity;Landroid/net/Uri;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->outPath:Ljava/lang/String;

    .line 117
    .end local v1    # "sourceImage":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 119
    if-nez p3, :cond_1

    .line 142
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->Height:I

    iget v4, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->Width:I

    invoke-static {p0, v2, v3, v4}, Lcom/ltpay/tackePhoto/PhotoTool;->startPhotoZoom(Landroid/app/Activity;Landroid/net/Uri;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->outPath:Ljava/lang/String;

    .line 124
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 127
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->outPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->outPath:Ljava/lang/String;

    iget v3, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->Height:I

    iget v4, p0, Lcom/ltpay/tackePhoto/PhotoActivity;->Width:I

    invoke-static {v2, v3, v4}, Lcom/ltpay/tackePhoto/BitmapTool;->ReSizeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/ltpay/tackePhoto/BitmapTool;->CircleProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/ltpay/tackePhoto/PhotoActivity;->PhotoResult(Landroid/graphics/Bitmap;)V

    .line 141
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

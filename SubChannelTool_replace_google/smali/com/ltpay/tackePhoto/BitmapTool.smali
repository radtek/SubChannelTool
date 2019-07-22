.class public Lcom/ltpay/tackePhoto/BitmapTool;
.super Ljava/lang/Object;
.source "BitmapTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CircleProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "pic"    # Landroid/graphics/Bitmap;

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 108
    .local v3, "W":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 109
    .local v0, "H":I
    if-ge v3, v0, :cond_0

    move v11, v3

    :goto_0
    div-int/lit8 v2, v11, 0x2

    .line 111
    .local v2, "R":I
    div-int/lit8 v9, v3, 0x2

    .line 112
    .local v9, "x0":I
    div-int/lit8 v10, v0, 0x2

    .line 114
    .local v10, "y0":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 116
    .local v7, "tmp":Landroid/graphics/Bitmap;
    const-string v11, "#00ffffff"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 117
    .local v4, "colorTrans":I
    const/4 v5, 0x0

    .local v5, "h":I
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-lt v5, v11, :cond_1

    .line 130
    return-object v7

    .end local v2    # "R":I
    .end local v4    # "colorTrans":I
    .end local v5    # "h":I
    .end local v7    # "tmp":Landroid/graphics/Bitmap;
    .end local v9    # "x0":I
    .end local v10    # "y0":I
    :cond_0
    move v11, v0

    .line 109
    goto :goto_0

    .line 119
    .restart local v2    # "R":I
    .restart local v4    # "colorTrans":I
    .restart local v5    # "h":I
    .restart local v7    # "tmp":Landroid/graphics/Bitmap;
    .restart local v9    # "x0":I
    .restart local v10    # "y0":I
    :cond_1
    const/4 v8, 0x0

    .local v8, "w":I
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-lt v8, v11, :cond_2

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p0, v8, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 123
    .local v6, "pix":I
    sub-int v11, v8, v9

    sub-int v12, v8, v9

    mul-int/2addr v11, v12

    sub-int v12, v5, v10

    sub-int v13, v5, v10

    mul-int/2addr v12, v13

    add-int v1, v11, v12

    .line 124
    .local v1, "N":I
    mul-int v11, v2, v2

    if-le v1, v11, :cond_3

    .line 125
    invoke-virtual {v7, v8, v5, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 119
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {v7, v8, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_3
.end method

.method public static ReSizeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v9, 0x1

    .line 81
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 86
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 88
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 89
    .local v6, "width":I
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 90
    .local v0, "height":I
    const/4 v4, 0x0

    .local v4, "scaleWidth":F
    const/4 v3, 0x0

    .line 91
    .local v3, "scaleHeight":F
    if-gt v6, p1, :cond_0

    if-le v0, p2, :cond_1

    .line 94
    :cond_0
    int-to-float v7, v6

    int-to-float v8, p1

    div-float v4, v7, v8

    .line 95
    int-to-float v7, v0

    int-to-float v8, p2

    div-float v3, v7, v8

    .line 97
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 99
    .local v2, "scale":F
    float-to-int v7, v2

    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 100
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 101
    .local v5, "weak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-static {v7, p1, p2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7
.end method

.method public static ToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 52
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 53
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 56
    .local v3, "h":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 59
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    return-object v0

    .line 56
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmapData"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 37
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 38
    .local v1, "bitmapArray":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 44
    .end local v1    # "bitmapArray":[B
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static ToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static ToString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    .local v1, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 27
    .local v0, "bytes":[B
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

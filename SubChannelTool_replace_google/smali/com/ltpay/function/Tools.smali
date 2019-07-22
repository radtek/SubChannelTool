.class public Lcom/ltpay/function/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "ltpay"

    sput-object v0, Lcom/ltpay/function/Tools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddSign(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p1

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "timestamp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ltpay/function/Tools;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "sign":Ljava/lang/String;
    const-string v3, "timestamp"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v3, "sign"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public static AutoHide(Landroid/app/Activity;ILcom/ltpay/function/CallBackF;)V
    .locals 4
    .param p0, "Instatnce"    # Landroid/app/Activity;
    .param p1, "millionSecond"    # I
    .param p2, "call"    # Lcom/ltpay/function/CallBackF;

    .prologue
    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ltpay/function/Tools$6;

    invoke-direct {v1, p2, p0}, Lcom/ltpay/function/Tools$6;-><init>(Lcom/ltpay/function/CallBackF;Landroid/app/Activity;)V

    .line 182
    int-to-long v2, p1

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

.method public static FormatDiscount(F)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 214
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "##0.0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "fnum":Ljava/text/DecimalFormat;
    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "moneyStr":Ljava/lang/String;
    return-object v1
.end method

.method public static FormatMoneyStr(D)Ljava/lang/String;
    .locals 3
    .param p0, "MoneyAmount"    # D

    .prologue
    .line 205
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "##0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "fnum":Ljava/text/DecimalFormat;
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "moneyStr":Ljava/lang/String;
    return-object v1
.end method

.method public static FormatMoneyStr(F)Ljava/lang/String;
    .locals 4
    .param p0, "MoneyAmount"    # F

    .prologue
    .line 196
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "##0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "fnum":Ljava/text/DecimalFormat;
    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "moneyStr":Ljava/lang/String;
    return-object v1
.end method

.method public static GenAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-static {p0}, Lcom/ltpay/function/Tools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "Aid":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 286
    .local v3, "rnd":Ljava/util/Random;
    const v4, 0xf4240

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 287
    .local v2, "num":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ltpay/function/Tools;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "Account":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "q"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static GenPassword()Ljava/lang/String;
    .locals 5

    .prologue
    .line 296
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 297
    .local v1, "rnd":Ljava/util/Random;
    const v3, 0xf4240

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 298
    .local v0, "num":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ltpay/function/Tools;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 301
    return-object v2
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v5, 0x0

    .line 131
    .local v5, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 141
    .local v1, "charArray":[C
    array-length v8, v1

    new-array v0, v8, [B

    .line 143
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-lt v4, v8, :cond_0

    .line 146
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 147
    .local v6, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_1
    array-length v8, v6

    if-lt v4, v8, :cond_1

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v0    # "byteArray":[B
    .end local v1    # "charArray":[C
    .end local v3    # "hexValue":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v6    # "md5Bytes":[B
    :goto_2
    return-object v8

    .line 133
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const-string v8, ""

    goto :goto_2

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteArray":[B
    .restart local v1    # "charArray":[C
    .restart local v4    # "i":I
    :cond_0
    aget-char v8, v1, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .restart local v3    # "hexValue":Ljava/lang/StringBuffer;
    .restart local v6    # "md5Bytes":[B
    :cond_1
    aget-byte v8, v6, v4

    and-int/lit16 v7, v8, 0xff

    .line 151
    .local v7, "val":I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_2

    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static ParseFloat(Ljava/lang/String;)F
    .locals 14
    .param p0, "floatValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 223
    const/16 v9, 0xa

    new-array v2, v9, [F

    fill-array-data v2, :array_0

    .line 224
    .local v2, "I":[F
    const/4 v4, 0x0

    .line 225
    .local v4, "f":F
    const-string v9, "."

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 227
    const-string v9, "."

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 228
    .local v7, "index":I
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "A0":Ljava/lang/String;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "A1":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v4, v9

    .line 235
    const/4 v5, 0x0

    .line 236
    .local v5, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    array-length v10, v9

    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_0
    if-lt v8, v10, :cond_1

    .line 242
    .end local v0    # "A0":Ljava/lang/String;
    .end local v1    # "A1":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "index":I
    :cond_0
    return v4

    .line 236
    .restart local v0    # "A0":Ljava/lang/String;
    .restart local v1    # "A1":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    :cond_1
    aget-char v3, v9, v8

    .line 238
    .local v3, "c":C
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget v11, v2, v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v4, v11

    .line 236
    add-int/lit8 v8, v8, 0x1

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 223
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
        0x3a83126f    # 0.001f
        0x38d1b717    # 1.0E-4f
        0x3727c5ac    # 1.0E-5f
        0x358637bd    # 1.0E-6f
        0x33d6bf95    # 1.0E-7f
        0x322bcc77    # 1.0E-8f
        0x3089705f    # 1.0E-9f
        0x2edbe6ff    # 1.0E-10f
    .end array-data
.end method

.method public static ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clas"    # Ljava/lang/Class;

    .prologue
    .line 106
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Tools$5;

    invoke-direct {v1, p0, p1}, Lcom/ltpay/function/Tools$5;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public static varargs ShowActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Tools$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ltpay/function/Tools$4;-><init>(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public static ShowActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Tools$3;

    invoke-direct {v1, p1, p0}, Lcom/ltpay/function/Tools$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    const-string v0, "unknown"

    .line 270
    .local v0, "androidid":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "unknown"

    .line 277
    .end local v0    # "androidid":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 272
    .restart local v0    # "androidid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAppName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 249
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 250
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "appName":Ljava/lang/String;
    return-object v1
.end method

.method public static getPackageName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 259
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 261
    .local v1, "packageName":Ljava/lang/String;
    return-object v1
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 188
    if-nez p0, :cond_0

    .line 190
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 190
    .local v0, "landscape":Z
    :goto_1
    goto :goto_0

    .line 189
    .end local v0    # "landscape":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static showText(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Tools$1;

    invoke-direct {v1, p0}, Lcom/ltpay/function/Tools$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/fxlib/util/FAApk;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ltpay/function/Tools$2;

    invoke-direct {v1, p1, p0}, Lcom/ltpay/function/Tools$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

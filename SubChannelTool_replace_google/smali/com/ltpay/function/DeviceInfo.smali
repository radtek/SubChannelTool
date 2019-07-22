.class public Lcom/ltpay/function/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static brand:Ljava/lang/String;

.field public static defaultUuid:Ljava/lang/String;

.field public static model:Ljava/lang/String;

.field private static sDeviceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/ltpay/function/DeviceInfo;->brand:Ljava/lang/String;

    .line 18
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/ltpay/function/DeviceInfo;->model:Ljava/lang/String;

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/ltpay/function/DeviceInfo;->defaultUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v0, "unknown"

    .line 56
    .local v0, "androidid":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "unknown"

    .line 63
    .end local v0    # "androidid":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 58
    .restart local v0    # "androidid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "unknown"

    sget-object v2, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    .line 47
    :goto_0
    return-object v1

    .line 32
    :cond_0
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 33
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    .line 35
    sget-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 37
    :cond_1
    invoke-static {p0}, Lcom/ltpay/function/DeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    .line 40
    :cond_2
    sget-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 45
    invoke-static {p0}, Lcom/ltpay/function/DeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    .line 47
    sget-object v1, Lcom/ltpay/function/DeviceInfo;->sDeviceID:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "mAppContext"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v7, Lcom/ltpay/function/DeviceInfo;->defaultUuid:Ljava/lang/String;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/ltpay/function/DeviceInfo;->defaultUuid:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 74
    sget-object v6, Lcom/ltpay/function/DeviceInfo;->defaultUuid:Ljava/lang/String;

    .line 94
    :goto_0
    return-object v6

    .line 77
    :cond_0
    const-string v6, ""

    .line 80
    .local v6, "uniqueId":Ljava/lang/String;
    :try_start_0
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 83
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "tmDevice":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "tmSerial":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "androidId":Ljava/lang/String;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    int-to-long v9, v9

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    int-to-long v11, v11

    or-long/2addr v9, v11

    invoke-direct {v1, v7, v8, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    .line 88
    .local v1, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 90
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "deviceUuid":Ljava/util/UUID;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "tmDevice":Ljava/lang/String;
    .end local v5    # "tmSerial":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "00000000-0000-0000-ffff-000000000000"

    goto :goto_0
.end method

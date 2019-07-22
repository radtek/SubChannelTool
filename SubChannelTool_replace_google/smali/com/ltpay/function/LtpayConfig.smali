.class public Lcom/ltpay/function/LtpayConfig;
.super Ljava/lang/Object;
.source "LtpayConfig.java"


# static fields
.field private static LTSDK_SERVER_NAME:Ljava/lang/String;

.field private static SubChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, ""

    sput-object v0, Lcom/ltpay/function/LtpayConfig;->LTSDK_SERVER_NAME:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/ltpay/function/LtpayConfig;->SubChannelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/joymeng/payment/util/AssetProperty;

    const-string v2, "ltpay_config.txt"

    invoke-direct {v0, p0, v2}, Lcom/joymeng/payment/util/AssetProperty;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .local v0, "config":Lcom/joymeng/payment/util/AssetProperty;
    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lcom/joymeng/payment/util/AssetProperty;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method

.method public static ServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-object v1, Lcom/ltpay/function/LtpayConfig;->LTSDK_SERVER_NAME:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Lcom/joymeng/payment/util/AssetProperty;

    const-string v1, "ltpay_config.txt"

    invoke-direct {v0, p0, v1}, Lcom/joymeng/payment/util/AssetProperty;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .local v0, "config":Lcom/joymeng/payment/util/AssetProperty;
    const-string v1, "LtsdkServerName"

    sget-object v2, Lcom/ltpay/function/LtpayConfig;->LTSDK_SERVER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/joymeng/payment/util/AssetProperty;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/function/LtpayConfig;->LTSDK_SERVER_NAME:Ljava/lang/String;

    .line 21
    .end local v0    # "config":Lcom/joymeng/payment/util/AssetProperty;
    :cond_0
    sget-object v1, Lcom/ltpay/function/LtpayConfig;->LTSDK_SERVER_NAME:Ljava/lang/String;

    return-object v1
.end method

.method public static SubChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lcom/ltpay/function/LtpayConfig;->SubChannelId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Lcom/joymeng/payment/util/AssetProperty;

    const-string v1, "ltpay_config.txt"

    invoke-direct {v0, p0, v1}, Lcom/joymeng/payment/util/AssetProperty;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .local v0, "config":Lcom/joymeng/payment/util/AssetProperty;
    const-string v1, "SubChannelId"

    sget-object v2, Lcom/ltpay/function/LtpayConfig;->SubChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/joymeng/payment/util/AssetProperty;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/function/LtpayConfig;->SubChannelId:Ljava/lang/String;

    .line 42
    .end local v0    # "config":Lcom/joymeng/payment/util/AssetProperty;
    :cond_0
    sget-object v1, Lcom/ltpay/function/LtpayConfig;->SubChannelId:Ljava/lang/String;

    return-object v1
.end method

.method public static URL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relative"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ltpay/function/LtpayConfig;->ServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

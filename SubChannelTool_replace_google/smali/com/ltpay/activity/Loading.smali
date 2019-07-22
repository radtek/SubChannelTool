.class public Lcom/ltpay/activity/Loading;
.super Landroid/app/Activity;
.source "Loading.java"


# static fields
.field private static Instatnce:Landroid/app/Activity; = null

.field private static final REQUEST_OVERLAY:I = 0x138c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private RequestOverlayPermission()V
    .locals 4

    .prologue
    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 54
    sget-object v2, Lcom/ltpay/activity/Loading;->Instatnce:Landroid/app/Activity;

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 57
    .local v0, "ACTION_MANAGE_OVERLAY_PERMISSION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ltpay/activity/Loading;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/ltpay/activity/Loading;->Instatnce:Landroid/app/Activity;

    const/16 v3, 0x138c

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    .end local v0    # "ACTION_MANAGE_OVERLAY_PERMISSION":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ltpay/LtSDK;->CanShowFloat:Z

    goto :goto_0
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/ltpay/activity/Loading;->Instatnce:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    const/16 v0, 0x138c

    if-ne p1, v0, :cond_0

    .line 76
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ltpay/LtSDK;->CanShowFloat:Z

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ltpay/LtSDK;->CanShowFloat:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sput-object p0, Lcom/ltpay/activity/Loading;->Instatnce:Landroid/app/Activity;

    .line 28
    const-string v1, "ltpay_layout_loading"

    const-string v2, "layout"

    invoke-static {p0, v1, v2}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ltpay/activity/Loading;->setContentView(I)V

    .line 30
    new-instance v0, Lcom/ltpay/activity/Loading$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Loading$1;-><init>(Lcom/ltpay/activity/Loading;)V

    .line 41
    .local v0, "call":Lcom/ltpay/function/CallBackF;
    sget-object v1, Lcom/ltpay/activity/Loading;->Instatnce:Landroid/app/Activity;

    const/16 v2, 0x3e8

    invoke-static {v1, v2, v0}, Lcom/ltpay/function/Tools;->AutoHide(Landroid/app/Activity;ILcom/ltpay/function/CallBackF;)V

    .line 43
    invoke-direct {p0}, Lcom/ltpay/activity/Loading;->RequestOverlayPermission()V

    .line 44
    return-void
.end method

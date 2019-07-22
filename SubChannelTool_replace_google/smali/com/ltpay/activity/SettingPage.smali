.class public Lcom/ltpay/activity/SettingPage;
.super Landroid/app/Activity;
.source "SettingPage.java"


# static fields
.field public static acceptLtMessage:Z


# instance fields
.field private Instance:Landroid/app/Activity;

.field com:Lcom/ltpay/function/Component;

.field listener:Lcom/ltpay/function/Component$ClickListener;

.field localInfo:Lcom/ltpay/function/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ltpay/activity/SettingPage;->acceptLtMessage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/ltpay/activity/SettingPage$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/SettingPage$1;-><init>(Lcom/ltpay/activity/SettingPage;)V

    iput-object v0, p0, Lcom/ltpay/activity/SettingPage;->listener:Lcom/ltpay/function/Component$ClickListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/SettingPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ltpay/activity/SettingPage;->Instance:Landroid/app/Activity;

    return-object v0
.end method

.method private loadAccountInfo()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "acceptLtMessage"

    invoke-virtual {v1, v2}, Lcom/ltpay/function/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    .local v0, "checked":Z
    sput-boolean v0, Lcom/ltpay/activity/SettingPage;->acceptLtMessage:Z

    .line 59
    iget-object v1, p0, Lcom/ltpay/activity/SettingPage;->com:Lcom/ltpay/function/Component;

    const-string v2, "ltpay_toggleButton"

    invoke-virtual {v1, v2}, Lcom/ltpay/function/Component;->ToggleButton(Ljava/lang/String;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/ltpay/activity/SettingPage;->finish()V

    .line 65
    invoke-static {}, Lcom/ltpay/LtSDK;->ShowActivityCenter()V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iput-object p0, p0, Lcom/ltpay/activity/SettingPage;->Instance:Landroid/app/Activity;

    .line 33
    const-string v2, "ltpay_layout_setting_page"

    const-string v3, "layout"

    invoke-static {p0, v2, v3}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ltpay/activity/SettingPage;->setContentView(I)V

    .line 34
    new-instance v2, Lcom/ltpay/function/Component;

    iget-object v3, p0, Lcom/ltpay/activity/SettingPage;->Instance:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ltpay/activity/SettingPage;->listener:Lcom/ltpay/function/Component$ClickListener;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ltpay_nickname"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "ltpay_photo"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "ltpay_password"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "ltpay_phone"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "ltpay_accept_msg"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 35
    const-string v7, "ltpay_loginout"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "ltpay_toggleButton"

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/ltpay/function/Component;-><init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V

    .line 34
    iput-object v2, p0, Lcom/ltpay/activity/SettingPage;->com:Lcom/ltpay/function/Component;

    .line 37
    iget-object v2, p0, Lcom/ltpay/activity/SettingPage;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_nickname_text"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u6635\u79f0\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ltpay/activity/Login;->nname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->picData:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    sget-object v2, Lcom/ltpay/activity/ResetPhoto;->picData:Ljava/lang/String;

    invoke-static {v2}, Lcom/ltpay/tackePhoto/BitmapTool;->ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Lcom/ltpay/tackePhoto/BitmapTool;->ToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/ltpay/activity/SettingPage;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_userphoto"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->ImageView(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v2, Lcom/ltpay/function/Preference;

    const-string v3, "LtAccountInfo"

    invoke-direct {v2, p0, v3}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ltpay/activity/SettingPage;->localInfo:Lcom/ltpay/function/Preference;

    .line 51
    invoke-direct {p0}, Lcom/ltpay/activity/SettingPage;->loadAccountInfo()V

    .line 52
    return-void
.end method

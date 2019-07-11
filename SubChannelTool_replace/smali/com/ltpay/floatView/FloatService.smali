.class public Lcom/ltpay/floatView/FloatService;
.super Landroid/app/Service;
.source "FloatService.java"


# static fields
.field private static Instance:Lcom/ltpay/floatView/FloatService;


# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field mFloatLayout:Landroid/widget/LinearLayout;

.field mFloatView:Landroid/widget/ImageView;

.field manager:Landroid/view/WindowManager;

.field params:Landroid/view/WindowManager$LayoutParams;

.field preClickTime:J

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 133
    new-instance v0, Lcom/ltpay/floatView/FloatService$1;

    invoke-direct {v0, p0}, Lcom/ltpay/floatView/FloatService$1;-><init>(Lcom/ltpay/floatView/FloatService;)V

    iput-object v0, p0, Lcom/ltpay/floatView/FloatService;->touchListener:Landroid/view/View$OnTouchListener;

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ltpay/floatView/FloatService;->preClickTime:J

    .line 148
    new-instance v0, Lcom/ltpay/floatView/FloatService$2;

    invoke-direct {v0, p0}, Lcom/ltpay/floatView/FloatService$2;-><init>(Lcom/ltpay/floatView/FloatService;)V

    iput-object v0, p0, Lcom/ltpay/floatView/FloatService;->clickListener:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method public static HideFloat()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/ltpay/floatView/FloatService;->Instance:Lcom/ltpay/floatView/FloatService;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/ltpay/floatView/FloatService;->Instance:Lcom/ltpay/floatView/FloatService;

    invoke-virtual {v0}, Lcom/ltpay/floatView/FloatService;->Hide()V

    .line 68
    const-string v0, "HideFloat()"

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method private SetFloatView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/ltpay/floatView/FloatService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 113
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget-object v3, Lcom/ltpay/floatView/FloatService;->Instance:Lcom/ltpay/floatView/FloatService;

    const-string v4, "ltpay_layout_float_view"

    const-string v5, "layout"

    invoke-static {v3, v4, v5}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, "id":I
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ltpay/floatView/FloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 117
    invoke-direct {p0}, Lcom/ltpay/floatView/FloatService;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lcom/ltpay/floatView/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 118
    invoke-virtual {p0}, Lcom/ltpay/floatView/FloatService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ltpay/floatView/FloatService;->getApplication()Landroid/app/Application;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/ltpay/floatView/FloatService;->manager:Landroid/view/WindowManager;

    .line 119
    iget-object v3, p0, Lcom/ltpay/floatView/FloatService;->manager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/ltpay/floatView/FloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ltpay/floatView/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    sget-object v3, Lcom/ltpay/floatView/FloatService;->Instance:Lcom/ltpay/floatView/FloatService;

    const-string v4, "ltpay_imageView"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "imageId":I
    iget-object v3, p0, Lcom/ltpay/floatView/FloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ltpay/floatView/FloatService;->mFloatView:Landroid/widget/ImageView;

    .line 125
    iget-object v3, p0, Lcom/ltpay/floatView/FloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 126
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 125
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 128
    iget-object v3, p0, Lcom/ltpay/floatView/FloatService;->mFloatView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ltpay/floatView/FloatService;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v3, p0, Lcom/ltpay/floatView/FloatService;->mFloatView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ltpay/floatView/FloatService;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method public static ShowFloat(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-string v2, "ShowFloat"

    invoke-static {p0, v2}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    .local v0, "ShowFloat":Z
    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v2, Lcom/ltpay/floatView/FloatService;->Instance:Lcom/ltpay/floatView/FloatService;

    if-nez v2, :cond_0

    .line 52
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ltpay/floatView/FloatService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    const-string v2, "ShowFloat()"

    invoke-static {v2}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 167
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 168
    .local v0, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 169
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 170
    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 171
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 176
    invoke-direct {p0}, Lcom/ltpay/floatView/FloatService;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 177
    const/16 v1, 0xf

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 180
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 181
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 183
    return-object v0
.end method

.method private getWidth()I
    .locals 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/ltpay/floatView/FloatService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 190
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 191
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 192
    .local v0, "density":F
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 193
    .local v4, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 195
    .local v2, "height":I
    return v4
.end method


# virtual methods
.method public Hide()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/ltpay/floatView/FloatService;->Instance:Lcom/ltpay/floatView/FloatService;

    .line 96
    iget-object v0, p0, Lcom/ltpay/floatView/FloatService;->manager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ltpay/floatView/FloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/ltpay/floatView/FloatService;->stopSelf()V

    .line 98
    invoke-virtual {p0}, Lcom/ltpay/floatView/FloatService;->onDestroy()V

    .line 99
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    sput-object p0, Lcom/ltpay/floatView/FloatService;->Instance:Lcom/ltpay/floatView/FloatService;

    .line 82
    invoke-direct {p0}, Lcom/ltpay/floatView/FloatService;->SetFloatView()V

    .line 83
    return-void
.end method

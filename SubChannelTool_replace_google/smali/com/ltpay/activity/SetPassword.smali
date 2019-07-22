.class public Lcom/ltpay/activity/SetPassword;
.super Landroid/app/Activity;
.source "SetPassword.java"


# static fields
.field public static password:Ljava/lang/String;


# instance fields
.field Btn:Landroid/widget/Button;

.field Edit:Landroid/widget/EditText;

.field private Instance:Landroid/app/Activity;

.field clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/SetPassword;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/ltpay/activity/SetPassword$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/SetPassword$1;-><init>(Lcom/ltpay/activity/SetPassword;)V

    iput-object v0, p0, Lcom/ltpay/activity/SetPassword;->clickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/SetPassword;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/ltpay/activity/SetPassword;->finish()V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iput-object p0, p0, Lcom/ltpay/activity/SetPassword;->Instance:Landroid/app/Activity;

    .line 35
    const-string v0, "ltpay_layout_set_password"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/SetPassword;->setContentView(I)V

    .line 37
    const-string v0, "ltpay_edit"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/SetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/SetPassword;->Edit:Landroid/widget/EditText;

    .line 39
    const-string v0, "ltpay_btn"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/SetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ltpay/activity/SetPassword;->Btn:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/ltpay/activity/SetPassword;->Btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ltpay/activity/SetPassword;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

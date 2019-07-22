.class public Lcom/ltpay/activity/ResetPassword;
.super Landroid/app/Activity;
.source "ResetPassword.java"


# static fields
.field public static password:Ljava/lang/String;


# instance fields
.field Btn:Landroid/widget/Button;

.field Edit:Landroid/widget/EditText;

.field private Instance:Landroid/app/Activity;

.field ResetByPassword:Z

.field clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/ResetPassword;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ltpay/activity/ResetPassword;->ResetByPassword:Z

    .line 50
    new-instance v0, Lcom/ltpay/activity/ResetPassword$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/ResetPassword$1;-><init>(Lcom/ltpay/activity/ResetPassword;)V

    iput-object v0, p0, Lcom/ltpay/activity/ResetPassword;->clickListener:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/ResetPassword;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/ltpay/activity/ResetPassword;->finish()V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iput-object p0, p0, Lcom/ltpay/activity/ResetPassword;->Instance:Landroid/app/Activity;

    .line 31
    const-string v1, "ltpay_layout_reset_password"

    const-string v2, "layout"

    invoke-static {p0, v1, v2}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ltpay/activity/ResetPassword;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/ltpay/activity/ResetPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "Extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "ResetByPassword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "ResetByPassword"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ltpay/activity/ResetPassword;->ResetByPassword:Z

    .line 39
    :cond_0
    const-string v1, "ltpay_edit"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ltpay/activity/ResetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ltpay/activity/ResetPassword;->Edit:Landroid/widget/EditText;

    .line 41
    const-string v1, "ltpay_btn"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ltpay/activity/ResetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ltpay/activity/ResetPassword;->Btn:Landroid/widget/Button;

    .line 42
    iget-object v1, p0, Lcom/ltpay/activity/ResetPassword;->Btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ltpay/activity/ResetPassword;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

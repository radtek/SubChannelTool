.class public Lcom/ltpay/activity/ResetPassword_finish;
.super Landroid/app/Activity;
.source "ResetPassword_finish.java"


# static fields
.field public static password:Ljava/lang/String;


# instance fields
.field Btn:Landroid/widget/Button;

.field private Instance:Landroid/app/Activity;

.field clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/ResetPassword_finish;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/ltpay/activity/ResetPassword_finish$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/ResetPassword_finish$1;-><init>(Lcom/ltpay/activity/ResetPassword_finish;)V

    iput-object v0, p0, Lcom/ltpay/activity/ResetPassword_finish;->clickListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/ResetPassword_finish;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword_finish;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/ltpay/activity/ResetPassword_finish;->finish()V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iput-object p0, p0, Lcom/ltpay/activity/ResetPassword_finish;->Instance:Landroid/app/Activity;

    .line 30
    const-string v0, "ltpay_layout_reset_password_finish"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/ResetPassword_finish;->setContentView(I)V

    .line 32
    const-string v0, "ltpay_btn"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/ResetPassword_finish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ltpay/activity/ResetPassword_finish;->Btn:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/ltpay/activity/ResetPassword_finish;->Btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ltpay/activity/ResetPassword_finish;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

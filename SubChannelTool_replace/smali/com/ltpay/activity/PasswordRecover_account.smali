.class public Lcom/ltpay/activity/PasswordRecover_account;
.super Landroid/app/Activity;
.source "PasswordRecover_account.java"


# static fields
.field public static account:Ljava/lang/String;


# instance fields
.field Btn:Landroid/widget/Button;

.field Edit:Landroid/widget/EditText;

.field private Instance:Landroid/app/Activity;

.field clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/PasswordRecover_account;->account:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/ltpay/activity/PasswordRecover_account$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/PasswordRecover_account$1;-><init>(Lcom/ltpay/activity/PasswordRecover_account;)V

    iput-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account;->clickListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/PasswordRecover_account;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/ltpay/activity/PasswordRecover_account;->finish()V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iput-object p0, p0, Lcom/ltpay/activity/PasswordRecover_account;->Instance:Landroid/app/Activity;

    .line 31
    const-string v0, "ltpay_layout_password_recovery_account"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/PasswordRecover_account;->setContentView(I)V

    .line 33
    const-string v0, "ltpay_edit"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/PasswordRecover_account;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account;->Edit:Landroid/widget/EditText;

    .line 34
    const-string v0, "ltpay_btn"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/PasswordRecover_account;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account;->Btn:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/ltpay/activity/PasswordRecover_account;->Btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ltpay/activity/PasswordRecover_account;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

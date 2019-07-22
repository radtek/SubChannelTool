.class public Lcom/ltpay/activity/Login;
.super Landroid/app/Activity;
.source "Login.java"


# static fields
.field public static ip:Ljava/lang/String;

.field public static isLoginSuccess:Z

.field public static login_msg:Ljava/lang/String;

.field public static nname:Ljava/lang/String;

.field public static password:Ljava/lang/String;

.field public static reg_date:Ljava/lang/String;

.field public static token:Ljava/lang/String;

.field public static uid:Ljava/lang/String;

.field public static uname:Ljava/lang/String;


# instance fields
.field ForgetBtn:Landroid/widget/TextView;

.field private Instance:Landroid/app/Activity;

.field LoginBtn:Landroid/widget/Button;

.field RegisterBtn:Landroid/widget/TextView;

.field RegisterBtn_q:Landroid/widget/TextView;

.field ShowPassword:Landroid/widget/ImageView;

.field SpinnerAccounts:Landroid/widget/Spinner;

.field clickListener:Landroid/view/View$OnClickListener;

.field public isFirstSelect:Z

.field localAccounts:Lcom/ltpay/function/Preference;

.field localInfo:Lcom/ltpay/function/Preference;

.field private loginCallBack:Lcom/ltpay/function/CallBack;

.field passWord:Landroid/widget/EditText;

.field saveAccountInfo:Z

.field showListView:Z

.field showPassword:Z

.field userName:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Login;->login_msg:Ljava/lang/String;

    .line 292
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    .line 293
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    .line 294
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Login;->nname:Ljava/lang/String;

    .line 295
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Login;->reg_date:Ljava/lang/String;

    .line 296
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Login;->token:Ljava/lang/String;

    .line 297
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Login;->ip:Ljava/lang/String;

    .line 298
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Login;->password:Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/ltpay/activity/Login;->saveAccountInfo:Z

    .line 61
    iput-boolean v0, p0, Lcom/ltpay/activity/Login;->showPassword:Z

    .line 62
    iput-boolean v0, p0, Lcom/ltpay/activity/Login;->showListView:Z

    .line 98
    iput-boolean v1, p0, Lcom/ltpay/activity/Login;->isFirstSelect:Z

    .line 213
    new-instance v0, Lcom/ltpay/activity/Login$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Login$1;-><init>(Lcom/ltpay/activity/Login;)V

    iput-object v0, p0, Lcom/ltpay/activity/Login;->clickListener:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method private SaveAccountInfo()V
    .locals 6

    .prologue
    .line 179
    iget-object v2, p0, Lcom/ltpay/activity/Login;->userName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "uname":Ljava/lang/String;
    iget-object v2, p0, Lcom/ltpay/activity/Login;->passWord:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v3, "isSaved"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/ltpay/activity/Login;->saveAccountInfo:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-boolean v2, p0, Lcom/ltpay/activity/Login;->saveAccountInfo:Z

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v3, "uname"

    invoke-virtual {v2, v3, v1}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v3, "password"

    invoke-virtual {v2, v3, v0}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/ltpay/activity/Login;->localAccounts:Lcom/ltpay/function/Preference;

    invoke-virtual {v2, v1, v0}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v3, "uname"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v3, "password"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private SetAccounts()V
    .locals 4

    .prologue
    .line 117
    iget-object v2, p0, Lcom/ltpay/activity/Login;->localAccounts:Lcom/ltpay/function/Preference;

    invoke-virtual {v2}, Lcom/ltpay/function/Preference;->Keys()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 121
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 122
    iget-object v2, p0, Lcom/ltpay/activity/Login;->SpinnerAccounts:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 125
    iget-object v2, p0, Lcom/ltpay/activity/Login;->SpinnerAccounts:Landroid/widget/Spinner;

    new-instance v3, Lcom/ltpay/activity/Login$2;

    invoke-direct {v3, p0, v0}, Lcom/ltpay/activity/Login$2;-><init>(Lcom/ltpay/activity/Login;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 149
    return-void
.end method

.method private SetFirstSelect()V
    .locals 3

    .prologue
    .line 153
    iget-object v2, p0, Lcom/ltpay/activity/Login;->localAccounts:Lcom/ltpay/function/Preference;

    invoke-virtual {v2}, Lcom/ltpay/function/Preference;->Keys()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 155
    .local v1, "position":I
    iget-object v2, p0, Lcom/ltpay/activity/Login;->SpinnerAccounts:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 156
    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/Login;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/ltpay/activity/Login;->loginCallBack:Lcom/ltpay/function/CallBack;

    return-void
.end method

.method static synthetic access$1(Lcom/ltpay/activity/Login;)Lcom/ltpay/function/CallBack;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ltpay/activity/Login;->loginCallBack:Lcom/ltpay/function/CallBack;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ltpay/activity/Login;Z)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/ltpay/activity/Login;->setSaveState(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/ltpay/activity/Login;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/ltpay/activity/Login;->SaveAccountInfo()V

    return-void
.end method

.method static synthetic access$4(Lcom/ltpay/activity/Login;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ltpay/activity/Login;->Instance:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ltpay/activity/Login;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/ltpay/activity/Login;->SetFirstSelect()V

    return-void
.end method

.method public static checkLogin(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    sget-boolean v0, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/ltpay/activity/Login;

    invoke-static {p0, v0}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    :cond_0
    sget-boolean v0, Lcom/ltpay/activity/Login;->isLoginSuccess:Z

    return v0
.end method

.method private loadAccountInfo()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "isSaved"

    invoke-virtual {v1, v2}, Lcom/ltpay/function/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 201
    .local v0, "isSaved":Z
    invoke-direct {p0, v0}, Lcom/ltpay/activity/Login;->setSaveState(Z)V

    .line 205
    iget-object v1, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "uname"

    invoke-virtual {v1, v2}, Lcom/ltpay/function/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    const-string v2, "password"

    invoke-virtual {v1, v2}, Lcom/ltpay/function/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/Login;->password:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/ltpay/activity/Login;->userName:Landroid/widget/EditText;

    sget-object v2, Lcom/ltpay/activity/Login;->uname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/ltpay/activity/Login;->passWord:Landroid/widget/EditText;

    sget-object v2, Lcom/ltpay/activity/Login;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method private setSaveState(Z)V
    .locals 0
    .param p1, "save"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/ltpay/activity/Login;->saveAccountInfo:Z

    .line 174
    return-void
.end method


# virtual methods
.method public UserLogin(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "call"    # Lcom/ltpay/function/CallBack;

    .prologue
    .line 312
    invoke-static {}, Lcom/fxlib/util/FJThread;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ltpay/activity/Login$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ltpay/activity/Login$3;-><init>(Lcom/ltpay/activity/Login;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "ltpay_layout_login"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->setContentView(I)V

    .line 69
    iput-object p0, p0, Lcom/ltpay/activity/Login;->Instance:Landroid/app/Activity;

    .line 71
    const-string v0, "ltpay_edit_account"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/Login;->userName:Landroid/widget/EditText;

    .line 72
    const-string v0, "ltpay_edit_password"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/Login;->passWord:Landroid/widget/EditText;

    .line 73
    const-string v0, "ltpay_password_eye"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ltpay/activity/Login;->ShowPassword:Landroid/widget/ImageView;

    .line 75
    const-string v0, "ltpay_btn_login"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ltpay/activity/Login;->LoginBtn:Landroid/widget/Button;

    .line 76
    const-string v0, "ltpay_btn_register"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Login;->RegisterBtn:Landroid/widget/TextView;

    .line 77
    const-string v0, "ltpay_btn_register_quick"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Login;->RegisterBtn_q:Landroid/widget/TextView;

    .line 78
    const-string v0, "ltpay_btn_foget"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Login;->ForgetBtn:Landroid/widget/TextView;

    .line 80
    const-string v0, "ltpay_spinner_accounts"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ltpay/activity/Login;->SpinnerAccounts:Landroid/widget/Spinner;

    .line 82
    iget-object v0, p0, Lcom/ltpay/activity/Login;->ShowPassword:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ltpay/activity/Login;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/ltpay/activity/Login;->LoginBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ltpay/activity/Login;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/ltpay/activity/Login;->RegisterBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ltpay/activity/Login;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/ltpay/activity/Login;->RegisterBtn_q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ltpay/activity/Login;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/ltpay/activity/Login;->ForgetBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ltpay/activity/Login;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v0, Lcom/ltpay/function/Preference;

    const-string v1, "LtAccountInfo"

    invoke-direct {v0, p0, v1}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ltpay/activity/Login;->localInfo:Lcom/ltpay/function/Preference;

    .line 89
    new-instance v0, Lcom/ltpay/function/Preference;

    const-string v1, "LtAccountInfo_Accounts"

    invoke-direct {v0, p0, v1}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ltpay/activity/Login;->localAccounts:Lcom/ltpay/function/Preference;

    .line 91
    invoke-direct {p0}, Lcom/ltpay/activity/Login;->SetAccounts()V

    .line 93
    invoke-direct {p0}, Lcom/ltpay/activity/Login;->loadAccountInfo()V

    .line 95
    return-void
.end method

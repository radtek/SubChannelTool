.class public Lcom/ltpay/activity/Register;
.super Landroid/app/Activity;
.source "Register.java"


# static fields
.field public static account:Ljava/lang/String;

.field public static code:Ljava/lang/String;

.field public static zone:Ljava/lang/String;


# instance fields
.field AllowProtocal:Landroid/widget/CheckBox;

.field EditCode:Landroid/widget/EditText;

.field EditEmail:Landroid/widget/EditText;

.field EditPhone:Landroid/widget/EditText;

.field GetCode:Landroid/widget/TextView;

.field private Instance:Landroid/app/Activity;

.field LinePhone:Landroid/widget/LinearLayout;

.field ProtocalLine:Landroid/widget/LinearLayout;

.field Register:Landroid/widget/Button;

.field SpinnerZone:Landroid/widget/Spinner;

.field TabEmail:Landroid/widget/TextView;

.field TabLine1:Landroid/view/View;

.field TabLine2:Landroid/view/View;

.field TabPhone:Landroid/widget/TextView;

.field UserProtocal:Landroid/widget/TextView;

.field clickListener:Landroid/view/View$OnClickListener;

.field handler:Landroid/os/Handler;

.field localInfo:Lcom/ltpay/function/Preference;

.field mode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    .line 197
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    .line 198
    const-string v0, ""

    sput-object v0, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    const-string v0, "name"

    iput-object v0, p0, Lcom/ltpay/activity/Register;->mode:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/ltpay/activity/Register$1;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Register$1;-><init>(Lcom/ltpay/activity/Register;)V

    iput-object v0, p0, Lcom/ltpay/activity/Register;->clickListener:Landroid/view/View$OnClickListener;

    .line 366
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ltpay/activity/Register;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method private CountDown(IZ)V
    .locals 5
    .param p1, "secondLimit"    # I
    .param p2, "isFirst"    # Z

    .prologue
    .line 370
    iget-object v1, p0, Lcom/ltpay/activity/Register;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/ltpay/activity/Register$5;

    invoke-direct {v2, p0, p1}, Lcom/ltpay/activity/Register$5;-><init>(Lcom/ltpay/activity/Register;I)V

    .line 390
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    int-to-long v3, v0

    .line 370
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    return-void

    .line 390
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method private CountDownReset()V
    .locals 5

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ltpay/activity/Register;->localInfo:Lcom/ltpay/function/Preference;

    const-string v1, "LastCodeTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private GetCodeEanble(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 336
    const-string v1, "#3f51b5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "color":I
    iget-object v1, p0, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    :goto_0
    return-void

    .line 341
    .end local v0    # "color":I
    :cond_0
    iget-object v1, p0, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 342
    const-string v1, "#b9b9b9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 343
    .restart local v0    # "color":I
    iget-object v1, p0, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private SendCode()V
    .locals 6

    .prologue
    .line 292
    new-instance v0, Lcom/ltpay/activity/Register$4;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Register$4;-><init>(Lcom/ltpay/activity/Register;)V

    .line 309
    .local v0, "call":Lcom/ltpay/function/CallBack;
    iget-object v4, p0, Lcom/ltpay/activity/Register;->mode:Ljava/lang/String;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    iget-object v4, p0, Lcom/ltpay/activity/Register;->SpinnerZone:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "zon":Ljava/lang/String;
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    :cond_0
    iget-object v4, p0, Lcom/ltpay/activity/Register;->EditPhone:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "number":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    const-string v4, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {p0, v4}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "zon":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 318
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "zon":Ljava/lang/String;
    :cond_2
    const-string v4, "0"

    invoke-static {p0, v2, v0, v3, v4}, Lcom/ltpay/function/Server;->sendCode(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "zon":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/ltpay/activity/Register;->mode:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    iget-object v4, p0, Lcom/ltpay/activity/Register;->EditEmail:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "email":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 325
    const-string v4, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    invoke-static {p0, v4}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_4
    const-string v4, ""

    const-string v5, "0"

    invoke-static {p0, v1, v0, v4, v5}, Lcom/ltpay/function/Server;->sendCode(Landroid/content/Context;Ljava/lang/String;Lcom/ltpay/function/CallBack;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ShowProtocalLine()V
    .locals 3

    .prologue
    .line 109
    const-string v1, "UserProtocalUrl"

    invoke-static {p0, v1}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "url":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ltpay/activity/Register;->ProtocalLine:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method private TimeLimit(I)I
    .locals 7
    .param p1, "secondLimit"    # I

    .prologue
    .line 356
    iget-object v3, p0, Lcom/ltpay/activity/Register;->localInfo:Lcom/ltpay/function/Preference;

    const-string v4, "LastCodeTime"

    invoke-virtual {v3, v4}, Lcom/ltpay/function/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "LastCodeTimeStr":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    const/4 v3, 0x0

    .line 362
    :goto_0
    return v3

    .line 361
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 362
    .local v0, "LastCodeTime":J
    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    add-long/2addr v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_0
.end method

.method private UserRegister()V
    .locals 5

    .prologue
    .line 203
    iget-object v1, p0, Lcom/ltpay/activity/Register;->EditCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/ltpay/activity/Register;->mode:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    sget-object v1, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/ltpay/activity/Register;->Instance:Landroid/app/Activity;

    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/ltpay/activity/Register;->SpinnerZone:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    .line 214
    sget-object v1, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    sget-object v2, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/ltpay/activity/Register;->EditPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    .line 218
    sget-object v1, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {p0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_3
    new-instance v0, Lcom/ltpay/activity/Register$2;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Register$2;-><init>(Lcom/ltpay/activity/Register;)V

    .line 240
    .local v0, "call":Lcom/ltpay/function/CallBack;
    iget-object v1, p0, Lcom/ltpay/activity/Register;->Instance:Landroid/app/Activity;

    sget-object v2, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    sget-object v3, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ltpay/function/Server;->verifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    goto :goto_0

    .line 242
    .end local v0    # "call":Lcom/ltpay/function/CallBack;
    :cond_4
    iget-object v1, p0, Lcom/ltpay/activity/Register;->mode:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const-string v1, ""

    sput-object v1, Lcom/ltpay/activity/Register;->zone:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/ltpay/activity/Register;->EditEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    .line 247
    sget-object v1, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    const-string v1, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-static {p0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_5
    sget-object v1, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    iget-object v1, p0, Lcom/ltpay/activity/Register;->Instance:Landroid/app/Activity;

    const-string v2, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v1, v2}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_6
    new-instance v0, Lcom/ltpay/activity/Register$3;

    invoke-direct {v0, p0}, Lcom/ltpay/activity/Register$3;-><init>(Lcom/ltpay/activity/Register;)V

    .line 284
    .local v0, "call":Lcom/ltpay/function/CallBack2;
    iget-object v1, p0, Lcom/ltpay/activity/Register;->Instance:Landroid/app/Activity;

    sget-object v2, Lcom/ltpay/activity/Register;->account:Ljava/lang/String;

    sget-object v3, Lcom/ltpay/activity/Register;->code:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/ltpay/function/Server;->UserRegisterAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack2;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/ltpay/activity/Register;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/ltpay/activity/Register;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ltpay/activity/Register;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/ltpay/activity/Register;->SendCode()V

    return-void
.end method

.method static synthetic access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ltpay/activity/Register;->Instance:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ltpay/activity/Register;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/ltpay/activity/Register;->UserRegister()V

    return-void
.end method

.method static synthetic access$4(Lcom/ltpay/activity/Register;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/ltpay/activity/Register;->CountDownReset()V

    return-void
.end method

.method static synthetic access$5(Lcom/ltpay/activity/Register;IZ)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Lcom/ltpay/activity/Register;->CountDown(IZ)V

    return-void
.end method

.method static synthetic access$6(Lcom/ltpay/activity/Register;I)I
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/ltpay/activity/Register;->TimeLimit(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/ltpay/activity/Register;Z)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/ltpay/activity/Register;->GetCodeEanble(Z)V

    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "ltpay_text_phone"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->TabPhone:Landroid/widget/TextView;

    .line 71
    const-string v0, "ltpay_text_email"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->TabEmail:Landroid/widget/TextView;

    .line 72
    const-string v0, "ltpay_line1"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/Register;->TabLine1:Landroid/view/View;

    .line 73
    const-string v0, "ltpay_line2"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/activity/Register;->TabLine2:Landroid/view/View;

    .line 75
    const-string v0, "ltpay_liner_phone"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->LinePhone:Landroid/widget/LinearLayout;

    .line 76
    const-string v0, "ltpay_edit_email"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->EditEmail:Landroid/widget/EditText;

    .line 78
    const-string v0, "ltpay_spinner_zone"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->SpinnerZone:Landroid/widget/Spinner;

    .line 79
    const-string v0, "ltpay_edit_phone"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->EditPhone:Landroid/widget/EditText;

    .line 80
    const-string v0, "ltpay_edit_verifycode"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->EditCode:Landroid/widget/EditText;

    .line 82
    const-string v0, "ltpay_text_getcode"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    .line 83
    const-string v0, "ltpay_check_allowprotocal"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->AllowProtocal:Landroid/widget/CheckBox;

    .line 84
    const-string v0, "ltpay_text_getuserprotocal"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->UserProtocal:Landroid/widget/TextView;

    .line 86
    const-string v0, "ltpay_btn_register"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->Register:Landroid/widget/Button;

    .line 87
    const-string v0, "ltpay_allowprotocal_line"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ltpay/activity/Register;->ProtocalLine:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/ltpay/activity/Register;->TabPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ltpay/activity/Register;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/ltpay/activity/Register;->TabEmail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ltpay/activity/Register;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ltpay/activity/Register;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/ltpay/activity/Register;->UserProtocal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ltpay/activity/Register;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/ltpay/activity/Register;->Register:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ltpay/activity/Register;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/ltpay/activity/Register;->AllowProtocal:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ltpay/activity/Register;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const/16 v0, 0x5a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ltpay/activity/Register;->CountDown(IZ)V

    .line 102
    const-string v0, "name"

    invoke-direct {p0, v0}, Lcom/ltpay/activity/Register;->setMode(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/ltpay/activity/Register;->ShowProtocalLine()V

    .line 105
    return-void
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 7
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 118
    iput-object p1, p0, Lcom/ltpay/activity/Register;->mode:Ljava/lang/String;

    .line 119
    const-string v3, "#0cfed1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, "green":I
    const-string v3, "#b9b9b9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "gray":I
    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "black":I
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/ltpay/activity/Register;->TabLine1:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    iget-object v3, p0, Lcom/ltpay/activity/Register;->TabLine2:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    iget-object v3, p0, Lcom/ltpay/activity/Register;->TabPhone:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v3, p0, Lcom/ltpay/activity/Register;->TabEmail:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v3, p0, Lcom/ltpay/activity/Register;->LinePhone:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v3, p0, Lcom/ltpay/activity/Register;->EditEmail:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 133
    iget-object v3, p0, Lcom/ltpay/activity/Register;->EditCode:Landroid/widget/EditText;

    const-string v4, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v3, "name"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/ltpay/activity/Register;->TabLine1:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    iget-object v3, p0, Lcom/ltpay/activity/Register;->TabLine2:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    iget-object v3, p0, Lcom/ltpay/activity/Register;->TabPhone:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v3, p0, Lcom/ltpay/activity/Register;->TabEmail:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v3, p0, Lcom/ltpay/activity/Register;->LinePhone:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/ltpay/activity/Register;->EditEmail:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/ltpay/activity/Register;->EditCode:Landroid/widget/EditText;

    const-string v4, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, p0, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/ltpay/activity/Register;->finish()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iput-object p0, p0, Lcom/ltpay/activity/Register;->Instance:Landroid/app/Activity;

    .line 55
    new-instance v0, Lcom/ltpay/function/Preference;

    const-string v1, "LtAccountInfo"

    invoke-direct {v0, p0, v1}, Lcom/ltpay/function/Preference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ltpay/activity/Register;->localInfo:Lcom/ltpay/function/Preference;

    .line 57
    const-string v0, "ltpay_layout_register"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ltpay/activity/Register;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/ltpay/activity/Register;->initViews()V

    .line 60
    return-void
.end method

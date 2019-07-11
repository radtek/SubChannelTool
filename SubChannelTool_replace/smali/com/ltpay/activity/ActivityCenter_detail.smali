.class public Lcom/ltpay/activity/ActivityCenter_detail;
.super Landroid/app/Activity;
.source "ActivityCenter_detail.java"


# static fields
.field private static Instance:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/ltpay/activity/ActivityCenter_detail;->Instance:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public OnBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/ltpay/activity/ActivityCenter_detail;->finish()V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x4

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sput-object p0, Lcom/ltpay/activity/ActivityCenter_detail;->Instance:Landroid/app/Activity;

    .line 25
    const-string v7, "ltpay_layout_activity_center_detail"

    const-string v8, "layout"

    invoke-static {p0, v7, v8}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/ltpay/activity/ActivityCenter_detail;->setContentView(I)V

    .line 27
    new-instance v1, Lcom/ltpay/function/Component;

    new-instance v7, Lcom/ltpay/activity/ActivityCenter_detail$1;

    invoke-direct {v7, p0}, Lcom/ltpay/activity/ActivityCenter_detail$1;-><init>(Lcom/ltpay/activity/ActivityCenter_detail;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 37
    const-string v10, "ltpay_btn"

    .line 27
    aput-object v10, v8, v9

    invoke-direct {v1, p0, v7, v8}, Lcom/ltpay/function/Component;-><init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V

    .line 39
    .local v1, "com":Lcom/ltpay/function/Component;
    invoke-virtual {p0}, Lcom/ltpay/activity/ActivityCenter_detail;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 41
    .local v3, "extra":Landroid/os/Bundle;
    const-string v7, "tittle"

    const-string v8, "\u6d3b\u52a8\u8be6\u60c5\u6807\u9898"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "tittle":Ljava/lang/String;
    const-string v7, "url"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "url":Ljava/lang/String;
    const-string v7, "content"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "content":Ljava/lang/String;
    const-string v7, "ltpay_text_tittle"

    invoke-virtual {v1, v7}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-string v7, "ltpay_text_body"

    invoke-virtual {v1, v7}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 50
    .local v0, "body":Landroid/widget/TextView;
    const-string v7, "ltpay_webview"

    invoke-virtual {v1, v7}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 52
    .local v6, "webview":Landroid/webkit/WebView;
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v6, v11}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 59
    const-string v7, ""

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {v6, v11}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

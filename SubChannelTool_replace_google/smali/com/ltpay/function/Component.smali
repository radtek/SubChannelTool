.class public Lcom/ltpay/function/Component;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ltpay/function/Component$ClickListener;
    }
.end annotation


# instance fields
.field Views:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field clickListener:Landroid/view/View$OnClickListener;

.field context:Landroid/app/Activity;


# direct methods
.method public varargs constructor <init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/ltpay/function/Component$ClickListener;
    .param p3, "Id"    # [Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ltpay/function/Component;->Views:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lcom/ltpay/function/Component;->context:Landroid/app/Activity;

    .line 36
    move-object v0, p2

    .line 39
    .local v0, "listener0":Lcom/ltpay/function/Component$ClickListener;
    new-instance v1, Lcom/ltpay/function/Component$1;

    invoke-direct {v1, p0, v0}, Lcom/ltpay/function/Component$1;-><init>(Lcom/ltpay/function/Component;Lcom/ltpay/function/Component$ClickListener;)V

    iput-object v1, p0, Lcom/ltpay/function/Component;->clickListener:Landroid/view/View$OnClickListener;

    .line 55
    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/ltpay/function/Component;->AddView([Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs AddView([Ljava/lang/String;)V
    .locals 8
    .param p1, "Id"    # [Ljava/lang/String;

    .prologue
    .line 61
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 79
    return-void

    .line 61
    :cond_0
    aget-object v1, p1, v3

    .line 63
    .local v1, "id":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ltpay/function/Component;->Views:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    :try_start_0
    iget-object v5, p0, Lcom/ltpay/function/Component;->context:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ltpay/function/Component;->context:Landroid/app/Activity;

    const-string v7, "id"

    invoke-static {v6, v1, v7}, Lcom/ltpay/function/Component;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/ltpay/function/Component;->Views:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v5, p0, Lcom/ltpay/function/Component;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    iget-object v5, p0, Lcom/ltpay/function/Component;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public Button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public EditText(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 1
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public GetView(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ltpay/function/Component;->Views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/ltpay/function/Component;->AddView([Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ltpay/function/Component;->Views:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public ImageView(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public LinearLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 1
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public RadioButton(Ljava/lang/String;)Landroid/widget/RadioButton;
    .locals 1
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method public TextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public ToggleButton(Ljava/lang/String;)Landroid/widget/ToggleButton;
    .locals 1
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/ltpay/function/Component;->GetView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    return-object v0
.end method

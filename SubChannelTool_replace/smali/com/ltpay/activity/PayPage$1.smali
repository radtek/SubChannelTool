.class Lcom/ltpay/activity/PayPage$1;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Lcom/ltpay/function/Component$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/PayPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/PayPage;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PayPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Click(Ljava/lang/String;)V
    .locals 7
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "ltpay_coupon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-static {}, Lcom/ltpay/activity/PayPage;->access$0()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    iget-object v1, v1, Lcom/ltpay/activity/PayPage;->appId:Ljava/lang/String;

    sget-object v2, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    iget-object v3, v3, Lcom/ltpay/activity/PayPage;->productId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    iget-object v4, v4, Lcom/ltpay/activity/PayPage;->productName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    iget-object v6, v6, Lcom/ltpay/activity/PayPage;->MoneyAmount:Ljava/lang/Double;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/ltpay/activity/Coupon;->Show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/ltpay/activity/PayPage;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v0, "ltpay_more_paytype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    iget-object v0, v0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    const-string v1, "ltpay_more_paytype"

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    iget-object v0, v0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    const-string v1, "ltpay_iteam_others"

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->LinearLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_2
    const-string v0, "ltpay_btn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    iget-object v0, v0, Lcom/ltpay/activity/PayPage;->localInfo:Lcom/ltpay/function/Preference;

    const-string v1, "LastPayType"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    iget v3, v3, Lcom/ltpay/activity/PayPage;->payType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ltpay/function/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    invoke-static {v0}, Lcom/ltpay/activity/PayPage;->access$1(Lcom/ltpay/activity/PayPage;)V

    goto :goto_0

    .line 259
    :cond_3
    const-string v0, "ltpay_iteam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ltpay_radioButton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$1;->this$0:Lcom/ltpay/activity/PayPage;

    invoke-static {v0, p1}, Lcom/ltpay/activity/PayPage;->access$2(Lcom/ltpay/activity/PayPage;Ljava/lang/String;)V

    goto :goto_0
.end method

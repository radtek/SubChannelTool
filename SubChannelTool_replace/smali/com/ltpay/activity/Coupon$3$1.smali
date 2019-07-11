.class Lcom/ltpay/activity/Coupon$3$1;
.super Ljava/lang/Object;
.source "Coupon.java"

# interfaces
.implements Lcom/ltpay/function/CallBackF;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Coupon$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/Coupon$3;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Coupon$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Coupon$3$1;->this$1:Lcom/ltpay/activity/Coupon$3;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ltpay/activity/Coupon$3$1;->this$1:Lcom/ltpay/activity/Coupon$3;

    invoke-static {v0}, Lcom/ltpay/activity/Coupon$3;->access$0(Lcom/ltpay/activity/Coupon$3;)Lcom/ltpay/activity/Coupon;

    move-result-object v0

    iget-object v0, v0, Lcom/ltpay/activity/Coupon;->ProductId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/ltpay/activity/Coupon$3$1;->this$1:Lcom/ltpay/activity/Coupon$3;

    invoke-static {v0}, Lcom/ltpay/activity/Coupon$3;->access$0(Lcom/ltpay/activity/Coupon$3;)Lcom/ltpay/activity/Coupon;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/Coupon;->access$1(Lcom/ltpay/activity/Coupon;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/PayPage;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    iget-object v0, p0, Lcom/ltpay/activity/Coupon$3$1;->this$1:Lcom/ltpay/activity/Coupon$3;

    invoke-static {v0}, Lcom/ltpay/activity/Coupon$3;->access$0(Lcom/ltpay/activity/Coupon$3;)Lcom/ltpay/activity/Coupon;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/Coupon;->access$1(Lcom/ltpay/activity/Coupon;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ltpay/activity/Coupon$3$1;->this$1:Lcom/ltpay/activity/Coupon$3;

    invoke-static {v0}, Lcom/ltpay/activity/Coupon$3;->access$0(Lcom/ltpay/activity/Coupon$3;)Lcom/ltpay/activity/Coupon;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/Coupon;->access$1(Lcom/ltpay/activity/Coupon;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4f18\u60e0\u5238\uff0c\u53ef\u5728\u6e38\u620f\u652f\u4ed8\u65f6\uff0c\u9009\u62e9\u4f7f\u7528"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    sput-object v0, Lcom/ltpay/activity/Coupon;->SelectedCoupon:Lcom/ltpay/activity/Coupon_T;

    goto :goto_0
.end method

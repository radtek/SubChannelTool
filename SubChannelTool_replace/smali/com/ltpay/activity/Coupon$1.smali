.class Lcom/ltpay/activity/Coupon$1;
.super Ljava/lang/Object;
.source "Coupon.java"

# interfaces
.implements Lcom/ltpay/function/Component$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/Coupon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Coupon;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Coupon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Coupon$1;->this$0:Lcom/ltpay/activity/Coupon;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Click(Ljava/lang/String;)V
    .locals 2
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "ltpay_text_useable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/ltpay/activity/Coupon$1;->this$0:Lcom/ltpay/activity/Coupon;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ltpay/activity/Coupon;->access$0(Lcom/ltpay/activity/Coupon;I)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v0, "ltpay_text_unuseable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/ltpay/activity/Coupon$1;->this$0:Lcom/ltpay/activity/Coupon;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ltpay/activity/Coupon;->access$0(Lcom/ltpay/activity/Coupon;I)V

    goto :goto_0
.end method

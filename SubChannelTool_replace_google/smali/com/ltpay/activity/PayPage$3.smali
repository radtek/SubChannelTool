.class Lcom/ltpay/activity/PayPage$3;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage;->SetCouponInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/PayPage;

.field private final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PayPage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$3;->this$0:Lcom/ltpay/activity/PayPage;

    iput-object p2, p0, Lcom/ltpay/activity/PayPage$3;->val$info:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$3;->this$0:Lcom/ltpay/activity/PayPage;

    iget-object v0, v0, Lcom/ltpay/activity/PayPage;->com:Lcom/ltpay/function/Component;

    const-string v1, "ltpay_coupon"

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ltpay/activity/PayPage$3;->val$info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method

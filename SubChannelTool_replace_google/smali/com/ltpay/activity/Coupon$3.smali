.class Lcom/ltpay/activity/Coupon$3;
.super Ljava/lang/Object;
.source "Coupon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Coupon;->ShowInListView([Lcom/ltpay/activity/Coupon_T;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Coupon;

.field private final synthetic val$datas:[Lcom/ltpay/activity/Coupon_T;

.field private final synthetic val$useable:Z


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Coupon;[Lcom/ltpay/activity/Coupon_T;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Coupon$3;->this$0:Lcom/ltpay/activity/Coupon;

    iput-object p2, p0, Lcom/ltpay/activity/Coupon$3;->val$datas:[Lcom/ltpay/activity/Coupon_T;

    iput-boolean p3, p0, Lcom/ltpay/activity/Coupon$3;->val$useable:Z

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/Coupon$3;)Lcom/ltpay/activity/Coupon;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ltpay/activity/Coupon$3;->this$0:Lcom/ltpay/activity/Coupon;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 167
    new-instance v5, Lcom/ltpay/activity/Coupon$3$1;

    invoke-direct {v5, p0}, Lcom/ltpay/activity/Coupon$3$1;-><init>(Lcom/ltpay/activity/Coupon$3;)V

    .line 186
    .local v5, "call":Lcom/ltpay/function/CallBackF;
    iget-object v1, p0, Lcom/ltpay/activity/Coupon$3;->this$0:Lcom/ltpay/activity/Coupon;

    invoke-static {v1}, Lcom/ltpay/activity/Coupon;->access$1(Lcom/ltpay/activity/Coupon;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ltpay_content"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 187
    .local v6, "Id":I
    iget-object v1, p0, Lcom/ltpay/activity/Coupon$3;->this$0:Lcom/ltpay/activity/Coupon;

    invoke-static {v1}, Lcom/ltpay/activity/Coupon;->access$1(Lcom/ltpay/activity/Coupon;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 190
    .local v7, "content":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/ltpay/activity/CouponAdapter;

    iget-object v1, p0, Lcom/ltpay/activity/Coupon$3;->this$0:Lcom/ltpay/activity/Coupon;

    invoke-static {v1}, Lcom/ltpay/activity/Coupon;->access$1(Lcom/ltpay/activity/Coupon;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ltpay_layout_coupon_listiteam"

    iget-object v3, p0, Lcom/ltpay/activity/Coupon$3;->val$datas:[Lcom/ltpay/activity/Coupon_T;

    iget-boolean v4, p0, Lcom/ltpay/activity/Coupon$3;->val$useable:Z

    invoke-direct/range {v0 .. v5}, Lcom/ltpay/activity/CouponAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/ltpay/activity/Coupon_T;ZLcom/ltpay/function/CallBackF;)V

    .line 191
    .local v0, "adapter":Lcom/ltpay/activity/CouponAdapter;
    invoke-virtual {v0}, Lcom/ltpay/activity/CouponAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 192
    .local v8, "list":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 195
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 196
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    return-void
.end method

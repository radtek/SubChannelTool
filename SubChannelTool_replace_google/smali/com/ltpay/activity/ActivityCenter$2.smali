.class Lcom/ltpay/activity/ActivityCenter$2;
.super Ljava/lang/Object;
.source "ActivityCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/ActivityCenter;->ShowInListView([Lcom/ltpay/activity/ActivityCenter_T;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/ActivityCenter;

.field private final synthetic val$datas:[Lcom/ltpay/activity/ActivityCenter_T;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ActivityCenter;[Lcom/ltpay/activity/ActivityCenter_T;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ActivityCenter$2;->this$0:Lcom/ltpay/activity/ActivityCenter;

    iput-object p2, p0, Lcom/ltpay/activity/ActivityCenter$2;->val$datas:[Lcom/ltpay/activity/ActivityCenter_T;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 74
    new-instance v1, Lcom/ltpay/activity/ActivityCenterAdapter;

    iget-object v4, p0, Lcom/ltpay/activity/ActivityCenter$2;->this$0:Lcom/ltpay/activity/ActivityCenter;

    invoke-static {v4}, Lcom/ltpay/activity/ActivityCenter;->access$1(Lcom/ltpay/activity/ActivityCenter;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "ltpay_layout_activity_center_listiteam"

    iget-object v6, p0, Lcom/ltpay/activity/ActivityCenter$2;->val$datas:[Lcom/ltpay/activity/ActivityCenter_T;

    invoke-direct {v1, v4, v5, v6}, Lcom/ltpay/activity/ActivityCenterAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/ltpay/activity/ActivityCenter_T;)V

    .line 75
    .local v1, "adapter":Lcom/ltpay/activity/ActivityCenterAdapter;
    invoke-virtual {v1}, Lcom/ltpay/activity/ActivityCenterAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 78
    .local v3, "list":Landroid/widget/ListView;
    iget-object v4, p0, Lcom/ltpay/activity/ActivityCenter$2;->this$0:Lcom/ltpay/activity/ActivityCenter;

    invoke-static {v4}, Lcom/ltpay/activity/ActivityCenter;->access$1(Lcom/ltpay/activity/ActivityCenter;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "ltpay_content"

    const-string v6, "id"

    invoke-static {v4, v5, v6}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "Id":I
    iget-object v4, p0, Lcom/ltpay/activity/ActivityCenter$2;->this$0:Lcom/ltpay/activity/ActivityCenter;

    invoke-static {v4}, Lcom/ltpay/activity/ActivityCenter;->access$1(Lcom/ltpay/activity/ActivityCenter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 81
    .local v2, "content":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    return-void
.end method

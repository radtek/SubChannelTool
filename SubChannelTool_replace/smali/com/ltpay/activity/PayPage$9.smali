.class Lcom/ltpay/activity/PayPage$9;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage;->Ye_Pay(Landroid/app/Activity;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/PayPage;

.field private final synthetic val$mActivity:Landroid/app/Activity;

.field private final synthetic val$mPayInfo:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PayPage;Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$9;->this$0:Lcom/ltpay/activity/PayPage;

    iput-object p2, p0, Lcom/ltpay/activity/PayPage$9;->val$mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ltpay/activity/PayPage$9;->val$mPayInfo:Ljava/util/HashMap;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 498
    :try_start_0
    new-instance v0, Lcom/joymeng/payment/core/YeepayDialog;

    iget-object v2, p0, Lcom/ltpay/activity/PayPage$9;->val$mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ltpay/activity/PayPage$9;->val$mPayInfo:Ljava/util/HashMap;

    new-instance v4, Lcom/ltpay/activity/PayPage$9$1;

    invoke-direct {v4, p0}, Lcom/ltpay/activity/PayPage$9$1;-><init>(Lcom/ltpay/activity/PayPage$9;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/joymeng/payment/core/YeepayDialog;-><init>(Landroid/app/Activity;Ljava/util/HashMap;Lcom/joymeng/payment/core/DialogCallback;)V

    .line 504
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v1

    .line 508
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ltpay/activity/PayPage$9;->val$mActivity:Landroid/app/Activity;

    const-string v3, "\u6613\u5b9d\u652f\u4ed8\u5f02\u5e38"

    invoke-static {v2, v3}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

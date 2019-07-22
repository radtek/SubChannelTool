.class Lcom/ltpay/activity/PayPage$7;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage;->CM_Pay(Landroid/app/Activity;Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$7;->this$0:Lcom/ltpay/activity/PayPage;

    iput-object p2, p0, Lcom/ltpay/activity/PayPage$7;->val$mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ltpay/activity/PayPage$7;->val$mPayInfo:Ljava/util/HashMap;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 444
    :try_start_0
    const-string v2, "YD"

    .line 445
    .local v2, "type":Ljava/lang/String;
    new-instance v0, Lcom/joymeng/payment/core/ShenzhoufuDialog;

    iget-object v3, p0, Lcom/ltpay/activity/PayPage$7;->val$mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ltpay/activity/PayPage$7;->val$mPayInfo:Ljava/util/HashMap;

    new-instance v5, Lcom/ltpay/activity/PayPage$7$1;

    invoke-direct {v5, p0}, Lcom/ltpay/activity/PayPage$7$1;-><init>(Lcom/ltpay/activity/PayPage$7;)V

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/joymeng/payment/core/ShenzhoufuDialog;-><init>(Landroid/app/Activity;Ljava/util/HashMap;Lcom/joymeng/payment/core/DialogCallback;Ljava/lang/String;)V

    .line 452
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v1

    .line 456
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/ltpay/activity/PayPage$7;->val$mActivity:Landroid/app/Activity;

    const-string v4, "\u79fb\u52a8\u652f\u4ed8\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

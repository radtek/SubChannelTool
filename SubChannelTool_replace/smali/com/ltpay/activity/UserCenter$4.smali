.class Lcom/ltpay/activity/UserCenter$4;
.super Ljava/lang/Object;
.source "UserCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/UserCenter;->showUserBalance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/UserCenter;

.field private final synthetic val$balanceStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/UserCenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/UserCenter$4;->this$0:Lcom/ltpay/activity/UserCenter;

    iput-object p2, p0, Lcom/ltpay/activity/UserCenter$4;->val$balanceStr:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ltpay/activity/UserCenter$4;->this$0:Lcom/ltpay/activity/UserCenter;

    iget-object v0, v0, Lcom/ltpay/activity/UserCenter;->com:Lcom/ltpay/function/Component;

    const-string v1, "ltpay_userbalance"

    invoke-virtual {v0, v1}, Lcom/ltpay/function/Component;->TextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7528\u6237\u4f59\u989d:\uffe5 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ltpay/activity/UserCenter$4;->val$balanceStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

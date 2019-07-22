.class Lcom/ltpay/activity/PayPage$2;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage;->checkCoupon()V
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
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$2;->this$0:Lcom/ltpay/activity/PayPage;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$2;->this$0:Lcom/ltpay/activity/PayPage;

    const-string v1, "\u6709\u53ef\u7528\u4f18\u60e0\u5238"

    invoke-static {v0, v1}, Lcom/ltpay/activity/PayPage;->access$3(Lcom/ltpay/activity/PayPage;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public Onfail()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$2;->this$0:Lcom/ltpay/activity/PayPage;

    const-string v1, "\u6682\u65e0\u53ef\u7528\u4f18\u60e0\u5238"

    invoke-static {v0, v1}, Lcom/ltpay/activity/PayPage;->access$3(Lcom/ltpay/activity/PayPage;Ljava/lang/String;)V

    .line 176
    return-void
.end method

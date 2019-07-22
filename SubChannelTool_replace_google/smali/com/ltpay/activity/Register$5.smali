.class Lcom/ltpay/activity/Register$5;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Register;->CountDown(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Register;

.field private final synthetic val$secondLimit:I


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Register;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Register$5;->this$0:Lcom/ltpay/activity/Register;

    iput p2, p0, Lcom/ltpay/activity/Register$5;->val$secondLimit:I

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 375
    iget-object v1, p0, Lcom/ltpay/activity/Register$5;->this$0:Lcom/ltpay/activity/Register;

    iget v2, p0, Lcom/ltpay/activity/Register$5;->val$secondLimit:I

    invoke-static {v1, v2}, Lcom/ltpay/activity/Register;->access$6(Lcom/ltpay/activity/Register;I)I

    move-result v0

    .line 376
    .local v0, "limit":I
    if-gtz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/ltpay/activity/Register$5;->this$0:Lcom/ltpay/activity/Register;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ltpay/activity/Register;->access$7(Lcom/ltpay/activity/Register;Z)V

    .line 380
    iget-object v1, p0, Lcom/ltpay/activity/Register$5;->this$0:Lcom/ltpay/activity/Register;

    iget-object v1, v1, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    const-string v2, "\u70b9\u51fb\u83b7\u53d6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/ltpay/activity/Register$5;->this$0:Lcom/ltpay/activity/Register;

    iget-object v1, v1, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ltpay/activity/Register$5;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v1, v4}, Lcom/ltpay/activity/Register;->access$7(Lcom/ltpay/activity/Register;Z)V

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/ltpay/activity/Register$5;->this$0:Lcom/ltpay/activity/Register;

    iget-object v1, v1, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v1, p0, Lcom/ltpay/activity/Register$5;->this$0:Lcom/ltpay/activity/Register;

    iget v2, p0, Lcom/ltpay/activity/Register$5;->val$secondLimit:I

    invoke-static {v1, v2, v4}, Lcom/ltpay/activity/Register;->access$5(Lcom/ltpay/activity/Register;IZ)V

    goto :goto_0
.end method

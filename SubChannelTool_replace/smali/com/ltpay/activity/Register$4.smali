.class Lcom/ltpay/activity/Register$4;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Register;->SendCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Register;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Register;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Register$4;->this$0:Lcom/ltpay/activity/Register;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/ltpay/activity/Register$4;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v0}, Lcom/ltpay/activity/Register;->access$4(Lcom/ltpay/activity/Register;)V

    .line 305
    iget-object v0, p0, Lcom/ltpay/activity/Register$4;->this$0:Lcom/ltpay/activity/Register;

    const/16 v1, 0x5a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ltpay/activity/Register;->access$5(Lcom/ltpay/activity/Register;IZ)V

    .line 306
    return-void
.end method

.method public Onfail()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

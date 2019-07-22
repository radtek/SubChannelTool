.class Lcom/ltpay/activity/RealName$2;
.super Ljava/lang/Object;
.source "RealName.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/RealName;->Show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$RealNameCall:Lcom/ltpay/function/CallBack;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/RealName$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/activity/RealName$2;->val$RealNameCall:Lcom/ltpay/function/CallBack;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ltpay/activity/RealName$2;->val$RealNameCall:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ltpay/activity/RealName$2;->val$RealNameCall:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 128
    :cond_0
    return-void
.end method

.method public Onfail()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ltpay/activity/RealName$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ltpay/activity/RealName;->showRealNameActivity(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.class Lcom/ltpay/activity/RealName$1$1;
.super Ljava/lang/Object;
.source "RealName.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/RealName$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/RealName$1;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/RealName$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/RealName$1$1;->this$1:Lcom/ltpay/activity/RealName$1;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/ltpay/activity/RealName;->Instance:Lcom/ltpay/activity/RealName;

    invoke-virtual {v0}, Lcom/ltpay/activity/RealName;->finish()V

    .line 93
    return-void
.end method

.method public Onfail()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

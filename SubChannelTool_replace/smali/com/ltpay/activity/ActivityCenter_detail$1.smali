.class Lcom/ltpay/activity/ActivityCenter_detail$1;
.super Ljava/lang/Object;
.source "ActivityCenter_detail.java"

# interfaces
.implements Lcom/ltpay/function/Component$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/ActivityCenter_detail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/ActivityCenter_detail;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ActivityCenter_detail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ActivityCenter_detail$1;->this$0:Lcom/ltpay/activity/ActivityCenter_detail;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Click(Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "ltpay_btn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/ltpay/activity/ActivityCenter_detail;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 36
    :cond_0
    return-void
.end method

.class Lcom/ltpay/floatView/FloatService$2;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/floatView/FloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/floatView/FloatService;


# direct methods
.method constructor <init>(Lcom/ltpay/floatView/FloatService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/floatView/FloatService$2;->this$0:Lcom/ltpay/floatView/FloatService;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/ltpay/floatView/FloatService$2;->this$0:Lcom/ltpay/floatView/FloatService;

    iget-wide v2, v2, Lcom/ltpay/floatView/FloatService;->preClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/ltpay/floatView/FloatService$2;->this$0:Lcom/ltpay/floatView/FloatService;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/ltpay/floatView/FloatService;->preClickTime:J

    .line 157
    invoke-static {}, Lcom/ltpay/LtSDK;->ShowActivityCenter()V

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/ltpay/floatView/FloatService$2;->this$0:Lcom/ltpay/floatView/FloatService;

    iput-wide v0, v2, Lcom/ltpay/floatView/FloatService;->preClickTime:J

    .line 162
    return-void
.end method

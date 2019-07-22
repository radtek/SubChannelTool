.class Lcom/ltpay/activity/PayPage$9$1;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Lcom/joymeng/payment/core/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/PayPage$9;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PayPage$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$9$1;->this$1:Lcom/ltpay/activity/PayPage$9;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 506
    return-void
.end method

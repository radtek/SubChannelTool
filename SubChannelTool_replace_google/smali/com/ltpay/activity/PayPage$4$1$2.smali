.class Lcom/ltpay/activity/PayPage$4$1$2;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ltpay/activity/PayPage$4$1;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PayPage$4$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$4$1$2;->this$2:Lcom/ltpay/activity/PayPage$4$1;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$4$1$2;->this$2:Lcom/ltpay/activity/PayPage$4$1;

    invoke-static {v0}, Lcom/ltpay/activity/PayPage$4$1;->access$0(Lcom/ltpay/activity/PayPage$4$1;)Lcom/ltpay/activity/PayPage$4;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/PayPage$4;->access$0(Lcom/ltpay/activity/PayPage$4;)Lcom/ltpay/activity/PayPage;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/ltpay/activity/PayPage;->access$4(Lcom/ltpay/activity/PayPage;D)V

    .line 319
    return-void
.end method

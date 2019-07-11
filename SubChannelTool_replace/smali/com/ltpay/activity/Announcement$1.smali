.class Lcom/ltpay/activity/Announcement$1;
.super Ljava/lang/Object;
.source "Announcement.java"

# interfaces
.implements Lcom/ltpay/function/CallBack2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Announcement;->InitContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Announcement;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Announcement;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Announcement$1;->this$0:Lcom/ltpay/activity/Announcement;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/Announcement$1;)Lcom/ltpay/activity/Announcement;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ltpay/activity/Announcement$1;->this$0:Lcom/ltpay/activity/Announcement;

    return-object v0
.end method


# virtual methods
.method public varargs OnSuccess([Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # [Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ltpay/activity/Announcement$1;->this$0:Lcom/ltpay/activity/Announcement;

    new-instance v1, Lcom/ltpay/activity/Announcement$1$1;

    invoke-direct {v1, p0, p1}, Lcom/ltpay/activity/Announcement$1$1;-><init>(Lcom/ltpay/activity/Announcement$1;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/ltpay/activity/Announcement;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public varargs Onfail([Ljava/lang/Object;)V
    .locals 1
    .param p1, "param"    # [Ljava/lang/Object;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ltpay/activity/Announcement$1;->this$0:Lcom/ltpay/activity/Announcement;

    invoke-static {v0}, Lcom/ltpay/activity/Announcement;->access$0(Lcom/ltpay/activity/Announcement;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    return-void
.end method

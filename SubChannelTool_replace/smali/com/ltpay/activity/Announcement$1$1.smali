.class Lcom/ltpay/activity/Announcement$1$1;
.super Ljava/lang/Object;
.source "Announcement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Announcement$1;->OnSuccess([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/Announcement$1;

.field private final synthetic val$param:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Announcement$1;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Announcement$1$1;->this$1:Lcom/ltpay/activity/Announcement$1;

    iput-object p2, p0, Lcom/ltpay/activity/Announcement$1$1;->val$param:[Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ltpay/activity/Announcement$1$1;->this$1:Lcom/ltpay/activity/Announcement$1;

    invoke-static {v0}, Lcom/ltpay/activity/Announcement$1;->access$0(Lcom/ltpay/activity/Announcement$1;)Lcom/ltpay/activity/Announcement;

    move-result-object v0

    iget-object v1, v0, Lcom/ltpay/activity/Announcement;->tittle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ltpay/activity/Announcement$1$1;->val$param:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/ltpay/activity/Announcement$1$1;->this$1:Lcom/ltpay/activity/Announcement$1;

    invoke-static {v0}, Lcom/ltpay/activity/Announcement$1;->access$0(Lcom/ltpay/activity/Announcement$1;)Lcom/ltpay/activity/Announcement;

    move-result-object v0

    iget-object v1, v0, Lcom/ltpay/activity/Announcement;->body:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ltpay/activity/Announcement$1$1;->val$param:[Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

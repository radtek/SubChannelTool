.class Lcom/ltpay/activity/PayPage$4$1;
.super Ljava/lang/Object;
.source "PayPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/PayPage$4;->OnSuccess([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/PayPage$4;

.field private final synthetic val$balance:D


# direct methods
.method constructor <init>(Lcom/ltpay/activity/PayPage$4;D)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/PayPage$4$1;->this$1:Lcom/ltpay/activity/PayPage$4;

    iput-wide p2, p0, Lcom/ltpay/activity/PayPage$4$1;->val$balance:D

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/PayPage$4$1;)Lcom/ltpay/activity/PayPage$4;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ltpay/activity/PayPage$4$1;->this$1:Lcom/ltpay/activity/PayPage$4;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 298
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ltpay/activity/PayPage;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u662f\u5426\u4f7f\u7528\u4f59\u989d\u8fdb\u884c\u652f\u4ed8\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u5f53\u524d\u53ef\u7528\u4f59\u989d\u4e3a\uff1a\r\n\uffe5 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ltpay/activity/PayPage$4$1;->val$balance:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 302
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 303
    const-string v1, "\u4f7f\u7528"

    new-instance v2, Lcom/ltpay/activity/PayPage$4$1$1;

    iget-wide v3, p0, Lcom/ltpay/activity/PayPage$4$1;->val$balance:D

    invoke-direct {v2, p0, v3, v4}, Lcom/ltpay/activity/PayPage$4$1$1;-><init>(Lcom/ltpay/activity/PayPage$4$1;D)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    const-string v1, "\u4e0d\u4f7f\u7528"

    new-instance v2, Lcom/ltpay/activity/PayPage$4$1$2;

    invoke-direct {v2, p0}, Lcom/ltpay/activity/PayPage$4$1$2;-><init>(Lcom/ltpay/activity/PayPage$4$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 323
    return-void
.end method

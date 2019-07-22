.class Lcom/ltsdk/union/platform/LtsdkGoogle$10;
.super Ljava/lang/Object;
.source "LtsdkGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/LtsdkGoogle;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

.field private final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/LtsdkGoogle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$10;->this$0:Lcom/ltsdk/union/platform/LtsdkGoogle;

    iput-object p2, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$10;->val$info:Ljava/lang/String;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/ltsdk/union/platform/LtsdkGoogle$10;->val$info:Ljava/lang/String;

    invoke-static {v0}, Lcom/ltpay/function/Tools;->showText(Ljava/lang/String;)V

    .line 523
    return-void
.end method

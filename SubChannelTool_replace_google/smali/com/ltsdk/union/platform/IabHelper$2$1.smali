.class Lcom/ltsdk/union/platform/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltsdk/union/platform/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltsdk/union/platform/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/ltsdk/union/platform/Inventory;

.field private final synthetic val$listener:Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/ltsdk/union/platform/IabResult;


# direct methods
.method constructor <init>(Lcom/ltsdk/union/platform/IabHelper$2;Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;Lcom/ltsdk/union/platform/IabResult;Lcom/ltsdk/union/platform/Inventory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltsdk/union/platform/IabHelper$2$1;->this$1:Lcom/ltsdk/union/platform/IabHelper$2;

    iput-object p2, p0, Lcom/ltsdk/union/platform/IabHelper$2$1;->val$listener:Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/ltsdk/union/platform/IabHelper$2$1;->val$result_f:Lcom/ltsdk/union/platform/IabResult;

    iput-object p4, p0, Lcom/ltsdk/union/platform/IabHelper$2$1;->val$inv_f:Lcom/ltsdk/union/platform/Inventory;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/ltsdk/union/platform/IabHelper$2$1;->val$listener:Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/ltsdk/union/platform/IabHelper$2$1;->val$result_f:Lcom/ltsdk/union/platform/IabResult;

    iget-object v2, p0, Lcom/ltsdk/union/platform/IabHelper$2$1;->val$inv_f:Lcom/ltsdk/union/platform/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/ltsdk/union/platform/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/ltsdk/union/platform/IabResult;Lcom/ltsdk/union/platform/Inventory;)V

    .line 712
    return-void
.end method

.class Lcom/ltpay/LtSDK$2;
.super Ljava/lang/Object;
.source "LtSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/LtSDK;->QuitCustom(Landroid/content/Context;Lcom/ltpay/function/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$call:Lcom/ltpay/function/CallBack;


# direct methods
.method constructor <init>(Lcom/ltpay/function/CallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/LtSDK$2;->val$call:Lcom/ltpay/function/CallBack;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ltpay/LtSDK$2;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ltpay/LtSDK$2;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->Onfail()V

    .line 183
    :cond_0
    return-void
.end method

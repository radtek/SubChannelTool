.class Lcom/ltpay/LtSDK$1;
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
    iput-object p1, p0, Lcom/ltpay/LtSDK$1;->val$call:Lcom/ltpay/function/CallBack;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ltpay/LtSDK$1;->val$call:Lcom/ltpay/function/CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ltpay/LtSDK$1;->val$call:Lcom/ltpay/function/CallBack;

    invoke-interface {v0}, Lcom/ltpay/function/CallBack;->OnSuccess()V

    .line 172
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 173
    return-void
.end method

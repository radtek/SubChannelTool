.class Lcom/ltpay/function/Tools$6;
.super Ljava/lang/Object;
.source "Tools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Tools;->AutoHide(Landroid/app/Activity;ILcom/ltpay/function/CallBackF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Instatnce:Landroid/app/Activity;

.field private final synthetic val$call:Lcom/ltpay/function/CallBackF;


# direct methods
.method constructor <init>(Lcom/ltpay/function/CallBackF;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Tools$6;->val$call:Lcom/ltpay/function/CallBackF;

    iput-object p2, p0, Lcom/ltpay/function/Tools$6;->val$Instatnce:Landroid/app/Activity;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ltpay/function/Tools$6;->val$call:Lcom/ltpay/function/CallBackF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ltpay/function/Tools$6;->val$call:Lcom/ltpay/function/CallBackF;

    invoke-interface {v0}, Lcom/ltpay/function/CallBackF;->F()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ltpay/function/Tools$6;->val$Instatnce:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 181
    return-void
.end method

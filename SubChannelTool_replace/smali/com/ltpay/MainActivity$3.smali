.class Lcom/ltpay/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/MainActivity;


# direct methods
.method constructor <init>(Lcom/ltpay/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/MainActivity$3;->this$0:Lcom/ltpay/MainActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public Onfail()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

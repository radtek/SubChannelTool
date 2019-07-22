.class Lcom/ltpay/activity/LoginSuccess$1;
.super Ljava/lang/Object;
.source "LoginSuccess.java"

# interfaces
.implements Lcom/ltpay/function/CallBackF;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/LoginSuccess;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/LoginSuccess;

.field private final synthetic val$ShowRealName:Z


# direct methods
.method constructor <init>(Lcom/ltpay/activity/LoginSuccess;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/LoginSuccess$1;->this$0:Lcom/ltpay/activity/LoginSuccess;

    iput-boolean p2, p0, Lcom/ltpay/activity/LoginSuccess$1;->val$ShowRealName:Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 4

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/ltpay/activity/LoginSuccess$1;->val$ShowRealName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ltpay/activity/LoginSuccess$1;->this$0:Lcom/ltpay/activity/LoginSuccess;

    invoke-static {v0}, Lcom/ltpay/activity/LoginSuccess;->access$0(Lcom/ltpay/activity/LoginSuccess;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "1001"

    sget-object v2, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ltpay/activity/RealName;->Show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    .line 39
    :cond_0
    return-void
.end method

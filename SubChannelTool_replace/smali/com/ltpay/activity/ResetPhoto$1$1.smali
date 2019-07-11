.class Lcom/ltpay/activity/ResetPhoto$1$1;
.super Ljava/lang/Object;
.source "ResetPhoto.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/ResetPhoto$1;->Click(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/ResetPhoto$1;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ResetPhoto$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ResetPhoto$1$1;->this$1:Lcom/ltpay/activity/ResetPhoto$1;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto$1$1;->this$1:Lcom/ltpay/activity/ResetPhoto$1;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPhoto$1;->access$0(Lcom/ltpay/activity/ResetPhoto$1;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/ResetPhoto;->access$0(Lcom/ltpay/activity/ResetPhoto;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v0

    const-string v1, "\u5934\u50cf\u5df2\u4fee\u6539"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto$1$1;->this$1:Lcom/ltpay/activity/ResetPhoto$1;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPhoto$1;->access$0(Lcom/ltpay/activity/ResetPhoto$1;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v0

    iget-object v0, v0, Lcom/ltpay/activity/ResetPhoto;->curPicData:Ljava/lang/String;

    sput-object v0, Lcom/ltpay/activity/ResetPhoto;->picData:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto$1$1;->this$1:Lcom/ltpay/activity/ResetPhoto$1;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPhoto$1;->access$0(Lcom/ltpay/activity/ResetPhoto$1;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ltpay/activity/ResetPhoto;->OnBack(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public Onfail()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ltpay/activity/ResetPhoto$1$1;->this$1:Lcom/ltpay/activity/ResetPhoto$1;

    invoke-static {v0}, Lcom/ltpay/activity/ResetPhoto$1;->access$0(Lcom/ltpay/activity/ResetPhoto$1;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/ResetPhoto;->access$0(Lcom/ltpay/activity/ResetPhoto;)Lcom/ltpay/activity/ResetPhoto;

    move-result-object v0

    const-string v1, "\u5934\u50cf\u4fee\u6539\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    return-void
.end method

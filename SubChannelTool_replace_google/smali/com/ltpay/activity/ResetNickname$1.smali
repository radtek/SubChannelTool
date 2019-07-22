.class Lcom/ltpay/activity/ResetNickname$1;
.super Ljava/lang/Object;
.source "ResetNickname.java"

# interfaces
.implements Lcom/ltpay/function/Component$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/ResetNickname;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/ResetNickname;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ResetNickname;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ResetNickname$1;->this$0:Lcom/ltpay/activity/ResetNickname;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ltpay/activity/ResetNickname$1;)Lcom/ltpay/activity/ResetNickname;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ltpay/activity/ResetNickname$1;->this$0:Lcom/ltpay/activity/ResetNickname;

    return-object v0
.end method


# virtual methods
.method public Click(Ljava/lang/String;)V
    .locals 4
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v2, "ltpay_btn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/ltpay/activity/ResetNickname$1;->this$0:Lcom/ltpay/activity/ResetNickname;

    iget-object v2, v2, Lcom/ltpay/activity/ResetNickname;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_edit"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->EditText(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "nickName":Ljava/lang/String;
    new-instance v0, Lcom/ltpay/activity/ResetNickname$1$1;

    invoke-direct {v0, p0, v1}, Lcom/ltpay/activity/ResetNickname$1$1;-><init>(Lcom/ltpay/activity/ResetNickname$1;Ljava/lang/String;)V

    .line 64
    .local v0, "call":Lcom/ltpay/function/CallBack;
    iget-object v2, p0, Lcom/ltpay/activity/ResetNickname$1;->this$0:Lcom/ltpay/activity/ResetNickname;

    invoke-static {v2}, Lcom/ltpay/activity/ResetNickname;->access$0(Lcom/ltpay/activity/ResetNickname;)Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/ltpay/activity/Login;->uid:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/ltpay/function/Server;->ResetNickname(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    .line 66
    .end local v0    # "call":Lcom/ltpay/function/CallBack;
    .end local v1    # "nickName":Ljava/lang/String;
    :cond_0
    return-void
.end method

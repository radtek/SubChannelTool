.class Lcom/ltpay/activity/RealName$1;
.super Ljava/lang/Object;
.source "RealName.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/RealName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/RealName;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/RealName;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/RealName$1;->this$0:Lcom/ltpay/activity/RealName;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v3, p0, Lcom/ltpay/activity/RealName$1;->this$0:Lcom/ltpay/activity/RealName;

    iget-object v3, v3, Lcom/ltpay/activity/RealName;->SubmitBtn:Landroid/widget/TextView;

    if-ne p1, v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/ltpay/activity/RealName$1;->this$0:Lcom/ltpay/activity/RealName;

    iget-object v3, v3, Lcom/ltpay/activity/RealName;->userName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/ltpay/activity/RealName$1;->this$0:Lcom/ltpay/activity/RealName;

    iget-object v3, v3, Lcom/ltpay/activity/RealName;->IdNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "idNum":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    const-string v3, "\u59d3\u540d\u4e0d\u53ef\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/ltpay/activity/RealName;->showToast(Ljava/lang/String;)V

    .line 99
    .end local v0    # "idNum":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0    # "idNum":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_3

    .line 78
    :cond_2
    const-string v3, "\u8bf7\u8f93\u5165\u6709\u6548\u7684\u8eab\u4efd\u8bc1\u4fe1\u606f"

    invoke-static {v3}, Lcom/ltpay/activity/RealName;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    new-instance v2, Lcom/ltpay/activity/RealName$1$1;

    invoke-direct {v2, p0}, Lcom/ltpay/activity/RealName$1$1;-><init>(Lcom/ltpay/activity/RealName$1;)V

    .line 96
    .local v2, "uploadCall":Lcom/ltpay/function/CallBack;
    iget-object v3, p0, Lcom/ltpay/activity/RealName$1;->this$0:Lcom/ltpay/activity/RealName;

    invoke-virtual {v3, v1, v0, v2}, Lcom/ltpay/activity/RealName;->upload_RealNameInfo(Ljava/lang/String;Ljava/lang/String;Lcom/ltpay/function/CallBack;)V

    goto :goto_0
.end method

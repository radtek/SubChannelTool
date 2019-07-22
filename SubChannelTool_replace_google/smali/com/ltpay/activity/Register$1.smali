.class Lcom/ltpay/activity/Register$1;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/activity/Register;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Register;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Register;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->TabPhone:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    const-string v3, "phone"

    invoke-static {v2, v3}, Lcom/ltpay/activity/Register;->access$0(Lcom/ltpay/activity/Register;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->TabEmail:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/ltpay/activity/Register;->access$0(Lcom/ltpay/activity/Register;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->GetCode:Landroid/widget/TextView;

    if-ne p1, v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v2}, Lcom/ltpay/activity/Register;->access$1(Lcom/ltpay/activity/Register;)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->UserProtocal:Landroid/widget/TextView;

    if-ne p1, v2, :cond_4

    .line 171
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v2}, Lcom/ltpay/activity/Register;->access$2(Lcom/ltpay/activity/Register;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/ltpay/activity/UserProtocal;

    invoke-static {v2, v3}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 173
    :cond_4
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->Register:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    invoke-static {v2}, Lcom/ltpay/activity/Register;->access$3(Lcom/ltpay/activity/Register;)V

    goto :goto_0

    .line 177
    :cond_5
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->AllowProtocal:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_0

    .line 179
    const-string v2, "#b9b9b9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, "gray":I
    const-string v2, "#5677fc"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "blue":I
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->AllowProtocal:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 184
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->Register:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->Register:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 189
    :cond_6
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->Register:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    iget-object v2, p0, Lcom/ltpay/activity/Register$1;->this$0:Lcom/ltpay/activity/Register;

    iget-object v2, v2, Lcom/ltpay/activity/Register;->Register:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

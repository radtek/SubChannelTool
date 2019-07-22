.class Lcom/ltpay/activity/Login$2;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Login;->SetAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Login;

.field private final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Login;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Login$2;->this$0:Lcom/ltpay/activity/Login;

    iput-object p2, p0, Lcom/ltpay/activity/Login$2;->val$adapter:Landroid/widget/ArrayAdapter;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/ltpay/activity/Login$2;->this$0:Lcom/ltpay/activity/Login;

    iget-boolean v2, v2, Lcom/ltpay/activity/Login;->isFirstSelect:Z

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/ltpay/activity/Login$2;->this$0:Lcom/ltpay/activity/Login;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/ltpay/activity/Login;->isFirstSelect:Z

    .line 132
    iget-object v2, p0, Lcom/ltpay/activity/Login$2;->this$0:Lcom/ltpay/activity/Login;

    invoke-static {v2}, Lcom/ltpay/activity/Login;->access$5(Lcom/ltpay/activity/Login;)V

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/ltpay/activity/Login$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "seletValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/ltpay/activity/Login$2;->this$0:Lcom/ltpay/activity/Login;

    iget-object v2, v2, Lcom/ltpay/activity/Login;->userName:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/ltpay/activity/Login$2;->this$0:Lcom/ltpay/activity/Login;

    iget-object v2, v2, Lcom/ltpay/activity/Login;->localAccounts:Lcom/ltpay/function/Preference;

    invoke-virtual {v2, v1}, Lcom/ltpay/function/Preference;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "passwordValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/ltpay/activity/Login$2;->this$0:Lcom/ltpay/activity/Login;

    iget-object v2, v2, Lcom/ltpay/activity/Login;->passWord:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ltpay/activity/Login$2;->this$0:Lcom/ltpay/activity/Login;

    iget-object v0, v0, Lcom/ltpay/activity/Login;->userName:Landroid/widget/EditText;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

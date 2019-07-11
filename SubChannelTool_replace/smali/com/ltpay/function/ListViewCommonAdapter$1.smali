.class Lcom/ltpay/function/ListViewCommonAdapter$1;
.super Ljava/lang/Object;
.source "ListViewCommonAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/function/ListViewCommonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/function/ListViewCommonAdapter;


# direct methods
.method constructor <init>(Lcom/ltpay/function/ListViewCommonAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/ListViewCommonAdapter$1;->this$0:Lcom/ltpay/function/ListViewCommonAdapter;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "postion"    # I
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
    .line 75
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ltpay/function/ListViewCommonAdapter$1;->this$0:Lcom/ltpay/function/ListViewCommonAdapter;

    iget-object v1, p0, Lcom/ltpay/function/ListViewCommonAdapter$1;->this$0:Lcom/ltpay/function/ListViewCommonAdapter;

    iget-object v1, v1, Lcom/ltpay/function/ListViewCommonAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ltpay/function/ListViewCommonAdapter$1;->this$0:Lcom/ltpay/function/ListViewCommonAdapter;

    iget-object v2, v2, Lcom/ltpay/function/ListViewCommonAdapter;->iteams:[Ljava/lang/Object;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/ltpay/function/ListViewCommonAdapter;->setIteamClick(Landroid/content/Context;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.class Lcom/ltpay/function/Component$1;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Component;-><init>(Landroid/app/Activity;Lcom/ltpay/function/Component$ClickListener;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/function/Component;

.field private final synthetic val$listener0:Lcom/ltpay/function/Component$ClickListener;


# direct methods
.method constructor <init>(Lcom/ltpay/function/Component;Lcom/ltpay/function/Component$ClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Component$1;->this$0:Lcom/ltpay/function/Component;

    iput-object p2, p0, Lcom/ltpay/function/Component$1;->val$listener0:Lcom/ltpay/function/Component$ClickListener;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/ltpay/function/Component$1;->this$0:Lcom/ltpay/function/Component;

    iget-object v1, v1, Lcom/ltpay/function/Component;->Views:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    return-void

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/ltpay/function/Component$1;->this$0:Lcom/ltpay/function/Component;

    iget-object v2, v2, Lcom/ltpay/function/Component;->Views:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/ltpay/function/Component$1;->val$listener0:Lcom/ltpay/function/Component$ClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ltpay/function/Component$1;->val$listener0:Lcom/ltpay/function/Component$ClickListener;

    invoke-interface {v2, v0}, Lcom/ltpay/function/Component$ClickListener;->Click(Ljava/lang/String;)V

    goto :goto_0
.end method

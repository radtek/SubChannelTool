.class Lcom/ltpay/function/Tools$4;
.super Ljava/lang/Object;
.source "Tools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$clas:Ljava/lang/Class;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$extras:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/function/Tools$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ltpay/function/Tools$4;->val$clas:Ljava/lang/Class;

    iput-object p3, p0, Lcom/ltpay/function/Tools$4;->val$extras:[Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 86
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ltpay/function/Tools$4;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/ltpay/function/Tools$4;->val$clas:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/ltpay/function/Tools$4;->val$extras:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 92
    iget-object v3, p0, Lcom/ltpay/function/Tools$4;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 89
    .restart local v1    # "i":I
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/ltpay/function/Tools$4;->val$extras:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/ltpay/function/Tools$4;->val$extras:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    iget-object v3, p0, Lcom/ltpay/function/Tools$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.class public abstract Lcom/ltpay/function/ListViewCommonAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListViewCommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TE:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TTE;>;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field iteams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TTE;"
        }
    .end annotation
.end field

.field layoutInflater:Landroid/view/LayoutInflater;

.field listenList:Landroid/widget/AdapterView$OnItemClickListener;

.field resourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutName"    # Ljava/lang/String;
    .param p3, "IteamDatas"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[TTE;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/ltpay/function/ListViewCommonAdapter;, "Lcom/ltpay/function/ListViewCommonAdapter<TTE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/ltpay/function/ListViewCommonAdapter$1;

    invoke-direct {v0, p0}, Lcom/ltpay/function/ListViewCommonAdapter$1;-><init>(Lcom/ltpay/function/ListViewCommonAdapter;)V

    iput-object v0, p0, Lcom/ltpay/function/ListViewCommonAdapter;->listenList:Landroid/widget/AdapterView$OnItemClickListener;

    .line 32
    iput-object p1, p0, Lcom/ltpay/function/ListViewCommonAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/ltpay/function/ListViewCommonAdapter;->iteams:[Ljava/lang/Object;

    .line 35
    const-string v0, "layout"

    invoke-static {p1, p2, v0}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ltpay/function/ListViewCommonAdapter;->resourceId:I

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ltpay/function/ListViewCommonAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public getIteamView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "iteamView"    # Landroid/view/View;
    .param p2, "viewId"    # Ljava/lang/String;

    .prologue
    .line 60
    .local p0, "this":Lcom/ltpay/function/ListViewCommonAdapter;, "Lcom/ltpay/function/ListViewCommonAdapter<TTE;>;"
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, p2, v3}, Lcom/joymeng/payment/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "id":I
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 3

    .prologue
    .line 86
    .local p0, "this":Lcom/ltpay/function/ListViewCommonAdapter;, "Lcom/ltpay/function/ListViewCommonAdapter<TTE;>;"
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ltpay/function/ListViewCommonAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v1, p0, Lcom/ltpay/function/ListViewCommonAdapter;->listenList:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    .local p0, "this":Lcom/ltpay/function/ListViewCommonAdapter;, "Lcom/ltpay/function/ListViewCommonAdapter<TTE;>;"
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/ltpay/function/ListViewCommonAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/ltpay/function/ListViewCommonAdapter;->resourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ltpay/function/ListViewCommonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "iteam":Ljava/lang/Object;, "TTE;"
    invoke-virtual {p0, p2, v0}, Lcom/ltpay/function/ListViewCommonAdapter;->setIteamView(Landroid/view/View;Ljava/lang/Object;)V

    .line 54
    return-object p2
.end method

.method public abstract setIteamClick(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TTE;)V"
        }
    .end annotation
.end method

.method public abstract setIteamView(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TTE;)V"
        }
    .end annotation
.end method

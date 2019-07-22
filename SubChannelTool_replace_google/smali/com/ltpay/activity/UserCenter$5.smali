.class Lcom/ltpay/activity/UserCenter$5;
.super Ljava/lang/Object;
.source "UserCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/UserCenter;->showUserPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/UserCenter;

.field private final synthetic val$picData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/UserCenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/UserCenter$5;->this$0:Lcom/ltpay/activity/UserCenter;

    iput-object p2, p0, Lcom/ltpay/activity/UserCenter$5;->val$picData:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lcom/ltpay/activity/UserCenter$5;->val$picData:Ljava/lang/String;

    invoke-static {v2}, Lcom/ltpay/tackePhoto/BitmapTool;->ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0}, Lcom/ltpay/tackePhoto/BitmapTool;->ToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/ltpay/activity/UserCenter$5;->this$0:Lcom/ltpay/activity/UserCenter;

    iget-object v2, v2, Lcom/ltpay/activity/UserCenter;->com:Lcom/ltpay/function/Component;

    const-string v3, "ltpay_userphoto"

    invoke-virtual {v2, v3}, Lcom/ltpay/function/Component;->ImageView(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

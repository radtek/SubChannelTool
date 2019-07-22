.class Lcom/ltpay/floatView/FloatService$1;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ltpay/floatView/FloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/floatView/FloatService;


# direct methods
.method constructor <init>(Lcom/ltpay/floatView/FloatService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/floatView/FloatService$1;->this$0:Lcom/ltpay/floatView/FloatService;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ltpay/floatView/FloatService$1;->this$0:Lcom/ltpay/floatView/FloatService;

    iget-object v0, v0, Lcom/ltpay/floatView/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/ltpay/floatView/FloatService$1;->this$0:Lcom/ltpay/floatView/FloatService;

    iget-object v2, v2, Lcom/ltpay/floatView/FloatService;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    iget-object v0, p0, Lcom/ltpay/floatView/FloatService$1;->this$0:Lcom/ltpay/floatView/FloatService;

    iget-object v0, v0, Lcom/ltpay/floatView/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/ltpay/floatView/FloatService$1;->this$0:Lcom/ltpay/floatView/FloatService;

    iget-object v2, v2, Lcom/ltpay/floatView/FloatService;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 144
    iget-object v0, p0, Lcom/ltpay/floatView/FloatService$1;->this$0:Lcom/ltpay/floatView/FloatService;

    iget-object v0, v0, Lcom/ltpay/floatView/FloatService;->manager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ltpay/floatView/FloatService$1;->this$0:Lcom/ltpay/floatView/FloatService;

    iget-object v1, v1, Lcom/ltpay/floatView/FloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ltpay/floatView/FloatService$1;->this$0:Lcom/ltpay/floatView/FloatService;

    iget-object v2, v2, Lcom/ltpay/floatView/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    const/4 v0, 0x0

    return v0
.end method

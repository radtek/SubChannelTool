.class Lcom/ltpay/activity/ResetNickname$1$1;
.super Ljava/lang/Object;
.source "ResetNickname.java"

# interfaces
.implements Lcom/ltpay/function/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/ResetNickname$1;->Click(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ltpay/activity/ResetNickname$1;

.field private final synthetic val$nickName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/ResetNickname$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/ResetNickname$1$1;->this$1:Lcom/ltpay/activity/ResetNickname$1;

    iput-object p2, p0, Lcom/ltpay/activity/ResetNickname$1$1;->val$nickName:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuccess()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ltpay/activity/ResetNickname$1$1;->val$nickName:Ljava/lang/String;

    sput-object v0, Lcom/ltpay/activity/Login;->nname:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/ltpay/activity/ResetNickname$1$1;->this$1:Lcom/ltpay/activity/ResetNickname$1;

    invoke-static {v0}, Lcom/ltpay/activity/ResetNickname$1;->access$0(Lcom/ltpay/activity/ResetNickname$1;)Lcom/ltpay/activity/ResetNickname;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/ResetNickname;->access$0(Lcom/ltpay/activity/ResetNickname;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ltpay/activity/SettingPage;

    invoke-static {v0, v1}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    iget-object v0, p0, Lcom/ltpay/activity/ResetNickname$1$1;->this$1:Lcom/ltpay/activity/ResetNickname$1;

    invoke-static {v0}, Lcom/ltpay/activity/ResetNickname$1;->access$0(Lcom/ltpay/activity/ResetNickname$1;)Lcom/ltpay/activity/ResetNickname;

    move-result-object v0

    invoke-static {v0}, Lcom/ltpay/activity/ResetNickname;->access$0(Lcom/ltpay/activity/ResetNickname;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 61
    return-void
.end method

.method public Onfail()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

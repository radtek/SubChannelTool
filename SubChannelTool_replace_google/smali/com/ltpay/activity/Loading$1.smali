.class Lcom/ltpay/activity/Loading$1;
.super Ljava/lang/Object;
.source "Loading.java"

# interfaces
.implements Lcom/ltpay/function/CallBackF;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ltpay/activity/Loading;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ltpay/activity/Loading;


# direct methods
.method constructor <init>(Lcom/ltpay/activity/Loading;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltpay/activity/Loading$1;->this$0:Lcom/ltpay/activity/Loading;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 6

    .prologue
    .line 35
    invoke-static {}, Lcom/ltpay/activity/Loading;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 37
    invoke-static {}, Lcom/ltpay/activity/Loading;->access$0()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ShowAnnouncement"

    invoke-static {v1, v2}, Lcom/ltpay/function/LtpayConfig;->GetConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    .local v0, "ShowAnnouncement":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ltpay/activity/Loading;->access$0()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/ltpay/activity/Announcement;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "appId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/ltpay/LtSDK;->AppId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/ltpay/function/Tools;->ShowActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

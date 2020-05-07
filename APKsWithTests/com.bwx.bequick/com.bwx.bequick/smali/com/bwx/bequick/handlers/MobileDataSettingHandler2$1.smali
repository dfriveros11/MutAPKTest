.class Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataSettingHandler2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$1;->this$0:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 75
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2$1;->this$0:Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;->updateState(Landroid/net/NetworkInfo$State;)V

    .line 78
    :cond_0
    return-void
.end method

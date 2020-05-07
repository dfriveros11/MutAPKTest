.class Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiHotspotSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$1;->this$0:Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, "state":I
    iget-object v2, p0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler$1;->this$0:Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;

    invoke-static {v2, v1}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;->access$000(Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;I)V

    .line 87
    .end local v1    # "state":I
    :cond_0
    return-void
.end method

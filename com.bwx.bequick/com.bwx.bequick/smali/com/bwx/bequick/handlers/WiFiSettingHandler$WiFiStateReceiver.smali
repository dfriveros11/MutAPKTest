.class Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiFiSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/WiFiSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiFiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 54
    .local v4, "wifiState":I
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5, v4}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$000(Lcom/bwx/bequick/handlers/WiFiSettingHandler;I)V

    goto :goto_0

    .line 55
    .end local v4    # "wifiState":I
    :cond_2
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 58
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 60
    .local v3, "state":Landroid/net/NetworkInfo$DetailedState;
    const/4 v0, 0x0

    .line 61
    .local v0, "descr":Ljava/lang/String;
    sget-object v5, Lcom/bwx/bequick/handlers/WiFiSettingHandler$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 85
    :goto_1
    if-eqz v0, :cond_0

    .line 86
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$800(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/fwk/Setting;

    move-result-object v5

    iput-object v0, v5, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 87
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$900(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/fwk/Setting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$100(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;

    move-result-object v5

    const v6, 0x7f060009

    invoke-virtual {v5, v6}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    goto :goto_1

    .line 66
    :pswitch_1
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$200(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;

    move-result-object v5

    const v6, 0x7f06000a

    invoke-virtual {v5, v6}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    goto :goto_1

    .line 71
    :pswitch_2
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$300(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$400(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;

    move-result-object v5

    const v6, 0x7f06000b

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    goto :goto_1

    .line 75
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_3
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$500(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;

    move-result-object v5

    const v6, 0x7f06000d

    invoke-virtual {v5, v6}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    goto :goto_1

    .line 78
    :pswitch_4
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$600(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;

    move-result-object v5

    const v6, 0x7f06000e

    invoke-virtual {v5, v6}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    goto :goto_1

    .line 81
    :pswitch_5
    iget-object v5, p0, Lcom/bwx/bequick/handlers/WiFiSettingHandler$WiFiStateReceiver;->this$0:Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-static {v5}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;->access$700(Lcom/bwx/bequick/handlers/WiFiSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;

    move-result-object v5

    const v6, 0x7f06000f

    invoke-virtual {v5, v6}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

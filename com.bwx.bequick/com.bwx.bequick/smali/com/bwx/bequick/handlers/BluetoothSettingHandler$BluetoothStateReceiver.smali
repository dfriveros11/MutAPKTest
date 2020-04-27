.class Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/BluetoothSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/BluetoothSettingHandler;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/BluetoothSettingHandler;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;->this$0:Lcom/bwx/bequick/handlers/BluetoothSettingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    sget-object v1, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_EXTRA_STATE:Ljava/lang/String;

    sget v2, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_UNKNOWN:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 53
    .local v0, "state":I
    iget-object v1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;->this$0:Lcom/bwx/bequick/handlers/BluetoothSettingHandler;

    invoke-static {v1, v0}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->access$000(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;I)V

    .line 54
    return-void
.end method

.class Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;
.super Ljava/lang/Object;
.source "BluetoothSettingHandler.java"

# interfaces
.implements Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/BluetoothSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothControl20"
.end annotation


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic this$0:Lcom/bwx/bequick/handlers/BluetoothSettingHandler;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/BluetoothSettingHandler;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;->this$0:Lcom/bwx/bequick/handlers/BluetoothSettingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 71
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No default bluetooth adapter"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_UNKNOWN:I

    .line 75
    const/16 v0, 0xa

    sput v0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_OFF:I

    .line 76
    const/16 v0, 0xb

    sput v0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_TURNING_ON:I

    .line 77
    const/16 v0, 0xc

    sput v0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_ON:I

    .line 78
    const/16 v0, 0xd

    sput v0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_TURNING_OFF:I

    .line 80
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    sput-object v0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_ACTION_STATE_CHANGED:Ljava/lang/String;

    .line 81
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    sput-object v0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_EXTRA_STATE:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getBluetoothState()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

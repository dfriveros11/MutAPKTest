.class public Lcom/bwx/bequick/handlers/BluetoothSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "BluetoothSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;,
        Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;,
        Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;,
        Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;
    }
.end annotation


# static fields
.field public static BLUETOOTH_ACTION_STATE_CHANGED:Ljava/lang/String;

.field public static BLUETOOTH_EXTRA_STATE:Ljava/lang/String;

.field public static BLUETOOTH_STATE_OFF:I

.field public static BLUETOOTH_STATE_ON:I

.field public static BLUETOOTH_STATE_TURNING_OFF:I

.field public static BLUETOOTH_STATE_TURNING_ON:I

.field public static BLUETOOTH_STATE_UNKNOWN:I


# instance fields
.field private mBluetoothControl:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;

.field private mReceiver:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/BluetoothSettingHandler;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->onBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/handlers/BluetoothSettingHandler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    return-object v0
.end method

.method private onBluetoothStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 214
    iget-object v1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 215
    .local v1, "setting":Lcom/bwx/bequick/fwk/Setting;
    const v2, 0x7f060001

    .line 216
    .local v2, "stateText":I
    const/4 v0, 0x0

    .line 218
    .local v0, "enabled":Z
    sget v3, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_OFF:I

    if-ne p1, v3, :cond_1

    .line 219
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 220
    const/4 v0, 0x1

    .line 221
    const v2, 0x7f060003

    .line 232
    :cond_0
    :goto_0
    iput-boolean v0, v1, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 233
    iget-object v3, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v3, v2}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 234
    invoke-virtual {v1}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 235
    return-void

    .line 222
    :cond_1
    sget v3, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_TURNING_OFF:I

    if-ne p1, v3, :cond_2

    .line 223
    const v2, 0x7f060005

    goto :goto_0

    .line 224
    :cond_2
    sget v3, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_ON:I

    if-ne p1, v3, :cond_3

    .line 225
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 226
    const/4 v0, 0x1

    .line 227
    const v2, 0x7f060002

    goto :goto_0

    .line 228
    :cond_3
    sget v3, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_TURNING_ON:I

    if-ne p1, v3, :cond_0

    .line 229
    const v2, 0x7f060004

    goto :goto_0
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 172
    :try_start_0
    new-instance v2, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;

    invoke-direct {v2, p0}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;-><init>(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;)V

    iput-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mBluetoothControl:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mBluetoothControl:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;

    invoke-interface {v2}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;->getBluetoothState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->onBluetoothStateChanged(I)V

    .line 181
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_ACTION_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;

    if-nez v2, :cond_0

    new-instance v2, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;

    invoke-direct {v2, p0}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;-><init>(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;)V

    iput-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;

    invoke-virtual {p1, v2, v1}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    return-void

    .line 173
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;

    invoke-direct {v2, p0}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl20;-><init>(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;)V

    iput-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mBluetoothControl:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;

    goto :goto_0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mReceiver:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothStateReceiver;

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    return-void
.end method

.method public onSelected(I)V
    .locals 6
    .param p1, "buttonIndex"    # I

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.BluetoothSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->startActivitiesSafely([Landroid/content/Intent;)Z

    .line 196
    return-void
.end method

.method public onSwitched(Z)V
    .locals 1
    .param p1, "isSwitched"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->mBluetoothControl:Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;

    invoke-interface {v0, p1}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl;->setEnabled(Z)V

    .line 201
    return-void
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 206
    return-void
.end method

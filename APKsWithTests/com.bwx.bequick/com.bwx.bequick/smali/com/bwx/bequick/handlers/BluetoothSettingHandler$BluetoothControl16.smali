.class Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;
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
    name = "BluetoothControl16"
.end annotation


# instance fields
.field private mMethods:[Ljava/lang/reflect/Method;

.field private mService:Ljava/lang/Object;

.field final synthetic this$0:Lcom/bwx/bequick/handlers/BluetoothSettingHandler;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;)V
    .locals 9
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/BluetoothSettingHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iput-object p1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->this$0:Lcom/bwx/bequick/handlers/BluetoothSettingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-array v2, v8, [Ljava/lang/reflect/Method;

    iput-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mMethods:[Ljava/lang/reflect/Method;

    .line 104
    invoke-static {p1}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->access$100(Lcom/bwx/bequick/handlers/BluetoothSettingHandler;)Lcom/bwx/bequick/MainSettingsActivity;

    move-result-object v2

    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mService:Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mMethods:[Ljava/lang/reflect/Method;

    .line 107
    .local v1, "methods":[Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mService:Ljava/lang/Object;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "bluetooth service not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "enable"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 113
    :cond_1
    aput-object v0, v1, v5

    .line 116
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "disable"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 118
    :cond_2
    aput-object v0, v1, v6

    .line 120
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBluetoothState"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 122
    :cond_3
    aput-object v0, v1, v7

    .line 125
    const/4 v2, -0x1

    sput v2, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_UNKNOWN:I

    .line 126
    sput v5, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_OFF:I

    .line 127
    sput v6, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_TURNING_ON:I

    .line 128
    sput v7, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_ON:I

    .line 129
    sput v8, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_TURNING_OFF:I

    .line 131
    const-string v2, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    sput-object v2, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_ACTION_STATE_CHANGED:Ljava/lang/String;

    .line 132
    const-string v2, "android.bluetooth.intent.BLUETOOTH_STATE"

    sput-object v2, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_EXTRA_STATE:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public getBluetoothState()I
    .locals 5

    .prologue
    .line 148
    :try_start_0
    iget-object v3, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mMethods:[Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 149
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mService:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 150
    .local v2, "state":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 154
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "state":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "bwx.qs"

    const-string v4, "cannot getBluetoothState"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    sget v3, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;->BLUETOOTH_STATE_UNKNOWN:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mMethods:[Ljava/lang/reflect/Method;

    if-eqz p1, :cond_0

    :goto_0
    aget-object v1, v3, v2

    .line 138
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler$BluetoothControl16;->mService:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 137
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "bwx.qs"

    const-string v3, "cannot enable/disable bluetooth"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

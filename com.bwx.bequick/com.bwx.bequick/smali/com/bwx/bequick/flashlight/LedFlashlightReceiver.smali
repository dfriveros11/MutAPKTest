.class public Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LedFlashlightReceiver.java"


# static fields
.field public static final ACTION_CONTROL_FLASHLIGHT:Ljava/lang/String; = "com.bwx.bequick.FLASHLIGHT"

.field public static final ACTION_FLASHLIGHT:Ljava/lang/String; = "com.bwx.bequick.FLASHLIGHT_STATE"

.field private static final ACTION_WARN:Ljava/lang/String; = "com.bwx.bequick.WARN_FLASHLIGHT"

.field public static final EXT_ENABLED:Ljava/lang/String; = "enabled"

.field private static FLASHLIGHT:Lcom/bwx/bequick/flashlight/Flashlight; = null

.field private static final PREF_WARN_COUNT:Ljava/lang/String; = "warn_count"

.field private static final TAG:Ljava/lang/String; = "qs.led"

.field private static final WARN_TIMEOUT:I = 0x493e0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static checkFlashlight(I)Lcom/bwx/bequick/flashlight/Flashlight;
    .locals 4
    .param p0, "item"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    packed-switch p0, :pswitch_data_0

    move-object v1, v2

    .line 102
    :goto_0
    return-object v1

    .line 94
    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;

    invoke-direct {v1}, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "qs.led"

    const-string v3, "led not supported"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 102
    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;

    invoke-direct {v1}, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;-><init>()V

    goto :goto_0

    .line 96
    :pswitch_2
    new-instance v1, Lcom/bwx/bequick/flashlight/Droid22Flashlight;

    invoke-direct {v1}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;-><init>()V

    goto :goto_0

    .line 97
    :pswitch_3
    new-instance v1, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;

    invoke-direct {v1}, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static clearWarnCounter(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const-string v2, "Runtime"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 235
    .local v1, "props":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "warn_count"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    return-void
.end method

.method private static detectFromBuild()Lcom/bwx/bequick/flashlight/Flashlight;
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const-string v0, "sholes"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shadow"

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "droid2"

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Lcom/bwx/bequick/flashlight/Droid22Flashlight;

    invoke-direct {v0}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;-><init>()V

    .line 88
    :goto_0
    return-object v0

    .line 84
    :cond_1
    sget v0, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_3

    const-string v0, "U20a"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "E10a"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    :cond_2
    new-instance v0, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;

    invoke-direct {v0}, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;-><init>()V

    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static detectLedFlashlightType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->detectFromBuild()Lcom/bwx/bequick/flashlight/Flashlight;

    move-result-object v0

    .line 63
    .local v0, "flashlight":Lcom/bwx/bequick/flashlight/Flashlight;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    .line 65
    invoke-static {v1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->checkFlashlight(I)Lcom/bwx/bequick/flashlight/Flashlight;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bwx/bequick/flashlight/Flashlight;->isSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    .end local v1    # "i":I
    :cond_0
    if-nez v0, :cond_2

    const/4 v3, -0x1

    .line 74
    .local v3, "type":I
    :goto_1
    const-string v4, "Common"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "flashlightType"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return v3

    .line 69
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "type":I
    .restart local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Lcom/bwx/bequick/flashlight/Flashlight;->getType()I

    move-result v3

    goto :goto_1
.end method

.method private static enableFlashlight(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    invoke-static {p0}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->getFlashlight(Landroid/content/Context;)Lcom/bwx/bequick/flashlight/Flashlight;

    move-result-object v1

    .line 185
    .local v1, "flashlight":Lcom/bwx/bequick/flashlight/Flashlight;
    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p0}, Lcom/bwx/bequick/flashlight/Flashlight;->setOn(ZLandroid/content/Context;)V

    .line 189
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.bwx.bequick.FLASHLIGHT_STATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Common"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 194
    .local v3, "props":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "flashlightType"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static getFlashlight(Landroid/content/Context;)Lcom/bwx/bequick/flashlight/Flashlight;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    .line 108
    sget-object v2, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->FLASHLIGHT:Lcom/bwx/bequick/flashlight/Flashlight;

    if-nez v2, :cond_2

    .line 109
    const-class v3, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;

    monitor-enter v3

    .line 110
    :try_start_0
    sget-object v2, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->FLASHLIGHT:Lcom/bwx/bequick/flashlight/Flashlight;

    if-nez v2, :cond_1

    .line 111
    const-string v2, "Common"

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "flashlightType"

    const/4 v4, -0x2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, "type":I
    if-ne v1, v5, :cond_0

    .line 115
    invoke-static {p0}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->detectLedFlashlightType(Landroid/content/Context;)I

    move-result v1

    .line 117
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 125
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "type":I
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_2
    sget-object v2, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->FLASHLIGHT:Lcom/bwx/bequick/flashlight/Flashlight;

    return-object v2

    .line 118
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    .restart local v1    # "type":I
    :pswitch_0
    :try_start_1
    new-instance v2, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;

    invoke-direct {v2}, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;-><init>()V

    sput-object v2, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->FLASHLIGHT:Lcom/bwx/bequick/flashlight/Flashlight;

    goto :goto_0

    .line 125
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "type":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 119
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    .restart local v1    # "type":I
    :pswitch_1
    :try_start_2
    new-instance v2, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;

    invoke-direct {v2}, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;-><init>()V

    sput-object v2, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->FLASHLIGHT:Lcom/bwx/bequick/flashlight/Flashlight;

    goto :goto_0

    .line 120
    :pswitch_2
    new-instance v2, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;

    invoke-direct {v2}, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;-><init>()V

    sput-object v2, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->FLASHLIGHT:Lcom/bwx/bequick/flashlight/Flashlight;

    goto :goto_0

    .line 121
    :pswitch_3
    new-instance v2, Lcom/bwx/bequick/flashlight/Droid22Flashlight;

    invoke-direct {v2}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;-><init>()V

    sput-object v2, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->FLASHLIGHT:Lcom/bwx/bequick/flashlight/Flashlight;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bwx.bequick.WARN_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getWarnCount(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const-string v3, "Runtime"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 223
    .local v2, "props":Landroid/content/SharedPreferences;
    const-string v3, "warn_count"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, "count":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 226
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "warn_count"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    return v0
.end method

.method public static isFlashlightEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-static {p0}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->getFlashlight(Landroid/content/Context;)Lcom/bwx/bequick/flashlight/Flashlight;

    move-result-object v1

    .line 200
    .local v1, "flashlight":Lcom/bwx/bequick/flashlight/Flashlight;
    if-nez v1, :cond_0

    .line 204
    :goto_0
    return v2

    .line 202
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Lcom/bwx/bequick/flashlight/Flashlight;->isOn(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static scheduleNextWarn(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-static {p0}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 210
    .local v1, "operation":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 211
    .local v0, "alarm":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 213
    return-void
.end method

.method private static vibrate(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 178
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.bwx.bequick.FLASHLIGHT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "enabled"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 139
    .local v3, "enabled":Z
    invoke-static {p1, v3}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->enableFlashlight(Landroid/content/Context;Z)V

    .line 140
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->clearWarnCounter(Landroid/content/Context;)V

    .line 142
    if-eqz v3, :cond_1

    .line 143
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->getFlashlight(Landroid/content/Context;)Lcom/bwx/bequick/flashlight/Flashlight;

    move-result-object v4

    .line 144
    .local v4, "flashlight":Lcom/bwx/bequick/flashlight/Flashlight;
    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lcom/bwx/bequick/flashlight/Flashlight;->isOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->scheduleNextWarn(Landroid/content/Context;)V

    .line 174
    .end local v3    # "enabled":Z
    .end local v4    # "flashlight":Lcom/bwx/bequick/flashlight/Flashlight;
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v3    # "enabled":Z
    :cond_1
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 152
    .local v5, "operation":Landroid/app/PendingIntent;
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 153
    .local v1, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 157
    .end local v1    # "alarm":Landroid/app/AlarmManager;
    .end local v3    # "enabled":Z
    .end local v5    # "operation":Landroid/app/PendingIntent;
    :cond_2
    const-string v6, "com.bwx.bequick.WARN_FLASHLIGHT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->getFlashlight(Landroid/content/Context;)Lcom/bwx/bequick/flashlight/Flashlight;

    move-result-object v4

    .line 160
    .restart local v4    # "flashlight":Lcom/bwx/bequick/flashlight/Flashlight;
    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lcom/bwx/bequick/flashlight/Flashlight;->isOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->getWarnCount(Landroid/content/Context;)I

    move-result v2

    .line 163
    .local v2, "count":I
    const/4 v6, 0x2

    if-le v2, v6, :cond_3

    .line 165
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->enableFlashlight(Landroid/content/Context;Z)V

    .line 166
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->vibrate(Landroid/content/Context;)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->scheduleNextWarn(Landroid/content/Context;)V

    .line 170
    invoke-static {p1}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->vibrate(Landroid/content/Context;)V

    goto :goto_0
.end method

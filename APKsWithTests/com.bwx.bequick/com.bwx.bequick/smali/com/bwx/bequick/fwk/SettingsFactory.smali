.class public Lcom/bwx/bequick/fwk/SettingsFactory;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSetting(IILjava/lang/String;Landroid/content/Context;)Lcom/bwx/bequick/fwk/Setting;
    .locals 8
    .param p0, "id"    # I
    .param p1, "index"    # I
    .param p2, "defaultText"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xf

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x8

    .line 48
    sparse-switch p0, :sswitch_data_0

    .line 153
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported setting type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :sswitch_0
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const v1, 0x7f02002a

    const v2, 0x7f060008

    invoke-direct {v6, v7, v1, v2, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 157
    .local v6, "setting":Lcom/bwx/bequick/fwk/Setting;
    :goto_0
    iput p1, v6, Lcom/bwx/bequick/fwk/Setting;->index:I

    .line 158
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_0
    return-object v6

    .line 55
    :sswitch_1
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/4 v1, 0x2

    const v2, 0x7f020015

    const v3, 0x7f060010

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 56
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    const-class v1, Lcom/bwx/bequick/preferences/GpsPrefs;

    iput-object v1, v6, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    goto :goto_0

    .line 60
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_2
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/4 v1, 0x3

    const v2, 0x7f020023

    const v3, 0x7f06001e

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 61
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    iput-boolean v7, v6, Lcom/bwx/bequick/fwk/Setting;->hasPopup:Z

    goto :goto_0

    .line 65
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_3
    new-instance v0, Lcom/bwx/bequick/fwk/RangeSetting;

    const/4 v1, 0x4

    const v2, 0x7f02000e

    const v3, 0x7f060011

    const/16 v5, 0x64

    invoke-direct/range {v0 .. v5}, Lcom/bwx/bequick/fwk/RangeSetting;-><init>(IIIII)V

    .line 66
    .local v0, "set":Lcom/bwx/bequick/fwk/RangeSetting;
    const v1, 0x7f020010

    iput v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->minIconId:I

    .line 67
    const v1, 0x7f02000f

    iput v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->maxIconId:I

    .line 68
    const-class v1, Lcom/bwx/bequick/preferences/BrightnessPrefs;

    iput-object v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->prefs:Ljava/lang/Class;

    .line 69
    move-object v6, v0

    .line 70
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto :goto_0

    .line 74
    .end local v0    # "set":Lcom/bwx/bequick/fwk/RangeSetting;
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_4
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/4 v1, 0x5

    const v2, 0x7f02000a

    const v3, 0x7f060018

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 75
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    const-class v1, Lcom/bwx/bequick/preferences/AirplaneModePrefs;

    iput-object v1, v6, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    goto :goto_0

    .line 79
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_5
    invoke-static {p3}, Lcom/bwx/bequick/fwk/SettingsFactory;->isCDMA(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/4 v1, 0x6

    const v2, 0x7f02000b

    const v3, 0x7f06007a

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 83
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    const-class v1, Lcom/bwx/bequick/preferences/MobileDataApnPrefs;

    iput-object v1, v6, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    goto :goto_0

    .line 88
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_6
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/4 v1, 0x7

    const v2, 0x7f020011

    const v3, 0x7f060024

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 89
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto :goto_0

    .line 92
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_7
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const v1, 0x7f020020

    const v2, 0x7f060026

    invoke-direct {v6, v3, v1, v2, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 93
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 96
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_8
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/16 v1, 0x9

    const v2, 0x7f020027

    const v3, 0x7f060032

    const v4, 0x7f060033

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 97
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 100
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_9
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/16 v1, 0xa

    const v2, 0x7f02000c

    const v3, 0x7f060030

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 101
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 104
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_a
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/16 v1, 0xb

    const v2, 0x7f02001f

    const v3, 0x7f060042

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 105
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 108
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_b
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/16 v1, 0xc

    const v2, 0x7f020016

    const v3, 0x7f060043

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 109
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 112
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_c
    new-instance v0, Lcom/bwx/bequick/fwk/RangeSetting;

    const/16 v1, 0xd

    const v2, 0x7f020026

    const v3, 0x7f060050

    invoke-direct/range {v0 .. v5}, Lcom/bwx/bequick/fwk/RangeSetting;-><init>(IIIII)V

    .line 113
    .restart local v0    # "set":Lcom/bwx/bequick/fwk/RangeSetting;
    const v1, 0x7f020029

    iput v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->minIconId:I

    .line 114
    const v1, 0x7f020028

    iput v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->maxIconId:I

    .line 115
    move-object v6, v0

    .line 116
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 120
    .end local v0    # "set":Lcom/bwx/bequick/fwk/RangeSetting;
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_d
    sget v1, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    if-lt v1, v3, :cond_0

    .line 121
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/16 v1, 0xe

    const v2, 0x7f02002b

    const v3, 0x7f060079

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 128
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_e
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const v1, 0x7f020007

    const v2, 0x7f06007b

    invoke-direct {v6, v5, v1, v2, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 129
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    const-class v1, Lcom/bwx/bequick/preferences/MobileDataPrefs;

    iput-object v1, v6, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    goto/16 :goto_0

    .line 133
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_f
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const v1, 0x7f06002d

    invoke-direct {v6, p0, v1}, Lcom/bwx/bequick/fwk/Setting;-><init>(II)V

    .line 134
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 137
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_10
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const v1, 0x7f06002e

    invoke-direct {v6, p0, v1}, Lcom/bwx/bequick/fwk/Setting;-><init>(II)V

    .line 138
    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 141
    .end local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :sswitch_11
    sget v1, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    if-lt v1, v3, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "PC36100"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "PG06100"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "PG86100"

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :cond_1
    new-instance v6, Lcom/bwx/bequick/fwk/Setting;

    const/16 v1, 0x10

    const v2, 0x7f020008

    const v3, 0x7f060085

    invoke-direct {v6, v1, v2, v3, p2}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .restart local v6    # "setting":Lcom/bwx/bequick/fwk/Setting;
    goto/16 :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_11
        0x64 -> :sswitch_f
        0x65 -> :sswitch_10
    .end sparse-switch
.end method

.method public static createSettingHandler(Lcom/bwx/bequick/fwk/Setting;)Lcom/bwx/bequick/fwk/SettingHandler;
    .locals 3
    .param p0, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 168
    iget v0, p0, Lcom/bwx/bequick/fwk/Setting;->id:I

    packed-switch v0, :pswitch_data_0

    .line 198
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    new-instance v0, Lcom/bwx/bequick/handlers/WiFiSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/WiFiSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 172
    :pswitch_1
    new-instance v0, Lcom/bwx/bequick/handlers/GpsSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/GpsSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 173
    :pswitch_2
    new-instance v0, Lcom/bwx/bequick/handlers/RingerSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/RingerSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 175
    :pswitch_3
    sget v0, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "SonyEricssonX10i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/bwx/bequick/handlers/BrightnessSettingHandlerX10;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandlerX10;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 181
    :pswitch_4
    new-instance v0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 182
    :pswitch_5
    new-instance v0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 183
    :pswitch_6
    new-instance v0, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/BluetoothSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 184
    :pswitch_7
    new-instance v0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 185
    :pswitch_8
    new-instance v0, Lcom/bwx/bequick/handlers/VolumeControlSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/VolumeControlSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 186
    :pswitch_9
    new-instance v0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 187
    :pswitch_a
    new-instance v0, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;

    const-string v1, "accelerometer_rotation"

    const-string v2, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, p0, v1, v2}, Lcom/bwx/bequick/handlers/SystemPropertySettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_b
    sget v0, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 189
    :pswitch_c
    new-instance v0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 190
    :pswitch_d
    new-instance v0, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/WifiHotspotSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 191
    :pswitch_e
    new-instance v0, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/MobileDataSettingHandler2;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto :goto_0

    .line 192
    :pswitch_f
    new-instance v0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;

    invoke-direct {v0, p0}, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    goto/16 :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private static final isCDMA(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 204
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

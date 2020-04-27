.class public Lcom/bwx/bequick/fwk/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field public static final AIRPLANE_MODE:I = 0x5

.field public static final AUTO_ROTATE:I = 0xb

.field public static final AUTO_SYNC:I = 0xa

.field public static final BLUETOOTH:I = 0x7

.field public static final BRIGHTNESS:I = 0x4

.field public static final FOUR_G:I = 0x10

.field public static final GPS:I = 0x2

.field public static final GROUP_HIDDEN:I = 0x65

.field public static final GROUP_VISIBLE:I = 0x64

.field public static final LOCK_PATTERN:I = 0xc

.field public static final MASTER_VOLUME:I = 0xd

.field public static final MOBILE_DATA:I = 0xf

.field public static final MOBILE_DATA_APN:I = 0x6

.field public static final PLACEHOLDER:I = -0x1

.field public static final RINGER:I = 0x3

.field public static final SCREEN_TIMEOUT:I = 0x8

.field private static VIBRO_PATTERN:[J = null

.field public static final VOLUME:I = 0x9

.field public static final WIFI:I = 0x1

.field public static final WIFI_HOTSPOT:I = 0xe


# instance fields
.field public checked:Z

.field public descr:Ljava/lang/String;

.field public enabled:Z

.field public hasPopup:Z

.field public iconId:I

.field public final id:I

.field public index:I

.field private mHandler:Lcom/bwx/bequick/fwk/SettingHandler;

.field private mRenderer:Lcom/bwx/bequick/fwk/SettingRenderer;

.field public prefs:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final titleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bwx/bequick/fwk/Setting;->VIBRO_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1e
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "title"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/bwx/bequick/fwk/Setting;->id:I

    .line 81
    iput p2, p0, Lcom/bwx/bequick/fwk/Setting;->titleId:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 83
    return-void
.end method

.method protected constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "iconId"    # I
    .param p3, "title"    # I
    .param p4, "descr"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p3}, Lcom/bwx/bequick/fwk/Setting;-><init>(II)V

    .line 87
    iput-object p4, p0, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 88
    iput p2, p0, Lcom/bwx/bequick/fwk/Setting;->iconId:I

    .line 89
    return-void
.end method


# virtual methods
.method assignHandler(Lcom/bwx/bequick/fwk/SettingHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/bwx/bequick/fwk/SettingHandler;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bwx/bequick/fwk/Setting;->mHandler:Lcom/bwx/bequick/fwk/SettingHandler;

    return-void
.end method

.method public getAssignedHandler()Lcom/bwx/bequick/fwk/SettingHandler;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mHandler:Lcom/bwx/bequick/fwk/SettingHandler;

    return-object v0
.end method

.method public getAssignedRenderer()Lcom/bwx/bequick/fwk/SettingRenderer;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mRenderer:Lcom/bwx/bequick/fwk/SettingRenderer;

    .line 98
    .local v0, "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    if-nez v0, :cond_0

    .line 100
    iget v1, p0, Lcom/bwx/bequick/fwk/Setting;->id:I

    sparse-switch v1, :sswitch_data_0

    .line 115
    new-instance v0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;

    .end local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    invoke-direct {v0}, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;-><init>()V

    .line 117
    .restart local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    :goto_0
    iput-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mRenderer:Lcom/bwx/bequick/fwk/SettingRenderer;

    .line 119
    :cond_0
    return-object v0

    .line 103
    :sswitch_0
    iget-boolean v1, p0, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;

    .end local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    invoke-direct {v0}, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;-><init>()V

    .line 106
    .restart local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    :goto_1
    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;

    .end local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    invoke-direct {v0}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;-><init>()V

    goto :goto_1

    .line 109
    .restart local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    :sswitch_1
    new-instance v0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;

    .end local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    invoke-direct {v0}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;-><init>()V

    .line 110
    .restart local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    goto :goto_0

    .line 112
    :sswitch_2
    new-instance v0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;

    .end local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    invoke-direct {v0}, Lcom/bwx/bequick/renderers/LinkSettingRenderer;-><init>()V

    .restart local v0    # "renderer":Lcom/bwx/bequick/fwk/SettingRenderer;
    goto :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public notifyButtonClicked(I)V
    .locals 1
    .param p1, "buttonIndex"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mHandler:Lcom/bwx/bequick/fwk/SettingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mHandler:Lcom/bwx/bequick/fwk/SettingHandler;

    invoke-virtual {v0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;->onSelected(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public notifySettingValueChanged(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mHandler:Lcom/bwx/bequick/fwk/SettingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mHandler:Lcom/bwx/bequick/fwk/SettingHandler;

    invoke-virtual {v0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;->onValueChanged(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public notifySwitchClicked(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    .line 134
    iget-object v2, p0, Lcom/bwx/bequick/fwk/Setting;->mHandler:Lcom/bwx/bequick/fwk/SettingHandler;

    .line 135
    .local v2, "handler":Lcom/bwx/bequick/fwk/SettingHandler;
    if-eqz v2, :cond_1

    .line 138
    iget-object v0, v2, Lcom/bwx/bequick/fwk/SettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 139
    .local v0, "activity":Lcom/bwx/bequick/MainSettingsActivity;
    invoke-virtual {v0}, Lcom/bwx/bequick/MainSettingsActivity;->getApp()Lcom/bwx/bequick/SettingsApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bwx/bequick/SettingsApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, "config":Landroid/content/SharedPreferences;
    const-string v5, "hapticFeedback"

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 141
    .local v3, "vibrate":Z
    if-eqz v3, :cond_0

    .line 142
    const-string v5, "vibrator"

    invoke-virtual {v0, v5}, Lcom/bwx/bequick/MainSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 143
    .local v4, "vibrator":Landroid/os/Vibrator;
    if-eqz v4, :cond_0

    sget-object v5, Lcom/bwx/bequick/fwk/Setting;->VIBRO_PATTERN:[J

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 147
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    invoke-virtual {v2, p1}, Lcom/bwx/bequick/fwk/SettingHandler;->onSwitched(Z)V

    .line 149
    .end local v0    # "activity":Lcom/bwx/bequick/MainSettingsActivity;
    .end local v1    # "config":Landroid/content/SharedPreferences;
    .end local v3    # "vibrate":Z
    :cond_1
    return-void
.end method

.method public removeRenderer()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mRenderer:Lcom/bwx/bequick/fwk/SettingRenderer;

    .line 93
    return-void
.end method

.method public startPrefsActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "prefs class is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mRenderer:Lcom/bwx/bequick/fwk/SettingRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bwx/bequick/fwk/Setting;->mRenderer:Lcom/bwx/bequick/fwk/SettingRenderer;

    invoke-interface {v0}, Lcom/bwx/bequick/fwk/SettingRenderer;->notifySettingUpdated()V

    .line 127
    :cond_0
    return-void
.end method

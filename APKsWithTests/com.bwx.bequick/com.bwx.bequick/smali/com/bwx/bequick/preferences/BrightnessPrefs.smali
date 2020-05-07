.class public Lcom/bwx/bequick/preferences/BrightnessPrefs;
.super Landroid/preference/PreferenceActivity;
.source "BrightnessPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private enableAutobrightness()V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->getApp()Lcom/bwx/bequick/SettingsApplication;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/SettingsApplication;->getSetting(I)Lcom/bwx/bequick/fwk/Setting;

    move-result-object v0

    .line 77
    .local v0, "setting":Lcom/bwx/bequick/fwk/Setting;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 78
    invoke-virtual {v0}, Lcom/bwx/bequick/fwk/Setting;->removeRenderer()V

    .line 79
    return-void
.end method

.method private getApp()Lcom/bwx/bequick/SettingsApplication;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/SettingsApplication;

    return-object v0
.end method

.method public static hasLightSensor(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, "supported":Z
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 122
    .local v1, "sensorService":Landroid/hardware/SensorManager;
    if-eqz v1, :cond_0

    .line 123
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "lightSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    .line 126
    .end local v0    # "lightSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_0
    :goto_0
    return v2

    .line 124
    .restart local v0    # "lightSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 65
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 68
    const-string v1, "lightSensor"

    invoke-virtual {p0, v1}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 69
    .local v0, "checkbox":Landroid/preference/CheckBoxPreference;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    invoke-direct {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->enableAutobrightness()V

    .line 73
    .end local v0    # "checkbox":Landroid/preference/CheckBoxPreference;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 52
    .local v1, "manager":Landroid/preference/PreferenceManager;
    const-string v2, "Common"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 53
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->addPreferencesFromResource(I)V

    .line 55
    const-string v2, "lightSensor"

    invoke-virtual {p0, v2}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 56
    .local v0, "checkbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 83
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 85
    .local v0, "checkbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    invoke-static {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->hasLightSensor(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->enableAutobrightness()V

    .line 116
    :cond_0
    :goto_0
    return v8

    .line 91
    :cond_1
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020012

    .line 93
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060011

    .line 94
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060054

    .line 95
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060019

    .line 96
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06001a

    .line 97
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 99
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 105
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    invoke-direct {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->getApp()Lcom/bwx/bequick/SettingsApplication;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/bwx/bequick/SettingsApplication;->getSetting(I)Lcom/bwx/bequick/fwk/Setting;

    move-result-object v3

    .line 106
    .local v3, "setting":Lcom/bwx/bequick/fwk/Setting;
    iput-boolean v7, v3, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    iput-boolean v7, v3, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    .line 107
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 108
    invoke-virtual {v3}, Lcom/bwx/bequick/fwk/Setting;->removeRenderer()V

    .line 110
    invoke-virtual {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, "mode":I
    if-ne v8, v2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    const v4, 0x7f060053

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

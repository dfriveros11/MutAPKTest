.class public Lcom/bwx/bequick/preferences/MobileDataApnPrefs;
.super Lcom/bwx/bequick/preferences/BasePrefs;
.source "MobileDataApnPrefs.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f030009

    invoke-direct {p0, v0}, Lcom/bwx/bequick/preferences/BasePrefs;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v1, "disableMms"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "disableMms"

    invoke-virtual {p0, v1}, Lcom/bwx/bequick/preferences/MobileDataApnPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 35
    .local v0, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060060

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 37
    .end local v0    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_0
    return-void

    .line 35
    .restart local v0    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    const v1, 0x7f060061

    goto :goto_0
.end method

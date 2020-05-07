.class public abstract Lcom/bwx/bequick/preferences/BasePrefs;
.super Landroid/preference/PreferenceActivity;
.source "BasePrefs.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final mLayoutResource:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "layoutResource"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 31
    iput p1, p0, Lcom/bwx/bequick/preferences/BasePrefs;->mLayoutResource:I

    .line 32
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/bwx/bequick/preferences/BasePrefs;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 38
    .local v0, "manager":Landroid/preference/PreferenceManager;
    const-string v1, "Common"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 39
    iget v1, p0, Lcom/bwx/bequick/preferences/BasePrefs;->mLayoutResource:I

    invoke-virtual {p0, v1}, Lcom/bwx/bequick/preferences/BasePrefs;->addPreferencesFromResource(I)V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 49
    invoke-virtual {p0}, Lcom/bwx/bequick/preferences/BasePrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 44
    invoke-virtual {p0}, Lcom/bwx/bequick/preferences/BasePrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    return-void
.end method

.method public abstract onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end method

.class public Lcom/bwx/bequick/preferences/AirplaneModePrefs;
.super Lcom/bwx/bequick/preferences/BasePrefs;
.source "AirplaneModePrefs.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f030004

    invoke-direct {p0, v0}, Lcom/bwx/bequick/preferences/BasePrefs;-><init>(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method

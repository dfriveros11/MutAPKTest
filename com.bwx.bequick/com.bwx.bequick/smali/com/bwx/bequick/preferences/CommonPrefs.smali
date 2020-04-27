.class public Lcom/bwx/bequick/preferences/CommonPrefs;
.super Lcom/bwx/bequick/preferences/BasePrefs;
.source "CommonPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f030006

    invoke-direct {p0, v0}, Lcom/bwx/bequick/preferences/BasePrefs;-><init>(I)V

    .line 60
    return-void
.end method

.method private activateScreenFlashlight()V
    .locals 2

    .prologue
    .line 137
    const-string v1, "flashlight"

    invoke-virtual {p0, v1}, Lcom/bwx/bequick/preferences/CommonPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 138
    .local v0, "pref":Landroid/preference/ListPreference;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private createDialog(IIZ)Landroid/app/Dialog;
    .locals 3
    .param p1, "titleId"    # I
    .param p2, "textId"    # I
    .param p3, "twoButtons"    # Z

    .prologue
    .line 101
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p3, :cond_0

    .line 104
    const v1, 0x7f06005a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v1, 0x7f06001d

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 107
    :cond_0
    const v1, 0x7f06001b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static getVersionNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 183
    .local v1, "packagInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "packagInfo":Landroid/content/pm/PackageInfo;
    .local v2, "version":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 184
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "?"

    .restart local v2    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method public static openQuickerInMarket(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 192
    sget v2, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    .line 194
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.bwx.quicker"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v2

    .line 203
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://market.android.com/details?id=com.bwx.quicker"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateStatusbarShortcut(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 115
    const-string v4, "statusBarIntegration"

    const-string v5, "0"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 116
    .local v3, "status":I
    const-string v4, "viewMode"

    const-string v5, "0"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "appearance":I
    const-string v4, "inverseSatusbarColor"

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 120
    .local v2, "inverseColor":Z
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "status"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v4, "appearence"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v4, "inversed"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v1}, Lcom/bwx/bequick/preferences/CommonPrefs;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    const/4 v0, -0x2

    if-ne v0, p2, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/bwx/bequick/preferences/CommonPrefs;->activateScreenFlashlight()V

    .line 134
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/bwx/bequick/preferences/BasePrefs;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "about"

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/preferences/CommonPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    const-string v0, "doc"

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/preferences/CommonPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    const-string v0, "about_quicker"

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/preferences/CommonPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020012

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06006f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/bwx/bequick/preferences/CommonPrefs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/high16 v5, 0x7f030000

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    .local v1, "info":Landroid/widget/TextView;
    const v3, 0x7f06008e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/bwx/bequick/preferences/CommonPrefs;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/bwx/bequick/preferences/CommonPrefs;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 167
    const v3, 0x7f06001b

    new-instance v4, Lcom/bwx/bequick/preferences/CommonPrefs$1;

    invoke-direct {v4, p0}, Lcom/bwx/bequick/preferences/CommonPrefs$1;-><init>(Lcom/bwx/bequick/preferences/CommonPrefs;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 176
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "info":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-object v3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    const-string v3, "about"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {p0, v2}, Lcom/bwx/bequick/preferences/CommonPrefs;->showDialog(I)V

    .line 154
    :goto_0
    return v1

    .line 146
    :cond_0
    const-string v3, "doc"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v3, "http://code.google.com/p/quick-settings/wiki/TableOfContents"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/bwx/bequick/preferences/CommonPrefs;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_1
    move v1, v2

    .line 154
    goto :goto_0

    .line 149
    :cond_2
    const-string v3, "about_quicker"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-static {p0}, Lcom/bwx/bequick/preferences/CommonPrefs;->openQuickerInMarket(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f060057

    const/4 v5, 0x0

    .line 74
    const-string v3, "statusBarIntegration"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "viewMode"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "inverseSatusbarColor"

    .line 75
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/bwx/bequick/preferences/CommonPrefs;->updateStatusbarShortcut(Landroid/content/SharedPreferences;)V

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    const-string v3, "flashlight"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    const-string v3, "flashlight"

    const-string v4, "0"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "value":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-static {p0}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->detectLedFlashlightType(Landroid/content/Context;)I

    move-result v1

    .line 82
    .local v1, "type":I
    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    .line 84
    const v3, 0x7f060059

    const/4 v4, 0x1

    invoke-direct {p0, v6, v3, v4}, Lcom/bwx/bequick/preferences/CommonPrefs;->createDialog(IIZ)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 87
    :cond_3
    invoke-direct {p0}, Lcom/bwx/bequick/preferences/CommonPrefs;->activateScreenFlashlight()V

    .line 89
    const v3, 0x7f06005b

    invoke-direct {p0, v6, v3, v5}, Lcom/bwx/bequick/preferences/CommonPrefs;->createDialog(IIZ)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 91
    .end local v1    # "type":I
    :cond_4
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.bwx.bequick.FLASHLIGHT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "enabled"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/bwx/bequick/preferences/CommonPrefs;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.class public Lcom/bwx/bequick/SettingsApplication;
.super Landroid/app/Application;
.source "SettingsApplication.java"


# static fields
.field private static final IDS:[I


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bwx/bequick/fwk/Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bwx/bequick/SettingsApplication;->IDS:[I

    return-void

    :array_0
    .array-data 4
        0x64
        0x4
        0x3
        0x9
        0x7
        0x1
        0x2
        0xf
        0x10
        0x65
        0xd
        0x8
        0xe
        0x5
        0xa
        0xb
        0xc
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bwx/bequick/SettingsApplication;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSetting(I)Lcom/bwx/bequick/fwk/Setting;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 147
    iget-object v3, p0, Lcom/bwx/bequick/SettingsApplication;->mSettings:Ljava/util/ArrayList;

    .line 148
    .local v3, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bwx/bequick/fwk/Setting;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 149
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 150
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bwx/bequick/fwk/Setting;

    .line 151
    .local v2, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget v4, v2, Lcom/bwx/bequick/fwk/Setting;->id:I

    if-ne p1, v4, :cond_0

    .line 153
    .end local v2    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :goto_1
    return-object v2

    .line 149
    .restart local v2    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bwx/bequick/fwk/Setting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bwx/bequick/SettingsApplication;->mSettings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate()V
    .locals 21

    .prologue
    .line 82
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 83
    const v19, 0x7f060001

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/SettingsApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "defaultText":Ljava/lang/String;
    const-string v19, "Common"

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/bwx/bequick/SettingsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/bwx/bequick/SettingsApplication;->mPrefs:Landroid/content/SharedPreferences;

    .line 89
    .local v14, "prefs":Landroid/content/SharedPreferences;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bwx/bequick/SettingsApplication;->mSettings:Ljava/util/ArrayList;

    .line 90
    .local v16, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bwx/bequick/fwk/Setting;>;"
    sget-object v9, Lcom/bwx/bequick/SettingsApplication;->IDS:[I

    .line 91
    .local v9, "ids":[I
    array-length v13, v9

    .line 93
    .local v13, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_1

    .line 94
    aget v8, v9, v7

    .line 95
    .local v8, "id":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 96
    .local v10, "index":I
    move-object/from16 v0, p0

    invoke-static {v8, v10, v5, v0}, Lcom/bwx/bequick/fwk/SettingsFactory;->createSetting(IILjava/lang/String;Landroid/content/Context;)Lcom/bwx/bequick/fwk/Setting;

    move-result-object v15

    .line 97
    .local v15, "setting":Lcom/bwx/bequick/fwk/Setting;
    if-eqz v15, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 101
    .end local v8    # "id":I
    .end local v10    # "index":I
    .end local v15    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_1
    new-instance v19, Lcom/bwx/bequick/SettingsApplication$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/bwx/bequick/SettingsApplication$1;-><init>(Lcom/bwx/bequick/SettingsApplication;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    const-string v19, "viewMode"

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, "appearance":I
    const-string v19, "statusBarIntegration"

    const-string v20, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 110
    .local v17, "status":I
    const-string v19, "inverseSatusbarColor"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 111
    .local v12, "inverse":Z
    new-instance v11, Landroid/content/Intent;

    const-string v19, "com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v11, "intent":Landroid/content/Intent;
    const-string v19, "status"

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v19, "appearence"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v19, "inversed"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/bwx/bequick/SettingsApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    const-string v19, "_version"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 118
    .local v18, "version":Ljava/lang/String;
    if-nez v18, :cond_2

    .line 120
    invoke-static/range {p0 .. p0}, Lcom/bwx/bequick/preferences/BrightnessPrefs;->hasLightSensor(Landroid/content/Context;)Z

    move-result v6

    .line 121
    .local v6, "hasLightSensor":Z
    invoke-static/range {p0 .. p0}, Lcom/bwx/bequick/preferences/CommonPrefs;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "currentVersion":Ljava/lang/String;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "lightSensor"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "_version"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    .end local v4    # "currentVersion":Ljava/lang/String;
    .end local v6    # "hasLightSensor":Z
    :cond_2
    return-void
.end method

.method public persistSettings()V
    .locals 7

    .prologue
    .line 128
    iget-object v5, p0, Lcom/bwx/bequick/SettingsApplication;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/bwx/bequick/SettingsApplication;->mSettings:Ljava/util/ArrayList;

    .line 130
    .local v4, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bwx/bequick/fwk/Setting;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 131
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 132
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bwx/bequick/fwk/Setting;

    .line 133
    .local v3, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget v5, v3, Lcom/bwx/bequick/fwk/Setting;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v3, Lcom/bwx/bequick/fwk/Setting;->index:I

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

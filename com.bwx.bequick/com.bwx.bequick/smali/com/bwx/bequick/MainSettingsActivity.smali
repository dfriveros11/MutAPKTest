.class public Lcom/bwx/bequick/MainSettingsActivity;
.super Landroid/app/Activity;
.source "MainSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowSettingsActivity"


# instance fields
.field private mApp:Lcom/bwx/bequick/SettingsApplication;

.field private mCardStateView:Landroid/widget/TextView;

.field private mCommonIntentFilter:Landroid/content/IntentFilter;

.field private mCommonIntentReceiver:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

.field private mFlashlight:Landroid/widget/ImageButton;

.field mInitializingDialog:Landroid/app/ProgressDialog;

.field private mInternalStateView:Landroid/widget/TextView;

.field private mLayout:Lcom/bwx/bequick/ListSettingsLayout;

.field private mPrefAppearance:I

.field private mPrefFlashlight:I

.field private mRestartRequired:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/bwx/bequick/MainSettingsActivity;->updateFlashlightView()V

    return-void
.end method

.method private createInitializeActivateHandlers()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 241
    iget-object v6, p0, Lcom/bwx/bequick/MainSettingsActivity;->mApp:Lcom/bwx/bequick/SettingsApplication;

    invoke-virtual {v6}, Lcom/bwx/bequick/SettingsApplication;->getSettings()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 242
    .local v5, "settings":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bwx/bequick/fwk/Setting;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 245
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bwx/bequick/fwk/Setting;

    .line 246
    .local v3, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget v2, v3, Lcom/bwx/bequick/fwk/Setting;->id:I

    .line 247
    .local v2, "id":I
    invoke-virtual {v3}, Lcom/bwx/bequick/fwk/Setting;->getAssignedHandler()Lcom/bwx/bequick/fwk/SettingHandler;

    move-result-object v1

    .line 249
    .local v1, "handler":Lcom/bwx/bequick/fwk/SettingHandler;
    if-nez v1, :cond_3

    .line 251
    const/16 v6, 0x65

    if-ne v2, v6, :cond_2

    .line 278
    .end local v1    # "handler":Lcom/bwx/bequick/fwk/SettingHandler;
    .end local v2    # "id":I
    .end local v3    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_1
    return-void

    .line 256
    .restart local v1    # "handler":Lcom/bwx/bequick/fwk/SettingHandler;
    .restart local v2    # "id":I
    .restart local v3    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_2
    invoke-static {v3}, Lcom/bwx/bequick/fwk/SettingsFactory;->createSettingHandler(Lcom/bwx/bequick/fwk/Setting;)Lcom/bwx/bequick/fwk/SettingHandler;

    move-result-object v1

    .line 259
    :cond_3
    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/bwx/bequick/fwk/SettingHandler;->activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Throwable;
    const-string v6, "ShowSettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot activate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    iget v6, v3, Lcom/bwx/bequick/fwk/Setting;->titleId:I

    invoke-virtual {p0, v6}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "settingName":Ljava/lang/String;
    const v6, 0x7f06003f

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 271
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 274
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private getMemoryStatus(Ljava/io/File;I)Ljava/lang/String;
    .locals 20
    .param p1, "path"    # Ljava/io/File;
    .param p2, "resId"    # I

    .prologue
    .line 306
    :try_start_0
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 307
    .local v12, "stat":Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v8, v13

    .line 308
    .local v8, "blockSize":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v14, v13

    .line 309
    .local v14, "totalBlocks":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v2, v13

    .line 318
    .local v2, "availableBlocks":J
    mul-long v16, v14, v8

    .line 319
    .local v16, "totalSize":J
    mul-long v6, v2, v8

    .line 320
    .local v6, "availableSize":J
    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-nez v13, :cond_1

    const-wide/16 v4, -0x1

    .line 327
    .local v4, "availablePercent":J
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 328
    .local v11, "res":Ljava/lang/String;
    const-wide/16 v18, -0x1

    cmp-long v13, v4, v18

    if-lez v13, :cond_0

    .line 329
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, " ("

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, "%)"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 332
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 338
    .end local v2    # "availableBlocks":J
    .end local v4    # "availablePercent":J
    .end local v6    # "availableSize":J
    .end local v8    # "blockSize":J
    .end local v11    # "res":Ljava/lang/String;
    .end local v12    # "stat":Landroid/os/StatFs;
    .end local v14    # "totalBlocks":J
    .end local v16    # "totalSize":J
    :goto_1
    return-object v11

    .line 320
    .restart local v2    # "availableBlocks":J
    .restart local v6    # "availableSize":J
    .restart local v8    # "blockSize":J
    .restart local v12    # "stat":Landroid/os/StatFs;
    .restart local v14    # "totalBlocks":J
    .restart local v16    # "totalSize":J
    :cond_1
    const-wide/16 v18, 0x64

    mul-long v18, v18, v6

    div-long v4, v18, v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v2    # "availableBlocks":J
    .end local v6    # "availableSize":J
    .end local v8    # "blockSize":J
    .end local v12    # "stat":Landroid/os/StatFs;
    .end local v14    # "totalBlocks":J
    .end local v16    # "totalSize":J
    :catch_0
    move-exception v10

    .line 338
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private updateFlashlightView()V
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/bwx/bequick/MainSettingsActivity;->mFlashlight:Landroid/widget/ImageButton;

    .line 224
    .local v1, "flashlight":Landroid/widget/ImageButton;
    iget v2, p0, Lcom/bwx/bequick/MainSettingsActivity;->mPrefFlashlight:I

    .line 225
    .local v2, "pref":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 227
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 231
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 233
    invoke-static {p0}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->isFlashlightEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 234
    .local v0, "enabled":Z
    if-eqz v0, :cond_2

    const v3, 0x7f020014

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v3, 0x7f020013

    goto :goto_1
.end method

.method private updateMemoryStatus()V
    .locals 4

    .prologue
    const v3, 0x7f060017

    .line 284
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const v2, 0x7f060015

    invoke-direct {p0, v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->getMemoryStatus(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 286
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/bwx/bequick/MainSettingsActivity;->mInternalStateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const v2, 0x7f060016

    invoke-direct {p0, v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->getMemoryStatus(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 294
    if-nez v0, :cond_2

    .line 295
    invoke-virtual {p0, v3}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bwx/bequick/MainSettingsActivity;->mCardStateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-void

    .line 298
    :cond_3
    invoke-virtual {p0, v3}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getApp()Lcom/bwx/bequick/SettingsApplication;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/bwx/bequick/MainSettingsActivity;->mApp:Lcom/bwx/bequick/SettingsApplication;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 451
    :goto_0
    return-void

    .line 429
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent1":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "intent2":Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.BatteryInfo"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/content/Intent;

    aput-object v2, v6, v5

    aput-object v3, v6, v4

    invoke-virtual {p0, v6}, Lcom/bwx/bequick/MainSettingsActivity;->startActivitiesSafely([Landroid/content/Intent;)Z

    goto :goto_0

    .line 437
    .end local v2    # "intent1":Landroid/content/Intent;
    .end local v3    # "intent2":Landroid/content/Intent;
    :pswitch_1
    iget v6, p0, Lcom/bwx/bequick/MainSettingsActivity;->mPrefFlashlight:I

    if-nez v6, :cond_0

    .line 439
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/bwx/bequick/flashlight/ScreenLightActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {p0}, Lcom/bwx/bequick/flashlight/LedFlashlightReceiver;->isFlashlightEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 443
    .local v0, "enabled":Z
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.bwx.bequick.FLASHLIGHT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "enabled"

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 444
    goto :goto_1

    .line 426
    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/bwx/bequick/MainSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/SettingsApplication;

    iput-object v0, p0, Lcom/bwx/bequick/MainSettingsActivity;->mApp:Lcom/bwx/bequick/SettingsApplication;

    .line 168
    .local v0, "app":Lcom/bwx/bequick/SettingsApplication;
    invoke-virtual {v0}, Lcom/bwx/bequick/SettingsApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 170
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v7}, Lcom/bwx/bequick/MainSettingsActivity;->requestWindowFeature(I)Z

    .line 171
    const v4, 0x7f030017

    invoke-virtual {p0, v4}, Lcom/bwx/bequick/MainSettingsActivity;->setContentView(I)V

    .line 174
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 175
    const-string v4, "viewMode"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/bwx/bequick/MainSettingsActivity;->mPrefAppearance:I

    .line 176
    const-string v4, "flashlight"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/bwx/bequick/MainSettingsActivity;->mPrefFlashlight:I

    .line 179
    const v4, 0x7f090004

    invoke-virtual {p0, v4}, Lcom/bwx/bequick/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/bwx/bequick/MainSettingsActivity;->mCardStateView:Landroid/widget/TextView;

    .line 180
    const v4, 0x7f090003

    invoke-virtual {p0, v4}, Lcom/bwx/bequick/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/bwx/bequick/MainSettingsActivity;->mInternalStateView:Landroid/widget/TextView;

    .line 182
    const v4, 0x7f090006

    invoke-virtual {p0, v4}, Lcom/bwx/bequick/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "battery":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v4, 0x7f090005

    invoke-virtual {p0, v4}, Lcom/bwx/bequick/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/bwx/bequick/MainSettingsActivity;->mFlashlight:Landroid/widget/ImageButton;

    .line 186
    iget-object v4, p0, Lcom/bwx/bequick/MainSettingsActivity;->mFlashlight:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    new-instance v4, Lcom/bwx/bequick/ListSettingsLayout;

    const v5, 0x7f090021

    invoke-virtual {p0, v5}, Lcom/bwx/bequick/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/bwx/bequick/ListSettingsLayout;-><init>(Landroid/view/View;Lcom/bwx/bequick/SettingsApplication;)V

    iput-object v4, p0, Lcom/bwx/bequick/MainSettingsActivity;->mLayout:Lcom/bwx/bequick/ListSettingsLayout;

    .line 190
    sget v4, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    .line 191
    const-string v4, "quickerAds"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 192
    .local v3, "shown":Z
    if-nez v3, :cond_0

    .line 193
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "quickerAds"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    invoke-virtual {p0, v6}, Lcom/bwx/bequick/MainSettingsActivity;->showDialog(I)V

    .line 198
    .end local v3    # "shown":Z
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 203
    new-instance v1, Lcom/bwx/bequick/MainSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/bwx/bequick/MainSettingsActivity$1;-><init>(Lcom/bwx/bequick/MainSettingsActivity;)V

    .line 213
    .local v1, "onclick":Landroid/view/View$OnClickListener;
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 215
    const v2, 0x7f03000a

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 216
    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/bwx/bequick/MainSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 403
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 404
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 419
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 421
    :goto_0
    return v0

    .line 410
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bwx/bequick/LayoutSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 421
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bwx/bequick/preferences/CommonPrefs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x7f090031
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 372
    iget-object v6, p0, Lcom/bwx/bequick/MainSettingsActivity;->mCommonIntentReceiver:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    invoke-virtual {p0, v6}, Lcom/bwx/bequick/MainSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    iget-object v6, p0, Lcom/bwx/bequick/MainSettingsActivity;->mApp:Lcom/bwx/bequick/SettingsApplication;

    invoke-virtual {v6}, Lcom/bwx/bequick/SettingsApplication;->getSettings()Ljava/util/ArrayList;

    move-result-object v5

    .line 376
    .local v5, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bwx/bequick/fwk/Setting;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 377
    .local v3, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 379
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bwx/bequick/fwk/Setting;

    .line 380
    .local v4, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget v2, v4, Lcom/bwx/bequick/fwk/Setting;->id:I

    .line 381
    .local v2, "id":I
    const/16 v6, 0x65

    if-ne v2, v6, :cond_2

    .line 393
    .end local v2    # "id":I
    .end local v4    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_0
    iget-object v6, p0, Lcom/bwx/bequick/MainSettingsActivity;->mInitializingDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_1

    .line 394
    iget-object v6, p0, Lcom/bwx/bequick/MainSettingsActivity;->mInitializingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/bwx/bequick/MainSettingsActivity;->mInitializingDialog:Landroid/app/ProgressDialog;

    .line 398
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 399
    return-void

    .line 385
    .restart local v2    # "id":I
    .restart local v4    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Lcom/bwx/bequick/fwk/Setting;->getAssignedHandler()Lcom/bwx/bequick/fwk/SettingHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bwx/bequick/fwk/SettingHandler;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "ShowSettingsActivity"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 345
    invoke-direct {p0}, Lcom/bwx/bequick/MainSettingsActivity;->updateMemoryStatus()V

    .line 348
    iget-object v0, p0, Lcom/bwx/bequick/MainSettingsActivity;->mCommonIntentFilter:Landroid/content/IntentFilter;

    .line 349
    .local v0, "filter":Landroid/content/IntentFilter;
    if-nez v0, :cond_0

    .line 350
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bwx/bequick/MainSettingsActivity;->mCommonIntentFilter:Landroid/content/IntentFilter;

    .line 351
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.bwx.bequick.FLASHLIGHT_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    new-instance v2, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    invoke-direct {v2, p0}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;-><init>(Lcom/bwx/bequick/MainSettingsActivity;)V

    iput-object v2, p0, Lcom/bwx/bequick/MainSettingsActivity;->mCommonIntentReceiver:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/bwx/bequick/MainSettingsActivity;->mCommonIntentReceiver:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/bwx/bequick/MainSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    invoke-direct {p0}, Lcom/bwx/bequick/MainSettingsActivity;->createInitializeActivateHandlers()V

    .line 358
    iget-object v2, p0, Lcom/bwx/bequick/MainSettingsActivity;->mLayout:Lcom/bwx/bequick/ListSettingsLayout;

    invoke-virtual {v2, p0}, Lcom/bwx/bequick/ListSettingsLayout;->updateLayout(Landroid/app/Activity;)V

    .line 359
    invoke-direct {p0}, Lcom/bwx/bequick/MainSettingsActivity;->updateFlashlightView()V

    .line 361
    iget-boolean v2, p0, Lcom/bwx/bequick/MainSettingsActivity;->mRestartRequired:Z

    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/bwx/bequick/MainSettingsActivity;->finish()V

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.bwx.bequick.START_QS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 454
    const-string v1, "viewMode"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    const-string v1, "viewMode"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 456
    .local v0, "appearance":I
    iget v1, p0, Lcom/bwx/bequick/MainSettingsActivity;->mPrefAppearance:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/bwx/bequick/MainSettingsActivity;->mRestartRequired:Z

    .line 457
    iput v0, p0, Lcom/bwx/bequick/MainSettingsActivity;->mPrefAppearance:I

    .line 464
    .end local v0    # "appearance":I
    :cond_0
    :goto_1
    return-void

    .line 456
    .restart local v0    # "appearance":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 459
    .end local v0    # "appearance":I
    :cond_2
    const-string v1, "flashlight"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const-string v1, "flashlight"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bwx/bequick/MainSettingsActivity;->mPrefFlashlight:I

    .line 461
    invoke-direct {p0}, Lcom/bwx/bequick/MainSettingsActivity;->updateFlashlightView()V

    goto :goto_1
.end method

.method public varargs startActivitiesSafely([Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 471
    array-length v3, p1

    .line 472
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 474
    :try_start_0
    aget-object v2, p1, v1

    .line 475
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    const/4 v4, 0x1

    .line 484
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return v4

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v4, v1, 0x1

    if-ne v4, v3, :cond_0

    .line 480
    const-string v4, "ShowSettingsActivity"

    const-string v5, "cannot launch activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

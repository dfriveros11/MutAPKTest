.class public Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "UnlockPatternSettingHandler22.java"


# static fields
.field private static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final SYSTEM_TYPE_ALPHABETIC:J = 0x40000L

.field private static final SYSTEM_TYPE_ALPHANUMERIC:J = 0x50000L

.field private static final SYSTEM_TYPE_NUMERIC:J = 0x20000L

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_PASS:I = 0x3

.field private static final TYPE_PATTERN:I = 0x1

.field private static final TYPE_PIN:I = 0x2


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 33
    return-void
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 10
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 37
    iput-object p1, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 39
    iget-object v7, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v7}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_pattern_autolock"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "pattern":I
    if-ne v2, v5, :cond_0

    .line 42
    const/4 v4, 0x1

    .line 54
    .local v4, "type":I
    :goto_0
    iget-object v3, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 55
    .local v3, "s":Lcom/bwx/bequick/fwk/Setting;
    if-eqz v4, :cond_4

    :goto_1
    iput-boolean v5, v3, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 57
    packed-switch v4, :pswitch_data_0

    .line 61
    const v5, 0x7f060007

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 64
    :goto_2
    invoke-virtual {v3}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 65
    return-void

    .line 44
    .end local v3    # "s":Lcom/bwx/bequick/fwk/Setting;
    .end local v4    # "type":I
    :cond_0
    iget-object v7, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v7}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen.password_type"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 45
    .local v0, "passwordType":J
    const-wide/32 v8, 0x40000

    cmp-long v7, v0, v8

    if-eqz v7, :cond_1

    const-wide/32 v8, 0x50000

    cmp-long v7, v0, v8

    if-nez v7, :cond_2

    .line 46
    :cond_1
    const/4 v4, 0x3

    .restart local v4    # "type":I
    goto :goto_0

    .line 47
    .end local v4    # "type":I
    :cond_2
    const-wide/32 v8, 0x20000

    cmp-long v7, v0, v8

    if-nez v7, :cond_3

    .line 48
    const/4 v4, 0x2

    .restart local v4    # "type":I
    goto :goto_0

    .line 50
    .end local v4    # "type":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "type":I
    goto :goto_0

    .end local v0    # "passwordType":J
    .restart local v3    # "s":Lcom/bwx/bequick/fwk/Setting;
    :cond_4
    move v5, v6

    .line 55
    goto :goto_1

    .line 58
    :pswitch_0
    const v5, 0x7f060076

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    goto :goto_2

    .line 59
    :pswitch_1
    const v5, 0x7f060077

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    goto :goto_2

    .line 60
    :pswitch_2
    const v5, 0x7f060078

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    goto :goto_2

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onSelected(I)V
    .locals 3
    .param p1, "buttonIndex"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onSwitched(Z)V
    .locals 3
    .param p1, "switched"    # Z

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/bwx/bequick/handlers/UnlockPatternSettingHandler22;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/bwx/bequick/MainSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 87
    return-void
.end method

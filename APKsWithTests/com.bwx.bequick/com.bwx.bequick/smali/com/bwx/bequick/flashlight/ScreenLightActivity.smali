.class public Lcom/bwx/bequick/flashlight/ScreenLightActivity;
.super Landroid/app/Activity;
.source "ScreenLightActivity.java"

# interfaces
.implements Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;


# instance fields
.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private mMessage:Landroid/widget/TextView;

.field private mSwitchDetector:Lcom/bwx/bequick/flashlight/SwitchDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->requestWindowFeature(I)Z

    .line 46
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 49
    invoke-virtual {p0}, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/SettingsApplication;

    .line 50
    .local v0, "app":Lcom/bwx/bequick/SettingsApplication;
    invoke-virtual {v0}, Lcom/bwx/bequick/SettingsApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "flightSwitch"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 59
    new-instance v2, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;

    invoke-direct {v2, p0}, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;-><init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;)V

    iput-object v2, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mSwitchDetector:Lcom/bwx/bequick/flashlight/SwitchDetector;

    .line 63
    :goto_0
    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mMessage:Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mSwitchDetector:Lcom/bwx/bequick/flashlight/SwitchDetector;

    invoke-virtual {v3}, Lcom/bwx/bequick/flashlight/SwitchDetector;->getTextId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-void

    .line 53
    :pswitch_0
    new-instance v2, Lcom/bwx/bequick/flashlight/DelaySwitchDetector;

    invoke-direct {v2, p0}, Lcom/bwx/bequick/flashlight/DelaySwitchDetector;-><init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;)V

    iput-object v2, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mSwitchDetector:Lcom/bwx/bequick/flashlight/SwitchDetector;

    goto :goto_0

    .line 56
    :pswitch_1
    new-instance v2, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;

    invoke-direct {v2, p0}, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;-><init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;)V

    iput-object v2, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mSwitchDetector:Lcom/bwx/bequick/flashlight/SwitchDetector;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    .local v0, "lock":Landroid/os/PowerManager$WakeLock;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 84
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    iget-object v1, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mSwitchDetector:Lcom/bwx/bequick/flashlight/SwitchDetector;

    invoke-virtual {v1, p0}, Lcom/bwx/bequick/flashlight/SwitchDetector;->inactivate(Landroid/content/Context;)V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 73
    .local v1, "pm":Landroid/os/PowerManager;
    const/16 v2, 0xa

    const-string v3, "QS.Flashlight"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    .local v0, "lock":Landroid/os/PowerManager$WakeLock;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mSwitchDetector:Lcom/bwx/bequick/flashlight/SwitchDetector;

    invoke-virtual {v2, p0}, Lcom/bwx/bequick/flashlight/SwitchDetector;->activate(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public switchLight(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 92
    iget-object v3, p0, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->mMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Lcom/bwx/bequick/flashlight/ScreenLightActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 95
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 96
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 97
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 98
    return-void

    .line 92
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "window":Landroid/view/Window;
    :cond_1
    const v2, 0x3dcccccd    # 0.1f

    goto :goto_1
.end method

.class public Lcom/bwx/bequick/handlers/BrightnessSettingHandlerX10;
.super Lcom/bwx/bequick/handlers/BrightnessSettingHandler;
.source "BrightnessSettingHandlerX10.java"


# static fields
.field public static final DEVICE:Ljava/lang/String; = "SonyEricssonX10i"

.field private static final MAXIMUM:I = 0xfe

.field private static final MINIMUM:I = 0x12

.field private static final RANGE:I = 0xec

.field public static final SDK_VERSION:I = 0x4


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getMaximum()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xfe

    return v0
.end method

.method protected getMinimum()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x12

    return v0
.end method

.method protected getRange()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xec

    return v0
.end method

.method protected setAutobrightness(Landroid/app/Activity;Landroid/content/ContentResolver;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "on"    # Z

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/bwx/bequick/handlers/BrightnessSettingHandler;->setAutobrightness(Landroid/app/Activity;Landroid/content/ContentResolver;Z)V

    .line 41
    if-eqz p3, :cond_1

    const/16 v2, 0xff

    .line 42
    .local v2, "value":I
    :goto_0
    const-string v4, "screen_brightness"

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    if-nez p3, :cond_0

    .line 46
    iget-object v1, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandlerX10;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    check-cast v1, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 47
    .local v1, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    invoke-virtual {p0, v2}, Lcom/bwx/bequick/handlers/BrightnessSettingHandlerX10;->getPercentValue(I)I

    move-result v4

    iput v4, v1, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 48
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/bwx/bequick/fwk/RangeSetting;->descr:Ljava/lang/String;

    .line 49
    iput-boolean v5, v1, Lcom/bwx/bequick/fwk/RangeSetting;->enabled:Z

    .line 50
    iput-boolean v5, v1, Lcom/bwx/bequick/fwk/RangeSetting;->checked:Z

    .line 51
    invoke-virtual {v1}, Lcom/bwx/bequick/fwk/RangeSetting;->updateView()V

    .line 55
    .end local v1    # "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    :cond_0
    iget-object v4, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandlerX10;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v4}, Lcom/bwx/bequick/MainSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 56
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p3, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 59
    iget-object v4, p0, Lcom/bwx/bequick/handlers/BrightnessSettingHandlerX10;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v4}, Lcom/bwx/bequick/MainSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 60
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    return-void

    .line 41
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "value":I
    .end local v3    # "window":Landroid/view/Window;
    :cond_1
    const/16 v2, 0x80

    goto :goto_0

    .line 56
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "value":I
    :cond_2
    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/BrightnessSettingHandlerX10;->getMaximum()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    goto :goto_1
.end method

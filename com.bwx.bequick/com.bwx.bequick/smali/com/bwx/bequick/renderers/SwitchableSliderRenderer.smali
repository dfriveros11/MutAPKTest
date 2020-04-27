.class public Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;
.super Ljava/lang/Object;
.source "SwitchableSliderRenderer.java"

# interfaces
.implements Lcom/bwx/bequick/fwk/SettingRenderer;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBaseRenderer:Lcom/bwx/bequick/renderers/LinkSettingRenderer;

.field private mChildView:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

.field private mSliderRenderer:Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mToggle:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    return-void
.end method

.method private updateView(Lcom/bwx/bequick/fwk/RangeSetting;Landroid/widget/ToggleButton;)V
    .locals 9
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/RangeSetting;
    .param p2, "toggle"    # Landroid/widget/ToggleButton;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 82
    iget-boolean v0, p1, Lcom/bwx/bequick/fwk/RangeSetting;->checked:Z

    .line 83
    .local v0, "checked":Z
    iget-object v3, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 86
    .local v3, "switcher":Landroid/widget/ViewSwitcher;
    if-eqz v0, :cond_1

    .line 87
    iget-object v2, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mBaseRenderer:Lcom/bwx/bequick/renderers/LinkSettingRenderer;

    .line 88
    .local v2, "renderer":Lcom/bwx/bequick/renderers/LinkSettingRenderer;
    if-nez v2, :cond_0

    .line 89
    new-instance v2, Lcom/bwx/bequick/renderers/LinkSettingRenderer;

    .end local v2    # "renderer":Lcom/bwx/bequick/renderers/LinkSettingRenderer;
    invoke-direct {v2}, Lcom/bwx/bequick/renderers/LinkSettingRenderer;-><init>()V

    iput-object v2, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mBaseRenderer:Lcom/bwx/bequick/renderers/LinkSettingRenderer;

    .line 90
    .restart local v2    # "renderer":Lcom/bwx/bequick/renderers/LinkSettingRenderer;
    iget-object v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p1, v8, v5}, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->getView(Landroid/view/LayoutInflater;Lcom/bwx/bequick/fwk/Setting;Landroid/view/View;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 92
    iget v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    if-ne v4, v6, :cond_0

    iput v7, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    .line 94
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->updateView()V

    .line 106
    .end local v2    # "renderer":Lcom/bwx/bequick/renderers/LinkSettingRenderer;
    :goto_0
    iget v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 110
    iget-boolean v4, p1, Lcom/bwx/bequick/fwk/RangeSetting;->enabled:Z

    invoke-virtual {p2, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 111
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mSliderRenderer:Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;

    .line 97
    .local v2, "renderer":Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;
    if-nez v2, :cond_2

    .line 98
    new-instance v2, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;

    .end local v2    # "renderer":Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;
    invoke-direct {v2}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;-><init>()V

    iput-object v2, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mSliderRenderer:Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;

    .line 99
    .restart local v2    # "renderer":Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;
    iget-object v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p1, v8, v5}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->getView(Landroid/view/LayoutInflater;Lcom/bwx/bequick/fwk/Setting;Landroid/view/View;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 100
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 101
    iget v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    if-ne v4, v6, :cond_2

    iput v7, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    .line 103
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->updateView()V

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/LayoutInflater;Lcom/bwx/bequick/fwk/Setting;Landroid/view/View;Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "setting"    # Lcom/bwx/bequick/fwk/Setting;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 55
    iput-object v5, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mSliderRenderer:Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;

    .line 56
    iput-object v5, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mBaseRenderer:Lcom/bwx/bequick/renderers/LinkSettingRenderer;

    .line 57
    const/4 v4, -0x1

    iput v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    .line 59
    iput-object p1, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mContext:Landroid/content/Context;

    move-object v4, p2

    .line 61
    check-cast v4, Lcom/bwx/bequick/fwk/RangeSetting;

    iput-object v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    move-object v0, p2

    .line 62
    check-cast v0, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 64
    .local v0, "rangeSetting":Lcom/bwx/bequick/fwk/RangeSetting;
    const v4, 0x7f030013

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 66
    .local v3, "view":Landroid/widget/LinearLayout;
    const v4, 0x7f09001e

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 67
    .local v1, "switcher":Landroid/widget/ViewSwitcher;
    iget-object v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mContext:Landroid/content/Context;

    const v5, 0x7f040001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 68
    iget-object v4, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f040000

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 69
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ViewSwitcher;->setAnimateFirstView(Z)V

    .line 71
    const v4, 0x7f09001b

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mToggle:Landroid/widget/ToggleButton;

    .line 72
    .local v2, "toggle":Landroid/widget/ToggleButton;
    invoke-virtual {v2, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0, v0, v2}, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->updateView(Lcom/bwx/bequick/fwk/RangeSetting;Landroid/widget/ToggleButton;)V

    .line 77
    return-object v3
.end method

.method public notifySettingUpdated()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    iget-object v1, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mToggle:Landroid/widget/ToggleButton;

    invoke-direct {p0, v0, v1}, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->updateView(Lcom/bwx/bequick/fwk/RangeSetting;Landroid/widget/ToggleButton;)V

    .line 115
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget v3, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    xor-int/lit8 v3, v3, -0x1

    and-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mChildView:I

    .line 121
    iget-object v2, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mToggle:Landroid/widget/ToggleButton;

    .line 122
    .local v2, "toggle":Landroid/widget/ToggleButton;
    iget-object v1, p0, Lcom/bwx/bequick/renderers/SwitchableSliderRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    .line 123
    .local v1, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 124
    .local v0, "checked":Z
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->toggle()V

    .line 126
    invoke-virtual {v1, v0}, Lcom/bwx/bequick/fwk/RangeSetting;->notifySwitchClicked(Z)V

    .line 127
    return-void
.end method

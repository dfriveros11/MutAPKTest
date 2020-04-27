.class public Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;
.super Ljava/lang/Object;
.source "MinMaxSliderSettingRenderer.java"

# interfaces
.implements Lcom/bwx/bequick/fwk/SettingRenderer;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescr:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMaxButton:Landroid/widget/ImageButton;

.field private mMinButton:Landroid/widget/ImageButton;

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

.field private mSlider:Landroid/widget/SeekBar;

.field private mView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updatePreviewText(Lcom/bwx/bequick/fwk/RangeSetting;)V
    .locals 7
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/RangeSetting;

    .prologue
    .line 140
    iget-object v2, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mPreviewText:Landroid/widget/TextView;

    .line 141
    .local v2, "preview":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 142
    iget v1, p1, Lcom/bwx/bequick/fwk/RangeSetting;->min:I

    .line 143
    .local v1, "min":I
    iget v0, p1, Lcom/bwx/bequick/fwk/RangeSetting;->max:I

    .line 144
    .local v0, "max":I
    iget v3, p1, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 145
    .local v3, "progress":I
    const/16 v5, 0x64

    if-ne v0, v5, :cond_0

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    sub-int v4, v0, v1

    .line 148
    .local v4, "range":I
    mul-int/lit8 v5, v3, 0x64

    div-int v3, v5, v4

    .line 150
    .end local v4    # "range":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v3    # "progress":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/LayoutInflater;Lcom/bwx/bequick/fwk/Setting;Landroid/view/View;Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "setting"    # Lcom/bwx/bequick/fwk/Setting;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iget-object v5, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mView:Landroid/widget/LinearLayout;

    .line 84
    :goto_0
    return-object v4

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p4, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mContext:Landroid/content/Context;

    move-object v2, p2

    .line 58
    check-cast v2, Lcom/bwx/bequick/fwk/RangeSetting;

    .line 59
    .local v2, "set":Lcom/bwx/bequick/fwk/RangeSetting;
    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mView:Landroid/widget/LinearLayout;

    .line 62
    .local v4, "view":Landroid/widget/LinearLayout;
    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSlider:Landroid/widget/SeekBar;

    .line 63
    .local v3, "slider":Landroid/widget/SeekBar;
    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mDescr:Landroid/widget/TextView;

    .line 64
    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 65
    .local v1, "minButton":Landroid/widget/ImageButton;
    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 68
    .local v0, "maxButton":Landroid/widget/ImageButton;
    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 69
    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget v5, v2, Lcom/bwx/bequick/fwk/RangeSetting;->minIconId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 75
    iget v5, v2, Lcom/bwx/bequick/fwk/RangeSetting;->maxIconId:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 77
    iput-object v1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mMinButton:Landroid/widget/ImageButton;

    .line 78
    iput-object v0, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mMaxButton:Landroid/widget/ImageButton;

    .line 79
    iput-object v2, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    .line 82
    invoke-virtual {p0}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->updateView()V

    goto :goto_0
.end method

.method public notifySettingUpdated()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->updateView()V

    .line 106
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    .line 92
    .local v0, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    iget-object v1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mMinButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->min:I

    iput v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 94
    iget-object v1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSlider:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 99
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->updatePreviewText(Lcom/bwx/bequick/fwk/RangeSetting;)V

    .line 100
    iget v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/fwk/RangeSetting;->notifySettingValueChanged(I)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/fwk/RangeSetting;->notifyButtonClicked(I)V

    .line 102
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mMaxButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->max:I

    iput v1, v0, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    .line 97
    iget-object v1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSlider:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 133
    if-eqz p3, :cond_0

    .line 134
    iget-object v0, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    invoke-virtual {v0, p2}, Lcom/bwx/bequick/fwk/RangeSetting;->notifySettingValueChanged(I)V

    .line 135
    iget-object v0, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    invoke-direct {p0, v0}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->updatePreviewText(Lcom/bwx/bequick/fwk/RangeSetting;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 12
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 155
    iget-object v4, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mView:Landroid/widget/LinearLayout;

    .line 158
    .local v4, "view":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 159
    .local v1, "popup":Landroid/widget/PopupWindow;
    if-nez v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mContext:Landroid/content/Context;

    .line 162
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mPreviewText:Landroid/widget/TextView;

    .line 163
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 164
    .local v2, "scale":F
    new-instance v1, Landroid/widget/PopupWindow;

    .end local v1    # "popup":Landroid/widget/PopupWindow;
    const/high16 v7, 0x428c0000    # 70.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    const/high16 v8, 0x42600000    # 56.0f

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-direct {v1, v3, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 165
    .restart local v1    # "popup":Landroid/widget/PopupWindow;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x1080000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 167
    iput-object v1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 169
    iget-object v7, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    invoke-direct {p0, v7}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->updatePreviewText(Lcom/bwx/bequick/fwk/RangeSetting;)V

    .line 172
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "scale":F
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v5, v7, 0x2

    .line 173
    .local v5, "xoff":I
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3ff3333333333333L    # 1.2

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int v6, v7, v8

    .line 174
    .local v6, "yoff":I
    neg-int v7, v6

    invoke-virtual {v1, v4, v5, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 175
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 179
    iget-object v0, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/fwk/RangeSetting;->notifyButtonClicked(I)V

    .line 180
    return-void
.end method

.method updateView()V
    .locals 5

    .prologue
    .line 109
    iget-object v3, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSlider:Landroid/widget/SeekBar;

    .line 110
    .local v3, "slider":Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/RangeSetting;

    .line 120
    .local v2, "setting":Lcom/bwx/bequick/fwk/RangeSetting;
    iget v4, v2, Lcom/bwx/bequick/fwk/RangeSetting;->max:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 121
    iget v4, v2, Lcom/bwx/bequick/fwk/RangeSetting;->value:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    iget-object v0, v2, Lcom/bwx/bequick/fwk/RangeSetting;->descr:Ljava/lang/String;

    .line 125
    .local v0, "descr":Ljava/lang/String;
    iget-object v1, p0, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->mDescr:Landroid/widget/TextView;

    .line 126
    .local v1, "descrView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    if-nez v0, :cond_0

    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-direct {p0, v2}, Lcom/bwx/bequick/renderers/MinMaxSliderSettingRenderer;->updatePreviewText(Lcom/bwx/bequick/fwk/RangeSetting;)V

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

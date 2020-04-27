.class public Lcom/bwx/bequick/renderers/ToggleSettingRenderer;
.super Ljava/lang/Object;
.source "ToggleSettingRenderer.java"

# interfaces
.implements Lcom/bwx/bequick/fwk/SettingRenderer;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDescr:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mSetting:Lcom/bwx/bequick/fwk/Setting;

.field private mTitle:Landroid/widget/TextView;

.field private mToggle:Landroid/widget/ToggleButton;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 97
    .local v0, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mTitle:Landroid/widget/TextView;

    iget v3, v0, Lcom/bwx/bequick/fwk/Setting;->titleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mDescr:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mIcon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/bwx/bequick/fwk/Setting;->iconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v1, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mToggle:Landroid/widget/ToggleButton;

    .line 102
    .local v1, "toggle":Landroid/widget/ToggleButton;
    iget-boolean v2, v0, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 103
    iget-boolean v2, v0, Lcom/bwx/bequick/fwk/Setting;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 104
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/LayoutInflater;Lcom/bwx/bequick/fwk/Setting;Landroid/view/View;Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "setting"    # Lcom/bwx/bequick/fwk/Setting;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mView:Landroid/view/View;

    .line 76
    :goto_0
    return-object v2

    .line 52
    :cond_0
    const v2, 0x7f030012

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mView:Landroid/view/View;

    .line 55
    const v2, 0x7f090010

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mTitle:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f090014

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mDescr:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f09001c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mToggle:Landroid/widget/ToggleButton;

    .line 58
    const v2, 0x7f09000f

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mIcon:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f090015

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 61
    .local v0, "button":Landroid/widget/ImageButton;
    iget-boolean v2, p2, Lcom/bwx/bequick/fwk/Setting;->hasPopup:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 62
    const v2, 0x7f090013

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    .local v1, "clicableLeft":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, p2, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    if-nez v2, :cond_2

    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    iput-object p2, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 74
    invoke-direct {p0}, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->updateView()V

    move-object v2, p3

    .line 76
    goto :goto_0

    .line 61
    .end local v1    # "clicableLeft":Landroid/widget/LinearLayout;
    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    .restart local v1    # "clicableLeft":Landroid/widget/LinearLayout;
    :cond_2
    move-object v2, p0

    .line 68
    goto :goto_2
.end method

.method public notifySettingUpdated()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->updateView()V

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    instance-of v1, p1, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 82
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->toggle()V

    .line 83
    iget-object v1, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    invoke-virtual {v1, v0}, Lcom/bwx/bequick/fwk/Setting;->notifySwitchClicked(Z)V

    .line 89
    .end local v0    # "isChecked":Z
    :goto_0
    return-void

    .line 84
    :cond_0
    instance-of v1, p1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/fwk/Setting;->notifyButtonClicked(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/fwk/Setting;->notifyButtonClicked(I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bwx/bequick/renderers/ToggleSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/fwk/Setting;->startPrefsActivity(Landroid/content/Context;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

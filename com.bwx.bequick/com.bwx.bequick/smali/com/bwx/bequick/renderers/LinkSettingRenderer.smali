.class public Lcom/bwx/bequick/renderers/LinkSettingRenderer;
.super Ljava/lang/Object;
.source "LinkSettingRenderer.java"

# interfaces
.implements Lcom/bwx/bequick/fwk/SettingRenderer;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDescr:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mSetting:Lcom/bwx/bequick/fwk/Setting;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/LayoutInflater;Lcom/bwx/bequick/fwk/Setting;Landroid/view/View;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "setting"    # Lcom/bwx/bequick/fwk/Setting;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v1, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mView:Landroid/view/View;

    .line 63
    :goto_0
    return-object v1

    .line 45
    :cond_0
    const v1, 0x7f030010

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mView:Landroid/view/View;

    .line 48
    const v1, 0x7f090010

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mTitle:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f090014

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mDescr:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f09000f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mIcon:Landroid/widget/ImageView;

    .line 51
    const v1, 0x7f090013

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    .local v0, "clicableLeft":Landroid/widget/LinearLayout;
    iput-object p2, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p2, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->updateView()V

    move-object v1, p3

    .line 63
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 58
    goto :goto_1
.end method

.method public notifySettingUpdated()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->updateView()V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/fwk/Setting;->notifyButtonClicked(I)V

    .line 68
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/fwk/Setting;->startPrefsActivity(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method updateView()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 76
    .local v0, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget-object v1, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mDescr:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mTitle:Landroid/widget/TextView;

    iget v2, v0, Lcom/bwx/bequick/fwk/Setting;->titleId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v1, p0, Lcom/bwx/bequick/renderers/LinkSettingRenderer;->mIcon:Landroid/widget/ImageView;

    iget v2, v0, Lcom/bwx/bequick/fwk/Setting;->iconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    return-void
.end method

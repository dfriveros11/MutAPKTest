.class public Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "ScreenTimeoutSettingHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mTimeout:I

.field private mValues:Lcom/bwx/bequick/handlers/ScreenTimeoutValues;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 47
    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 105
    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 139
    :goto_0
    return-object v6

    .line 108
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v6, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 109
    .local v6, "dialog":Landroid/app/Dialog;
    invoke-virtual {v6, v12}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual {v6, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 111
    const v1, 0x7f030019

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v11, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mValues:Lcom/bwx/bequick/handlers/ScreenTimeoutValues;

    .line 118
    .local v11, "vls":Lcom/bwx/bequick/handlers/ScreenTimeoutValues;
    invoke-virtual {v11}, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->getNumberOfValues()I

    move-result v8

    .line 119
    .local v8, "numberOfValues":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 120
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v9, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    invoke-virtual {v11, v7}, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->getDescriptionByIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 126
    .end local v9    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 127
    .restart local v9    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    const/4 v3, -0x1

    invoke-virtual {v11, v3}, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->getDescriptionByIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v3, 0x7f030014

    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "text"

    aput-object v5, v4, v13

    new-array v5, v12, [I

    const v12, 0x7f090002

    aput v12, v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 135
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    const v1, 0x7f090022

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 136
    .local v10, "view":Landroid/widget/ListView;
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private getCurrentTimeout()I
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v0}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setDescription(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "descr"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 90
    .local v0, "setting":Lcom/bwx/bequick/fwk/Setting;
    iput-object p1, v0, Lcom/bwx/bequick/fwk/Setting;->descr:Ljava/lang/String;

    .line 91
    iput-boolean p2, v0, Lcom/bwx/bequick/fwk/Setting;->checked:Z

    .line 92
    invoke-virtual {v0}, Lcom/bwx/bequick/fwk/Setting;->updateView()V

    .line 93
    return-void
.end method

.method private setTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v0}, Lcom/bwx/bequick/MainSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    return-void
.end method

.method private updateUIByValue(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const v3, 0xea60

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 70
    const/4 v0, 0x1

    .line 71
    .local v0, "checked":Z
    if-gtz p1, :cond_0

    .line 73
    iget-object v3, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v4, 0x7f06002a

    invoke-virtual {v3, v4}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "descr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 84
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->setDescription(Ljava/lang/String;Z)V

    .line 86
    return-void

    .line 75
    .end local v1    # "descr":Ljava/lang/String;
    :cond_0
    if-ge p1, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v4, 0x7f060027

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit16 v6, p1, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "descr":Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v1    # "descr":Ljava/lang/String;
    :cond_1
    div-int v2, p1, v3

    .line 80
    .local v2, "minutes":I
    if-ne v2, v5, :cond_2

    iget-object v3, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v4, 0x7f060028

    new-array v5, v5, [Ljava/lang/Object;

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1    # "descr":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 81
    .end local v1    # "descr":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    const v4, 0x7f060029

    new-array v5, v5, [Ljava/lang/Object;

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 52
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->getCurrentTimeout()I

    move-result v0

    iput v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mTimeout:I

    .line 53
    .local v0, "timeout":I
    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->updateUIByValue(I)V

    .line 57
    if-gez v0, :cond_0

    const v1, 0xea60

    iput v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mTimeout:I

    .line 58
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 66
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mValues:Lcom/bwx/bequick/handlers/ScreenTimeoutValues;

    invoke-virtual {v0}, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->getNumberOfValues()I

    move-result v0

    if-lt p3, v0, :cond_0

    const/4 p3, -0x1

    .line 185
    :cond_0
    invoke-virtual {p0, p3}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->onTimeoutSelected(I)V

    .line 186
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 187
    return-void
.end method

.method public onSelected(I)V
    .locals 2
    .param p1, "buttonIndex"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mValues:Lcom/bwx/bequick/handlers/ScreenTimeoutValues;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;

    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {v0, v1}, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mValues:Lcom/bwx/bequick/handlers/ScreenTimeoutValues;

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mDialog:Landroid/app/Dialog;

    .line 100
    iget-object v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 101
    return-void
.end method

.method public onSwitched(Z)V
    .locals 2
    .param p1, "isSwitched"    # Z

    .prologue
    .line 161
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->getCurrentTimeout()I

    move-result v1

    iput v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mTimeout:I

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mTimeout:I

    .line 163
    .local v0, "timeout":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->setTimeout(I)V

    .line 164
    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->updateUIByValue(I)V

    .line 167
    return-void

    .line 162
    .end local v0    # "timeout":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method onTimeoutSelected(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 144
    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mValues:Lcom/bwx/bequick/handlers/ScreenTimeoutValues;

    invoke-virtual {v1, p1}, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->getDescriptionByIndex(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->setDescription(Ljava/lang/String;Z)V

    .line 147
    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->mValues:Lcom/bwx/bequick/handlers/ScreenTimeoutValues;

    invoke-virtual {v1, p1}, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->getTimeoutByIndex(I)I

    move-result v0

    .line 154
    .local v0, "timeout":I
    invoke-direct {p0, v0}, Lcom/bwx/bequick/handlers/ScreenTimeoutSettingHandler;->setTimeout(I)V

    .line 156
    return-void

    .line 144
    .end local v0    # "timeout":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 172
    return-void
.end method

.class public Lcom/bwx/bequick/ListSettingsLayout;
.super Ljava/lang/Object;
.source "ListSettingsLayout.java"


# instance fields
.field private final mApp:Lcom/bwx/bequick/SettingsApplication;

.field private final mList:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bwx/bequick/SettingsApplication;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "app"    # Lcom/bwx/bequick/SettingsApplication;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0x7f090021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bwx/bequick/ListSettingsLayout;->mList:Landroid/widget/LinearLayout;

    .line 20
    iput-object p2, p0, Lcom/bwx/bequick/ListSettingsLayout;->mApp:Lcom/bwx/bequick/SettingsApplication;

    .line 21
    return-void
.end method

.method private getSettingsCount(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bwx/bequick/fwk/Setting;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bwx/bequick/fwk/Setting;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 97
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 98
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bwx/bequick/fwk/Setting;

    iget v0, v3, Lcom/bwx/bequick/fwk/Setting;->id:I

    .line 99
    .local v0, "id":I
    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 101
    .end local v0    # "id":I
    .end local v2    # "size":I
    :cond_0
    return v2

    .line 97
    .restart local v0    # "id":I
    .restart local v2    # "size":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private safelyRemoveViewFromParent(Landroid/widget/LinearLayout;ILandroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "layoutIndex"    # I
    .param p3, "settingView"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 88
    .local v1, "parent":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 90
    .local v0, "delimiter":Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 93
    .end local v0    # "delimiter":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public updateLayout(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v12, 0x0

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 26
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v13, p0, Lcom/bwx/bequick/ListSettingsLayout;->mApp:Lcom/bwx/bequick/SettingsApplication;

    invoke-virtual {v13}, Lcom/bwx/bequick/SettingsApplication;->getSettings()Ljava/util/ArrayList;

    move-result-object v11

    .line 27
    .local v11, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bwx/bequick/fwk/Setting;>;"
    invoke-direct {p0, v11}, Lcom/bwx/bequick/ListSettingsLayout;->getSettingsCount(Ljava/util/ArrayList;)I

    move-result v8

    .line 28
    .local v8, "settingCount":I
    iget-object v3, p0, Lcom/bwx/bequick/ListSettingsLayout;->mList:Landroid/widget/LinearLayout;

    .line 33
    .local v3, "layout":Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    .local v9, "settingIndex":I
    :goto_0
    if-ge v9, v8, :cond_3

    .line 35
    shl-int/lit8 v5, v9, 0x1

    .line 36
    .local v5, "layoutIndex":I
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v13, v5, :cond_1

    move-object v6, v12

    .line 38
    .local v6, "layoutView":Landroid/view/View;
    :goto_1
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bwx/bequick/fwk/Setting;

    .line 39
    .local v7, "setting":Lcom/bwx/bequick/fwk/Setting;
    invoke-virtual {v7}, Lcom/bwx/bequick/fwk/Setting;->getAssignedRenderer()Lcom/bwx/bequick/fwk/SettingRenderer;

    move-result-object v13

    invoke-interface {v13, v2, v7, v12, p1}, Lcom/bwx/bequick/fwk/SettingRenderer;->getView(Landroid/view/LayoutInflater;Lcom/bwx/bequick/fwk/Setting;Landroid/view/View;Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    .line 41
    .local v10, "settingView":Landroid/view/View;
    if-nez v6, :cond_2

    .line 44
    invoke-direct {p0, v3, v5, v10}, Lcom/bwx/bequick/ListSettingsLayout;->safelyRemoveViewFromParent(Landroid/widget/LinearLayout;ILandroid/view/View;)V

    .line 47
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "delimiter":Landroid/widget/ImageView;
    const v13, 0x1080015

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    .end local v0    # "delimiter":Landroid/widget/ImageView;
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 36
    .end local v6    # "layoutView":Landroid/view/View;
    .end local v7    # "setting":Lcom/bwx/bequick/fwk/Setting;
    .end local v10    # "settingView":Landroid/view/View;
    :cond_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 55
    .restart local v6    # "layoutView":Landroid/view/View;
    .restart local v7    # "setting":Lcom/bwx/bequick/fwk/Setting;
    .restart local v10    # "settingView":Landroid/view/View;
    :cond_2
    if-eq v6, v10, :cond_0

    .line 59
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 62
    invoke-direct {p0, v3, v5, v10}, Lcom/bwx/bequick/ListSettingsLayout;->safelyRemoveViewFromParent(Landroid/widget/LinearLayout;ILandroid/view/View;)V

    .line 64
    invoke-virtual {v3, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 65
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 72
    .end local v5    # "layoutIndex":I
    .end local v6    # "layoutView":Landroid/view/View;
    .end local v7    # "setting":Lcom/bwx/bequick/fwk/Setting;
    .end local v10    # "settingView":Landroid/view/View;
    :cond_3
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 73
    .local v4, "layoutCount":I
    shl-int/lit8 v1, v8, 0x1

    .line 74
    .local v1, "expectedCount":I
    if-le v4, v1, :cond_4

    .line 75
    sub-int v12, v4, v1

    invoke-virtual {v3, v1, v12}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 77
    :cond_4
    return-void
.end method

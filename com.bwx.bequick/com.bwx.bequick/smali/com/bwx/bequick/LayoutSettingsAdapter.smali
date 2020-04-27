.class public Lcom/bwx/bequick/LayoutSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LayoutSettingsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FILL_PARRENT:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mScale:F

.field private mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bwx/bequick/fwk/Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/bwx/bequick/LayoutSettingsAdapter;->FILL_PARRENT:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bwx/bequick/fwk/Setting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bwx/bequick/fwk/Setting;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p2, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mScale:F

    .line 50
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 51
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 52
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bwx/bequick/fwk/Setting;

    iput v0, v2, Lcom/bwx/bequick/fwk/Setting;->index:I

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/fwk/Setting;

    iget v0, v0, Lcom/bwx/bequick/fwk/Setting;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bwx/bequick/fwk/Setting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 94
    if-nez p2, :cond_0

    .line 96
    iget-object v8, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03000b

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 99
    check-cast v3, Landroid/widget/LinearLayout;

    .line 100
    .local v3, "placeholder":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bwx/bequick/fwk/Setting;

    .line 101
    .local v4, "setting":Lcom/bwx/bequick/fwk/Setting;
    iget v1, v4, Lcom/bwx/bequick/fwk/Setting;->id:I

    .line 103
    .local v1, "id":I
    const/16 v8, 0x64

    if-eq v1, v8, :cond_1

    const/16 v8, 0x65

    if-ne v1, v8, :cond_3

    .line 106
    :cond_1
    const v8, 0x7f09000c

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 107
    .local v6, "view":Landroid/view/View;
    if-nez v6, :cond_2

    .line 108
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 109
    iget-object v8, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03000c

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 110
    sget-object v8, Lcom/bwx/bequick/LayoutSettingsAdapter;->FILL_PARRENT:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :cond_2
    const v8, 0x7f09000d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 114
    .local v5, "text":Landroid/widget/TextView;
    iget v8, v4, Lcom/bwx/bequick/fwk/Setting;->titleId:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 116
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 148
    .end local v5    # "text":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 150
    return-object p2

    .line 117
    :cond_3
    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 120
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 121
    const/high16 v8, 0x42680000    # 58.0f

    iget v9, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_0

    .line 125
    :cond_4
    const v8, 0x7f09000e

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 126
    .restart local v6    # "view":Landroid/view/View;
    if-nez v6, :cond_5

    .line 127
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 128
    iget-object v8, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03000d

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 129
    sget-object v8, Lcom/bwx/bequick/LayoutSettingsAdapter;->FILL_PARRENT:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_5
    const v8, 0x7f09000f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 134
    .local v2, "image":Landroid/widget/ImageView;
    iget v8, v4, Lcom/bwx/bequick/fwk/Setting;->iconId:I

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    const v8, 0x7f090010

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 137
    .restart local v5    # "text":Landroid/widget/TextView;
    iget v8, v4, Lcom/bwx/bequick/fwk/Setting;->titleId:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 139
    const v8, 0x7f090011

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 140
    .local v0, "button":Landroid/widget/ImageButton;
    iget-object v8, v4, Lcom/bwx/bequick/fwk/Setting;->prefs:Ljava/lang/Class;

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    .line 141
    .local v7, "visible":Z
    :goto_1
    if-eqz v7, :cond_8

    move v8, v9

    :goto_2
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 142
    if-eqz v7, :cond_6

    .line 143
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_6
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_0

    .end local v7    # "visible":Z
    :cond_7
    move v7, v9

    .line 140
    goto :goto_1

    .line 141
    .restart local v7    # "visible":Z
    :cond_8
    const/16 v8, 0x8

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/fwk/Setting;

    iget v0, v0, Lcom/bwx/bequick/fwk/Setting;->id:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInVisibleInList(Lcom/bwx/bequick/fwk/Setting;)Z
    .locals 6
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    const/4 v5, 0x0

    .line 82
    iget-object v2, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    .line 83
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bwx/bequick/fwk/Setting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 84
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bwx/bequick/fwk/Setting;

    iget v1, v4, Lcom/bwx/bequick/fwk/Setting;->id:I

    .line 86
    .local v1, "id":I
    iget v4, p1, Lcom/bwx/bequick/fwk/Setting;->id:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    .line 89
    .end local v1    # "id":I
    :goto_1
    return v4

    .line 87
    .restart local v1    # "id":I
    :cond_0
    const/16 v4, 0x65

    if-ne v1, v4, :cond_1

    move v4, v5

    goto :goto_1

    .line 84
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "id":I
    :cond_2
    move v4, v5

    .line 89
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/fwk/Setting;

    .line 159
    .local v0, "setting":Lcom/bwx/bequick/fwk/Setting;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/fwk/Setting;->startPrefsActivity(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method public setItem(ILcom/bwx/bequick/fwk/Setting;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 73
    iput p1, p2, Lcom/bwx/bequick/fwk/Setting;->index:I

    .line 74
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.class public Lcom/bwx/bequick/SortableSettingsListView;
.super Landroid/widget/ListView;
.source "SortableSettingsListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/SortableSettingsListView$Dragger;
    }
.end annotation


# static fields
.field private static final SETTING_PLACEHOLDER:Lcom/bwx/bequick/fwk/Setting;


# instance fields
.field private mAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

.field private mBigStep:I

.field private mCurrentPos:I

.field private mDragger:Lcom/bwx/bequick/SortableSettingsListView$Dragger;

.field private mSmallStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/bwx/bequick/fwk/Setting;

    const/4 v1, -0x1

    const v2, 0x7f060001

    invoke-direct {v0, v1, v2}, Lcom/bwx/bequick/fwk/Setting;-><init>(II)V

    sput-object v0, Lcom/bwx/bequick/SortableSettingsListView;->SETTING_PLACEHOLDER:Lcom/bwx/bequick/fwk/Setting;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 146
    .local v0, "scale":F
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/bwx/bequick/SortableSettingsListView;->mBigStep:I

    .line 147
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/bwx/bequick/SortableSettingsListView;->mSmallStep:I

    .line 148
    return-void
.end method

.method private swapSettings(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    const/4 v5, 0x0

    .line 199
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView;->mAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    .line 200
    .local v0, "adapter":Lcom/bwx/bequick/LayoutSettingsAdapter;
    iget v1, p0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    .line 203
    .local v1, "cur":I
    invoke-virtual {v0, p1}, Lcom/bwx/bequick/LayoutSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bwx/bequick/fwk/Setting;

    .line 206
    .local v3, "setting":Lcom/bwx/bequick/fwk/Setting;
    sget-object v4, Lcom/bwx/bequick/SortableSettingsListView;->SETTING_PLACEHOLDER:Lcom/bwx/bequick/fwk/Setting;

    invoke-virtual {v0, p1, v4}, Lcom/bwx/bequick/LayoutSettingsAdapter;->setItem(ILcom/bwx/bequick/fwk/Setting;)V

    .line 207
    invoke-virtual {v0, v1, v3}, Lcom/bwx/bequick/LayoutSettingsAdapter;->setItem(ILcom/bwx/bequick/fwk/Setting;)V

    .line 209
    invoke-virtual {p0}, Lcom/bwx/bequick/SortableSettingsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 212
    .local v2, "firstPos":I
    sub-int v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/bwx/bequick/SortableSettingsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, p1, v4, v5}, Lcom/bwx/bequick/LayoutSettingsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 213
    sub-int v4, v1, v2

    invoke-virtual {p0, v4}, Lcom/bwx/bequick/SortableSettingsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/bwx/bequick/LayoutSettingsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 215
    iput p1, p0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    .line 216
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 190
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_0
    return v8

    .line 156
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 157
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 158
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/bwx/bequick/SortableSettingsListView;->pointToPosition(II)I

    move-result v3

    .line 159
    .local v3, "pos":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/bwx/bequick/SortableSettingsListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/bwx/bequick/SortableSettingsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 163
    .local v2, "item":Landroid/view/ViewGroup;
    const v8, 0x7f090012

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, "draggerIcon":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/lit8 v8, v8, -0x8

    if-lt v6, v8, :cond_0

    .line 167
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView;->mAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    .line 168
    .local v0, "adapter":Lcom/bwx/bequick/LayoutSettingsAdapter;
    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/bwx/bequick/SortableSettingsListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .end local v0    # "adapter":Lcom/bwx/bequick/LayoutSettingsAdapter;
    check-cast v0, Lcom/bwx/bequick/LayoutSettingsAdapter;

    .line 170
    .restart local v0    # "adapter":Lcom/bwx/bequick/LayoutSettingsAdapter;
    iput-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView;->mAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    .line 174
    :cond_1
    invoke-virtual {v0, v3}, Lcom/bwx/bequick/LayoutSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bwx/bequick/fwk/Setting;

    .line 175
    .local v4, "setting":Lcom/bwx/bequick/fwk/Setting;
    new-instance v8, Lcom/bwx/bequick/SortableSettingsListView$Dragger;

    invoke-virtual {p0}, Lcom/bwx/bequick/SortableSettingsListView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v4, v2, p1}, Lcom/bwx/bequick/SortableSettingsListView$Dragger;-><init>(Landroid/content/Context;Lcom/bwx/bequick/fwk/Setting;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    iput-object v8, p0, Lcom/bwx/bequick/SortableSettingsListView;->mDragger:Lcom/bwx/bequick/SortableSettingsListView$Dragger;

    .line 178
    sget-object v8, Lcom/bwx/bequick/SortableSettingsListView;->SETTING_PLACEHOLDER:Lcom/bwx/bequick/fwk/Setting;

    invoke-virtual {v0, v3, v8}, Lcom/bwx/bequick/LayoutSettingsAdapter;->setItem(ILcom/bwx/bequick/fwk/Setting;)V

    .line 179
    iput v3, p0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    .line 182
    const/4 v8, 0x0

    invoke-virtual {v0, v3, v2, v8}, Lcom/bwx/bequick/LayoutSettingsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Lcom/bwx/bequick/SortableSettingsListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 186
    .local v5, "vibrator":Landroid/os/Vibrator;
    if-eqz v5, :cond_2

    const-wide/16 v8, 0x1e

    invoke-virtual {v5, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 188
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bwx/bequick/SortableSettingsListView;->mDragger:Lcom/bwx/bequick/SortableSettingsListView$Dragger;

    .line 222
    .local v5, "dragger":Lcom/bwx/bequick/SortableSettingsListView$Dragger;
    if-eqz v5, :cond_a

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 226
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    const/16 v16, 0x1

    .line 313
    .end local v2    # "action":I
    :goto_1
    return v16

    .line 231
    .restart local v2    # "action":I
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move/from16 v0, v16

    float-to-int v14, v0

    .line 232
    .local v14, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-int v15, v0

    .line 235
    .local v15, "y":I
    invoke-virtual {v5, v14, v15}, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->move(II)V

    .line 238
    invoke-virtual {v5, v15}, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->getMiddleY(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/bwx/bequick/SortableSettingsListView;->pointToPosition(II)I

    move-result v7

    .line 239
    .local v7, "pos":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v7, v0, :cond_0

    .line 242
    if-nez v7, :cond_1

    const/4 v7, 0x1

    .line 244
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v7, v0, :cond_3

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    move/from16 v16, v0

    sub-int v16, v7, v16

    if-lez v16, :cond_5

    const/4 v11, 0x1

    .line 247
    .local v11, "step":I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    .line 249
    .local v12, "tmpPos":I
    :cond_2
    add-int/2addr v12, v11

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/bwx/bequick/SortableSettingsListView;->swapSettings(I)V

    .line 252
    if-ne v12, v7, :cond_2

    .line 258
    .end local v11    # "step":I
    .end local v12    # "tmpPos":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/bwx/bequick/SortableSettingsListView;->getHeight()I

    move-result v6

    .line 259
    .local v6, "height":I
    int-to-float v0, v6

    move/from16 v16, v0

    const/high16 v17, 0x40600000    # 3.5f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v3, v0

    .line 260
    .local v3, "border":I
    div-int/lit8 v4, v3, 0x2

    .line 261
    .local v4, "border2":I
    const/4 v10, 0x0

    .line 262
    .local v10, "speed":I
    if-ge v15, v3, :cond_7

    .line 264
    if-ge v15, v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mBigStep:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v10, v0

    .line 270
    :cond_4
    :goto_3
    if-eqz v10, :cond_0

    .line 271
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/bwx/bequick/SortableSettingsListView;->pointToPosition(II)I

    move-result v8

    .line 272
    .local v8, "ref":I
    invoke-virtual/range {p0 .. p0}, Lcom/bwx/bequick/SortableSettingsListView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v16, v8, v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/SortableSettingsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 273
    .local v13, "v":Landroid/view/View;
    if-eqz v13, :cond_0

    .line 274
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v7

    .line 275
    sub-int v16, v7, v10

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lcom/bwx/bequick/SortableSettingsListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 246
    .end local v3    # "border":I
    .end local v4    # "border2":I
    .end local v6    # "height":I
    .end local v8    # "ref":I
    .end local v10    # "speed":I
    .end local v13    # "v":Landroid/view/View;
    :cond_5
    const/4 v11, -0x1

    goto :goto_2

    .line 264
    .restart local v3    # "border":I
    .restart local v4    # "border2":I
    .restart local v6    # "height":I
    .restart local v10    # "speed":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mSmallStep:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v10, v0

    goto :goto_3

    .line 265
    :cond_7
    sub-int v16, v6, v3

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 267
    sub-int v16, v6, v4

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/bwx/bequick/SortableSettingsListView;->mBigStep:I

    :goto_4
    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v10, v0, Lcom/bwx/bequick/SortableSettingsListView;->mSmallStep:I

    goto :goto_4

    .line 285
    .end local v3    # "border":I
    .end local v4    # "border2":I
    .end local v6    # "height":I
    .end local v7    # "pos":I
    .end local v10    # "speed":I
    .end local v14    # "x":I
    .end local v15    # "y":I
    :pswitch_1
    invoke-virtual {v5}, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->getSetting()Lcom/bwx/bequick/fwk/Setting;

    move-result-object v9

    .line 288
    .local v9, "setting":Lcom/bwx/bequick/fwk/Setting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/bwx/bequick/LayoutSettingsAdapter;->setItem(ILcom/bwx/bequick/fwk/Setting;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/bwx/bequick/SortableSettingsListView;->getFirstVisiblePosition()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/SortableSettingsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/bwx/bequick/LayoutSettingsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 294
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bwx/bequick/SortableSettingsListView;->mCurrentPos:I

    .line 297
    invoke-virtual {v5}, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->cleanup()V

    .line 298
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bwx/bequick/SortableSettingsListView;->mDragger:Lcom/bwx/bequick/SortableSettingsListView$Dragger;

    .line 301
    sget v16, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    iget v0, v9, Lcom/bwx/bequick/fwk/Setting;->id:I

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    iget v0, v9, Lcom/bwx/bequick/fwk/Setting;->id:I

    move/from16 v16, v0

    const/16 v17, 0xf

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bwx/bequick/SortableSettingsListView;->mAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    move-object/from16 v16, v0

    .line 303
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/bwx/bequick/LayoutSettingsAdapter;->isInVisibleInList(Lcom/bwx/bequick/fwk/Setting;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/bwx/bequick/SortableSettingsListView;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f060081

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 313
    .end local v2    # "action":I
    .end local v9    # "setting":Lcom/bwx/bequick/fwk/Setting;
    :cond_a
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    goto/16 :goto_1

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

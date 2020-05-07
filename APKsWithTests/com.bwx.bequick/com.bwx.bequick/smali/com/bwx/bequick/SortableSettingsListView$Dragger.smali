.class Lcom/bwx/bequick/SortableSettingsListView$Dragger;
.super Ljava/lang/Object;
.source "SortableSettingsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/SortableSettingsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dragger"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCoordOffset:I

.field private final mDragPointOffset:I

.field private mImageView:Landroid/widget/ImageView;

.field private final mRowHeight:I

.field private final mSetting:Lcom/bwx/bequick/fwk/Setting;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bwx/bequick/fwk/Setting;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Lcom/bwx/bequick/fwk/Setting;
    .param p3, "item"    # Landroid/view/ViewGroup;
    .param p4, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 59
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 61
    .local v4, "y":I
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int v5, v4, v5

    iput v5, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mDragPointOffset:I

    .line 62
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mCoordOffset:I

    .line 63
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mRowHeight:I

    .line 67
    invoke-virtual {p3, v7}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 68
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 70
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iput-object v1, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mBitmap:Landroid/graphics/Bitmap;

    .line 74
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 76
    iget-object v3, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 77
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x30

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    const v5, 0x3f266666    # 0.65f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 79
    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 80
    iget v5, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mDragPointOffset:I

    sub-int v5, v4, v5

    iget v6, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mCoordOffset:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 82
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 83
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 84
    const/16 v5, 0x198

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    const/4 v5, -0x3

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 89
    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 91
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 93
    .local v0, "backGroundColor":I
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 94
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mWindowManager:Landroid/view/WindowManager;

    .line 98
    iget-object v5, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iput-object v2, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mImageView:Landroid/widget/ImageView;

    .line 101
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iput-object v2, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mImageView:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    iput-object v2, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    :cond_0
    return-void
.end method

.method getMiddleY(I)I
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 128
    iget v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mDragPointOffset:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mRowHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method getRowHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mRowHeight:I

    return v0
.end method

.method getSetting()Lcom/bwx/bequick/fwk/Setting;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    return-object v0
.end method

.method move(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mDragPointOffset:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 109
    iget-object v0, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bwx/bequick/SortableSettingsListView$Dragger;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method

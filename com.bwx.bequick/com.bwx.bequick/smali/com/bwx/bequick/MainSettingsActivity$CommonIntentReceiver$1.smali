.class Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;
.super Ljava/lang/Object;
.source "MainSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    iput-object p2, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v12, -0x1

    const/4 v13, 0x1

    .line 85
    const-string v10, "com.bwx.bequick.FLASHLIGHT_STATE"

    iget-object v11, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 86
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    iget-object v10, v10, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-static {v10}, Lcom/bwx/bequick/MainSettingsActivity;->access$000(Lcom/bwx/bequick/MainSettingsActivity;)V

    .line 138
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v11, "level"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 92
    .local v6, "rawlevel":I
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v11, "scale"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 95
    .local v7, "scale":I
    const/4 v3, 0x0

    .line 96
    .local v3, "level":I
    if-ltz v6, :cond_1

    if-lez v7, :cond_1

    .line 97
    mul-int/lit8 v10, v6, 0x64

    div-int v3, v10, v7

    .line 101
    :cond_1
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    iget-object v10, v10, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v10}, Lcom/bwx/bequick/MainSettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v8, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 105
    .local v8, "scaledDensity":F
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    invoke-static {v10}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->access$100(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "battery":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    invoke-static {v10}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->access$200(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;)Landroid/graphics/Paint;

    move-result-object v5

    .line 107
    .local v5, "paint":Landroid/graphics/Paint;
    if-nez v0, :cond_2

    .line 109
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    iget-object v11, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    iget-object v11, v11, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v11}, Lcom/bwx/bequick/MainSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02000d

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->access$102(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v10, v11}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->access$202(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    .line 111
    const/high16 v10, -0x1000000

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setFlags(I)V

    .line 113
    invoke-static {v13}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 115
    const/high16 v10, 0x41600000    # 14.0f

    mul-float/2addr v10, v8

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    const/high16 v11, 0x41900000    # 18.0f

    mul-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->access$302(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;F)F

    .line 122
    :cond_2
    const/16 v2, 0x8

    .line 123
    .local v2, "delta":I
    const/16 v10, 0x9

    if-le v3, v10, :cond_3

    .line 124
    add-int/lit8 v2, v2, -0x4

    .line 125
    :cond_3
    const/16 v10, 0x64

    if-ne v3, v10, :cond_4

    .line 126
    add-int/lit8 v2, v2, -0x5

    .line 127
    :cond_4
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    add-int/lit8 v11, v2, 0xa

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->access$402(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;F)F

    .line 129
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v10, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    invoke-static {v11}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->access$400(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;)F

    move-result v11

    iget-object v12, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    invoke-static {v12}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->access$300(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;)F

    move-result v12

    invoke-virtual {v1, v10, v11, v12, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    iget-object v10, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;->this$1:Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    iget-object v10, v10, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    const v11, 0x7f090006

    invoke-virtual {v10, v11}, Lcom/bwx/bequick/MainSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 135
    .local v9, "view":Landroid/widget/ImageButton;
    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

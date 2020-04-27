.class Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/MainSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommonIntentReceiver"
.end annotation


# instance fields
.field private mBattery:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/bwx/bequick/MainSettingsActivity;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->mBattery:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->mBattery:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->mPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$300(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;)F
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    .prologue
    .line 71
    iget v0, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->mY:F

    return v0
.end method

.method static synthetic access$302(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;
    .param p1, "x1"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->mY:F

    return p1
.end method

.method static synthetic access$400(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;)F
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;

    .prologue
    .line 71
    iget v0, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->mX:F

    return v0
.end method

.method static synthetic access$402(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;
    .param p1, "x1"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->mX:F

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    new-instance v1, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver$1;-><init>(Lcom/bwx/bequick/MainSettingsActivity$CommonIntentReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/bwx/bequick/MainSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

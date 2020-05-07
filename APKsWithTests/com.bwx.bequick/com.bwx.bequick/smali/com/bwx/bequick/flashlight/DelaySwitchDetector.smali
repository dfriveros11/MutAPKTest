.class public Lcom/bwx/bequick/flashlight/DelaySwitchDetector;
.super Lcom/bwx/bequick/flashlight/SwitchDetector;
.source "DelaySwitchDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;)V
    .locals 1
    .param p1, "switchable"    # Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;

    .prologue
    .line 30
    const v0, 0x7f060073

    invoke-direct {p0, p1, v0}, Lcom/bwx/bequick/flashlight/SwitchDetector;-><init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;I)V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bwx/bequick/flashlight/DelaySwitchDetector;->mHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method


# virtual methods
.method public activate(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/DelaySwitchDetector;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 36
    return-void
.end method

.method public inactivate(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/DelaySwitchDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/DelaySwitchDetector;->mSwitchable:Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;->switchLight(Z)V

    .line 45
    return-void
.end method

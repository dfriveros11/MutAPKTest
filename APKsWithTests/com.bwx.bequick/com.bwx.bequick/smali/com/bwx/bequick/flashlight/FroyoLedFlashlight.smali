.class public Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;
.super Ljava/lang/Object;
.source "FroyoLedFlashlight.java"

# interfaces
.implements Lcom/bwx/bequick/flashlight/Flashlight;


# static fields
.field private static final MODE_OFF:Ljava/lang/String; = "off"

.field private static final MODE_TORCH:Ljava/lang/String; = "torch"

.field private static final TAG:Ljava/lang/String; = "qs.floyoled"


# instance fields
.field private mCamera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x3

    return v0
.end method

.method public isOn(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const-string v0, "torch"

    iget-object v1, p0, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 39
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 40
    .local v2, "sdkVersion":I
    const/4 v0, 0x0

    .line 42
    .local v0, "camera":Landroid/hardware/Camera;
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 43
    const/16 v4, 0x8

    if-lt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 48
    :cond_0
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 46
    :cond_1
    :goto_0
    return v3

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "qs.floyoled"

    const-string v5, "isSupported"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_2
    throw v3
.end method

.method public setOn(ZLandroid/content/Context;)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;->mCamera:Landroid/hardware/Camera;

    .line 56
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz p1, :cond_2

    .line 57
    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;->mCamera:Landroid/hardware/Camera;

    .line 59
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 62
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 76
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    if-eqz v0, :cond_1

    .line 67
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 68
    .restart local v1    # "params":Landroid/hardware/Camera$Parameters;
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 72
    iput-object v3, p0, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;->mCamera:Landroid/hardware/Camera;

    goto :goto_0

    .line 71
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 72
    iput-object v3, p0, Lcom/bwx/bequick/flashlight/FroyoLedFlashlight;->mCamera:Landroid/hardware/Camera;

    throw v2
.end method

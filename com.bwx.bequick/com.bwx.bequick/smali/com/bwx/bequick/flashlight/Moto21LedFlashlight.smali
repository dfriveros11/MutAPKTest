.class public Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;
.super Ljava/lang/Object;
.source "Moto21LedFlashlight.java"

# interfaces
.implements Lcom/bwx/bequick/flashlight/Flashlight;


# static fields
.field private static final TAG:Ljava/lang/String; = "qs.motoled"


# instance fields
.field private mService:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFlashlightService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;->mService:Ljava/lang/Object;

    .line 55
    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 56
    const-string v3, "vibrator"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 57
    .local v2, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mService"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 58
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "service":Ljava/lang/Object;
    iput-object v1, p0, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;->mService:Ljava/lang/Object;

    .line 61
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    .restart local v1    # "service":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;->mService:Ljava/lang/Object;

    return-object v3
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isOn(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 33
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;->getFlashlightService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    .local v3, "service":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getFlashlightEnabled"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 35
    .local v1, "getFlashlightEnabled":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 36
    .local v2, "res":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 39
    .end local v1    # "getFlashlightEnabled":Ljava/lang/reflect/Method;
    .end local v2    # "res":Ljava/lang/Boolean;
    .end local v3    # "service":Ljava/lang/Object;
    :goto_0
    return v4

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "qs.motoled"

    const-string v6, "cannot get flashlight state"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;->setOn(ZLandroid/content/Context;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;->isOn(Landroid/content/Context;)Z

    move-result v0

    .line 67
    .local v0, "supported":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;->setOn(ZLandroid/content/Context;)V

    .line 68
    return v0
.end method

.method public setOn(ZLandroid/content/Context;)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    :try_start_0
    invoke-direct {p0, p2}, Lcom/bwx/bequick/flashlight/Moto21LedFlashlight;->getFlashlightService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, "service":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setFlashlightEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 47
    .local v2, "setFlashlightEnabled":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "service":Ljava/lang/Object;
    .end local v2    # "setFlashlightEnabled":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "qs.motoled"

    const-string v4, "cannot enable flashlight"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.class public Lcom/bwx/bequick/flashlight/Droid22Flashlight;
.super Ljava/lang/Object;
.source "Droid22Flashlight.java"

# interfaces
.implements Lcom/bwx/bequick/flashlight/Flashlight;


# static fields
.field private static final TAG:Ljava/lang/String; = "qs.droid22led"


# instance fields
.field private mManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getManager()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 71
    iget-object v6, p0, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->mManager:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 73
    :try_start_0
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 74
    .local v3, "managerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 75
    .local v4, "methodGetService":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "hardware"

    aput-object v8, v6, v7

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 77
    .local v2, "hardwareService":Landroid/os/IBinder;
    const-string v6, "android.os.IHardwareService$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 78
    .local v5, "stubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    .local v0, "asInterfaceMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->mManager:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "asInterfaceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "hardwareService":Landroid/os/IBinder;
    .end local v3    # "managerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "methodGetService":Ljava/lang/reflect/Method;
    .end local v5    # "stubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->mManager:Ljava/lang/Object;

    return-object v6

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "qs.droid22led"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x4

    return v0
.end method

.method public isOn(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->getManager()Ljava/lang/Object;

    move-result-object v2

    .line 37
    .local v2, "manager":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getFlashlightEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    .local v1, "getFlashlightEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 44
    .end local v1    # "getFlashlightEnabledMethod":Ljava/lang/reflect/Method;
    .end local v2    # "manager":Ljava/lang/Object;
    :goto_0
    return v3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "qs.droid22led"

    const-string v5, ""

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 44
    goto :goto_0
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->getManager()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->setOn(ZLandroid/content/Context;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->isOn(Landroid/content/Context;)Z

    move-result v0

    .line 52
    .local v0, "on":Z
    invoke-virtual {p0, v1, p1}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->setOn(ZLandroid/content/Context;)V

    .line 55
    .end local v0    # "on":Z
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOn(ZLandroid/content/Context;)V
    .locals 8
    .param p1, "on"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/bwx/bequick/flashlight/Droid22Flashlight;->getManager()Ljava/lang/Object;

    move-result-object v1

    .line 61
    .local v1, "manager":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 62
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

    .line 63
    .local v2, "setFlashlightEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "manager":Ljava/lang/Object;
    .end local v2    # "setFlashlightEnabledMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "qs.droid22led"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

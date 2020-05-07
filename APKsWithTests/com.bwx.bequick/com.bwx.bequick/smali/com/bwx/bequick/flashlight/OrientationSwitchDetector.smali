.class public Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;
.super Lcom/bwx/bequick/flashlight/SwitchDetector;
.source "OrientationSwitchDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;)V
    .locals 1
    .param p1, "switchable"    # Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;

    .prologue
    .line 35
    const v0, 0x7f060074

    invoke-direct {p0, p1, v0}, Lcom/bwx/bequick/flashlight/SwitchDetector;-><init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;I)V

    .line 36
    return-void
.end method

.method private onStateChanged()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSwitchable:Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;

    iget-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;->switchLight(Z)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 1
    .param p1, "up"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mState:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mState:Ljava/lang/Boolean;

    .line 68
    invoke-direct {p0}, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->onStateChanged()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mState:Ljava/lang/Boolean;

    .line 74
    invoke-direct {p0}, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->onStateChanged()V

    goto :goto_0
.end method


# virtual methods
.method public activate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    .line 39
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 40
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensor:Landroid/hardware/Sensor;

    .line 41
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 42
    return-void
.end method

.method public inactivate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 52
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    .line 55
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 57
    .local v0, "pinch":F
    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 58
    invoke-direct {p0, v2}, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->updateState(Z)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/high16 v1, 0x42960000    # 75.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 60
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/bwx/bequick/flashlight/OrientationSwitchDetector;->updateState(Z)V

    goto :goto_0
.end method

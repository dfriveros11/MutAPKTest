.class public Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;
.super Lcom/bwx/bequick/flashlight/SwitchDetector;
.source "ShakeSwitchDeterctor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final mAttemptIntervalThreshold:J

.field private mLastShakeAttemptTime:J

.field private mLastShakeFingerprint:I

.field private mLastShakeTime:J

.field private mOn:Z

.field private final mShakeAttemptCountThreshold:I

.field private mShakeAttemptCounter:I

.field private final mShakeForceThreshold:F

.field private final mShakeIntervalThreshold:J


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;)V
    .locals 2
    .param p1, "swithable"    # Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;

    .prologue
    .line 42
    const v0, 0x7f060075

    invoke-direct {p0, p1, v0}, Lcom/bwx/bequick/flashlight/SwitchDetector;-><init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;I)V

    .line 29
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mShakeIntervalThreshold:J

    .line 30
    const-wide/16 v0, 0xaa

    iput-wide v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mAttemptIntervalThreshold:J

    .line 31
    const v0, 0x41233333    # 10.2f

    iput v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mShakeForceThreshold:F

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mShakeAttemptCountThreshold:I

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mLastShakeAttemptTime:J

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mLastShakeTime:J

    .line 43
    return-void
.end method

.method private toggleState()V
    .locals 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mOn:Z

    .line 133
    iget-object v0, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mSwitchable:Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;

    iget-boolean v1, p0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mOn:Z

    invoke-interface {v0, v1}, Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;->switchLight(Z)V

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activate(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 46
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 47
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 48
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 51
    :cond_0
    return-void
.end method

.method public inactivate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 55
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 56
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 129
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 26
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 63
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mLastShakeTime:J

    move-wide/from16 v20, v0

    sub-long v20, v18, v20

    const-wide/16 v22, 0x5dc

    cmp-long v20, v20, v22

    if-gez v20, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    .line 66
    .local v17, "values":[F
    const/16 v20, 0x0

    aget v13, v17, v20

    .line 67
    .local v13, "fx":F
    const/16 v20, 0x1

    aget v14, v17, v20

    .line 68
    .local v14, "fy":F
    const/16 v20, 0x2

    aget v15, v17, v20

    .line 70
    .local v15, "fz":F
    float-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    float-to-double v0, v14

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 71
    .local v6, "f1":D
    float-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    float-to-double v0, v15

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 72
    .local v8, "f2":D
    float-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    float-to-double v0, v14

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 75
    .local v10, "f3":D
    cmpl-double v20, v6, v8

    if-lez v20, :cond_5

    .line 76
    cmpl-double v20, v6, v10

    if-lez v20, :cond_4

    .line 77
    const/4 v12, 0x1

    .line 89
    .local v12, "fingerprint":I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mLastShakeAttemptTime:J

    move-wide/from16 v20, v0

    sub-long v4, v18, v20

    .line 90
    .local v4, "attemptInterval":J
    const-wide v20, 0x4024666660000000L    # 10.199999809265137

    cmpl-double v20, v6, v20

    if-gtz v20, :cond_2

    const-wide v20, 0x4024666660000000L    # 10.199999809265137

    cmpl-double v20, v8, v20

    if-gtz v20, :cond_2

    const-wide v20, 0x4024666660000000L    # 10.199999809265137

    cmpl-double v20, v10, v20

    if-lez v20, :cond_7

    :cond_2
    const/16 v16, 0x1

    .line 94
    .local v16, "isShake":Z
    :goto_2
    if-eqz v16, :cond_0

    .line 96
    const-wide/16 v20, 0xaa

    cmp-long v20, v4, v20

    if-gez v20, :cond_8

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mLastShakeFingerprint:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v12, v0, :cond_3

    .line 101
    move-object/from16 v0, p0

    iput v12, v0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mLastShakeFingerprint:I

    .line 104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mShakeAttemptCounter:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mShakeAttemptCounter:I

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 108
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mShakeAttemptCounter:I

    .line 109
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mLastShakeTime:J

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->toggleState()V

    .line 121
    :cond_3
    :goto_3
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mLastShakeAttemptTime:J

    goto/16 :goto_0

    .line 79
    .end local v4    # "attemptInterval":J
    .end local v12    # "fingerprint":I
    .end local v16    # "isShake":Z
    :cond_4
    const/4 v12, 0x4

    .restart local v12    # "fingerprint":I
    goto :goto_1

    .line 82
    .end local v12    # "fingerprint":I
    :cond_5
    cmpl-double v20, v8, v10

    if-lez v20, :cond_6

    .line 83
    const/4 v12, 0x2

    .restart local v12    # "fingerprint":I
    goto :goto_1

    .line 85
    .end local v12    # "fingerprint":I
    :cond_6
    const/4 v12, 0x4

    .restart local v12    # "fingerprint":I
    goto :goto_1

    .line 90
    .restart local v4    # "attemptInterval":J
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 118
    .restart local v16    # "isShake":Z
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bwx/bequick/flashlight/ShakeSwitchDeterctor;->mShakeAttemptCounter:I

    goto :goto_3
.end method

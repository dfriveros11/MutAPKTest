.class Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;
.super Ljava/lang/Object;
.source "FourGEvoSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WiMaxManager"
.end annotation


# static fields
.field private static final CONTEXT_WIMAX_SERVICE:Ljava/lang/String; = "wimax"

.field private static final RAW_WIMAX_STATE_DISABLED:I = 0x1

.field private static final RAW_WIMAX_STATE_DISABLING:I = 0x0

.field private static final RAW_WIMAX_STATE_ENABLED:I = 0x3

.field private static final RAW_WIMAX_STATE_ENABLING:I = 0x2


# instance fields
.field private mGetState:Ljava/lang/reflect/Method;

.field private mService:Ljava/lang/Object;

.field private mSetState:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "wimax"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mService:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mService:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWimaxState"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mGetState:Ljava/lang/reflect/Method;

    .line 58
    iget-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mService:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setWimaxEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mSetState:Ljava/lang/reflect/Method;

    .line 59
    return-void
.end method


# virtual methods
.method public getState()Lcom/bwx/bequick/handlers/wimax/FourGState;
    .locals 5

    .prologue
    .line 62
    const/4 v1, 0x1

    .line 65
    .local v1, "wimaxState":I
    :try_start_0
    iget-object v2, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mGetState:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mService:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 72
    sget-object v2, Lcom/bwx/bequick/handlers/wimax/FourGState;->OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

    .line 80
    :goto_0
    return-object v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FourGEvoSettingHandler"

    const-string v3, "could not get wimax state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    sget-object v2, Lcom/bwx/bequick/handlers/wimax/FourGState;->UNKNOWN:Lcom/bwx/bequick/handlers/wimax/FourGState;

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 74
    sget-object v2, Lcom/bwx/bequick/handlers/wimax/FourGState;->ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    goto :goto_0

    .line 75
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 76
    sget-object v2, Lcom/bwx/bequick/handlers/wimax/FourGState;->TURNING_ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    goto :goto_0

    .line 77
    :cond_2
    if-nez v1, :cond_3

    .line 78
    sget-object v2, Lcom/bwx/bequick/handlers/wimax/FourGState;->TURNING_OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

    goto :goto_0

    .line 80
    :cond_3
    sget-object v2, Lcom/bwx/bequick/handlers/wimax/FourGState;->UNKNOWN:Lcom/bwx/bequick/handlers/wimax/FourGState;

    goto :goto_0
.end method

.method public toggleState()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->getState()Lcom/bwx/bequick/handlers/wimax/FourGState;

    move-result-object v1

    .line 87
    .local v1, "state":Lcom/bwx/bequick/handlers/wimax/FourGState;
    iget-object v4, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mSetState:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/bwx/bequick/handlers/wimax/FourGEvoSettingHandler$WiMaxManager;->mService:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/bwx/bequick/handlers/wimax/FourGState;->ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    if-eq v1, v8, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "state":Lcom/bwx/bequick/handlers/wimax/FourGState;
    :goto_1
    return-void

    .restart local v1    # "state":Lcom/bwx/bequick/handlers/wimax/FourGState;
    :cond_0
    move v2, v3

    .line 87
    goto :goto_0

    .line 88
    .end local v1    # "state":Lcom/bwx/bequick/handlers/wimax/FourGState;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FourGEvoSettingHandler"

    const-string v3, "could not toggle wimax state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

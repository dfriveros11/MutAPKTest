.class public Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity;
.super Lcom/bwx/bequick/ShowSettingsActivity;
.source "InstrumentedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity$CoverageCollector;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/bwx/bequick/EmmaInstrument/FinishListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "IntrumentedPlayer"

    sput-object v0, Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/bwx/bequick/ShowSettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity;)Lcom/bwx/bequick/EmmaInstrument/FinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity;->mListener:Lcom/bwx/bequick/EmmaInstrument/FinishListener;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".InstrumentedActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0}, Lcom/bwx/bequick/ShowSettingsActivity;->finish()V

    .line 54
    iget-object v0, p0, Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity;->mListener:Lcom/bwx/bequick/EmmaInstrument/FinishListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/bwx/bequick/EmmaInstrument/InstrumentedActivity;->mListener:Lcom/bwx/bequick/EmmaInstrument/FinishListener;

    invoke-interface {v0}, Lcom/bwx/bequick/EmmaInstrument/FinishListener;->onActivityFinished()V

    .line 57
    :cond_0
    return-void
.end method

.method public setFinishListener(Lcom/bwx/bequick/EmmaInstrument/FinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bwx/bequick/EmmaInstrument/FinishListener;

    .prologue
    .line 21
    return-void
.end method

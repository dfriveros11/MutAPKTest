.class public Lcom/example/android/musicplayer/EmmaInstrument/SMSInstrumentedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSInstrumentedReceiver.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "M3SMSInstrumentedReceiver"

    sput-object v0, Lcom/example/android/musicplayer/EmmaInstrument/SMSInstrumentedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 18
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v1, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;

    invoke-direct {v1}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;-><init>()V

    .line 19
    .local v1, "mListener":Lcom/example/android/musicplayer/EmmaInstrument/FinishListener;
    if-eqz v1, :cond_0

    .line 20
    const-string v2, "/mnt/sdcard/coverage.ec"

    invoke-interface {v1, v2}, Lcom/example/android/musicplayer/EmmaInstrument/FinishListener;->dumpIntermediateCoverage(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

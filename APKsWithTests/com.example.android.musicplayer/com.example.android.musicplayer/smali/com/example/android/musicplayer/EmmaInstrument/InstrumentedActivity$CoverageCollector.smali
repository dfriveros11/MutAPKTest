.class Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity$CoverageCollector;
.super Landroid/content/BroadcastReceiver;
.source "InstrumentedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CoverageCollector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;


# direct methods
.method constructor <init>(Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity$CoverageCollector;->this$0:Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 29
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity$CoverageCollector;->this$0:Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;

    invoke-static {v5}, Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;->access$000(Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;)Lcom/example/android/musicplayer/EmmaInstrument/FinishListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    const-string v5, "pdus"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 32
    .local v4, "smsExtra":[Ljava/lang/Object;
    array-length v5, v4

    if-lez v5, :cond_1

    .line 33
    const/4 v5, 0x0

    aget-object v5, v4, v5

    check-cast v5, [B

    check-cast v5, [B

    .line 34
    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 35
    .local v3, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "body":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "address":Ljava/lang/String;
    const-string v5, "6782345628"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/mnt/sdcard"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    :cond_0
    iget-object v5, p0, Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity$CoverageCollector;->this$0:Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;

    invoke-static {v5}, Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;->access$000(Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;)Lcom/example/android/musicplayer/EmmaInstrument/FinishListener;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/example/android/musicplayer/EmmaInstrument/FinishListener;->dumpIntermediateCoverage(Ljava/lang/String;)V

    .line 46
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "body":Ljava/lang/String;
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .end local v4    # "smsExtra":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

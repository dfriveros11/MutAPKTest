.class Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AirplaneModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;->this$0:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$AirplaneModeReceiver;->this$0:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

    invoke-static {v0}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->access$000(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;)V

    .line 40
    return-void
.end method

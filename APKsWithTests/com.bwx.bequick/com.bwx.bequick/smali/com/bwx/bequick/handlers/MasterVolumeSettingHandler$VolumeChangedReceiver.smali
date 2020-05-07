.class Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler$VolumeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterVolumeSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VolumeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler$VolumeChangedReceiver;->this$0:Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler$VolumeChangedReceiver;->this$0:Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;

    invoke-static {v0}, Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;->access$000(Lcom/bwx/bequick/handlers/MasterVolumeSettingHandler;)V

    .line 45
    return-void
.end method

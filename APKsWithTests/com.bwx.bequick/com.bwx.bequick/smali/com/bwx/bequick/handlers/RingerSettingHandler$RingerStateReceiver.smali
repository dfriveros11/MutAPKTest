.class Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingerSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/RingerSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RingerStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/RingerSettingHandler;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/RingerSettingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/RingerSettingHandler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;->this$0:Lcom/bwx/bequick/handlers/RingerSettingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bwx/bequick/handlers/RingerSettingHandler$RingerStateReceiver;->this$0:Lcom/bwx/bequick/handlers/RingerSettingHandler;

    invoke-static {v0}, Lcom/bwx/bequick/handlers/RingerSettingHandler;->access$000(Lcom/bwx/bequick/handlers/RingerSettingHandler;)V

    .line 51
    return-void
.end method

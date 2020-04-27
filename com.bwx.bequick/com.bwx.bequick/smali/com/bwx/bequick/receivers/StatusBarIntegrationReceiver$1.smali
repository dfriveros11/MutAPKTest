.class Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver$1;
.super Ljava/lang/Object;
.source "StatusBarIntegrationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver$1;->this$0:Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;

    iput-object p2, p0, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/bwx/bequick/ShowSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

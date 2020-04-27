.class Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$2;
.super Ljava/lang/Object;
.source "AirplaneModeSettingHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->onSwitched(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

.field final synthetic val$isSwitched:Z


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$2;->this$0:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

    iput-boolean p2, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$2;->val$isSwitched:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 90
    iget-object v0, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$2;->this$0:Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;

    iget-boolean v1, p0, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler$2;->val$isSwitched:Z

    invoke-static {v0, v1}, Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;->access$100(Lcom/bwx/bequick/handlers/AirplaneModeSettingHandler;Z)V

    .line 91
    return-void
.end method

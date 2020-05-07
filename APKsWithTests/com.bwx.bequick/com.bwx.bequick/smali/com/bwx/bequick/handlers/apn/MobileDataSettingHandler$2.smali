.class Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$2;
.super Ljava/lang/Object;
.source "MobileDataSettingHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->onSwitched(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$2;->this$0:Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$2;->this$0:Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;

    invoke-static {v0}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->access$000(Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disableMms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    iget-object v0, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$2;->this$0:Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;->access$100(Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;Z)V

    .line 87
    return-void
.end method

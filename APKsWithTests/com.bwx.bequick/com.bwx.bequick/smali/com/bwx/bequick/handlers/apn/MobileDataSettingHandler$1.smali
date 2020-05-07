.class Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$1;
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
    .line 90
    iput-object p1, p0, Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler$1;->this$0:Lcom/bwx/bequick/handlers/apn/MobileDataSettingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method

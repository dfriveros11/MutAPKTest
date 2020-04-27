.class Lcom/bwx/bequick/ShowSettingsActivity$1;
.super Ljava/lang/Object;
.source "ShowSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bwx/bequick/ShowSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/ShowSettingsActivity;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/ShowSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/ShowSettingsActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/bwx/bequick/ShowSettingsActivity$1;->this$0:Lcom/bwx/bequick/ShowSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bwx/bequick/ShowSettingsActivity$1;->this$0:Lcom/bwx/bequick/ShowSettingsActivity;

    invoke-virtual {v0}, Lcom/bwx/bequick/ShowSettingsActivity;->finish()V

    .line 68
    return-void
.end method

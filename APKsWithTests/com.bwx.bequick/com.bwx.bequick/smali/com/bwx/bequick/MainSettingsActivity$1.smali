.class Lcom/bwx/bequick/MainSettingsActivity$1;
.super Ljava/lang/Object;
.source "MainSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bwx/bequick/MainSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/MainSettingsActivity;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/MainSettingsActivity;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/bwx/bequick/MainSettingsActivity$1;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/bwx/bequick/MainSettingsActivity$1;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bwx/bequick/MainSettingsActivity;->dismissDialog(I)V

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 207
    .local v0, "viewId":I
    const v1, 0x7f090009

    if-ne v1, v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/bwx/bequick/MainSettingsActivity$1;->this$0:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-static {v1}, Lcom/bwx/bequick/preferences/CommonPrefs;->openQuickerInMarket(Landroid/app/Activity;)V

    .line 210
    :cond_0
    return-void
.end method

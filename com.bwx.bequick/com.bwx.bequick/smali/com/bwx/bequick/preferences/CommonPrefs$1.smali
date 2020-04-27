.class Lcom/bwx/bequick/preferences/CommonPrefs$1;
.super Ljava/lang/Object;
.source "CommonPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bwx/bequick/preferences/CommonPrefs;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/preferences/CommonPrefs;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/preferences/CommonPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/preferences/CommonPrefs;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bwx/bequick/preferences/CommonPrefs$1;->this$0:Lcom/bwx/bequick/preferences/CommonPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    return-void
.end method

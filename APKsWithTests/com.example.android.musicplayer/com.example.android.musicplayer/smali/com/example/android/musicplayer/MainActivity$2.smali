.class Lcom/example/android/musicplayer/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/musicplayer/MainActivity;->showUrlDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/musicplayer/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/android/musicplayer/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/android/musicplayer/MainActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/example/android/musicplayer/MainActivity$2;->this$0:Lcom/example/android/musicplayer/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dlg"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 127
    const-string v0, "MAYUR"

    const-string v1, "CLICKED: CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

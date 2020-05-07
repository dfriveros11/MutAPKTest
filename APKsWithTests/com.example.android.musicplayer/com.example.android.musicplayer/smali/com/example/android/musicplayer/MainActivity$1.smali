.class Lcom/example/android/musicplayer/MainActivity$1;
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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/example/android/musicplayer/MainActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/android/musicplayer/MainActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/example/android/musicplayer/MainActivity$1;->this$0:Lcom/example/android/musicplayer/MainActivity;

    iput-object p2, p0, Lcom/example/android/musicplayer/MainActivity$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dlg"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 116
    const-string v2, "MAYUR"

    const-string v3, "CLICKED: PLAY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.example.android.musicplayer.action.URL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/example/android/musicplayer/MainActivity$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/example/android/musicplayer/MainActivity$1;->this$0:Lcom/example/android/musicplayer/MainActivity;

    invoke-virtual {v2, v0}, Lcom/example/android/musicplayer/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    return-void
.end method

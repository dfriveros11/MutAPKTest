.class public Lcom/example/android/musicplayer/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final SUGGESTED_URL:Ljava/lang/String;

.field mEjectButton:Landroid/widget/Button;

.field mPauseButton:Landroid/widget/Button;

.field mPlayButton:Landroid/widget/Button;

.field mRewindButton:Landroid/widget/Button;

.field mSkipButton:Landroid/widget/Button;

.field mStopButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-string v0, "http://www.vorbis.com/music/Epoq-Lepidoptera.ogg"

    iput-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->SUGGESTED_URL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mPlayButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 79
    const-string v0, "MAYUR"

    const-string v1, "CLICKED: PLAY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.example.android.musicplayer.action.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mPauseButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 82
    const-string v0, "MAYUR"

    const-string v1, "CLICKED: PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.example.android.musicplayer.action.PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 85
    const-string v0, "MAYUR"

    const-string v1, "CLICKED: SKIP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.example.android.musicplayer.action.SKIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mRewindButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 88
    const-string v0, "MAYUR"

    const-string v1, "CLICKED: REWIND"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.example.android.musicplayer.action.REWIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mStopButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 91
    const-string v0, "MAYUR"

    const-string v1, "CLICKED: STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.example.android.musicplayer.action.STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mEjectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 94
    const-string v0, "MAYUR"

    const-string v1, "CLICKED: EJECT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MainActivity;->showUrlDialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mPlayButton:Landroid/widget/Button;

    .line 61
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mPauseButton:Landroid/widget/Button;

    .line 62
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mSkipButton:Landroid/widget/Button;

    .line 63
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mRewindButton:Landroid/widget/Button;

    .line 64
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mStopButton:Landroid/widget/Button;

    .line 65
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mEjectButton:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mRewindButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/example/android/musicplayer/MainActivity;->mEjectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method showUrlDialog()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Manual Input"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    const-string v2, "Enter a URL (must be http://)"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, "input":Landroid/widget/EditText;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 112
    const-string v2, "http://www.vorbis.com/music/Epoq-Lepidoptera.ogg"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const-string v2, "Play!"

    new-instance v3, Lcom/example/android/musicplayer/MainActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/example/android/musicplayer/MainActivity$1;-><init>(Lcom/example/android/musicplayer/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    const-string v2, "Cancel"

    new-instance v3, Lcom/example/android/musicplayer/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/example/android/musicplayer/MainActivity$2;-><init>(Lcom/example/android/musicplayer/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 132
    return-void
.end method

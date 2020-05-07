.class public Lcom/example/android/musicplayer/AudioFocusHelper;
.super Ljava/lang/Object;
.source "AudioFocusHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field mAM:Landroid/media/AudioManager;

.field mFocusable:Lcom/example/android/musicplayer/MusicFocusable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/example/android/musicplayer/MusicFocusable;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "focusable"    # Lcom/example/android/musicplayer/MusicFocusable;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/example/android/musicplayer/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    .line 36
    iput-object p2, p0, Lcom/example/android/musicplayer/AudioFocusHelper;->mFocusable:Lcom/example/android/musicplayer/MusicFocusable;

    .line 37
    return-void
.end method


# virtual methods
.method public abandonFocus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    iget-object v1, p0, Lcom/example/android/musicplayer/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/example/android/musicplayer/AudioFocusHelper;->mFocusable:Lcom/example/android/musicplayer/MusicFocusable;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 57
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/example/android/musicplayer/AudioFocusHelper;->mFocusable:Lcom/example/android/musicplayer/MusicFocusable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/example/android/musicplayer/MusicFocusable;->onLostAudioFocus(Z)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/example/android/musicplayer/AudioFocusHelper;->mFocusable:Lcom/example/android/musicplayer/MusicFocusable;

    invoke-interface {v0}, Lcom/example/android/musicplayer/MusicFocusable;->onGainedAudioFocus()V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/example/android/musicplayer/AudioFocusHelper;->mFocusable:Lcom/example/android/musicplayer/MusicFocusable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/example/android/musicplayer/MusicFocusable;->onLostAudioFocus(Z)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public requestFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 41
    iget-object v1, p0, Lcom/example/android/musicplayer/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 42
    invoke-virtual {v1, p0, v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 41
    :goto_0
    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

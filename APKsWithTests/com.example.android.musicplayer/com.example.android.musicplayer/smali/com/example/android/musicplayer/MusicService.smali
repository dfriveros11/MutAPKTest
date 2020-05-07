.class public Lcom/example/android/musicplayer/MusicService;
.super Landroid/app/Service;
.source "MusicService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/example/android/musicplayer/MusicFocusable;
.implements Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/android/musicplayer/MusicService$AudioFocus;,
        Lcom/example/android/musicplayer/MusicService$PauseReason;,
        Lcom/example/android/musicplayer/MusicService$State;
    }
.end annotation


# static fields
.field public static final ACTION_PAUSE:Ljava/lang/String; = "com.example.android.musicplayer.action.PAUSE"

.field public static final ACTION_PLAY:Ljava/lang/String; = "com.example.android.musicplayer.action.PLAY"

.field public static final ACTION_REWIND:Ljava/lang/String; = "com.example.android.musicplayer.action.REWIND"

.field public static final ACTION_SKIP:Ljava/lang/String; = "com.example.android.musicplayer.action.SKIP"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.example.android.musicplayer.action.STOP"

.field public static final ACTION_URL:Ljava/lang/String; = "com.example.android.musicplayer.action.URL"

.field static final TAG:Ljava/lang/String; = "RandomMusicPlayer"


# instance fields
.field public final DUCK_VOLUME:F

.field final NOTIFICATION_ID:I

.field mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

.field mAudioFocusHelper:Lcom/example/android/musicplayer/AudioFocusHelper;

.field mIsStreaming:Z

.field mNotification:Landroid/app/Notification;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mPauseReason:Lcom/example/android/musicplayer/MusicService$PauseReason;

.field mPlayer:Landroid/media/MediaPlayer;

.field mRetriever:Lcom/example/android/musicplayer/MusicRetriever;

.field mSongTitle:Ljava/lang/String;

.field mStartPlayingAfterRetrieve:Z

.field mState:Lcom/example/android/musicplayer/MusicService$State;

.field mWhatToPlayAfterRetrieve:Landroid/net/Uri;

.field mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 58
    iput-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocusHelper:Lcom/example/android/musicplayer/AudioFocusHelper;

    .line 71
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->Retrieving:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 75
    iput-boolean v2, p0, Lcom/example/android/musicplayer/MusicService;->mStartPlayingAfterRetrieve:Z

    .line 79
    iput-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mWhatToPlayAfterRetrieve:Landroid/net/Uri;

    .line 87
    sget-object v0, Lcom/example/android/musicplayer/MusicService$PauseReason;->UserRequest:Lcom/example/android/musicplayer/MusicService$PauseReason;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPauseReason:Lcom/example/android/musicplayer/MusicService$PauseReason;

    .line 95
    sget-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusNoDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mSongTitle:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Lcom/example/android/musicplayer/MusicService;->mIsStreaming:Z

    .line 123
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/example/android/musicplayer/MusicService;->DUCK_VOLUME:F

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/example/android/musicplayer/MusicService;->NOTIFICATION_ID:I

    .line 134
    iput-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method configAndStartMediaPlayer()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    .line 302
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusNoDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    if-ne v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusCanDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    if-ne v0, v1, :cond_2

    .line 310
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_1
.end method

.method createMediaPlayerIfNeeded()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 149
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 153
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 154
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 155
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method giveUpAudioFocus()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$AudioFocus;->Focused:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocusHelper:Lcom/example/android/musicplayer/AudioFocusHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocusHelper:Lcom/example/android/musicplayer/AudioFocusHelper;

    .line 289
    invoke-virtual {v0}, Lcom/example/android/musicplayer/AudioFocusHelper;->abandonFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusNoDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    .line 291
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->playNextSong(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 163
    const-string v0, "RandomMusicPlayer"

    const-string v1, "debug: Creating service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "mylock"

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 169
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 172
    new-instance v0, Lcom/example/android/musicplayer/MusicRetriever;

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/android/musicplayer/MusicRetriever;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mRetriever:Lcom/example/android/musicplayer/MusicRetriever;

    .line 173
    new-instance v0, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;

    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mRetriever:Lcom/example/android/musicplayer/MusicRetriever;

    invoke-direct {v0, v1, p0}, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;-><init>(Lcom/example/android/musicplayer/MusicRetriever;Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 177
    new-instance v0, Lcom/example/android/musicplayer/AudioFocusHelper;

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/example/android/musicplayer/AudioFocusHelper;-><init>(Landroid/content/Context;Lcom/example/android/musicplayer/MusicFocusable;)V

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocusHelper:Lcom/example/android/musicplayer/AudioFocusHelper;

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->Focused:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 502
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 503
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->relaxResources(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->giveUpAudioFocus()V

    .line 505
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 454
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Media player error! Resetting."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 456
    const-string v0, "RandomMusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 459
    invoke-virtual {p0, v3}, Lcom/example/android/musicplayer/MusicService;->relaxResources(Z)V

    .line 460
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->giveUpAudioFocus()V

    .line 461
    return v3
.end method

.method public onGainedAudioFocus()V
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gained audio focus."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 467
    sget-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->Focused:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    .line 470
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->configAndStartMediaPlayer()V

    .line 472
    :cond_0
    return-void
.end method

.method public onLostAudioFocus(Z)V
    .locals 3
    .param p1, "canDuck"    # Z

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lost audio focus."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "can duck"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 478
    if-eqz p1, :cond_2

    sget-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusCanDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    :goto_1
    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    .line 481
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->configAndStartMediaPlayer()V

    .line 483
    :cond_0
    return-void

    .line 476
    :cond_1
    const-string v0, "no duck"

    goto :goto_0

    .line 478
    :cond_2
    sget-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusNoDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    goto :goto_1
.end method

.method public onMusicRetrieverPrepared()V
    .locals 1

    .prologue
    .line 488
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 491
    iget-boolean v0, p0, Lcom/example/android/musicplayer/MusicService;->mStartPlayingAfterRetrieve:Z

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->tryToGetAudioFocus()V

    .line 493
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mWhatToPlayAfterRetrieve:Landroid/net/Uri;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->playNextSong(Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mWhatToPlayAfterRetrieve:Landroid/net/Uri;

    .line 494
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 416
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mSongTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (playing)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->updateNotification(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->configAndStartMediaPlayer()V

    .line 419
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.example.android.musicplayer.action.PLAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->processPlayRequest()V

    .line 197
    :cond_0
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 191
    :cond_1
    const-string v1, "com.example.android.musicplayer.action.PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->processPauseRequest()V

    goto :goto_0

    .line 192
    :cond_2
    const-string v1, "com.example.android.musicplayer.action.SKIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->processSkipRequest()V

    goto :goto_0

    .line 193
    :cond_3
    const-string v1, "com.example.android.musicplayer.action.STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->processStopRequest()V

    goto :goto_0

    .line 194
    :cond_4
    const-string v1, "com.example.android.musicplayer.action.REWIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->processRewindRequest()V

    goto :goto_0

    .line 195
    :cond_5
    const-string v1, "com.example.android.musicplayer.action.URL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/example/android/musicplayer/MusicService;->processAddRequest(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method playNextSong(Ljava/lang/String;)V
    .locals 5
    .param p1, "manualUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 354
    sget-object v3, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v3, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 355
    invoke-virtual {p0, v2}, Lcom/example/android/musicplayer/MusicService;->relaxResources(Z)V

    .line 358
    if-eqz p1, :cond_3

    .line 360
    :try_start_0
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->createMediaPlayerIfNeeded()V

    .line 361
    iget-object v3, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 362
    iget-object v3, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 363
    iput-object p1, p0, Lcom/example/android/musicplayer/MusicService;->mSongTitle:Ljava/lang/String;

    .line 364
    const-string v3, "http:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/example/android/musicplayer/MusicService;->mIsStreaming:Z

    .line 383
    :goto_0
    sget-object v2, Lcom/example/android/musicplayer/MusicService$State;->Preparing:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/example/android/musicplayer/MusicService;->mSongTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (loading)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/example/android/musicplayer/MusicService;->setUpAsForeground(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 396
    iget-boolean v2, p0, Lcom/example/android/musicplayer/MusicService;->mIsStreaming:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 403
    :cond_2
    :goto_1
    return-void

    .line 367
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/example/android/musicplayer/MusicService;->mIsStreaming:Z

    .line 369
    iget-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mRetriever:Lcom/example/android/musicplayer/MusicRetriever;

    invoke-virtual {v2}, Lcom/example/android/musicplayer/MusicRetriever;->getRandomItem()Lcom/example/android/musicplayer/MusicRetriever$Item;

    move-result-object v1

    .line 370
    .local v1, "item":Lcom/example/android/musicplayer/MusicRetriever$Item;
    if-nez v1, :cond_4

    .line 371
    const-string v2, "No song to play :-("

    invoke-virtual {p0, v2}, Lcom/example/android/musicplayer/MusicService;->say(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 399
    .end local v1    # "item":Lcom/example/android/musicplayer/MusicRetriever$Item;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "MusicService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException playing next song: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 376
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "item":Lcom/example/android/musicplayer/MusicRetriever$Item;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->createMediaPlayerIfNeeded()V

    .line 377
    iget-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 378
    iget-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/example/android/musicplayer/MusicRetriever$Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 379
    invoke-virtual {v1}, Lcom/example/android/musicplayer/MusicRetriever$Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mSongTitle:Ljava/lang/String;

    goto :goto_0

    .line 397
    .end local v1    # "item":Lcom/example/android/musicplayer/MusicRetriever$Item;
    :cond_5
    iget-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method processAddRequest(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Retrieving:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_1

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mWhatToPlayAfterRetrieve:Landroid/net/Uri;

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/android/musicplayer/MusicService;->mStartPlayingAfterRetrieve:Z

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Paused:Lcom/example/android/musicplayer/MusicService$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_0

    .line 327
    :cond_2
    const-string v0, "RandomMusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playing from URL/path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->tryToGetAudioFocus()V

    .line 329
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->playNextSong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method processPauseRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Retrieving:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_1

    .line 228
    iput-boolean v2, p0, Lcom/example/android/musicplayer/MusicService;->mStartPlayingAfterRetrieve:Z

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_0

    .line 234
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->Paused:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 235
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 236
    invoke-virtual {p0, v2}, Lcom/example/android/musicplayer/MusicService;->relaxResources(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->giveUpAudioFocus()V

    goto :goto_0
.end method

.method processPlayRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Retrieving:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_1

    .line 205
    iput-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mWhatToPlayAfterRetrieve:Landroid/net/Uri;

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/android/musicplayer/MusicService;->mStartPlayingAfterRetrieve:Z

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->tryToGetAudioFocus()V

    .line 212
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_2

    .line 214
    invoke-virtual {p0, v2}, Lcom/example/android/musicplayer/MusicService;->playNextSong(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Paused:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_0

    .line 218
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mSongTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (playing)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->setUpAsForeground(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->configAndStartMediaPlayer()V

    goto :goto_0
.end method

.method processRewindRequest()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Paused:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 244
    :cond_1
    return-void
.end method

.method processSkipRequest()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Paused:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->tryToGetAudioFocus()V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->playNextSong(Ljava/lang/String;)V

    .line 251
    :cond_1
    return-void
.end method

.method processStopRequest()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Paused:Lcom/example/android/musicplayer/MusicService$State;

    if-ne v0, v1, :cond_1

    .line 255
    :cond_0
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mState:Lcom/example/android/musicplayer/MusicService$State;

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->relaxResources(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->giveUpAudioFocus()V

    .line 262
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->stopSelf()V

    .line 264
    :cond_1
    return-void
.end method

.method relaxResources(Z)V
    .locals 1
    .param p1, "releaseMediaPlayer"    # Z

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/android/musicplayer/MusicService;->stopForeground(Z)V

    .line 277
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 279
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 285
    :cond_1
    return-void
.end method

.method say(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    return-void
.end method

.method setUpAsForeground(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/example/android/musicplayer/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x8000000

    .line 436
    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 439
    .local v0, "pi":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    .line 440
    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    iput-object p1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 441
    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    const v2, 0x7f020005

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 442
    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 443
    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "RandomMusicPlayer"

    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 445
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v1, v2}, Lcom/example/android/musicplayer/MusicService;->startForeground(ILandroid/app/Notification;)V

    .line 446
    return-void
.end method

.method tryToGetAudioFocus()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$AudioFocus;->Focused:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocusHelper:Lcom/example/android/musicplayer/AudioFocusHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocusHelper:Lcom/example/android/musicplayer/AudioFocusHelper;

    .line 343
    invoke-virtual {v0}, Lcom/example/android/musicplayer/AudioFocusHelper;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->Focused:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    iput-object v0, p0, Lcom/example/android/musicplayer/MusicService;->mAudioFocus:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    .line 345
    :cond_0
    return-void
.end method

.method updateNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    .line 424
    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/example/android/musicplayer/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x8000000

    .line 423
    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 426
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/example/android/musicplayer/MusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "RandomMusicPlayer"

    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 427
    iget-object v1, p0, Lcom/example/android/musicplayer/MusicService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/example/android/musicplayer/MusicService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 428
    return-void
.end method

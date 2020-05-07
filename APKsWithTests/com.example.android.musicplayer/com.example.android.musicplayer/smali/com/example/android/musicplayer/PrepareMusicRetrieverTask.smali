.class public Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;
.super Landroid/os/AsyncTask;
.source "PrepareMusicRetrieverTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mListener:Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;

.field mRetriever:Lcom/example/android/musicplayer/MusicRetriever;


# direct methods
.method public constructor <init>(Lcom/example/android/musicplayer/MusicRetriever;Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;)V
    .locals 0
    .param p1, "retriever"    # Lcom/example/android/musicplayer/MusicRetriever;
    .param p2, "listener"    # Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;->mRetriever:Lcom/example/android/musicplayer/MusicRetriever;

    .line 33
    iput-object p2, p0, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;->mListener:Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;

    .line 34
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;->mRetriever:Lcom/example/android/musicplayer/MusicRetriever;

    invoke-virtual {v0}, Lcom/example/android/musicplayer/MusicRetriever;->prepare()V

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask;->mListener:Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;

    invoke-interface {v0}, Lcom/example/android/musicplayer/PrepareMusicRetrieverTask$MusicRetrieverPreparedListener;->onMusicRetrieverPrepared()V

    .line 45
    return-void
.end method

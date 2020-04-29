.class public Lcom/example/android/musicplayer/MusicRetriever$Item;
.super Ljava/lang/Object;
.source "MusicRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/musicplayer/MusicRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field id:J

.field final synthetic this$0:Lcom/example/android/musicplayer/MusicRetriever;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/example/android/musicplayer/MusicRetriever;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/android/musicplayer/MusicRetriever;
    .param p2, "id"    # J
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/example/android/musicplayer/MusicRetriever$Item;->this$0:Lcom/example/android/musicplayer/MusicRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-wide p2, p0, Lcom/example/android/musicplayer/MusicRetriever$Item;->id:J

    .line 108
    iput-object p4, p0, Lcom/example/android/musicplayer/MusicRetriever$Item;->title:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/example/android/musicplayer/MusicRetriever$Item;->id:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/example/android/musicplayer/MusicRetriever$Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 114
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/example/android/musicplayer/MusicRetriever$Item;->id:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

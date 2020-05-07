.class final enum Lcom/example/android/musicplayer/MusicService$State;
.super Ljava/lang/Enum;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/musicplayer/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/example/android/musicplayer/MusicService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/android/musicplayer/MusicService$State;

.field public static final enum Paused:Lcom/example/android/musicplayer/MusicService$State;

.field public static final enum Playing:Lcom/example/android/musicplayer/MusicService$State;

.field public static final enum Preparing:Lcom/example/android/musicplayer/MusicService$State;

.field public static final enum Retrieving:Lcom/example/android/musicplayer/MusicService$State;

.field public static final enum Stopped:Lcom/example/android/musicplayer/MusicService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/example/android/musicplayer/MusicService$State;

    const-string v1, "Retrieving"

    invoke-direct {v0, v1, v2}, Lcom/example/android/musicplayer/MusicService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$State;->Retrieving:Lcom/example/android/musicplayer/MusicService$State;

    .line 63
    new-instance v0, Lcom/example/android/musicplayer/MusicService$State;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v3}, Lcom/example/android/musicplayer/MusicService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    .line 64
    new-instance v0, Lcom/example/android/musicplayer/MusicService$State;

    const-string v1, "Preparing"

    invoke-direct {v0, v1, v4}, Lcom/example/android/musicplayer/MusicService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$State;->Preparing:Lcom/example/android/musicplayer/MusicService$State;

    .line 65
    new-instance v0, Lcom/example/android/musicplayer/MusicService$State;

    const-string v1, "Playing"

    invoke-direct {v0, v1, v5}, Lcom/example/android/musicplayer/MusicService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    .line 68
    new-instance v0, Lcom/example/android/musicplayer/MusicService$State;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v6}, Lcom/example/android/musicplayer/MusicService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$State;->Paused:Lcom/example/android/musicplayer/MusicService$State;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/example/android/musicplayer/MusicService$State;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Retrieving:Lcom/example/android/musicplayer/MusicService$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Stopped:Lcom/example/android/musicplayer/MusicService$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Preparing:Lcom/example/android/musicplayer/MusicService$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Playing:Lcom/example/android/musicplayer/MusicService$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/example/android/musicplayer/MusicService$State;->Paused:Lcom/example/android/musicplayer/MusicService$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/example/android/musicplayer/MusicService$State;->$VALUES:[Lcom/example/android/musicplayer/MusicService$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/android/musicplayer/MusicService$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/example/android/musicplayer/MusicService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/android/musicplayer/MusicService$State;

    return-object v0
.end method

.method public static values()[Lcom/example/android/musicplayer/MusicService$State;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/example/android/musicplayer/MusicService$State;->$VALUES:[Lcom/example/android/musicplayer/MusicService$State;

    invoke-virtual {v0}, [Lcom/example/android/musicplayer/MusicService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/android/musicplayer/MusicService$State;

    return-object v0
.end method

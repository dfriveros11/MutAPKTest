.class final enum Lcom/example/android/musicplayer/MusicService$AudioFocus;
.super Ljava/lang/Enum;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/musicplayer/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AudioFocus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/example/android/musicplayer/MusicService$AudioFocus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/android/musicplayer/MusicService$AudioFocus;

.field public static final enum Focused:Lcom/example/android/musicplayer/MusicService$AudioFocus;

.field public static final enum NoFocusCanDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

.field public static final enum NoFocusNoDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;

    const-string v1, "NoFocusNoDuck"

    invoke-direct {v0, v1, v2}, Lcom/example/android/musicplayer/MusicService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusNoDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    .line 92
    new-instance v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;

    const-string v1, "NoFocusCanDuck"

    invoke-direct {v0, v1, v3}, Lcom/example/android/musicplayer/MusicService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusCanDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    .line 93
    new-instance v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;

    const-string v1, "Focused"

    invoke-direct {v0, v1, v4}, Lcom/example/android/musicplayer/MusicService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->Focused:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/example/android/musicplayer/MusicService$AudioFocus;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusNoDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/example/android/musicplayer/MusicService$AudioFocus;->NoFocusCanDuck:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/example/android/musicplayer/MusicService$AudioFocus;->Focused:Lcom/example/android/musicplayer/MusicService$AudioFocus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->$VALUES:[Lcom/example/android/musicplayer/MusicService$AudioFocus;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/android/musicplayer/MusicService$AudioFocus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;

    return-object v0
.end method

.method public static values()[Lcom/example/android/musicplayer/MusicService$AudioFocus;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/example/android/musicplayer/MusicService$AudioFocus;->$VALUES:[Lcom/example/android/musicplayer/MusicService$AudioFocus;

    invoke-virtual {v0}, [Lcom/example/android/musicplayer/MusicService$AudioFocus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/android/musicplayer/MusicService$AudioFocus;

    return-object v0
.end method

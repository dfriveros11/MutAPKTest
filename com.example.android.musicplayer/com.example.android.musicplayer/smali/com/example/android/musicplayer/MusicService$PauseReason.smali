.class final enum Lcom/example/android/musicplayer/MusicService$PauseReason;
.super Ljava/lang/Enum;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/musicplayer/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PauseReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/example/android/musicplayer/MusicService$PauseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/android/musicplayer/MusicService$PauseReason;

.field public static final enum FocusLoss:Lcom/example/android/musicplayer/MusicService$PauseReason;

.field public static final enum UserRequest:Lcom/example/android/musicplayer/MusicService$PauseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/example/android/musicplayer/MusicService$PauseReason;

    const-string v1, "UserRequest"

    invoke-direct {v0, v1, v2}, Lcom/example/android/musicplayer/MusicService$PauseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$PauseReason;->UserRequest:Lcom/example/android/musicplayer/MusicService$PauseReason;

    .line 83
    new-instance v0, Lcom/example/android/musicplayer/MusicService$PauseReason;

    const-string v1, "FocusLoss"

    invoke-direct {v0, v1, v3}, Lcom/example/android/musicplayer/MusicService$PauseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/android/musicplayer/MusicService$PauseReason;->FocusLoss:Lcom/example/android/musicplayer/MusicService$PauseReason;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/example/android/musicplayer/MusicService$PauseReason;

    sget-object v1, Lcom/example/android/musicplayer/MusicService$PauseReason;->UserRequest:Lcom/example/android/musicplayer/MusicService$PauseReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/example/android/musicplayer/MusicService$PauseReason;->FocusLoss:Lcom/example/android/musicplayer/MusicService$PauseReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/example/android/musicplayer/MusicService$PauseReason;->$VALUES:[Lcom/example/android/musicplayer/MusicService$PauseReason;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/android/musicplayer/MusicService$PauseReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/example/android/musicplayer/MusicService$PauseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/android/musicplayer/MusicService$PauseReason;

    return-object v0
.end method

.method public static values()[Lcom/example/android/musicplayer/MusicService$PauseReason;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/example/android/musicplayer/MusicService$PauseReason;->$VALUES:[Lcom/example/android/musicplayer/MusicService$PauseReason;

    invoke-virtual {v0}, [Lcom/example/android/musicplayer/MusicService$PauseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/android/musicplayer/MusicService$PauseReason;

    return-object v0
.end method

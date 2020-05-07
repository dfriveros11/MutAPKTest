.class public final enum Lcom/bwx/bequick/handlers/wimax/FourGState;
.super Ljava/lang/Enum;
.source "FourGState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bwx/bequick/handlers/wimax/FourGState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bwx/bequick/handlers/wimax/FourGState;

.field public static final enum OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

.field public static final enum ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

.field public static final enum TURNING_OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

.field public static final enum TURNING_ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

.field public static final enum UNKNOWN:Lcom/bwx/bequick/handlers/wimax/FourGState;


# instance fields
.field private final statusResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/bwx/bequick/handlers/wimax/FourGState;

    const-string v1, "TURNING_ON"

    const v2, 0x7f060004

    invoke-direct {v0, v1, v3, v2}, Lcom/bwx/bequick/handlers/wimax/FourGState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bwx/bequick/handlers/wimax/FourGState;->TURNING_ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    .line 27
    new-instance v0, Lcom/bwx/bequick/handlers/wimax/FourGState;

    const-string v1, "TURNING_OFF"

    const v2, 0x7f060005

    invoke-direct {v0, v1, v4, v2}, Lcom/bwx/bequick/handlers/wimax/FourGState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bwx/bequick/handlers/wimax/FourGState;->TURNING_OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

    .line 28
    new-instance v0, Lcom/bwx/bequick/handlers/wimax/FourGState;

    const-string v1, "ON"

    const v2, 0x7f060002

    invoke-direct {v0, v1, v5, v2}, Lcom/bwx/bequick/handlers/wimax/FourGState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bwx/bequick/handlers/wimax/FourGState;->ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    .line 29
    new-instance v0, Lcom/bwx/bequick/handlers/wimax/FourGState;

    const-string v1, "OFF"

    const v2, 0x7f060003

    invoke-direct {v0, v1, v6, v2}, Lcom/bwx/bequick/handlers/wimax/FourGState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bwx/bequick/handlers/wimax/FourGState;->OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

    .line 30
    new-instance v0, Lcom/bwx/bequick/handlers/wimax/FourGState;

    const-string v1, "UNKNOWN"

    const v2, 0x7f060001

    invoke-direct {v0, v1, v7, v2}, Lcom/bwx/bequick/handlers/wimax/FourGState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bwx/bequick/handlers/wimax/FourGState;->UNKNOWN:Lcom/bwx/bequick/handlers/wimax/FourGState;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bwx/bequick/handlers/wimax/FourGState;

    sget-object v1, Lcom/bwx/bequick/handlers/wimax/FourGState;->TURNING_ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bwx/bequick/handlers/wimax/FourGState;->TURNING_OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bwx/bequick/handlers/wimax/FourGState;->ON:Lcom/bwx/bequick/handlers/wimax/FourGState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bwx/bequick/handlers/wimax/FourGState;->OFF:Lcom/bwx/bequick/handlers/wimax/FourGState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bwx/bequick/handlers/wimax/FourGState;->UNKNOWN:Lcom/bwx/bequick/handlers/wimax/FourGState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/bwx/bequick/handlers/wimax/FourGState;->$VALUES:[Lcom/bwx/bequick/handlers/wimax/FourGState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "statusResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/bwx/bequick/handlers/wimax/FourGState;->statusResourceId:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bwx/bequick/handlers/wimax/FourGState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/bwx/bequick/handlers/wimax/FourGState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/handlers/wimax/FourGState;

    return-object v0
.end method

.method public static values()[Lcom/bwx/bequick/handlers/wimax/FourGState;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/bwx/bequick/handlers/wimax/FourGState;->$VALUES:[Lcom/bwx/bequick/handlers/wimax/FourGState;

    invoke-virtual {v0}, [Lcom/bwx/bequick/handlers/wimax/FourGState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bwx/bequick/handlers/wimax/FourGState;

    return-object v0
.end method


# virtual methods
.method public getStatusResourceId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/bwx/bequick/handlers/wimax/FourGState;->statusResourceId:I

    return v0
.end method

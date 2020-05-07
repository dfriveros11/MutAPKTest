.class public Lcom/bwx/bequick/handlers/ScreenTimeoutValues;
.super Ljava/lang/Object;
.source "ScreenTimeoutValues.java"


# static fields
.field public static final INDEX_NEVER:I = -0x1

.field private static TIMEOUTS:[I

.field private static VALUES:[I


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->VALUES:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->TIMEOUTS:[I

    return-void

    .line 28
    :array_0
    .array-data 4
        0xf
        0x1e
        0x1
        0x2
        0xa
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0x3a98
        0x7530
        0xea60
        0x1d4c0
        0x927c0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public getDescriptionByIndex(I)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 53
    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->mContext:Landroid/content/Context;

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "descr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 42
    .end local v0    # "descr":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->mContext:Landroid/content/Context;

    const v2, 0x7f060027

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->VALUES:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .restart local v0    # "descr":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v0    # "descr":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->mContext:Landroid/content/Context;

    const v2, 0x7f060028

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->VALUES:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .restart local v0    # "descr":Ljava/lang/String;
    goto :goto_0

    .line 50
    .end local v0    # "descr":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->mContext:Landroid/content/Context;

    const v2, 0x7f060029

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->VALUES:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .restart local v0    # "descr":Ljava/lang/String;
    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getNumberOfValues()I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->VALUES:[I

    array-length v0, v0

    return v0
.end method

.method public getTimeoutByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, -0x1

    .line 60
    if-gt p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/bwx/bequick/handlers/ScreenTimeoutValues;->TIMEOUTS:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.class public Lcom/bwx/bequick/flashlight/HtcLedFlashlight;
.super Ljava/lang/Object;
.source "HtcLedFlashlight.java"

# interfaces
.implements Lcom/bwx/bequick/flashlight/Flashlight;


# static fields
.field private static final OFF:Ljava/lang/String; = "0"

.field private static final ON:Ljava/lang/String; = "126"

.field private static final PATH:Ljava/lang/String; = "/sys/devices/platform/flashlight.0/leds/flashlight/brightness"

.field private static final TAG:Ljava/lang/String; = "qs.htcled"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/flashlight.0/leds/flashlight/brightness"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->mFile:Ljava/io/File;

    .line 40
    return-void
.end method

.method private readValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->mFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 64
    if-eqz v1, :cond_0

    .line 66
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v0, v1

    .line 62
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "value":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v4

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 64
    if-eqz v0, :cond_1

    .line 66
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 67
    :catch_1
    move-exception v5

    goto :goto_1

    .line 64
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_2

    .line 66
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 69
    :cond_2
    :goto_4
    throw v4

    .line 67
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "value":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "value":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 64
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 61
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private writeValue(Ljava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    const/4 v3, 0x1

    .line 88
    if-eqz v2, :cond_0

    .line 90
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    .line 86
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return v3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v3, 0x0

    .line 88
    if-eqz v1, :cond_1

    .line 90
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 91
    :catch_1
    move-exception v4

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 90
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 93
    :cond_2
    :goto_4
    throw v3

    .line 91
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 88
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 85
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x2

    return v0
.end method

.method public isOn(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->readValue()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 45
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 47
    :cond_0
    return v1
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 100
    .local v0, "supported":Z
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->setOn(ZLandroid/content/Context;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->isOn(Landroid/content/Context;)Z

    move-result v0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->setOn(ZLandroid/content/Context;)V

    .line 105
    :cond_0
    const-string v1, "qs.htcled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v0
.end method

.method public setOn(ZLandroid/content/Context;)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    const-string v0, "126"

    :goto_0
    invoke-direct {p0, v0}, Lcom/bwx/bequick/flashlight/HtcLedFlashlight;->writeValue(Ljava/lang/String;)Z

    .line 53
    return-void

    .line 52
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

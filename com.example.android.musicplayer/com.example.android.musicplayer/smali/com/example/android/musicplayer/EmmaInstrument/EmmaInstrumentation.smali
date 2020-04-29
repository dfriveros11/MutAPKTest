.class public Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;
.super Landroid/app/Instrumentation;
.source "EmmaInstrumentation.java"

# interfaces
.implements Lcom/example/android/musicplayer/EmmaInstrument/FinishListener;


# static fields
.field private static final DEFAULT_COVERAGE_FILE_PATH:Ljava/lang/String; = "/mnt/sdcard/coverage.ec"

.field private static final LOGD:Z = true

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mCoverage:Z

.field private mCoverageFilePath:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private final mResults:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "EmmaInstrumentation:"

    sput-object v0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mResults:Landroid/os/Bundle;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mCoverage:Z

    .line 33
    return-void
.end method

.method private generateCoverageReport()V
    .locals 8

    .prologue
    .line 69
    sget-object v4, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->TAG:Ljava/lang/String;

    const-string v5, "generateCoverageReport()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->getCoverageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "coverageFile":Ljava/io/File;
    :try_start_0
    const-string v4, "com.vladium.emma.rt.RT"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 81
    .local v3, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 81
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 84
    .local v1, "dumpCoverageMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 98
    .end local v1    # "dumpCoverageMethod":Ljava/lang/reflect/Method;
    .end local v3    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "Emma.jar not in the class path?"

    invoke-direct {p0, v4, v2}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 87
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, v2}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 89
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, v2}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 91
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v2}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 93
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v2}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 95
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v2}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "tagString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCoverageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mCoverageFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "/mnt/sdcard/coverage.ec"

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mCoverageFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 117
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 118
    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate emma coverage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    iget-object v1, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mResults:Landroid/os/Bundle;

    const-string v2, "stream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private setCoverageFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mCoverageFilePath:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dumpIntermediateCoverage(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intermidate Dump Called with file name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mCoverage:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, p1}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->setCoverageFilePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set the given file path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as dump target."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->generateCoverageReport()V

    .line 150
    const-string v0, "/mnt/sdcard/coverage.ec"

    invoke-direct {p0, v0}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->setCoverageFilePath(Ljava/lang/String;)Z

    .line 152
    :cond_1
    return-void
.end method

.method public onActivityFinished()V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->TAG:Ljava/lang/String;

    const-string v1, "onActivityFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mCoverage:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->generateCoverageReport()V

    .line 134
    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->finish(ILandroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 37
    sget-object v0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 40
    if-eqz p1, :cond_0

    .line 41
    const-string v0, "coverage"

    invoke-direct {p0, p1, v0}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mCoverage:Z

    .line 42
    const-string v0, "coverageFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mCoverageFilePath:Ljava/lang/String;

    .line 45
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mIntent:Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->start()V

    .line 48
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 53
    sget-object v1, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->TAG:Ljava/lang/String;

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0}, Landroid/app/Instrumentation;->onStart()V

    .line 56
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 57
    iget-object v1, p0, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/example/android/musicplayer/EmmaInstrument/EmmaInstrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;

    .line 58
    .local v0, "activity":Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;
    invoke-virtual {v0, p0}, Lcom/example/android/musicplayer/EmmaInstrument/InstrumentedActivity;->setFinishListener(Lcom/example/android/musicplayer/EmmaInstrument/FinishListener;)V

    .line 59
    return-void
.end method

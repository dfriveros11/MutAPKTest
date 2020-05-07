.class public Lcom/bwx/bequick/handlers/autosync/SyncControl16;
.super Ljava/lang/Object;
.source "SyncControl16.java"

# interfaces
.implements Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncControl16"


# instance fields
.field private final PROVIDERS:[Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContentService:Ljava/lang/Object;

.field private final mMethods:[Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "gmail-ls"

    aput-object v4, v3, v7

    const-string v4, "contacts"

    aput-object v4, v3, v8

    const-string v4, "calendar"

    aput-object v4, v3, v9

    iput-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->PROVIDERS:[Ljava/lang/String;

    .line 37
    new-array v3, v5, [Ljava/lang/reflect/Method;

    iput-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mMethods:[Ljava/lang/reflect/Method;

    .line 40
    iput-object p1, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    iget-object v2, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mMethods:[Ljava/lang/reflect/Method;

    .line 44
    .local v2, "methods":[Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getContentService"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, "getContentService":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentResolver:Landroid/content/ContentResolver;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "contentService":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setListenForNetworkTickles"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v2, v7

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getListenForNetworkTickles"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v2, v8

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSyncProviderAutomatically"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v2, v9

    .line 50
    iput-object v0, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentService:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private cancelSync(Ljava/lang/String;)V
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/net/Uri;)V

    .line 102
    return-void
.end method

.method private getSyncProviderAutomatically(Ljava/lang/String;)Z
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mMethods:[Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentService:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 86
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 89
    .end local v1    # "result":Ljava/lang/Boolean;
    :goto_0
    return v2

    .line 86
    .restart local v1    # "result":Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 87
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SyncControl16"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startSync(Ljava/lang/String;)V
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    .local v1, "uriToSync":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "force"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    iget-object v2, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 98
    return-void

    .line 94
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "uriToSync":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public isSyncActivated()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 55
    :try_start_0
    iget-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mMethods:[Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentService:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 56
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 59
    .end local v1    # "result":Ljava/lang/Boolean;
    :goto_0
    return v2

    .line 56
    .restart local v1    # "result":Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 57
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SyncControl16"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSyncActivated(Z)V
    .locals 8
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x0

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mMethods:[Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->mContentService:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-eqz p1, :cond_1

    .line 69
    iget-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->PROVIDERS:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 71
    .local v1, "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->getSyncProviderAutomatically(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v1}, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->startSync(Ljava/lang/String;)V

    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "provider":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->PROVIDERS:[Ljava/lang/String;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 75
    .restart local v1    # "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/bwx/bequick/handlers/autosync/SyncControl16;->cancelSync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SyncControl16"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

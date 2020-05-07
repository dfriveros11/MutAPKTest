.class public Lcom/bwx/bequick/handlers/autosync/SyncControl15;
.super Landroid/content/ContentQueryMap;
.source "SyncControl15.java"

# interfaces
.implements Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;


# static fields
.field private static final LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen_for_tickles"

.field private static final SYNC_PROVIDER_PREFIX:Ljava/lang/String; = "sync_provider_"


# instance fields
.field protected final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 40
    const-string v0, "name"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 41
    iput-object p1, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 46
    .local v0, "values":Landroid/content/ContentValues;
    invoke-direct {p0, v0, p2}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->isEnabled(Landroid/content/ContentValues;Z)Z

    move-result v1

    return v1
.end method

.method private isEnabled(Landroid/content/ContentValues;Z)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "def"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_0

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .end local p2    # "def":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "def":Z
    :cond_1
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method private putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # Z

    .prologue
    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "value"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 58
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->setKeepUpdated(Z)V

    .line 107
    return-void
.end method

.method public cancelOrStartSyncForEnabledProviders(Z)V
    .locals 6
    .param p1, "startSync"    # Z

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->getRows()Ljava/util/Map;

    move-result-object v3

    .line 86
    .local v3, "rows":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    .line 87
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "key":Ljava/lang/String;
    const-string v5, "sync_provider_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 92
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->isEnabled(Landroid/content/ContentValues;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const-string v5, "sync_provider_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "provider":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p0, v2}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->startSync(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, v2}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->cancelSync(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "provider":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method protected cancelSync(Ljava/lang/String;)V
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->mContentResolver:Landroid/content/ContentResolver;

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

    .line 69
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->setKeepUpdated(Z)V

    .line 111
    return-void
.end method

.method public isSyncActivated()Z
    .locals 2

    .prologue
    .line 77
    const-string v0, "listen_for_tickles"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setListenForNetworkTickles(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "flag"    # Z

    .prologue
    .line 81
    const-string v0, "listen_for_tickles"

    invoke-direct {p0, p1, v0, p2}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public setSyncActivated(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0, p1}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->setListenForNetworkTickles(Landroid/content/ContentResolver;Z)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->cancelOrStartSyncForEnabledProviders(Z)V

    .line 74
    return-void
.end method

.method protected startSync(Ljava/lang/String;)V
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 61
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

    .line 62
    .local v1, "uriToSync":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "force"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    iget-object v2, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl15;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 65
    return-void

    .line 61
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "uriToSync":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

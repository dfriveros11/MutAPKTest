.class public Lcom/bwx/bequick/handlers/autosync/SyncControl20;
.super Ljava/lang/Object;
.source "SyncControl20.java"

# interfaces
.implements Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncControl20"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl20;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    .line 44
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public isSyncActivated()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public setSyncActivated(Z)V
    .locals 12
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 62
    if-eqz p1, :cond_2

    .line 63
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 64
    .local v4, "types":[Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/bwx/bequick/handlers/autosync/SyncControl20;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 65
    .local v0, "accmgr":Landroid/accounts/AccountManager;
    array-length v8, v4

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v3, v4, v7

    .line 67
    .local v3, "type":Landroid/content/SyncAdapterType;
    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 68
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v9, v2

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_1

    aget-object v1, v2, v5

    .line 74
    .local v1, "account":Landroid/accounts/Account;
    iget-object v10, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 77
    iget-object v10, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v10, v11}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 68
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "account":Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 82
    .end local v0    # "accmgr":Landroid/accounts/AccountManager;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "type":Landroid/content/SyncAdapterType;
    .end local v4    # "types":[Landroid/content/SyncAdapterType;
    :cond_2
    return-void
.end method

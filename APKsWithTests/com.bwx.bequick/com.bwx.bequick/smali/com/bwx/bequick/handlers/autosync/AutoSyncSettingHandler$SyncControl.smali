.class public interface abstract Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;
.super Ljava/lang/Object;
.source "AutoSyncSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncControl"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY:Ljava/lang/String; = "name"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://sync/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bwx/bequick/handlers/autosync/AutoSyncSettingHandler$SyncControl;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract activate()V
.end method

.method public abstract deactivate()V
.end method

.method public abstract isSyncActivated()Z
.end method

.method public abstract setSyncActivated(Z)V
.end method

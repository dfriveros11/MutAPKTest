.class public abstract Lcom/bwx/bequick/fwk/SettingHandler;
.super Ljava/lang/Object;
.source "SettingHandler.java"


# instance fields
.field protected mActivity:Lcom/bwx/bequick/MainSettingsActivity;

.field protected final mSetting:Lcom/bwx/bequick/fwk/Setting;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bwx/bequick/fwk/SettingHandler;->mSetting:Lcom/bwx/bequick/fwk/Setting;

    .line 30
    invoke-virtual {p1, p0}, Lcom/bwx/bequick/fwk/Setting;->assignHandler(Lcom/bwx/bequick/fwk/SettingHandler;)V

    .line 31
    return-void
.end method


# virtual methods
.method public abstract activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract deactivate()V
.end method

.method protected varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bwx/bequick/fwk/SettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bwx/bequick/MainSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onSelected(I)V
.end method

.method public abstract onSwitched(Z)V
.end method

.method public abstract onValueChanged(I)V
.end method

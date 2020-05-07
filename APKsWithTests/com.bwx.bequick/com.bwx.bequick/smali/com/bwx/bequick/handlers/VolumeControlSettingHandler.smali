.class public Lcom/bwx/bequick/handlers/VolumeControlSettingHandler;
.super Lcom/bwx/bequick/fwk/SettingHandler;
.source "VolumeControlSettingHandler.java"


# instance fields
.field private mDialog:Lcom/bwx/bequick/handlers/VolumeDialog;


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/fwk/Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/bwx/bequick/fwk/SettingHandler;-><init>(Lcom/bwx/bequick/fwk/Setting;)V

    .line 29
    return-void
.end method


# virtual methods
.method public activate(Lcom/bwx/bequick/MainSettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/bwx/bequick/MainSettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bwx/bequick/handlers/VolumeControlSettingHandler;->mActivity:Lcom/bwx/bequick/MainSettingsActivity;

    .line 34
    new-instance v0, Lcom/bwx/bequick/handlers/VolumeDialog;

    invoke-direct {v0, p1}, Lcom/bwx/bequick/handlers/VolumeDialog;-><init>(Lcom/bwx/bequick/MainSettingsActivity;)V

    iput-object v0, p0, Lcom/bwx/bequick/handlers/VolumeControlSettingHandler;->mDialog:Lcom/bwx/bequick/handlers/VolumeDialog;

    .line 35
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeControlSettingHandler;->mDialog:Lcom/bwx/bequick/handlers/VolumeDialog;

    invoke-virtual {v0}, Lcom/bwx/bequick/handlers/VolumeDialog;->dismiss()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bwx/bequick/handlers/VolumeControlSettingHandler;->mDialog:Lcom/bwx/bequick/handlers/VolumeDialog;

    .line 41
    return-void
.end method

.method public onSelected(I)V
    .locals 1
    .param p1, "buttonIndex"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bwx/bequick/handlers/VolumeControlSettingHandler;->mDialog:Lcom/bwx/bequick/handlers/VolumeDialog;

    .line 46
    .local v0, "dialog":Lcom/bwx/bequick/handlers/VolumeDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bwx/bequick/handlers/VolumeDialog;->show()V

    .line 47
    :cond_0
    return-void
.end method

.method public onSwitched(Z)V
    .locals 0
    .param p1, "switched"    # Z

    .prologue
    .line 52
    return-void
.end method

.method public onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 57
    return-void
.end method

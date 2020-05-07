.class public Lcom/bwx/bequick/LayoutSettingsActivity;
.super Landroid/app/ListActivity;
.source "LayoutSettingsActivity.java"


# instance fields
.field private mApplication:Lcom/bwx/bequick/SettingsApplication;

.field private mSettingsAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/LayoutSettingsActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/bwx/bequick/LayoutSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/SettingsApplication;

    iput-object v0, p0, Lcom/bwx/bequick/LayoutSettingsActivity;->mApplication:Lcom/bwx/bequick/SettingsApplication;

    .line 34
    new-instance v0, Lcom/bwx/bequick/LayoutSettingsAdapter;

    iget-object v1, p0, Lcom/bwx/bequick/LayoutSettingsActivity;->mApplication:Lcom/bwx/bequick/SettingsApplication;

    invoke-virtual {v1}, Lcom/bwx/bequick/SettingsApplication;->getSettings()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bwx/bequick/LayoutSettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bwx/bequick/LayoutSettingsActivity;->mSettingsAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    .line 35
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsActivity;->mSettingsAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/LayoutSettingsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/LayoutSettingsActivity;->setVisible(Z)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 40
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsActivity;->mSettingsAdapter:Lcom/bwx/bequick/LayoutSettingsAdapter;

    invoke-virtual {v0}, Lcom/bwx/bequick/LayoutSettingsAdapter;->notifyDataSetChanged()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bwx/bequick/LayoutSettingsActivity;->setVisible(Z)V

    .line 42
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 52
    iget-object v0, p0, Lcom/bwx/bequick/LayoutSettingsActivity;->mApplication:Lcom/bwx/bequick/SettingsApplication;

    invoke-virtual {v0}, Lcom/bwx/bequick/SettingsApplication;->persistSettings()V

    .line 53
    return-void
.end method

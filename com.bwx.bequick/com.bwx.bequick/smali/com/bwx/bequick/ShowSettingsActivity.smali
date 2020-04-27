.class public Lcom/bwx/bequick/ShowSettingsActivity;
.super Landroid/app/Activity;
.source "ShowSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowSettingsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/bwx/bequick/ShowSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bwx/bequick/SettingsApplication;

    .line 44
    .local v0, "app":Lcom/bwx/bequick/SettingsApplication;
    invoke-virtual {v0}, Lcom/bwx/bequick/SettingsApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 46
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "viewMode"

    const-string v8, "0"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "appearance":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v3, "com.bwx.bequick.MainSettingsActivity"

    .line 49
    .local v3, "className":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/bwx/bequick/ShowSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/bwx/bequick/ShowSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    invoke-virtual {p0}, Lcom/bwx/bequick/ShowSettingsActivity;->finish()V

    .line 73
    return-void

    .line 47
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "com.bwx.bequick.DialogSettingsActivity"

    goto :goto_0

    .line 57
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "ShowSettingsActivity"

    const-string v8, "cannot dispatch launch request"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f06004f

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f06001b

    new-instance v9, Lcom/bwx/bequick/ShowSettingsActivity$1;

    invoke-direct {v9, p0}, Lcom/bwx/bequick/ShowSettingsActivity$1;-><init>(Lcom/bwx/bequick/ShowSettingsActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 69
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

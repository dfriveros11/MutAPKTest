.class public Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarIntegrationReceiver.java"


# static fields
.field private static final SHORTCUT_NOTIFICATION:I


# instance fields
.field private mNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private declared-synchronized sendNotification(Landroid/content/Context;IIZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I
    .param p3, "appearance"    # I
    .param p4, "inverse"    # Z

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;->mNotification:Landroid/app/Notification;

    .line 81
    .local v6, "notification":Landroid/app/Notification;
    if-nez v6, :cond_0

    .line 84
    new-instance v6, Landroid/app/Notification;

    .end local v6    # "notification":Landroid/app/Notification;
    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 85
    .restart local v6    # "notification":Landroid/app/Notification;
    iget v10, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 86
    iget v10, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 87
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f03001a

    invoke-direct {v8, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 90
    .local v8, "view":Landroid/widget/RemoteViews;
    const v11, 0x7f090023

    if-eqz p4, :cond_1

    const v10, 0x7f020019

    :goto_0
    invoke-virtual {v8, v11, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 91
    if-eqz p4, :cond_2

    const/4 v1, -0x1

    .line 92
    .local v1, "color":I
    :goto_1
    const v10, 0x7f090024

    invoke-virtual {v8, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 93
    const v10, 0x7f090025

    invoke-virtual {v8, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 95
    iput-object v6, p0, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;->mNotification:Landroid/app/Notification;

    .line 101
    .end local v1    # "color":I
    .end local v8    # "view":Landroid/widget/RemoteViews;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v4, "intent":Landroid/content/Intent;
    if-nez p3, :cond_3

    const-string v0, "com.bwx.bequick.MainSettingsActivity"

    .line 103
    .local v0, "className":Ljava/lang/String;
    :goto_2
    const-string v10, "com.bwx.bequick"

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 107
    const-string v10, "notification"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 108
    .local v5, "mgr":Landroid/app/NotificationManager;
    if-nez p2, :cond_4

    .line 110
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_3
    monitor-exit p0

    return-void

    .line 90
    .end local v0    # "className":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "mgr":Landroid/app/NotificationManager;
    .restart local v8    # "view":Landroid/widget/RemoteViews;
    :cond_1
    const v10, 0x7f020018

    goto :goto_0

    .line 91
    :cond_2
    const/high16 v1, -0x1000000

    goto :goto_1

    .line 102
    .end local v8    # "view":Landroid/widget/RemoteViews;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    const-string v0, "com.bwx.bequick.DialogSettingsActivity"

    goto :goto_2

    .line 113
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v5    # "mgr":Landroid/app/NotificationManager;
    :cond_4
    sget v10, Lcom/bwx/bequick/Constants;->SDK_VERSION:I

    const/16 v11, 0x9

    if-lt v10, v11, :cond_6

    const/4 v7, 0x1

    .line 115
    .local v7, "sdk9OrLater":Z
    :goto_4
    const/4 v10, 0x1

    if-eq p2, v10, :cond_7

    const/4 v9, 0x1

    .line 116
    .local v9, "visible":Z
    :goto_5
    if-eqz v9, :cond_9

    const/4 v10, 0x2

    if-ne p2, v10, :cond_8

    const v10, 0x7f020018

    :goto_6
    iput v10, v6, Landroid/app/Notification;->icon:I

    .line 120
    if-eqz v7, :cond_b

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 121
    .local v2, "hiddenTime":J
    :goto_7
    if-eqz v9, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .end local v2    # "hiddenTime":J
    :cond_5
    iput-wide v2, v6, Landroid/app/Notification;->when:J

    .line 122
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 80
    .end local v0    # "className":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "mgr":Landroid/app/NotificationManager;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "sdk9OrLater":Z
    .end local v9    # "visible":Z
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 113
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "mgr":Landroid/app/NotificationManager;
    .restart local v6    # "notification":Landroid/app/Notification;
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 115
    .restart local v7    # "sdk9OrLater":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 116
    .restart local v9    # "visible":Z
    :cond_8
    const v10, 0x7f020019

    goto :goto_6

    :cond_9
    if-eqz v7, :cond_a

    const v10, 0x7f02001c

    goto :goto_6

    :cond_a
    const/4 v10, -0x1

    goto :goto_6

    .line 120
    :cond_b
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 49
    const-string v7, "Common"

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 51
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "statusBarIntegration"

    const-string v8, "-1"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 52
    .local v6, "status":I
    if-lez v6, :cond_0

    .line 54
    const-string v7, "viewMode"

    const-string v8, "0"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 55
    .local v2, "appearence":I
    const-string v7, "inverseSatusbarColor"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 56
    .local v4, "invert":Z
    invoke-direct {p0, p1, v6, v2, v4}, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;->sendNotification(Landroid/content/Context;IIZ)V

    .line 76
    .end local v2    # "appearence":I
    .end local v4    # "invert":Z
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v7, "com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    const-string v7, "status"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 62
    .restart local v6    # "status":I
    const-string v7, "appearence"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, "appearance":I
    const-string v7, "inversed"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 64
    .local v3, "inverse":Z
    invoke-direct {p0, p1, v6, v1, v3}, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;->sendNotification(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 66
    .end local v1    # "appearance":I
    .end local v3    # "inverse":Z
    .end local v6    # "status":I
    :cond_2
    const-string v7, "com.bwx.bequick.START_QS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver$1;

    invoke-direct {v8, p0, p1}, Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver$1;-><init>(Lcom/bwx/bequick/receivers/StatusBarIntegrationReceiver;Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

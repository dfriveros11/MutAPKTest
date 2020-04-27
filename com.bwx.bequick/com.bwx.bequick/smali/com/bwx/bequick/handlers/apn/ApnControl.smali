.class public Lcom/bwx/bequick/handlers/apn/ApnControl;
.super Ljava/lang/Object;
.source "ApnControl.java"


# static fields
.field private static final COLUMN_APN:Ljava/lang/String; = "apn"

.field private static final COLUMN_APN_ID:Ljava/lang/String; = "apn_id"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field private static final CURRENT_APNS:Landroid/net/Uri;

.field private static final MMS:Ljava/lang/String; = "mms"

.field private static final PREFERRED_APN:Landroid/net/Uri;

.field private static final PREFIX_MINUS:Ljava/lang/String; = "-"

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final STATE_MMS_ONLY:I = -0x1

.field public static final STATE_NO_APNS:I = 0x0

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x2

.field private static final SUFFIX_APN:Ljava/lang/String; = "apndroid"

.field private static final SUFFIX_QS_CLASSIC:Ljava/lang/String; = "[disabled]"

.field private static final TAG:Ljava/lang/String; = "bwx.ApnControl"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bwx/bequick/handlers/apn/ApnControl;->PROJECTION:[Ljava/lang/String;

    .line 63
    const-string v0, "content://telephony/carriers/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bwx/bequick/handlers/apn/ApnControl;->CURRENT_APNS:Landroid/net/Uri;

    .line 64
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bwx/bequick/handlers/apn/ApnControl;->PREFERRED_APN:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addModifier(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "modifierType"    # I
    .param p2, "modifier"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAdaptedValue(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "enable"    # Z
    .param p2, "modifierType"    # I

    .prologue
    .line 266
    invoke-static {p2}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getPreferedModifier(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "modifier":Ljava/lang/String;
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    .line 278
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    move-object p0, v0

    .line 269
    goto :goto_0

    .line 272
    :cond_2
    invoke-static {p0}, Lcom/bwx/bequick/handlers/apn/ApnControl;->removeModifiers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 274
    if-nez p1, :cond_0

    .line 275
    invoke-static {p0, p2, v0}, Lcom/bwx/bequick/handlers/apn/ApnControl;->addModifier(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getApnState(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 214
    invoke-static {p1}, Lcom/bwx/bequick/handlers/apn/ApnControl;->shouldDisableMms(Landroid/content/SharedPreferences;)Z

    move-result v9

    .line 216
    .local v9, "shouldDisableMms":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 218
    .local v8, "hasMMS":Z
    const/4 v6, 0x0

    .line 219
    .local v6, "counter":I
    const/4 v7, 0x0

    .line 221
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/bwx/bequick/handlers/apn/ApnControl;->CURRENT_APNS:Landroid/net/Uri;

    sget-object v2, Lcom/bwx/bequick/handlers/apn/ApnControl;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 222
    const-string v1, "type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 223
    .local v11, "typeIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 224
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 226
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "type":Ljava/lang/String;
    invoke-static {v10}, Lcom/bwx/bequick/handlers/apn/ApnControl;->isDisabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const/4 v1, 0x1

    .line 241
    if-eqz v7, :cond_0

    .line 242
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 245
    .end local v10    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 232
    .restart local v10    # "type":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v10}, Lcom/bwx/bequick/handlers/apn/ApnControl;->isMms(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v9, :cond_4

    .line 233
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 238
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "typeIndex":I
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 242
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 235
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "typeIndex":I
    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    .line 241
    .end local v10    # "type":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 242
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_6
    if-nez v6, :cond_8

    if-eqz v8, :cond_7

    const/4 v1, -0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private static getFirstCurrentApnId(Landroid/content/Context;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/bwx/bequick/handlers/apn/ApnControl;->CURRENT_APNS:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v4, "type"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 185
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 186
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "type":Ljava/lang/String;
    invoke-static {v7}, Lcom/bwx/bequick/handlers/apn/ApnControl;->isMms(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 193
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 195
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v2

    .line 190
    .restart local v7    # "type":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v7    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private static getPreferedApnIdFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v10, -0x1

    .line 159
    const-string v1, "preferredApn"

    invoke-interface {p1, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 160
    .local v8, "id":J
    cmp-long v1, v8, v10

    if-nez v1, :cond_1

    .line 172
    .end local v8    # "id":J
    :cond_0
    :goto_0
    return-wide v8

    .line 163
    .restart local v8    # "id":J
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/bwx/bequick/handlers/apn/ApnControl;->CURRENT_APNS:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 175
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v8, v10

    .line 172
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private static getPreferedApnIdFromProvider(Landroid/content/Context;)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/bwx/bequick/handlers/apn/ApnControl;->PREFERRED_APN:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 202
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 207
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_0
    :goto_0
    return-wide v2

    .line 207
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static getPreferedModifier(I)Ljava/lang/String;
    .locals 1
    .param p0, "modifierType"    # I

    .prologue
    .line 282
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 283
    const-string v0, "-"

    .line 285
    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "apndroid"

    goto :goto_0

    :cond_1
    const-string v0, "[disabled]"

    goto :goto_0
.end method

.method private static isDisabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p0, :cond_1

    const-string v0, "-"

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "apndroid"

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[disabled]"

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    .line 257
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMms(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 250
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeModifiers(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 290
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 293
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 291
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "[disabled]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "[disabled]"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 292
    :cond_2
    const-string v0, "apndroid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "apndroid"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static restorePreferredApn(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 131
    invoke-static {p0}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getPreferedApnIdFromProvider(Landroid/content/Context;)J

    move-result-wide v0

    .line 132
    .local v0, "id":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_0

    .line 133
    invoke-static {p0, p1}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getPreferedApnIdFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v0

    .line 134
    cmp-long v4, v0, v8

    if-nez v4, :cond_0

    .line 135
    invoke-static {p0}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getFirstCurrentApnId(Landroid/content/Context;)J

    move-result-wide v0

    .line 139
    :cond_0
    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    .line 140
    const-string v4, "bwx.ApnControl"

    const-string v5, "No prefered APN can be restored"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 147
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 149
    sget-object v4, Lcom/bwx/bequick/handlers/apn/ApnControl;->PREFERRED_APN:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    const-string v4, "apn_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    sget-object v4, Lcom/bwx/bequick/handlers/apn/ApnControl;->PREFERRED_APN:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    const-string v4, "bwx.ApnControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored prefered APN id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setApnState(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "enabled"    # Z

    .prologue
    .line 68
    invoke-static/range {p1 .. p1}, Lcom/bwx/bequick/handlers/apn/ApnControl;->shouldDisableMms(Landroid/content/SharedPreferences;)Z

    move-result v15

    .line 69
    .local v15, "shouldDisableMms":Z
    const-string v3, "restorePreferredApn"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 70
    .local v14, "restorePreferedApn":Z
    const-string v3, "apnModifier"

    const-string v4, "2"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 73
    .local v13, "modifierType":I
    if-nez p2, :cond_0

    invoke-static/range {p0 .. p1}, Lcom/bwx/bequick/handlers/apn/ApnControl;->storePreferredApn(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 76
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v18, "values":Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 79
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    .line 82
    .local v9, "args":[Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/bwx/bequick/handlers/apn/ApnControl;->CURRENT_APNS:Landroid/net/Uri;

    sget-object v4, Lcom/bwx/bequick/handlers/apn/ApnControl;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 83
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 84
    .local v12, "idIndex":I
    const-string v3, "apn"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 85
    .local v8, "apnIndex":I
    const-string v3, "type"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 86
    .local v16, "typeIndex":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 89
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 90
    .local v17, "typeValue":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 91
    invoke-static/range {v17 .. v17}, Lcom/bwx/bequick/handlers/apn/ApnControl;->isMms(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v15, :cond_2

    .line 95
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v8    # "apnIndex":I
    .end local v12    # "idIndex":I
    .end local v16    # "typeIndex":I
    .end local v17    # "typeValue":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 110
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_1

    .line 113
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3

    .line 99
    .restart local v8    # "apnIndex":I
    .restart local v12    # "idIndex":I
    .restart local v16    # "typeIndex":I
    .restart local v17    # "typeValue":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 100
    const-string v3, "apn"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p2

    invoke-static {v4, v0, v13}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getAdaptedValue(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "type"

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getAdaptedValue(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v3, Lcom/bwx/bequick/handlers/apn/ApnControl;->CURRENT_APNS:Landroid/net/Uri;

    const-string v4, "_id=?"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    .end local v17    # "typeValue":Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_4

    .line 113
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_4
    if-eqz v14, :cond_5

    if-eqz p2, :cond_5

    .line 118
    invoke-static/range {p0 .. p1}, Lcom/bwx/bequick/handlers/apn/ApnControl;->restorePreferredApn(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 121
    :cond_5
    return-void
.end method

.method public static shouldDisableMms(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 261
    const-string v0, "disableMms"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static storePreferredApn(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/bwx/bequick/handlers/apn/ApnControl;->getPreferedApnIdFromProvider(Landroid/content/Context;)J

    move-result-wide v0

    .line 125
    .local v0, "id":J
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferredApn"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    const-string v2, "bwx.ApnControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored prefered APN id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

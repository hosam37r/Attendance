.class public Llatech/cyber/latechcyber/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llatech/cyber/latechcyber/DatabaseHelper$SignalEntry;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "signal_db.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE signal_table (longitude  DECIMAL(5,15),latitude  DECIMAL(5,15),name TEXT,mac TEXT,rssi INTEGER,timestamp  DATETIME  default (strftime(\'%Y-%m-%d %H:%M\',\'now\',\'localtime\')),uploadflag  INTEGER DEFAULT 0, PRIMARY KEY (mac, timestamp) )"

.field private static final SQL_DELETE_ENTRIES:Ljava/lang/String; = "DROP TABLE IF EXISTS signal_table"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "signal_db.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public ClearTable()V
    .locals 5

    .line 125
    invoke-virtual {p0}, Llatech/cyber/latechcyber/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "uploadflag"

    const-string v3, "1"

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uploadflag = ?"

    const/4 v2, 0x1

    .line 130
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const-string v3, "signal_table"

    .line 131
    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public GetAllData()[Landroid/database/Cursor;
    .locals 17

    .line 105
    invoke-virtual/range {p0 .. p0}, Llatech/cyber/latechcyber/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 108
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "uploadflag"

    const-string v3, "1"

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "uploadflag = ?"

    .line 111
    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v13

    const-string v3, "signal_table"

    .line 112
    invoke-virtual {v0, v3, v1, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    new-array v15, v12, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v15, v13

    const-string v16, "timestamp ASC"

    const-string v2, "signal_table"

    .line 116
    new-array v3, v12, [Ljava/lang/String;

    const-string v1, "mac"

    aput-object v1, v3, v13

    const-string v6, "mac"

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "signal_table"

    const/4 v1, 0x5

    .line 117
    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "latitude"

    aput-object v1, v3, v13

    const-string v1, "longitude"

    aput-object v1, v3, v12

    const-string v1, "mac"

    aput-object v1, v3, v10

    const/4 v1, 0x3

    const-string v4, "rssi"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "timestamp"

    aput-object v4, v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v9, v11

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    .line 121
    :goto_1
    new-array v1, v10, [Landroid/database/Cursor;

    aput-object v9, v1, v13

    aput-object v0, v1, v12

    return-object v1
.end method

.method public insertSignal(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Boolean;)[Landroid/database/Cursor;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 63
    invoke-virtual/range {p0 .. p0}, Llatech/cyber/latechcyber/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x2

    .line 64
    new-array v5, v4, [Landroid/database/Cursor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 65
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 67
    array-length v10, v2

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v2, v11

    const-string v13, "longitude"

    .line 68
    invoke-virtual {v9, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "latitude"

    .line 69
    invoke-virtual {v9, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "name"

    .line 70
    aget-object v14, v12, v7

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "mac"

    .line 71
    aget-object v14, v12, v8

    const-string v15, "\'"

    const-string v8, ""

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "rssi"

    .line 72
    aget-object v13, v12, v4

    const-string v14, "\'"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x4

    :try_start_0
    const-string v13, "signal_table"

    .line 74
    invoke-virtual {v3, v13, v6, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v13

    const-wide/16 v16, -0x1

    cmp-long v15, v13, v16

    if-nez v15, :cond_0

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-le v13, v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v14, :cond_0

    .line 77
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "longitude"

    .line 78
    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "latitude"

    .line 79
    invoke-virtual {v13, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "name"

    .line 80
    aget-object v15, v12, v7

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "rssi"

    .line 81
    aget-object v15, v12, v4

    const-string v6, "\'"

    const-string v8, ""

    invoke-virtual {v15, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mac = ? AND timestamp = strftime(\'%Y-%m-%d %H:%M\',\'now\',\'localtime\') "

    const/4 v8, 0x1

    .line 84
    new-array v14, v8, [Ljava/lang/String;

    aget-object v12, v12, v8

    const-string v8, "\'"

    const-string v15, ""

    invoke-virtual {v12, v8, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v7

    const-string v8, "signal_table"

    .line 85
    invoke-virtual {v3, v8, v13, v6, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v8, 0x1

    const/4 v13, 0x0

    move-object/from16 v6, p0

    goto :goto_1

    :catch_0
    const/4 v8, 0x1

    move-object/from16 v6, p0

    .line 90
    :try_start_1
    invoke-virtual {v6, v3, v8, v4}, Llatech/cyber/latechcyber/DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    const-string v12, "signal_table"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v13, 0x0

    const/4 v14, 0x4

    .line 91
    :try_start_2
    invoke-virtual {v3, v12, v13, v9, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    const/4 v13, 0x0

    :catch_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object v6, v13

    goto/16 :goto_0

    :cond_1
    move-object/from16 v6, p0

    .line 98
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual/range {p0 .. p0}, Llatech/cyber/latechcyber/DatabaseHelper;->GetAllData()[Landroid/database/Cursor;

    move-result-object v5

    :cond_2
    return-object v5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "CREATE TABLE signal_table (longitude  DECIMAL(5,15),latitude  DECIMAL(5,15),name TEXT,mac TEXT,rssi INTEGER,timestamp  DATETIME  default (strftime(\'%Y-%m-%d %H:%M\',\'now\',\'localtime\')),uploadflag  INTEGER DEFAULT 0, PRIMARY KEY (mac, timestamp) )"

    .line 48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS signal_table"

    .line 57
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

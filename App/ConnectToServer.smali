.class public Llatech/cyber/latechcyber/ConnectToServer;
.super Landroid/os/AsyncTask;
.source "ConnectToServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llatech/cyber/latechcyber/ConnectToServer$Stream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static host:Ljava/lang/String; = "18.216.243.67"

.field private static pass:Ljava/lang/String; = "new7grado"

.field private static remoteDirectory:Ljava/lang/String; = "/home/ubuntu/streams/"

.field private static username:Ljava/lang/String; = "ubuntu"


# instance fields
.field public con:Landroid/content/Context;

.field public exeStatus:Ljava/lang/Boolean;

.field pDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Llatech/cyber/latechcyber/ConnectToServer;->con:Landroid/content/Context;

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Llatech/cyber/latechcyber/ConnectToServer;->exeStatus:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public AppendToFile(Ljava/io/InputStream;[Ljava/lang/String;)Ljava/io/File;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 171
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    const-string v7, ""

    const-string v8, ""

    .line 175
    new-instance v9, Llatech/cyber/latechcyber/ConnectToServer$Stream;

    invoke-direct {v9, v1}, Llatech/cyber/latechcyber/ConnectToServer$Stream;-><init>(Llatech/cyber/latechcyber/ConnectToServer;)V

    .line 177
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    if-eqz v10, :cond_1

    const-string v13, ","

    .line 178
    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 179
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v10, v4

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v10, v5

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v10, v12

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v10

    sub-int/2addr v8, v5

    aget-object v8, v10, v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 180
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",0"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x3

    .line 181
    :goto_0
    array-length v12, v10

    sub-int/2addr v12, v5

    if-ge v11, v12, :cond_0

    add-int/lit8 v12, v11, 0x1

    .line 182
    aget-object v11, v10, v11

    aget-object v13, v10, v12

    invoke-virtual {v9, v11, v13}, Llatech/cyber/latechcyber/ConnectToServer$Stream;->AddDevice(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v12, 0x1

    goto :goto_0

    .line 186
    :cond_1
    aget-object v6, p2, v5

    const-string v10, "\\n"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v10, v8

    move-object v8, v7

    const/4 v7, 0x0

    .line 187
    :goto_1
    array-length v13, v6

    if-ge v7, v13, :cond_3

    .line 188
    aget-object v13, v6, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v5, :cond_2

    .line 189
    aget-object v13, v6, v7

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 190
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v13, v4

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v13, v5

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v13, v12

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v13

    sub-int/2addr v10, v5

    aget-object v10, v13, v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x3

    .line 192
    :goto_2
    array-length v15, v13

    sub-int/2addr v15, v5

    if-ge v14, v15, :cond_2

    add-int/lit8 v15, v14, 0x1

    .line 193
    aget-object v14, v13, v14

    aget-object v11, v13, v15

    invoke-virtual {v9, v14, v11, v0}, Llatech/cyber/latechcyber/ConnectToServer$Stream;->AppendDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v15, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const-string v0, ":"

    .line 196
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Llatech/cyber/latechcyber/ConnectToServer$Stream;->GetDevices([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    .line 198
    :cond_4
    aget-object v0, p2, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :goto_3
    aget-object v0, p2, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Llatech/cyber/latechcyber/ConnectToServer;->CreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 201
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_5
    return-object v0
.end method

.method public CreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 210
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Llatech/cyber/latechcyber/ConnectToServer;->con:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "Notes"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 214
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :try_start_1
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 216
    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 217
    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V

    .line 218
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 221
    :goto_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    .line 91
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/JSch;

    invoke-direct {v1}, Lcom/jcraft/jsch/JSch;-><init>()V

    .line 94
    sget-object v2, Llatech/cyber/latechcyber/ConnectToServer;->username:Ljava/lang/String;

    sget-object v3, Llatech/cyber/latechcyber/ConnectToServer;->host:Ljava/lang/String;

    const/16 v4, 0x16

    invoke-virtual {v1, v2, v3, v4}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object v1

    .line 95
    sget-object v2, Llatech/cyber/latechcyber/ConnectToServer;->pass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->setPassword(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const-string v3, "StrictHostKeyChecking"

    const-string v4, "no"

    .line 97
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/util/Properties;)V

    .line 99
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->connect()V

    .line 100
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Session connected."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Opening Channel."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v2, "sftp"

    .line 103
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/ChannelSftp;

    .line 104
    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp;->connect()V

    .line 105
    sget-object v2, Llatech/cyber/latechcyber/ConnectToServer;->remoteDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->cd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 111
    :try_start_1
    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 115
    :goto_0
    :try_start_2
    invoke-virtual {p0, v2, p1}, Llatech/cyber/latechcyber/ConnectToServer;->AppendToFile(Ljava/io/InputStream;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 119
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llatech/cyber/latechcyber/ConnectToServer;->exeStatus:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v2

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v2

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v2

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto/16 :goto_6

    :catch_5
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_1

    :catch_6
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_9
    move-exception p1

    move-object v1, v0

    .line 134
    :goto_1
    :try_start_6
    invoke-virtual {p1}, Lcom/jcraft/jsch/SftpException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_0

    .line 138
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_5

    :catch_a
    move-exception p1

    move-object v1, v0

    .line 131
    :goto_2
    :try_start_8
    invoke-virtual {p1}, Lcom/jcraft/jsch/JSchException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v0, :cond_0

    .line 138
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_5

    :catch_b
    move-exception p1

    move-object v1, v0

    .line 128
    :goto_3
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_0

    .line 138
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_5

    :catch_c
    move-exception p1

    move-object v1, v0

    .line 125
    :goto_4
    :try_start_c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v0, :cond_0

    .line 138
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_5

    :catch_d
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    :cond_0
    :goto_5
    iget-object p1, p0, Llatech/cyber/latechcyber/ConnectToServer;->exeStatus:Ljava/lang/Boolean;

    return-object p1

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v0, :cond_1

    .line 138
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_7

    :catch_e
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    :cond_1
    :goto_7
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/ConnectToServer;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 157
    iput-object p1, p0, Llatech/cyber/latechcyber/ConnectToServer;->exeStatus:Ljava/lang/Boolean;

    .line 158
    iget-object p1, p0, Llatech/cyber/latechcyber/ConnectToServer;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    iget-object p1, p0, Llatech/cyber/latechcyber/ConnectToServer;->exeStatus:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Llatech/cyber/latechcyber/ConnectToServer;->con:Landroid/content/Context;

    check-cast p1, Llatech/cyber/latechcyber/LogData;

    .line 161
    invoke-virtual {p1}, Llatech/cyber/latechcyber/LogData;->UploadCompleted()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/ConnectToServer;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 152
    iget-object v0, p0, Llatech/cyber/latechcyber/ConnectToServer;->con:Landroid/content/Context;

    const-string v1, "Upload Status"

    const-string v2, "Uploading to Remote Server..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Llatech/cyber/latechcyber/ConnectToServer;->pDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.class public Llatech/cyber/latechcyber/WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiReceiver.java"


# instance fields
.field mWifi:Landroid/net/wifi/WifiManager;

.field res:[[Ljava/lang/String;

.field sb:Ljava/lang/StringBuilder;

.field wifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object p1, p0, Llatech/cyber/latechcyber/WifiReceiver;->mWifi:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public TrimChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "[^a-zA-Z0-9 -]"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    const-string v1, "LogData"

    const-string v2, "Remove Non Alphanumeric SQL Characters"

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Llatech/cyber/latechcyber/WifiReceiver;->sb:Ljava/lang/StringBuilder;

    .line 26
    iget-object p1, p0, Llatech/cyber/latechcyber/WifiReceiver;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Llatech/cyber/latechcyber/WifiReceiver;->wifiList:Ljava/util/List;

    .line 28
    iget-object p1, p0, Llatech/cyber/latechcyber/WifiReceiver;->wifiList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Llatech/cyber/latechcyber/WifiReceiver;->res:[[Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Llatech/cyber/latechcyber/WifiReceiver;->wifiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 30
    iget-object v1, p0, Llatech/cyber/latechcyber/WifiReceiver;->wifiList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, ":"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 31
    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Llatech/cyber/latechcyber/WifiReceiver;->res:[[Ljava/lang/String;

    new-array v4, p2, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Llatech/cyber/latechcyber/WifiReceiver;->TrimChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, p1

    aget-object v6, v1, p2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    aput-object v4, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toStringBuilder()[[Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Llatech/cyber/latechcyber/WifiReceiver;->res:[[Ljava/lang/String;

    return-object v0
.end method

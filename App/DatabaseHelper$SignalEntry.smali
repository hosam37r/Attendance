.class public Llatech/cyber/latechcyber/DatabaseHelper$SignalEntry;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llatech/cyber/latechcyber/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignalEntry"
.end annotation


# static fields
.field public static final GPS_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final GPS_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final SIGNAL_DATETIME:Ljava/lang/String; = "timestamp"

.field public static final SIGNAL_UPLOADED:Ljava/lang/String; = "uploadflag"

.field public static final TABLE_NAME:Ljava/lang/String; = "signal_table"

.field public static final WIFI_MAC:Ljava/lang/String; = "mac"

.field public static final WIFI_NAME:Ljava/lang/String; = "name"

.field public static final WIFI_RSSI:Ljava/lang/String; = "rssi"


# instance fields
.field final synthetic this$0:Llatech/cyber/latechcyber/DatabaseHelper;


# direct methods
.method public constructor <init>(Llatech/cyber/latechcyber/DatabaseHelper;)V
    .locals 0

    .line 18
    iput-object p1, p0, Llatech/cyber/latechcyber/DatabaseHelper$SignalEntry;->this$0:Llatech/cyber/latechcyber/DatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

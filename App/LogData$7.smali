.class Llatech/cyber/latechcyber/LogData$7;
.super Ljava/lang/Object;
.source "LogData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llatech/cyber/latechcyber/LogData;->NoGps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llatech/cyber/latechcyber/LogData;


# direct methods
.method constructor <init>(Llatech/cyber/latechcyber/LogData;)V
    .locals 0

    .line 275
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$7;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 277
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$7;->this$0:Llatech/cyber/latechcyber/LogData;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Llatech/cyber/latechcyber/LogData;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

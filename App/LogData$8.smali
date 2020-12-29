.class Llatech/cyber/latechcyber/LogData$8;
.super Ljava/util/TimerTask;
.source "LogData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llatech/cyber/latechcyber/LogData;->InitializeTimer()V
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

    .line 313
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$8;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 317
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$8;->this$0:Llatech/cyber/latechcyber/LogData;

    new-instance v1, Llatech/cyber/latechcyber/LogData$8$1;

    invoke-direct {v1, p0}, Llatech/cyber/latechcyber/LogData$8$1;-><init>(Llatech/cyber/latechcyber/LogData$8;)V

    invoke-virtual {v0, v1}, Llatech/cyber/latechcyber/LogData;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class Llatech/cyber/latechcyber/LogData$8$1;
.super Ljava/lang/Object;
.source "LogData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llatech/cyber/latechcyber/LogData$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llatech/cyber/latechcyber/LogData$8;


# direct methods
.method constructor <init>(Llatech/cyber/latechcyber/LogData$8;)V
    .locals 0

    .line 317
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$8$1;->this$1:Llatech/cyber/latechcyber/LogData$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 319
    invoke-static {}, Llatech/cyber/latechcyber/LogData;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$8$1;->this$1:Llatech/cyber/latechcyber/LogData$8;

    iget-object v0, v0, Llatech/cyber/latechcyber/LogData$8;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {v0}, Llatech/cyber/latechcyber/LogData;->GetGPSCoordinates()V

    :cond_0
    return-void
.end method

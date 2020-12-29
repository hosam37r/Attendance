.class Llatech/cyber/latechcyber/LogData$5;
.super Ljava/lang/Object;
.source "LogData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llatech/cyber/latechcyber/LogData;->onCreate(Landroid/os/Bundle;)V
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

    .line 235
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$5;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 238
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$5;->this$0:Llatech/cyber/latechcyber/LogData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Llatech/cyber/latechcyber/LogData;->SetTimer(Ljava/lang/Boolean;)V

    .line 239
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$5;->this$0:Llatech/cyber/latechcyber/LogData;

    iget-object p1, p1, Llatech/cyber/latechcyber/LogData;->myTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 240
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge p1, v1, :cond_0

    .line 241
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$5;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Llatech/cyber/latechcyber/LogData;->finish()V

    goto :goto_0

    .line 242
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p1, v1, :cond_1

    .line 243
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$5;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Llatech/cyber/latechcyber/LogData;->finishAffinity()V

    goto :goto_0

    .line 245
    :cond_1
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$5;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Llatech/cyber/latechcyber/LogData;->finishAndRemoveTask()V

    .line 246
    :goto_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

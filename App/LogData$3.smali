.class Llatech/cyber/latechcyber/LogData$3;
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

    .line 199
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$3;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 202
    invoke-static {}, Llatech/cyber/latechcyber/LogData;->access$000()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$3;->this$0:Llatech/cyber/latechcyber/LogData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Llatech/cyber/latechcyber/LogData;->SetTimer(Ljava/lang/Boolean;)V

    .line 204
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$3;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Llatech/cyber/latechcyber/LogData;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Paused ..."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 205
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$3;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-static {p1}, Llatech/cyber/latechcyber/LogData;->access$300(Llatech/cyber/latechcyber/LogData;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "Start"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$3;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Llatech/cyber/latechcyber/LogData;->SetTimer(Ljava/lang/Boolean;)V

    .line 208
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$3;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Llatech/cyber/latechcyber/LogData;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Started ..."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 209
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$3;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-static {p1}, Llatech/cyber/latechcyber/LogData;->access$300(Llatech/cyber/latechcyber/LogData;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "Pause"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

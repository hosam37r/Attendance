.class Llatech/cyber/latechcyber/LogData$2;
.super Ljava/lang/Object;
.source "LogData.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field timerInt:I


# direct methods
.method constructor <init>(Llatech/cyber/latechcyber/LogData;)V
    .locals 0

    .line 159
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$2;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 160
    iput p1, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 163
    iput p2, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 171
    iget p1, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x3c

    .line 185
    iput p1, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x1e

    .line 181
    iput p1, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xa

    .line 177
    iput p1, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x5

    .line 173
    iput p1, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    .line 189
    :goto_0
    invoke-static {}, Llatech/cyber/latechcyber/LogData;->access$000()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$2;->this$0:Llatech/cyber/latechcyber/LogData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Llatech/cyber/latechcyber/LogData;->SetTimer(Ljava/lang/Boolean;)V

    .line 191
    :cond_0
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$2;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-static {v0}, Llatech/cyber/latechcyber/LogData;->access$100(Llatech/cyber/latechcyber/LogData;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llatech/cyber/latechcyber/LogData$2;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-static {v1}, Llatech/cyber/latechcyber/LogData;->access$100(Llatech/cyber/latechcyber/LogData;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget v0, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Llatech/cyber/latechcyber/LogData;->access$202(J)J

    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$2;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Llatech/cyber/latechcyber/LogData;->SetTimer(Ljava/lang/Boolean;)V

    .line 194
    :cond_1
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$2;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Llatech/cyber/latechcyber/LogData;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Llatech/cyber/latechcyber/LogData$2;->timerInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " second(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

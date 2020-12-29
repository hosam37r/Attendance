.class Llatech/cyber/latechcyber/LogData$4;
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

    .line 216
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$4;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 219
    invoke-static {}, Llatech/cyber/latechcyber/LogData;->access$000()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$4;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Llatech/cyber/latechcyber/LogData;->SetTimer(Ljava/lang/Boolean;)V

    .line 223
    :cond_0
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$4;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {v0}, Llatech/cyber/latechcyber/LogData;->ResetUploadTime()V

    .line 224
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$4;->this$0:Llatech/cyber/latechcyber/LogData;

    iget-object v0, v0, Llatech/cyber/latechcyber/LogData;->db:Llatech/cyber/latechcyber/DatabaseHelper;

    invoke-virtual {v0}, Llatech/cyber/latechcyber/DatabaseHelper;->GetAllData()[Landroid/database/Cursor;

    move-result-object v0

    .line 225
    iget-object v1, p0, Llatech/cyber/latechcyber/LogData$4;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {v1, v0}, Llatech/cyber/latechcyber/LogData;->UploadToServer([Landroid/database/Cursor;)V

    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$4;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {v0, p1}, Llatech/cyber/latechcyber/LogData;->SetTimer(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

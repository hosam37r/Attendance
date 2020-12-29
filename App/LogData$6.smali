.class Llatech/cyber/latechcyber/LogData$6;
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

    .line 280
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$6;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 282
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

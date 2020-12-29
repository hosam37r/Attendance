.class Llatech/cyber/latechcyber/LogData$1;
.super Ljava/lang/Object;
.source "LogData.java"

# interfaces
.implements Landroid/location/LocationListener;


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

    .line 119
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData$1;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 121
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$1;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llatech/cyber/latechcyber/LogData;->strLatitude:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$1;->this$0:Llatech/cyber/latechcyber/LogData;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Llatech/cyber/latechcyber/LogData;->strLongitude:Ljava/lang/String;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$1;->this$0:Llatech/cyber/latechcyber/LogData;

    const-string v0, "0"

    iput-object v0, p1, Llatech/cyber/latechcyber/LogData;->strLongitude:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData$1;->this$0:Llatech/cyber/latechcyber/LogData;

    const-string v0, "0"

    iput-object v0, p1, Llatech/cyber/latechcyber/LogData;->strLatitude:Ljava/lang/String;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData$1;->this$0:Llatech/cyber/latechcyber/LogData;

    iget-object v1, v0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.class public Llatech/cyber/latechcyber/LogData;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LogData.java"


# static fields
.field private static final ACCESS_COARSE_LOCATION_REQUEST:I = 0x539

.field private static final ACCESS_FINE_LOCATION_REQUEST:I = 0x53a

.field private static final CHANGE_WIFI_STATE_REQUEST:I = 0x53b

.field private static Device_ID:Ljava/lang/String; = "10001"

.field private static GET_DATA:Z = false

.field private static final READ_PHONE_STATE_REQUEST:I = 0x53c

.field private static TIME_TO_UPLOAD:Z = false

.field private static hour:J = 0x36ee80L

.field private static reset_timer:J = 0xea60L

.field private static reset_upload_timer:J

.field private static upload_timer:J


# instance fields
.field barTimer:Landroid/widget/SeekBar;

.field private btnClear:Landroid/widget/Button;

.field private btnClose:Landroid/widget/Button;

.field private btnStart:Landroid/widget/Button;

.field criteria:Landroid/location/Criteria;

.field db:Llatech/cyber/latechcyber/DatabaseHelper;

.field lastKnownLocation:Landroid/location/Location;

.field locationListener:Landroid/location/LocationListener;

.field locationManager:Landroid/location/LocationManager;

.field locationProvider:Ljava/lang/String;

.field mainWifi:Landroid/net/wifi/WifiManager;

.field myTimer:Ljava/util/Timer;

.field receiverWifi:Llatech/cyber/latechcyber/WifiReceiver;

.field strLatitude:Ljava/lang/String;

.field strLongitude:Ljava/lang/String;

.field ttask:Ljava/util/TimerTask;

.field private txtTimerInt:Landroid/widget/TextView;

.field private txtViewGPS:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private InitializeTimer()V
    .locals 1

    .line 313
    new-instance v0, Llatech/cyber/latechcyber/LogData$8;

    invoke-direct {v0, p0}, Llatech/cyber/latechcyber/LogData$8;-><init>(Llatech/cyber/latechcyber/LogData;)V

    iput-object v0, p0, Llatech/cyber/latechcyber/LogData;->ttask:Ljava/util/TimerTask;

    return-void
.end method

.method private NoGps()V
    .locals 4

    .line 272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Your GPS seems to be disabled, do you want to enable it?"

    .line 273
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 274
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Llatech/cyber/latechcyber/LogData$7;

    invoke-direct {v3, p0}, Llatech/cyber/latechcyber/LogData$7;-><init>(Llatech/cyber/latechcyber/LogData;)V

    .line 275
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Llatech/cyber/latechcyber/LogData$6;

    invoke-direct {v3, p0}, Llatech/cyber/latechcyber/LogData$6;-><init>(Llatech/cyber/latechcyber/LogData;)V

    .line 280
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private UploadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "livestream_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-MM-yyyy_HH_00"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v1, Llatech/cyber/latechcyber/ConnectToServer;

    invoke-direct {v1, p0}, Llatech/cyber/latechcyber/ConnectToServer;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    .line 334
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-virtual {v1, v2}, Llatech/cyber/latechcyber/ConnectToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->txtViewGPS:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    sget-boolean v0, Llatech/cyber/latechcyber/LogData;->GET_DATA:Z

    return v0
.end method

.method static synthetic access$100(Llatech/cyber/latechcyber/LogData;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Llatech/cyber/latechcyber/LogData;->txtTimerInt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(J)J
    .locals 0

    .line 37
    sput-wide p0, Llatech/cyber/latechcyber/LogData;->reset_timer:J

    return-wide p0
.end method

.method static synthetic access$300(Llatech/cyber/latechcyber/LogData;)Landroid/widget/Button;
    .locals 0

    .line 37
    iget-object p0, p0, Llatech/cyber/latechcyber/LogData;->btnStart:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public GetGPSCoordinates()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    .line 347
    sput-boolean v0, Llatech/cyber/latechcyber/LogData;->GET_DATA:Z

    .line 348
    sget-boolean v1, Llatech/cyber/latechcyber/LogData;->GET_DATA:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Llatech/cyber/latechcyber/LogData;->btnDisable(Ljava/lang/Boolean;)V

    .line 349
    iget-object v1, p0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Llatech/cyber/latechcyber/LogData;->locationProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Llatech/cyber/latechcyber/LogData;->locationProvider:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Llatech/cyber/latechcyber/LogData;->criteria:Landroid/location/Criteria;

    invoke-virtual {v1, v3, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llatech/cyber/latechcyber/LogData;->locationProvider:Ljava/lang/String;

    .line 351
    iget-object v3, p0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Llatech/cyber/latechcyber/LogData;->locationProvider:Ljava/lang/String;

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Llatech/cyber/latechcyber/LogData;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 353
    :cond_0
    iget-object v1, p0, Llatech/cyber/latechcyber/LogData;->strLongitude:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Llatech/cyber/latechcyber/LogData;->strLatitude:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 354
    iget-object v1, p0, Llatech/cyber/latechcyber/LogData;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 355
    iget-object v1, p0, Llatech/cyber/latechcyber/LogData;->receiverWifi:Llatech/cyber/latechcyber/WifiReceiver;

    invoke-virtual {v1}, Llatech/cyber/latechcyber/WifiReceiver;->toStringBuilder()[[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 356
    array-length v3, v1

    if-eqz v3, :cond_4

    aget-object v3, v1, v0

    if-nez v3, :cond_1

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Llatech/cyber/latechcyber/LogData;->upload_timer:J

    sub-long/2addr v3, v5

    sget-wide v5, Llatech/cyber/latechcyber/LogData;->reset_upload_timer:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    const/4 v0, 0x1

    :cond_2
    sput-boolean v0, Llatech/cyber/latechcyber/LogData;->TIME_TO_UPLOAD:Z

    .line 360
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->db:Llatech/cyber/latechcyber/DatabaseHelper;

    iget-object v3, p0, Llatech/cyber/latechcyber/LogData;->strLongitude:Ljava/lang/String;

    iget-object v4, p0, Llatech/cyber/latechcyber/LogData;->strLatitude:Ljava/lang/String;

    sget-boolean v5, Llatech/cyber/latechcyber/LogData;->TIME_TO_UPLOAD:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v1, v5}, Llatech/cyber/latechcyber/DatabaseHelper;->insertSignal(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Boolean;)[Landroid/database/Cursor;

    move-result-object v0

    .line 361
    sget-boolean v3, Llatech/cyber/latechcyber/LogData;->TIME_TO_UPLOAD:Z

    if-eqz v3, :cond_3

    .line 362
    invoke-virtual {p0}, Llatech/cyber/latechcyber/LogData;->ResetUploadTime()V

    .line 363
    invoke-virtual {p0, v0}, Llatech/cyber/latechcyber/LogData;->UploadToServer([Landroid/database/Cursor;)V

    .line 365
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy HH:mm"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v3, p0, Llatech/cyber/latechcyber/LogData;->txtViewGPS:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Wifi devices at Log:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->strLongitude:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Lat:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->strLatitude:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 357
    :cond_4
    :goto_0
    invoke-virtual {p0}, Llatech/cyber/latechcyber/LogData;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Searching for GPS Coordinates..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 369
    :cond_5
    invoke-virtual {p0}, Llatech/cyber/latechcyber/LogData;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Searching for GPS Coordinates..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    :goto_1
    sput-boolean v2, Llatech/cyber/latechcyber/LogData;->GET_DATA:Z

    .line 372
    sget-boolean v0, Llatech/cyber/latechcyber/LogData;->GET_DATA:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Llatech/cyber/latechcyber/LogData;->btnDisable(Ljava/lang/Boolean;)V

    return-void
.end method

.method public ResetUploadTime()V
    .locals 8

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Llatech/cyber/latechcyber/LogData;->upload_timer:J

    .line 305
    sget-wide v0, Llatech/cyber/latechcyber/LogData;->hour:J

    sget-wide v2, Llatech/cyber/latechcyber/LogData;->upload_timer:J

    sget-wide v4, Llatech/cyber/latechcyber/LogData;->upload_timer:J

    sget-wide v6, Llatech/cyber/latechcyber/LogData;->hour:J

    div-long/2addr v4, v6

    sget-wide v6, Llatech/cyber/latechcyber/LogData;->hour:J

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    sput-wide v0, Llatech/cyber/latechcyber/LogData;->reset_upload_timer:J

    return-void
.end method

.method public SetTimer(Ljava/lang/Boolean;)V
    .locals 6

    .line 289
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Llatech/cyber/latechcyber/LogData;->GET_DATA:Z

    .line 290
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    invoke-direct {p0}, Llatech/cyber/latechcyber/LogData;->InitializeTimer()V

    .line 292
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->myTimer:Ljava/util/Timer;

    if-nez p1, :cond_0

    .line 293
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->myTimer:Ljava/util/Timer;

    .line 294
    :cond_0
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->myTimer:Ljava/util/Timer;

    iget-object v1, p0, Llatech/cyber/latechcyber/LogData;->ttask:Ljava/util/TimerTask;

    sget-wide v2, Llatech/cyber/latechcyber/LogData;->reset_timer:J

    sget-wide v4, Llatech/cyber/latechcyber/LogData;->reset_timer:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->ttask:Ljava/util/TimerTask;

    if-eqz p1, :cond_2

    .line 297
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->ttask:Ljava/util/TimerTask;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_2
    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->ttask:Ljava/util/TimerTask;

    :goto_0
    return-void
.end method

.method public UploadCompleted()V
    .locals 1

    .line 340
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->db:Llatech/cyber/latechcyber/DatabaseHelper;

    invoke-virtual {v0}, Llatech/cyber/latechcyber/DatabaseHelper;->ClearTable()V

    return-void
.end method

.method public UploadToServer([Landroid/database/Cursor;)V
    .locals 12

    .line 376
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    .line 378
    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    aget-object v3, p1, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, ""

    const-string v4, ""

    .line 380
    :goto_0
    aget-object v5, p1, v2

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",0,"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 383
    :cond_0
    aget-object v5, p1, v2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v5, ""

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    .line 385
    aget-object v8, p1, v7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 386
    aget-object v8, p1, v7

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ""

    .line 387
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ""

    .line 388
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_00:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 389
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_00:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v6, 0x1

    .line 392
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v7

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 395
    aget-object v5, p1, v7

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 397
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, p1, v7

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, p1, v7

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v7

    const/4 v10, 0x3

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 399
    :cond_5
    aget-object p1, p1, v7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Llatech/cyber/latechcyber/LogData;->UploadData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public btnDisable(Ljava/lang/Boolean;)V
    .locals 2

    .line 309
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->btnStart:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->btnClear:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 427
    invoke-virtual {p0}, Llatech/cyber/latechcyber/LogData;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 80
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 81
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v0, v1

    const/16 v3, 0x53a

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 84
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v0, v1

    const/16 v3, 0x539

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Llatech/cyber/latechcyber/LogData;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Llatech/cyber/latechcyber/LogData;->mainWifi:Landroid/net/wifi/WifiManager;

    .line 89
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    .line 90
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    aput-object v3, v0, v1

    const/16 v3, 0x53b

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 92
    :cond_2
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_3
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 95
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v0, v1

    const/16 v3, 0x53c

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 100
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance p1, Llatech/cyber/latechcyber/WifiReceiver;

    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-direct {p1, v0}, Llatech/cyber/latechcyber/WifiReceiver;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->receiverWifi:Llatech/cyber/latechcyber/WifiReceiver;

    .line 103
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->receiverWifi:Llatech/cyber/latechcyber/WifiReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Llatech/cyber/latechcyber/LogData;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    const-string p1, "location"

    .line 109
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    .line 110
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 111
    invoke-direct {p0}, Llatech/cyber/latechcyber/LogData;->NoGps()V

    .line 113
    :cond_5
    new-instance p1, Landroid/location/Criteria;

    invoke-direct {p1}, Landroid/location/Criteria;-><init>()V

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->criteria:Landroid/location/Criteria;

    .line 114
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->criteria:Landroid/location/Criteria;

    invoke-virtual {p1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 115
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->criteria:Landroid/location/Criteria;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 116
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->criteria:Landroid/location/Criteria;

    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 117
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->criteria:Landroid/location/Criteria;

    invoke-virtual {p1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->locationProvider:Ljava/lang/String;

    .line 119
    new-instance p1, Llatech/cyber/latechcyber/LogData$1;

    invoke-direct {p1, p0}, Llatech/cyber/latechcyber/LogData$1;-><init>(Llatech/cyber/latechcyber/LogData;)V

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->locationListener:Landroid/location/LocationListener;

    .line 139
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->locationProvider:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 140
    iget-object v3, p0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Llatech/cyber/latechcyber/LogData;->locationProvider:Ljava/lang/String;

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Llatech/cyber/latechcyber/LogData;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 141
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->locationProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->lastKnownLocation:Landroid/location/Location;

    .line 145
    :cond_6
    new-instance p1, Llatech/cyber/latechcyber/DatabaseHelper;

    invoke-direct {p1, p0}, Llatech/cyber/latechcyber/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->db:Llatech/cyber/latechcyber/DatabaseHelper;

    const p1, 0x7f0a001b

    .line 146
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->setContentView(I)V

    const p1, 0x7f0800a4

    .line 147
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->btnStart:Landroid/widget/Button;

    const p1, 0x7f08002c

    .line 148
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->btnClear:Landroid/widget/Button;

    const p1, 0x7f08002f

    .line 149
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->btnClose:Landroid/widget/Button;

    const p1, 0x7f080091

    .line 150
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->barTimer:Landroid/widget/SeekBar;

    const p1, 0x7f0800c4

    .line 152
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->txtViewGPS:Landroid/widget/EditText;

    .line 153
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->txtViewGPS:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 154
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->txtViewGPS:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelected(Z)V

    const p1, 0x7f0800b1

    .line 157
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llatech/cyber/latechcyber/LogData;->txtTimerInt:Landroid/widget/TextView;

    .line 159
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->barTimer:Landroid/widget/SeekBar;

    new-instance v0, Llatech/cyber/latechcyber/LogData$2;

    invoke-direct {v0, p0}, Llatech/cyber/latechcyber/LogData$2;-><init>(Llatech/cyber/latechcyber/LogData;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 198
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->btnStart:Landroid/widget/Button;

    new-instance v0, Llatech/cyber/latechcyber/LogData$3;

    invoke-direct {v0, p0}, Llatech/cyber/latechcyber/LogData$3;-><init>(Llatech/cyber/latechcyber/LogData;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->btnClear:Landroid/widget/Button;

    new-instance v0, Llatech/cyber/latechcyber/LogData$4;

    invoke-direct {v0, p0}, Llatech/cyber/latechcyber/LogData$4;-><init>(Llatech/cyber/latechcyber/LogData;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object p1, p0, Llatech/cyber/latechcyber/LogData;->btnClose:Landroid/widget/Button;

    new-instance v0, Llatech/cyber/latechcyber/LogData$5;

    invoke-direct {v0, p0}, Llatech/cyber/latechcyber/LogData$5;-><init>(Llatech/cyber/latechcyber/LogData;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "phone"

    .line 252
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_7

    .line 254
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;

    .line 259
    :goto_0
    :try_start_0
    sget-object p1, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_8

    .line 260
    sget-object p1, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;

    sget-object v3, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "10001"

    .line 262
    sput-object p1, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;

    .line 264
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Llatech/cyber/latechcyber/LogData;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (ID "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Llatech/cyber/latechcyber/LogData;->Device_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080063

    .line 265
    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 267
    invoke-virtual {p0}, Llatech/cyber/latechcyber/LogData;->ResetUploadTime()V

    .line 268
    sput-boolean v1, Llatech/cyber/latechcyber/LogData;->GET_DATA:Z

    .line 269
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Llatech/cyber/latechcyber/LogData;->SetTimer(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 412
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->receiverWifi:Llatech/cyber/latechcyber/WifiReceiver;

    invoke-virtual {p0, v0}, Llatech/cyber/latechcyber/LogData;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 413
    iget-object v0, p0, Llatech/cyber/latechcyber/LogData;->db:Llatech/cyber/latechcyber/DatabaseHelper;

    invoke-virtual {v0}, Llatech/cyber/latechcyber/DatabaseHelper;->close()V

    .line 414
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 421
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

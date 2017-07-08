.class public Lcom/bulbsecurity/framework/app/ServiceAutoStarter;
.super Landroid/content/BroadcastReceiver;
.source "ServiceAutoStarter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 17
    const-string v1, "AAA"

    const-string v2, "Starter Started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 19
    .local v0, "alarm":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/bulbsecurity/framework/app/InternetPoll;

    invoke-direct {v7, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p1, v3, v7, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 21
    .local v6, "pending":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 22
    .local v8, "time":Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v8, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 23
    const/16 v1, 0xd

    invoke-virtual {v8, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 24
    const/16 v1, 0xe

    invoke-virtual {v8, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 26
    return-void
.end method

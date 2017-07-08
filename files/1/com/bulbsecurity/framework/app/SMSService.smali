.class public Lcom/bulbsecurity/framework/app/SMSService;
.super Landroid/app/Service;
.source "SMSService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startID"    # I

    .prologue
    .line 14
    :try_start_0
    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "number":Ljava/lang/String;
    const-string v2, "message"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    .local v7, "message":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 18
    .local v0, "sm":Landroid/telephony/SmsManager;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa0

    if-le v2, v4, :cond_0

    .line 20
    invoke-virtual {v0, v7}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 21
    .local v3, "messageparts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 29
    .end local v0    # "sm":Landroid/telephony/SmsManager;
    .end local v1    # "number":Ljava/lang/String;
    .end local v3    # "messageparts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 24
    .restart local v0    # "sm":Landroid/telephony/SmsManager;
    .restart local v1    # "number":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    .end local v0    # "sm":Landroid/telephony/SmsManager;
    .end local v1    # "number":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 27
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

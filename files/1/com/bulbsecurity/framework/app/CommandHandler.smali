.class public Lcom/bulbsecurity/framework/app/CommandHandler;
.super Landroid/app/Service;
.source "CommandHandler.java"


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
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startID"    # I

    .prologue
    .line 13
    const-string v14, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    .local v3, "body":Ljava/lang/String;
    const-string v12, "SEND"

    .line 15
    .local v12, "send":Ljava/lang/String;
    const-string v10, "NFCC"

    .line 16
    .local v10, "nfc":Ljava/lang/String;
    const-string v2, "BLUT"

    .line 17
    .local v2, "bluetooth":Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "aString":[Ljava/lang/String;
    array-length v14, v1

    const/4 v15, 0x3

    if-lt v14, v15, :cond_1

    .line 20
    const/4 v14, 0x1

    aget-object v5, v1, v14

    .line 21
    .local v5, "checkfunction":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 23
    array-length v14, v1

    const/4 v15, 0x4

    if-lt v14, v15, :cond_1

    .line 24
    const/4 v14, 0x2

    aget-object v11, v1, v14

    .line 25
    .local v11, "number":Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v9, v1, v14

    .line 26
    .local v9, "message":Ljava/lang/String;
    const/4 v8, 0x4

    .local v8, "j":I
    :goto_0
    array-length v14, v1

    if-ge v8, v14, :cond_0

    .line 27
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 28
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v1, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 26
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 30
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/CommandHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/bulbsecurity/framework/app/SMSService;

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v7, "intent2":Landroid/content/Intent;
    const-string v14, "number"

    invoke-virtual {v7, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v14, "message"

    invoke-virtual {v7, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/CommandHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 34
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    .end local v5    # "checkfunction":Ljava/lang/String;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "intent2":Landroid/content/Intent;
    .end local v8    # "j":I
    .end local v9    # "message":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 36
    .restart local v5    # "checkfunction":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 37
    const-string v14, "AAA"

    const-string v15, "NFC"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    array-length v14, v1

    const/4 v15, 0x3

    if-lt v14, v15, :cond_1

    .line 40
    const/4 v14, 0x2

    aget-object v13, v1, v14

    .line 42
    .local v13, "url":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/CommandHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/bulbsecurity/framework/app/NFCSend;

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .restart local v7    # "intent2":Landroid/content/Intent;
    const-string v14, "url"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/high16 v14, 0x10000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/CommandHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 46
    .restart local v6    # "context":Landroid/content/Context;
    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 48
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "intent2":Landroid/content/Intent;
    .end local v13    # "url":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 49
    const-string v14, "AAA"

    const-string v15, "Bluetooth"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    array-length v14, v1

    const/4 v15, 0x3

    if-lt v14, v15, :cond_1

    .line 52
    const/4 v14, 0x2

    aget-object v4, v1, v14

    .line 54
    .local v4, "campaign":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/CommandHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/bulbsecurity/framework/app/BluetoothScanner;

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .restart local v7    # "intent2":Landroid/content/Intent;
    const-string v14, "campaign"

    invoke-virtual {v7, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/high16 v14, 0x10000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/bulbsecurity/framework/app/CommandHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 58
    .restart local v6    # "context":Landroid/content/Context;
    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

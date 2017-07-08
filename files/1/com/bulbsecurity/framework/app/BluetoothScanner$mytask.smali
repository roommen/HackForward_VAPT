.class Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;
.super Landroid/os/AsyncTask;
.source "BluetoothScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bulbsecurity/framework/app/BluetoothScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mytask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;


# direct methods
.method private constructor <init>(Lcom/bulbsecurity/framework/app/BluetoothScanner;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bulbsecurity/framework/app/BluetoothScanner;Lcom/bulbsecurity/framework/app/BluetoothScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bulbsecurity/framework/app/BluetoothScanner;
    .param p2, "x1"    # Lcom/bulbsecurity/framework/app/BluetoothScanner$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;-><init>(Lcom/bulbsecurity/framework/app/BluetoothScanner;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p1, "param"    # [Ljava/lang/String;

    .prologue
    .line 72
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/bulbsecurity/framework/app/BluetoothScanner;->getFilesDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/savedsettings.txt\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "filepath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 76
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 77
    .local v10, "is":Ljava/io/InputStream;
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 78
    .local v16, "reader":Ljava/io/BufferedReader;
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, "line":Ljava/lang/String;
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "aString":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v9, v2, v19

    .line 81
    .local v9, "i":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v14, v2, v19

    .line 82
    .local v14, "p":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v17, v2, v19

    .line 83
    .local v17, "u":Ljava/lang/String;
    const-string v19, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, "uu":Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v11, v2, v19

    .line 85
    .local v11, "k":Ljava/lang/String;
    const-string v19, "80"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 86
    const-string v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    :cond_0
    const-string v6, "http://"

    .line 89
    .local v6, "http":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "/upload.php"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 90
    .local v15, "push":Ljava/lang/String;
    const-string v19, "AAA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->campaign:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, p1, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v13, "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "bluetoothline"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->campaign:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, p1, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 96
    .local v7, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 97
    .local v8, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v19, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 98
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2    # "aString":[Ljava/lang/String;
    .end local v6    # "http":Ljava/lang/String;
    .end local v7    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v8    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "i":Ljava/lang/String;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "k":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v14    # "p":Ljava/lang/String;
    .end local v15    # "push":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "u":Ljava/lang/String;
    .end local v18    # "uu":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v19, 0x0

    return-object v19

    .line 99
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

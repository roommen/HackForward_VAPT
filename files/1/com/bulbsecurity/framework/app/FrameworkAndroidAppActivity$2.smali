.class Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;
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


# direct methods
.method constructor <init>(Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;->this$0:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    iput-object p2, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;->val$controlIP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 229
    iget-object v10, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;->val$key:Ljava/lang/String;

    const-string v11, " DISCONNECT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "connectstring":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, "nameValuePairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "connectline"

    invoke-direct {v10, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 234
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    const-string v2, "http://"

    .line 235
    .local v2, "http":Ljava/lang/String;
    const-string v9, "/upload.php"

    .line 236
    .local v9, "url":Ljava/lang/String;
    iget-object v10, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;->val$controlIP:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "uri":Ljava/lang/String;
    iget-object v10, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;->val$path:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "postto1":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "postto":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 240
    .local v4, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v10, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 241
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v2    # "http":Ljava/lang/String;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "postto":Ljava/lang/String;
    .end local v7    # "postto1":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

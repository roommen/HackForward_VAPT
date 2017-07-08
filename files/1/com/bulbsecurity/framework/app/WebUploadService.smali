.class public Lcom/bulbsecurity/framework/app/WebUploadService;
.super Landroid/app/Service;
.source "WebUploadService.java"


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
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startID"    # I

    .prologue
    .line 32
    const-string v3, "uploadstring"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "uploadstring":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/WebUploadService;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v3}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getcontrolIP()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "controlIP":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/WebUploadService;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v3}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getpath()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Lcom/bulbsecurity/framework/app/WebUploadService$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/bulbsecurity/framework/app/WebUploadService$1;-><init>(Lcom/bulbsecurity/framework/app/WebUploadService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Lcom/bulbsecurity/framework/app/WebUploadService$1;->start()V

    .line 97
    return-void
.end method

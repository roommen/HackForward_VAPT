.class public Lcom/bulbsecurity/framework/app/WebUploadService3;
.super Landroid/app/Service;
.source "WebUploadService3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startID"    # I

    .prologue
    .line 31
    const-string v2, "uploadstring"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "uploadstring":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/WebUploadService3;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v2}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getcontrolIP()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "controlIP":Ljava/lang/String;
    new-instance v2, Lcom/bulbsecurity/framework/app/WebUploadService3$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/bulbsecurity/framework/app/WebUploadService3$1;-><init>(Lcom/bulbsecurity/framework/app/WebUploadService3;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lcom/bulbsecurity/framework/app/WebUploadService3$1;->start()V

    .line 78
    return-void
.end method

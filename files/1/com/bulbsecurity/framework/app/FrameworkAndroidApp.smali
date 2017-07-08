.class public Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;
.super Landroid/app/Application;
.source "FrameworkAndroidApp.java"


# instance fields
.field private controlIP:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private stop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 7
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->controlIP:Ljava/lang/String;

    .line 8
    const-string v0, "KEYKEY1"

    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->key:Ljava/lang/String;

    .line 9
    const-string v0, "/androidapp"

    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->path:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->stop:I

    .line 11
    const-string v0, "80"

    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->port:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getcontrolIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->controlIP:Ljava/lang/String;

    return-object v0
.end method

.method public getkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getstop()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->stop:I

    return v0
.end method

.method public setcontrolIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->controlIP:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "ke"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->key:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setpath(Ljava/lang/String;)V
    .locals 0
    .param p1, "pa"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->path:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setport(Ljava/lang/String;)V
    .locals 0
    .param p1, "por"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->port:Ljava/lang/String;

    return-void
.end method

.method public setstop(I)V
    .locals 0
    .param p1, "st"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->stop:I

    .line 37
    return-void
.end method

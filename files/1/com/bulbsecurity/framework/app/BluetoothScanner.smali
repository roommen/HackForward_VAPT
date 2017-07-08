.class public Lcom/bulbsecurity/framework/app/BluetoothScanner;
.super Landroid/app/Activity;
.source "BluetoothScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;
    }
.end annotation


# instance fields
.field private bluetoothadapter:Landroid/bluetooth/BluetoothAdapter;

.field campaign:Ljava/lang/String;

.field info:Ljava/lang/StringBuilder;

.field private final myreceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    new-instance v0, Lcom/bulbsecurity/framework/app/BluetoothScanner$2;

    invoke-direct {v0, p0}, Lcom/bulbsecurity/framework/app/BluetoothScanner$2;-><init>(Lcom/bulbsecurity/framework/app/BluetoothScanner;)V

    iput-object v0, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->myreceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/bulbsecurity/framework/app/BluetoothScanner;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/bulbsecurity/framework/app/BluetoothScanner;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->bluetoothadapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bulbsecurity/framework/app/BluetoothScanner;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/bulbsecurity/framework/app/BluetoothScanner;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->myreceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/bulbsecurity/framework/app/BluetoothScanner;->setContentView(I)V

    .line 43
    const-string v2, "AAA"

    const-string v3, "Bluetooth started"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    .line 45
    iget-object v2, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    const-string v3, "Nearby Devices:, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/BluetoothScanner;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "campaign"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->campaign:Ljava/lang/String;

    .line 47
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->bluetoothadapter:Landroid/bluetooth/BluetoothAdapter;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->myreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/bulbsecurity/framework/app/BluetoothScanner;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    iget-object v2, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner;->bluetoothadapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 58
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;

    invoke-direct {v2, p0}, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;-><init>(Lcom/bulbsecurity/framework/app/BluetoothScanner;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method

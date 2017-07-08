.class Lcom/bulbsecurity/framework/app/BluetoothScanner$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bulbsecurity/framework/app/BluetoothScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;


# direct methods
.method constructor <init>(Lcom/bulbsecurity/framework/app/BluetoothScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bulbsecurity/framework/app/BluetoothScanner;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$2;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    const-string v4, "AAA"

    const-string v5, "device found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 113
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "deviceName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "deviceHardwareAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$2;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    iget-object v4, v4, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$2;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    iget-object v4, v4, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v4, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$2;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    iget-object v4, v4, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v4, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$2;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    iget-object v4, v4, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v4, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$2;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    iget-object v4, v4, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceHardwareAddress":Ljava/lang/String;
    .end local v3    # "deviceName":Ljava/lang/String;
    :cond_0
    return-void
.end method

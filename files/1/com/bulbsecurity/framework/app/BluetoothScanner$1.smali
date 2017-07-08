.class Lcom/bulbsecurity/framework/app/BluetoothScanner$1;
.super Ljava/lang/Object;
.source "BluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bulbsecurity/framework/app/BluetoothScanner;->onCreate(Landroid/os/Bundle;)V
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
    .line 58
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    invoke-static {v0}, Lcom/bulbsecurity/framework/app/BluetoothScanner;->access$000(Lcom/bulbsecurity/framework/app/BluetoothScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 62
    new-instance v0, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;

    iget-object v1, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;-><init>(Lcom/bulbsecurity/framework/app/BluetoothScanner;Lcom/bulbsecurity/framework/app/BluetoothScanner$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    iget-object v3, v3, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bulbsecurity/framework/app/BluetoothScanner$mytask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    const-string v0, "AAA"

    iget-object v1, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    iget-object v1, v1, Lcom/bulbsecurity/framework/app/BluetoothScanner;->info:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    iget-object v1, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    invoke-static {v1}, Lcom/bulbsecurity/framework/app/BluetoothScanner;->access$200(Lcom/bulbsecurity/framework/app/BluetoothScanner;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bulbsecurity/framework/app/BluetoothScanner;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/BluetoothScanner$1;->this$0:Lcom/bulbsecurity/framework/app/BluetoothScanner;

    invoke-virtual {v0}, Lcom/bulbsecurity/framework/app/BluetoothScanner;->finish()V

    .line 67
    return-void
.end method

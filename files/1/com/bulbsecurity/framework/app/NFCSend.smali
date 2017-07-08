.class public Lcom/bulbsecurity/framework/app/NFCSend;
.super Landroid/app/Activity;
.source "NFCSend.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "NFCSend"


# instance fields
.field private isSendingMessage:Z

.field private final mHandler:Landroid/os/Handler;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private urls:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->urls:Ljava/util/Queue;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->isSendingMessage:Z

    return-void
.end method

.method private queueMessageOrSend()V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/NFCSend;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "url":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/bulbsecurity/framework/app/NFCSend;->isSendingMessage:Z

    if-nez v1, :cond_0

    .line 71
    invoke-direct {p0, v0}, Lcom/bulbsecurity/framework/app/NFCSend;->sendNfcMessage(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v1, "NFCSend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added to queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/bulbsecurity/framework/app/NFCSend;->urls:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendNfcMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    const-string v1, "NFCSend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to sendNfcMessage, called with: url = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v1, v5, [Landroid/nfc/NdefRecord;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 55
    .local v0, "message":Landroid/nfc/NdefMessage;
    iget-object v1, p0, Lcom/bulbsecurity/framework/app/NFCSend;->nfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v2, v4, [Landroid/app/Activity;

    invoke-virtual {v1, v0, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 56
    iput-boolean v5, p0, Lcom/bulbsecurity/framework/app/NFCSend;->isSendingMessage:Z

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/bulbsecurity/framework/app/NFCSend;->setContentView(I)V

    .line 33
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 35
    const-string v2, "NFCSend"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC activity started, nfs is enabled="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 36
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 39
    const-string v0, "Nfc adapter cannot be created :("

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 36
    goto :goto_0

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/bulbsecurity/framework/app/NFCSend;->queueMessageOrSend()V

    .line 46
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->nfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v1, v1, [Landroid/app/Activity;

    invoke-virtual {v0, p0, p0, v1}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 80
    const-string v0, "NFCSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNdefPushComplete() called with: event = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->urls:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->urls:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bulbsecurity/framework/app/NFCSend;->sendNfcMessage(Ljava/lang/String;)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bulbsecurity/framework/app/NFCSend$1;

    invoke-direct {v1, p0}, Lcom/bulbsecurity/framework/app/NFCSend$1;-><init>(Lcom/bulbsecurity/framework/app/NFCSend;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bulbsecurity/framework/app/NFCSend;->isSendingMessage:Z

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 62
    const-string v0, "NFCSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent() called with: intent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, p1}, Lcom/bulbsecurity/framework/app/NFCSend;->setIntent(Landroid/content/Intent;)V

    .line 65
    invoke-direct {p0}, Lcom/bulbsecurity/framework/app/NFCSend;->queueMessageOrSend()V

    .line 66
    return-void
.end method

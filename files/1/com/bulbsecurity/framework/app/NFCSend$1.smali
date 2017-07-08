.class Lcom/bulbsecurity/framework/app/NFCSend$1;
.super Ljava/lang/Object;
.source "NFCSend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bulbsecurity/framework/app/NFCSend;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bulbsecurity/framework/app/NFCSend;


# direct methods
.method constructor <init>(Lcom/bulbsecurity/framework/app/NFCSend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bulbsecurity/framework/app/NFCSend;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/NFCSend$1;->this$0:Lcom/bulbsecurity/framework/app/NFCSend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/NFCSend$1;->this$0:Lcom/bulbsecurity/framework/app/NFCSend;

    invoke-virtual {v0}, Lcom/bulbsecurity/framework/app/NFCSend;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Message sent!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-void
.end method

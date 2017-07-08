.class Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1$1;
.super Ljava/lang/Object;
.source "FrameworkAndroidAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;


# direct methods
.method constructor <init>(Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1$1;->this$1:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1$1;->this$1:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->this$0:Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;

    iget-object v0, v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->textview1:Landroid/widget/TextView;

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

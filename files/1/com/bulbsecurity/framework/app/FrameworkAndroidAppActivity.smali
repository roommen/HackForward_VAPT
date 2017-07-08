.class public Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;
.super Landroid/app/Activity;
.source "FrameworkAndroidAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field connected:Ljava/lang/String;

.field edittext1:Landroid/widget/EditText;

.field edittext2:Landroid/widget/EditText;

.field edittext3:Landroid/widget/EditText;

.field textview1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext1:Landroid/widget/EditText;

    .line 41
    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext2:Landroid/widget/EditText;

    .line 42
    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext3:Landroid/widget/EditText;

    .line 43
    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->textview1:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->connected:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->connectee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private connectee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "controlIP"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "port"    # Ljava/lang/String;

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v5, p1}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->setcontrolIP(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v5, p2}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->setkey(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v5, p3}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->setpath(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->setstop(I)V

    .line 261
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v5, p4}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->setport(Ljava/lang/String;)V

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/savedsettings.txt\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "filepath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 267
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :cond_0
    :goto_0
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "mystring":Ljava/lang/String;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 278
    .local v4, "writer":Ljava/io/FileWriter;
    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 280
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 286
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filepath":Ljava/lang/String;
    .end local v3    # "mystring":Ljava/lang/String;
    .end local v4    # "writer":Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 268
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filepath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filepath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 283
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    .line 131
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 132
    .local v7, "button":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getstop()I

    move-result v10

    .line 133
    .local v10, "off":I
    if-ne v10, v11, :cond_2

    .line 135
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "mycontrolIP":Ljava/lang/String;
    const-string v8, "80"

    .line 137
    .local v8, "myPort":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "aString":[Ljava/lang/String;
    array-length v0, v6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    aget-object v8, v6, v11

    .line 140
    const/4 v0, 0x0

    aget-object v9, v6, v0

    .line 142
    :cond_0
    move-object v3, v9

    .line 143
    .local v3, "controlIP":Ljava/lang/String;
    move-object v4, v8

    .line 144
    .local v4, "port":Ljava/lang/String;
    const-string v0, "/"

    iget-object v1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "key":Ljava/lang/String;
    new-instance v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;-><init>(Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$1;->start()V

    .line 253
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "controlIP":Ljava/lang/String;
    .end local v4    # "port":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "aString":[Ljava/lang/String;
    .end local v8    # "myPort":Ljava/lang/String;
    .end local v9    # "mycontrolIP":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    if-nez v10, :cond_1

    .line 221
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->textview1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v0, v11}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->setstop(I)V

    .line 223
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .restart local v3    # "controlIP":Ljava/lang/String;
    const-string v0, "/"

    iget-object v1, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    .restart local v5    # "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .restart local v2    # "key":Ljava/lang/String;
    new-instance v0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;

    invoke-direct {v0, p0, v2, v3, v5}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;-><init>(Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity$2;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v13, 0x7f030006

    invoke-virtual {p0, v13}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 86
    const v13, 0x7f06000b

    invoke-virtual {p0, v13}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    iput-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext1:Landroid/widget/EditText;

    .line 87
    const v13, 0x7f06000c

    invoke-virtual {p0, v13}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    iput-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext2:Landroid/widget/EditText;

    .line 88
    const v13, 0x7f06000d

    invoke-virtual {p0, v13}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    iput-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext3:Landroid/widget/EditText;

    .line 89
    const v13, 0x7f060009

    invoke-virtual {p0, v13}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->textview1:Landroid/widget/TextView;

    .line 90
    const v13, 0x7f06000e

    invoke-virtual {p0, v13}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 91
    .local v1, "button":Landroid/widget/Button;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/savedsettings.txt\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "filepath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 96
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 97
    .local v6, "is":Ljava/io/InputStream;
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    .local v11, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "line":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "aString":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v5, v0, v13

    .line 101
    .local v5, "i":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v10, v0, v13

    .line 102
    .local v10, "p":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v12, v0, v13

    .line 103
    .local v12, "u":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v7, v0, v13

    .line 104
    .local v7, "k":Ljava/lang/String;
    const-string v13, "80"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 106
    const-string v13, ":"

    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    :cond_0
    iget-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext1:Landroid/widget/EditText;

    invoke-virtual {v13, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext2:Landroid/widget/EditText;

    invoke-virtual {v13, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext3:Landroid/widget/EditText;

    invoke-virtual {v13, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "aString":[Ljava/lang/String;
    .end local v5    # "i":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "k":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "p":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "u":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v13

    check-cast v13, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;

    invoke-virtual {v13}, Lcom/bulbsecurity/framework/app/FrameworkAndroidApp;->getstop()I

    move-result v9

    .line 120
    .local v9, "off":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_3

    .line 122
    iget-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->textview1:Landroid/widget/TextView;

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_2
    :goto_1
    return-void

    .line 112
    .end local v9    # "off":I
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v9    # "off":I
    :cond_3
    if-nez v9, :cond_2

    .line 126
    iget-object v13, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->textview1:Landroid/widget/TextView;

    const-string v14, "Connected"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    const v12, 0x7f06000b

    invoke-virtual {p0, v12}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext1:Landroid/widget/EditText;

    .line 49
    const v12, 0x7f06000c

    invoke-virtual {p0, v12}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext2:Landroid/widget/EditText;

    .line 50
    const v12, 0x7f06000d

    invoke-virtual {p0, v12}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    iput-object v12, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext3:Landroid/widget/EditText;

    .line 51
    const v12, 0x7f060009

    invoke-virtual {p0, v12}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->textview1:Landroid/widget/TextView;

    .line 52
    const v12, 0x7f06000e

    invoke-virtual {p0, v12}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 53
    .local v1, "button":Landroid/widget/Button;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/savedsettings.txt\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "filepath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 58
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v6, "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    .local v10, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "line":Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "aString":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v5, v0, v12

    .line 63
    .local v5, "i":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v9, v0, v12

    .line 64
    .local v9, "p":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v11, v0, v12

    .line 65
    .local v11, "u":Ljava/lang/String;
    const/4 v12, 0x3

    aget-object v7, v0, v12

    .line 66
    .local v7, "k":Ljava/lang/String;
    const-string v12, "80"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 68
    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    :cond_0
    iget-object v12, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext1:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v12, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext2:Landroid/widget/EditText;

    invoke-virtual {v12, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v12, p0, Lcom/bulbsecurity/framework/app/FrameworkAndroidAppActivity;->edittext3:Landroid/widget/EditText;

    invoke-virtual {v12, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "aString":[Ljava/lang/String;
    .end local v5    # "i":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "k":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "p":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "u":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

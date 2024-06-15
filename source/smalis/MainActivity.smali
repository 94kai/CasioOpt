.class public Lcom/casio/wac_app/MainActivity;
.super Lio/flutter/embedding/android/FlutterActivity;
.source "MainActivity.java"


# static fields
.field private static final EVENT_CHANNEL:Ljava/lang/String; = "com.example.aarlib/event"

.field private static final METHOD_CHANNEL:Ljava/lang/String; = "com.example.aarlib/calc"

.field private static final METHOD_CHANNEL_FCM:Ljava/lang/String; = "com.casio.wac_app/fcm"

.field private static final METHOD_CHANNEL_PROPER:Ljava/lang/String; = "com.casio.wac_app/method"

.field public static final REQUEST_PHONE_PERMISSION:I = 0x3ea


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/casio/wac_app/MainActivity;->mHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/casio/wac_app/MainActivity;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method private initCursorWindowSize()V
    .registers 4

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    return-void

    .line 208
    :cond_7
    :try_start_7
    const-class v0, Landroid/database/CursorWindow;

    const-string v1, "sCursorWindowSize"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x1000000

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method

.method static synthetic lambda$configureFlutterEngine$0(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 3

    .line 119
    iget-object v0, p0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-static {v0}, Lcom/casio/wac_app/MethodCallStrategy;->getTarget(Ljava/lang/String;)Lcom/casio/wac_app/MethodCallStrategy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/casio/wac_app/MethodCallStrategy;->dispatch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Z

    return-void
.end method


# virtual methods
.method cancelListening(Ljava/lang/Object;)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/casio/wac_app/MainActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .registers 5

    .line 114
    invoke-static {p1}, Lio/flutter/plugins/GeneratedPluginRegistrant;->registerWith(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 115
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "com.example.aarlib/calc"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    sget-object v1, Lcom/casio/wac_app/MainActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/casio/wac_app/MainActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 124
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "com.example.aarlib/event"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    new-instance v1, Lcom/casio/wac_app/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/casio/wac_app/MainActivity$1;-><init>(Lcom/casio/wac_app/MainActivity;)V

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 138
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "com.casio.wac_app/method"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    new-instance v1, Lcom/casio/wac_app/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/casio/wac_app/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/casio/wac_app/MainActivity;)V

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 157
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "com.casio.wac_app/fcm"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    new-instance p1, Lcom/casio/wac_app/MainActivity$3;

    invoke-direct {p1, p0}, Lcom/casio/wac_app/MainActivity$3;-><init>(Lcom/casio/wac_app/MainActivity;)V

    .line 158
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public synthetic lambda$configureFlutterEngine$1$com-casio-wac_app-MainActivity(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 4

    .line 142
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-static {v0}, Lcom/casio/wac_app/MethodCallStrategyProper;->getTarget(Ljava/lang/String;)Lcom/casio/wac_app/MethodCallStrategyProper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/casio/wac_app/MethodCallStrategyProper;->dispatch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Z

    .line 145
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v0, "requestPhonePermission"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 146
    new-instance p1, Lcom/casio/wac_app/MainActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2}, Lcom/casio/wac_app/MainActivity$2;-><init>(Lcom/casio/wac_app/MainActivity;Landroid/os/Looper;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iput-object p1, p0, Lcom/casio/wac_app/MainActivity;->mHandler:Landroid/os/Handler;

    :cond_1e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {p0}, Lcom/casio/wac_app/MethodCallStrategy;->setContext(Landroid/content/Context;)V

    .line 105
    invoke-static {p0, p0}, Lcom/casio/wac_app/MethodCallStrategyProper;->setContext(Landroid/content/Context;Lcom/casio/wac_app/MainActivity;)V

    .line 106
    invoke-direct {p0}, Lcom/casio/wac_app/MainActivity;->initCursorWindowSize()V


	invoke-static {p0}, Lcom/example/Utils;->show(Landroid/content/Context;)V


    return-void
.end method

.method public onPause()V
    .registers 3

    .line 185
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onPause()V

    const-string v0, "CasioAepMobilePlugin"

    const-string v1, "lifecyclePause"

    .line 186
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/casio/casio_aep_mobile/CasioAepMobilePlugin;->lifecyclePause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_8

    .line 95
    invoke-super {p0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_11

    .line 92
    :cond_8
    iget-object p1, p0, Lcom/casio/wac_app/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_11
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 178
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onResume()V

    const-string v0, "CasioAepMobilePlugin"

    const-string v1, "lifecycleStart"

    .line 179
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/casio/wac_app/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/casio/casio_aep_mobile/CasioAepMobilePlugin;->lifecycleStart(Landroid/app/Application;Ljava/util/HashMap;)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 49
    invoke-super {p0}, Lio/flutter/embedding/android/FlutterActivity;->onStart()V

    .line 52
    invoke-static {}, Lcom/casio/wac_app/Application;->getInstance()Lcom/casio/wac_app/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casio/wac_app/Application;->initCasioWatchLibPlugin()V

    return-void
.end method

.method startListening(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .registers 3

    .line 194
    iget-object p2, p0, Lcom/casio/wac_app/MainActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

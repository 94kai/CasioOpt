.class public Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "CasioLibNotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$UpdateWatchNotificationsReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_WATCH_NOTIFICATIONS:Ljava/lang/String; = "com.casio.casiolib.intent.action.ACTION_UPDATE_WATCH_NOTIFICATIONS"


# instance fields
.field private mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

.field private final mGattClientServiceConnection:Landroid/content/ServiceConnection;

.field private mLastWhatsappCallPostTime:J

.field private final mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private final mPhoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private mPrevCallState:I

.field private mUpdateWatchNotificationsReceiver:Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$UpdateWatchNotificationsReceiver;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 44
    new-instance v0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$1;

    invoke-direct {v0, p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$1;-><init>(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V

    iput-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mNotifications:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mLastWhatsappCallPostTime:J

    .line 81
    iput-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 82
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPrevCallState:I

    return-void
.end method

.method static synthetic access$002(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;Lcom/casio/casiolib/ble/client/GattClientService;)Lcom/casio/casiolib/ble/client/GattClientService;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->onGattClientServiceConnected()V

    return-void
.end method

.method static synthetic access$1000(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->sendRingingStopNotificationForWatch()V

    return-void
.end method

.method static synthetic access$200(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotifications()V

    return-void
.end method

.method static synthetic access$300(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotificationsForWatch()V

    return-void
.end method

.method static synthetic access$400(I)Ljava/lang/String;
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->callStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mLastWhatsappCallPostTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->isPhoneNumberEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->sendRingingNotificationForWatch(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)I
    .registers 1

    .line 42
    iget p0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPrevCallState:I

    return p0
.end method

.method static synthetic access$902(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;I)I
    .registers 2

    .line 42
    iput p1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPrevCallState:I

    return p1
.end method

.method private static callStateString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p0, "CALL_STATE_OFFHOOK"

    return-object p0

    :cond_25
    const-string p0, "CALL_STATE_RINGING"

    return-object p0

    :cond_28
    const-string p0, "CALL_STATE_IDLE"

    return-object p0
.end method

.method private checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 233
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private dumpCurrentNotification()V
    .registers 8

    .line 180
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CasioLibNotificationListenerService - dumpCurrentNotification() this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 182
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 183
    sget-object v3, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", postTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/casio/casiolib/gts/TimeCorrectInfo;->getDeviceCalendar(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/casio/casiolib/util/CasioLibUtil;->toString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", flag="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v2, Landroid/app/Notification;->flags:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", cat="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", title="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.title"

    .line 186
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.text"

    .line 187
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", sub_text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.subText"

    .line 188
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", big_text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.bigText"

    .line 189
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v3, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_c6
    return-void
.end method

.method private isPhoneNumberEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p1

    .line 338
    sget-object p2, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$4;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType:[I

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_16

    const/4 p2, 0x5

    if-eq p1, p2, :cond_16

    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    const/4 p1, 0x1

    :goto_17
    return p1
.end method












.method private clear(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6709\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "xuekai"

    # invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .local v0, "statusBarNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 35
    .local v4, "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5220\u9664"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    .end local v4    # "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    :cond_5a
    goto :goto_2b

    .line 41
    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5269\u4f59\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


.method private clear(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .local v0, "statusBarNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 34
    .local v2, "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    .end local v2    # "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    :cond_24
    goto :goto_9

    .line 38
    :cond_25
    return-void
.end method

.method private onGattClientServiceConnected()V
    .registers 3

    .line 147
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    const-string v1, "CasioLibNotificationListenerService - onGattClientServiceConnected()"

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->dumpCurrentNotification()V

    .line 150
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotificationsForWatch()V

    return-void
.end method

.method private sendRingingNotificationForWatch(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    .line 210
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->BLUETOOTH:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRingingNotificationForWatch: mGattClientService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

    if-nez v2, :cond_14

    const-string v2, "is null."

    goto :goto_16

    :cond_14
    const-string v2, "is not null."

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

    if-nez v0, :cond_26

    return-void

    .line 214
    :cond_26
    invoke-virtual {v0}, Lcom/casio/casiolib/ble/client/GattClientService;->getConnectWatchClientList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/casio/casiolib/ble/client/ConnectWatchClient;

    .line 215
    invoke-virtual {v1}, Lcom/casio/casiolib/ble/client/ConnectWatchClient;->getNotificationManagerServer()Lcom/casio/casiolib/notification/NotificationManagerServer;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 217
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/casio/casiolib/notification/NotificationManagerServer;->sendRingingNotifications(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2e

    :cond_44
    return-void
.end method

.method private sendRingingStopNotificationForWatch()V
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

    invoke-virtual {v0}, Lcom/casio/casiolib/ble/client/GattClientService;->getConnectWatchClientList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/casio/casiolib/ble/client/ConnectWatchClient;

    .line 224
    invoke-virtual {v1}, Lcom/casio/casiolib/ble/client/ConnectWatchClient;->getNotificationManagerServer()Lcom/casio/casiolib/notification/NotificationManagerServer;

    move-result-object v1

    .line 225
    sget-object v2, Lcom/casio/casiolib/util/Log$Tag;->BLUETOOTH:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAC-8539 sendRingingStopNotificationForWatch server="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    .line 227
    invoke-virtual {v1}, Lcom/casio/casiolib/notification/NotificationManagerServer;->sendRingingStopNotifications()V

    goto :goto_a

    :cond_38
    return-void
.end method

.method private updateNotifications()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    :try_start_5
    invoke-virtual {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_28

    .line 158
    :try_start_9
    sget-object v1, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CasioLibNotificationListenerService - updateNotifications() list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2


    const-string v1, "xuekai"
    # invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_31

    :catch_26
    move-exception v1

    goto :goto_2a

    :catch_28
    move-exception v1

    const/4 v0, 0x0

    .line 160
    :goto_2a
    sget-object v2, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    const-string v3, "CasioLibNotificationListenerService - updateNotifications() getActiveNotifications catch "

    invoke-static {v2, v3, v1}, Lcom/casio/casiolib/util/Log;->w(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    if-eqz v0, :cond_3c

    .line 163
    iget-object v1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mNotifications:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z


    invoke-direct {p0, v1}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->clear(Ljava/util/List;)V


    .line 165
    :cond_3c
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mNotifications:Ljava/util/List;

    new-instance v1, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$2;

    invoke-direct {v1, p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$2;-><init>(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->dumpCurrentNotification()V

    .line 173
    invoke-static {}, Lcom/casio/casiolib/notification/NotificationDataForPreAlpha;->getInstance()Lcom/casio/casiolib/notification/NotificationDataForPreAlpha;

    move-result-object v0

    iget-object v1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mNotifications:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/casio/casiolib/notification/NotificationDataForPreAlpha;->setCurrentOSNotifications(Ljava/util/Collection;)V

    .line 174
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

    if-eqz v0, :cond_59

    .line 175
    invoke-virtual {v0}, Lcom/casio/casiolib/ble/client/GattClientService;->notifyOnNotificationChanged()V

    :cond_59
    return-void
.end method

.method private updateNotificationsForWatch()V
    .registers 9

    .line 194
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->BLUETOOTH:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CasioLibNotificationListenerService - updateNotificationsForWatch() mGattClientService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

    const-string v3, "is null."

    const-string v4, "is not null."

    if-nez v2, :cond_17

    move-object v2, v3

    goto :goto_18

    :cond_17
    move-object v2, v4

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNotifications.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1


    const-string v2, "xuekai"
    # invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientService:Lcom/casio/casiolib/ble/client/GattClientService;

    if-nez v0, :cond_38

    return-void

    .line 198
    :cond_38
    invoke-virtual {v0}, Lcom/casio/casiolib/ble/client/GattClientService;->getConnectWatchClientList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/casio/casiolib/ble/client/ConnectWatchClient;

    .line 199
    invoke-virtual {v1}, Lcom/casio/casiolib/ble/client/ConnectWatchClient;->getNotificationManagerServer()Lcom/casio/casiolib/notification/NotificationManagerServer;

    move-result-object v2

    .line 200
    sget-object v5, Lcom/casio/casiolib/util/Log$Tag;->BLUETOOTH:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  connectWatchClient DeviceType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/casio/casiolib/ble/client/ConnectWatchClient;->getDeviceType()Lcom/casio/casiolib/util/CasioLibUtil$DeviceType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 201
    sget-object v5, Lcom/casio/casiolib/util/Log$Tag;->BLUETOOTH:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                     ConnectionState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/casio/casiolib/ble/client/ConnectWatchClient;->getConnectionState()Lcom/casio/casiolib/ble/client/ConnectWatchClient$ConnectionState;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/casio/casiolib/util/Log$Tag;->BLUETOOTH:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "                     NotificationManagerServer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_99

    move-object v6, v3

    goto :goto_9a

    :cond_99
    move-object v6, v4

    :goto_9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_40

    .line 204
    iget-object v1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mNotifications:Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/casio/casiolib/notification/NotificationManagerServer;->updateNotifications(Ljava/util/List;)V

    goto :goto_40

    :cond_ad
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .line 87
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 88
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    const-string v1, "CasioLibNotificationListenerService - onCreate()"

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotifications()V

    .line 90
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/casio/casiolib/ble/client/GattClientService;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 92
    invoke-static {}, Lcom/casio/casiolib/application/CasioLib;->getInstance()Lcom/casio/casiolib/application/CasioLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casio/casiolib/application/CasioLib;->getActivityLifecycleCallbacks()Lcom/casio/casiolib/application/CasioLibActivityLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/casio/casiolib/application/CasioLibActivityLifecycleCallbacks;->setNotificationListenerService(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V

    .line 93
    invoke-virtual {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->registerPhoneStateListener()V

    .line 94
    new-instance v0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$UpdateWatchNotificationsReceiver;

    invoke-direct {v0, p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$UpdateWatchNotificationsReceiver;-><init>(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V

    iput-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mUpdateWatchNotificationsReceiver:Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$UpdateWatchNotificationsReceiver;

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.casio.casiolib.intent.action.ACTION_UPDATE_WATCH_NOTIFICATIONS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 5

    .line 100
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 101
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    const-string v1, "CasioLibNotificationListenerService - onDestroy()"

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/casio/casiolib/notification/NotificationDataForPreAlpha;->getInstance()Lcom/casio/casiolib/notification/NotificationDataForPreAlpha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casio/casiolib/notification/NotificationDataForPreAlpha;->clearAllData()V

    .line 103
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mGattClientServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    invoke-static {}, Lcom/casio/casiolib/application/CasioLib;->getInstance()Lcom/casio/casiolib/application/CasioLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casio/casiolib/application/CasioLib;->getActivityLifecycleCallbacks()Lcom/casio/casiolib/application/CasioLibActivityLifecycleCallbacks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/casio/casiolib/application/CasioLibActivityLifecycleCallbacks;->setGattClientService(Lcom/casio/casiolib/ble/client/GattClientService;)V

    .line 106
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_36

    const-string v0, "phone"

    .line 107
    invoke-virtual {p0, v0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 108
    iget-object v2, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 109
    iput-object v1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 111
    :cond_36
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mUpdateWatchNotificationsReceiver:Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$UpdateWatchNotificationsReceiver;

    invoke-virtual {p0, v0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iput-object v1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mUpdateWatchNotificationsReceiver:Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$UpdateWatchNotificationsReceiver;

    return-void
.end method

.method public onListenerConnected()V
    .registers 3

    .line 117
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 118
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    const-string v1, "CasioLibNotificationListenerService - onListenerConnected()"

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotifications()V

    return-void
.end method

.method public onListenerDisconnected()V
    .registers 3

    .line 124
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 125
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    const-string v1, "CasioLibNotificationListenerService - onListenerDisconnected()"

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    .line 16
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xk xuekai new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XK"

    # invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e










    .line 130
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CasioLibNotificationListenerService - onNotificationPosted() notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotifications()V

    .line 132
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotificationsForWatch()V

    .line 134
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v1, "call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 135
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mLastWhatsappCallPostTime:J

    :cond_3e
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    .line 141
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->OTHER:Lcom/casio/casiolib/util/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CasioLibNotificationListenerService - onNotificationRemoved() notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotifications()V

    .line 143
    invoke-direct {p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->updateNotificationsForWatch()V

    return-void
.end method

.method public registerPhoneStateListener()V
    .registers 4

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 246
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 247
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->GTS:Lcom/casio/casiolib/util/Log$Tag;

    const-string v1, "Need READ_PHONE_STATE permission."

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->w(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_10
    iget-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_1b

    .line 251
    new-instance v0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$3;

    invoke-direct {v0, p0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService$3;-><init>(Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;)V

    iput-object v0, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    :cond_1b
    const-string v0, "phone"

    .line 329
    invoke-virtual {p0, v0}, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 330
    iget-object v1, p0, Lcom/casio/casiolib/notification/CasioLibNotificationListenerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 331
    sget-object v0, Lcom/casio/casiolib/util/Log$Tag;->BLUETOOTH:Lcom/casio/casiolib/util/Log$Tag;

    const-string v1, "  Telephony set listener"

    invoke-static {v0, v1}, Lcom/casio/casiolib/util/Log;->d(Lcom/casio/casiolib/util/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


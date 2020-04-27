.class Lcom/bwx/bequick/SettingsApplication$1;
.super Ljava/lang/Object;
.source "SettingsApplication.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bwx/bequick/SettingsApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bwx/bequick/fwk/Setting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bwx/bequick/SettingsApplication;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/SettingsApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/SettingsApplication;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/bwx/bequick/SettingsApplication$1;->this$0:Lcom/bwx/bequick/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/bwx/bequick/fwk/Setting;Lcom/bwx/bequick/fwk/Setting;)I
    .locals 2
    .param p1, "object1"    # Lcom/bwx/bequick/fwk/Setting;
    .param p2, "object2"    # Lcom/bwx/bequick/fwk/Setting;

    .prologue
    .line 103
    iget v0, p1, Lcom/bwx/bequick/fwk/Setting;->index:I

    iget v1, p2, Lcom/bwx/bequick/fwk/Setting;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 101
    check-cast p1, Lcom/bwx/bequick/fwk/Setting;

    check-cast p2, Lcom/bwx/bequick/fwk/Setting;

    invoke-virtual {p0, p1, p2}, Lcom/bwx/bequick/SettingsApplication$1;->compare(Lcom/bwx/bequick/fwk/Setting;Lcom/bwx/bequick/fwk/Setting;)I

    move-result v0

    return v0
.end method

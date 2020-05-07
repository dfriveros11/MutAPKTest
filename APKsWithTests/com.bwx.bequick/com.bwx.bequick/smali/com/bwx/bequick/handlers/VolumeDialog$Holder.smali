.class Lcom/bwx/bequick/handlers/VolumeDialog$Holder;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bwx/bequick/handlers/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field index:I

.field max:I

.field seek:Landroid/widget/SeekBar;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/bwx/bequick/handlers/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/bwx/bequick/handlers/VolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bwx/bequick/handlers/VolumeDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bwx/bequick/handlers/VolumeDialog$Holder;->this$0:Lcom/bwx/bequick/handlers/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

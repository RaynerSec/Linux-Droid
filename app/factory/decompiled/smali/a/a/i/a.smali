.class final La/a/i/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, La/a/i/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, La/a/i/c;-><init>(Ljava/lang/Runnable;La/a/i/a;)V

    invoke-static {v0}, La/a/i/c;->a(La/a/i/c;)La/a/i/c;

    invoke-static {}, La/a/i/c;->a()La/a/i/c;

    move-result-object p1

    const-string v0, "EventThread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, La/a/i/c;->a()La/a/i/c;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-static {}, La/a/i/c;->a()La/a/i/c;

    move-result-object p1

    return-object p1
.end method

.class La/a/d/a/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/d/a/a/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:La/a/d/a/a/d;


# direct methods
.method constructor <init>(La/a/d/a/a/d;[ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, La/a/d/a/a/c;->c:La/a/d/a/a/d;

    iput-object p2, p0, La/a/d/a/a/c;->a:[I

    iput-object p3, p0, La/a/d/a/a/c;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, La/a/d/a/a/i;->h()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "pre-pause writing complete"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object p1, p0, La/a/d/a/a/c;->a:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    if-nez v1, :cond_0

    iget-object p1, p0, La/a/d/a/a/c;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

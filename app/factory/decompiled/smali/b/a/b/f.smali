.class public final Lb/a/b/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lb/a;

.field private final b:Lb/a/b/d;

.field private c:Ljava/net/Proxy;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/J;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a;Lb/a/b/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/f;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/f;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/b/f;->i:Ljava/util/List;

    iput-object p1, p0, Lb/a/b/f;->a:Lb/a;

    iput-object p2, p0, Lb/a/b/f;->b:Lb/a/b/d;

    invoke-virtual {p1}, Lb/a;->k()Lb/w;

    move-result-object p2

    invoke-virtual {p1}, Lb/a;->f()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lb/a/b/f;->a(Lb/w;Ljava/net/Proxy;)V

    return-void
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lb/w;Ljava/net/Proxy;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lb/a/b/f;->e:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {p2}, Lb/a;->h()Ljava/net/ProxySelector;

    move-result-object p2

    invoke-virtual {p1}, Lb/w;->n()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lb/a/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v0

    invoke-static {p1}, Lb/a/d;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput v0, p0, Lb/a/b/f;->f:I

    return-void
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/b/f;->g:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lb/a/b/f;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->k()Lb/w;

    move-result-object v0

    invoke-virtual {v0}, Lb/w;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->k()Lb/w;

    move-result-object v0

    invoke-virtual {v0}, Lb/w;->j()I

    move-result v0

    :goto_1
    const/4 v2, 0x1

    if-lt v0, v2, :cond_5

    const v2, 0xffff

    if-gt v0, v2, :cond_5

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lb/a/b/f;->g:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {p1}, Lb/a;->c()Lb/t;

    move-result-object p1

    invoke-interface {p1, v1}, Lb/t;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    iget-object v5, p0, Lb/a/b/f;->g:Ljava/util/List;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iput v3, p0, Lb/a/b/f;->h:I

    return-void

    :cond_5
    new-instance p1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private c()Z
    .locals 2

    iget v0, p0, Lb/a/b/f;->h:I

    iget-object v1, p0, Lb/a/b/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lb/a/b/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private e()Z
    .locals 2

    iget v0, p0, Lb/a/b/f;->f:I

    iget-object v1, p0, Lb/a/b/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Ljava/net/InetSocketAddress;
    .locals 3

    invoke-direct {p0}, Lb/a/b/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/b/f;->g:Ljava/util/List;

    iget v1, p0, Lb/a/b/f;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/b/f;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {v2}, Lb/a;->k()Lb/w;

    move-result-object v2

    invoke-virtual {v2}, Lb/w;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/b/f;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()Lb/J;
    .locals 2

    iget-object v0, p0, Lb/a/b/f;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/J;

    return-object v0
.end method

.method private h()Ljava/net/Proxy;
    .locals 3

    invoke-direct {p0}, Lb/a/b/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/b/f;->e:Ljava/util/List;

    iget v1, p0, Lb/a/b/f;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/b/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lb/a/b/f;->a(Ljava/net/Proxy;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {v2}, Lb/a;->k()Lb/w;

    move-result-object v2

    invoke-virtual {v2}, Lb/w;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/b/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lb/J;Ljava/io/IOException;)V
    .locals 3

    invoke-virtual {p1}, Lb/J;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->h()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->h()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/f;->a:Lb/a;

    invoke-virtual {v1}, Lb/a;->k()Lb/w;

    move-result-object v1

    invoke-virtual {v1}, Lb/w;->n()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lb/J;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p2, p0, Lb/a/b/f;->b:Lb/a/b/d;

    invoke-virtual {p2, p1}, Lb/a/b/d;->b(Lb/J;)V

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-direct {p0}, Lb/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lb/a/b/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lb/a/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Lb/J;
    .locals 4

    invoke-direct {p0}, Lb/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lb/a/b/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lb/a/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/b/f;->g()Lb/J;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lb/a/b/f;->h()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/f;->c:Ljava/net/Proxy;

    :cond_2
    invoke-direct {p0}, Lb/a/b/f;->f()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/f;->d:Ljava/net/InetSocketAddress;

    new-instance v0, Lb/J;

    iget-object v1, p0, Lb/a/b/f;->a:Lb/a;

    iget-object v2, p0, Lb/a/b/f;->c:Ljava/net/Proxy;

    iget-object v3, p0, Lb/a/b/f;->d:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lb/J;-><init>(Lb/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v1, p0, Lb/a/b/f;->b:Lb/a/b/d;

    invoke-virtual {v1, v0}, Lb/a/b/d;->c(Lb/J;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/b/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lb/a/b/f;->b()Lb/J;

    move-result-object v0

    :cond_3
    return-object v0
.end method

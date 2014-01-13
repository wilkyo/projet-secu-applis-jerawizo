.class public Lcom/xxogli/xadroid/checkers/a;
.super Ljava/lang/Thread;


# static fields
.field private static final D:[I

.field private static final E:[I

.field private static final F:[I

.field private static final G:[I

.field private static final H:[I

.field private static final I:[I

.field private static final J:[I

.field private static final K:[I

.field private static final L:[I

.field private static final M:[I


# instance fields
.field private A:[B

.field private B:Z

.field private C:I

.field public a:[I

.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public volatile h:I

.field private i:Ljava/util/Random;

.field private j:Lcom/xxogli/xadroid/checkers/b;

.field private k:Z

.field private l:J

.field private m:Z

.field private n:I

.field private o:[I

.field private p:[I

.field private q:[I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:[I

.field private z:[S


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/16 v6, 0x15

    const/16 v5, 0x10

    const/16 v4, 0xa

    const/16 v3, 0x20

    new-array v0, v3, [I

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v7, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v5, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0x40

    aput v1, v0, v4

    const/16 v1, 0xb

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x1000

    aput v1, v0, v5

    const/16 v1, 0x11

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x8000

    aput v2, v0, v1

    const/high16 v1, 0x1

    aput v1, v0, v6

    const/16 v1, 0x16

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x19

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x400

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    new-array v0, v3, [I

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v7, v0, v4

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x1000

    aput v1, v0, v6

    const/16 v1, 0x16

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x19

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x40

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->E:[I

    new-array v0, v3, [I

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v7, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x80

    aput v1, v0, v4

    const/16 v1, 0xc

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x2000

    aput v1, v0, v5

    const/16 v1, 0x11

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x14

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/high16 v1, 0x2

    aput v1, v0, v6

    const/16 v1, 0x16

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x19

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x800

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    new-array v0, v3, [I

    const/16 v1, 0x8

    aput v7, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v1, v0, v4

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x200

    aput v1, v0, v5

    const/16 v1, 0x11

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x4000

    aput v1, v0, v6

    const/16 v1, 0x16

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x19

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x80

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->G:[I

    new-array v0, v3, [I

    const/4 v1, 0x0

    aput v5, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/16 v1, 0x40

    aput v1, v0, v7

    const/4 v1, 0x3

    const/16 v2, 0x80

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x200

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x4000

    aput v1, v0, v4

    const/16 v1, 0xb

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/high16 v1, 0x10

    aput v1, v0, v5

    const/16 v1, 0x11

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x13

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/high16 v1, 0x100

    aput v1, v0, v6

    const/16 v1, 0x16

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x19

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/high16 v2, -0x8000

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    new-array v0, v3, [I

    const/4 v1, 0x1

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x200

    aput v1, v0, v7

    const/4 v1, 0x3

    const/16 v2, 0x400

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x9

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/high16 v1, 0x2

    aput v1, v0, v4

    const/16 v1, 0xb

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x11

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x13

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/high16 v1, 0x1000

    aput v1, v0, v6

    const/16 v1, 0x16

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, 0x4000

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->I:[I

    new-array v0, v3, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x80

    aput v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x200

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x400

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4000

    aput v2, v0, v1

    const v1, 0x8000

    aput v1, v0, v4

    const/16 v1, 0xc

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/high16 v1, 0x20

    aput v1, v0, v5

    const/16 v1, 0x11

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x14

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/high16 v1, 0x200

    aput v1, v0, v6

    const/16 v1, 0x16

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x19

    const/high16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, -0x8000

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    new-array v0, v3, [I

    const/4 v1, 0x0

    const/16 v2, 0x200

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x800

    aput v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x8

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/high16 v1, 0x8

    aput v1, v0, v4

    const/16 v1, 0xc

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/high16 v1, 0x200

    aput v1, v0, v5

    const/16 v1, 0x11

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x14

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/high16 v1, 0x4000

    aput v1, v0, v6

    const/16 v1, 0x16

    const/high16 v2, -0x8000

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->K:[I

    new-array v0, v3, [I

    const/4 v1, 0x1

    aput v1, v0, v7

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v6, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x2d

    aput v1, v0, v4

    const/16 v1, 0xb

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x5b

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x78

    aput v1, v0, v5

    const/16 v1, 0x11

    const/16 v2, 0x88

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x99

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xab

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xbe

    aput v2, v0, v1

    const/16 v1, 0xd2

    aput v1, v0, v6

    const/16 v1, 0x16

    const/16 v2, 0xe7

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xfd

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x114

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x12c

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x145

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x15f

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x17a

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x196

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b3

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1d1

    aput v2, v0, v1

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->L:[I

    const/16 v0, 0x81

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xxogli/xadroid/checkers/a;->M:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x67t 0x45t 0x68t 0xbat
        0xfft 0x5ct 0x6ct 0x53t
        0xbat 0xd8t 0xcet 0xd6t
        0x46t 0xe1t 0x7bt 0x75t
        0x1bt 0x23t 0xe2t 0xb6t
        0x5at 0x25t 0xc5t 0x8ft
        0xc9t 0xc4t 0x6at 0xc2t
        0xb7t 0x57t 0x3t 0x9et
        0x25t 0xe1t 0xc2t 0x47t
        0xe9t 0x5at 0x32t 0xeft
        0xcdt 0xd0t 0x30t 0x73t
        0x11t 0x86t 0xaft 0xcet
        0x21t 0x75t 0xe1t 0xc0t
        0xe9t 0xddt 0x9t 0x61t
        0xfct 0x2dt 0xb8t 0x55t
        0x97t 0x2at 0xbdt 0x80t
        0x8ft 0xd7t 0x17t 0xat
        0xb0t 0xfct 0x55t 0x80t
        0x3ct 0x8dt 0xc7t 0x3dt
        0x5ct 0xa4t 0xc5t 0xat
        0xfbt 0x40t 0xbft 0xaet
        0x29t 0x25t 0x2et 0x86t
        0x7ct 0xb7t 0x51t 0x47t
        0x61t 0x28t 0x1ft 0xa5t
        0xa8t 0x36t 0x78t 0x53t
        0xebt 0xb5t 0xd6t 0x45t
        0xf7t 0xbt 0x27t 0x3at
        0xe5t 0xat 0x52t 0x5at
        0x48t 0xb1t 0xa9t 0x88t
        0x23t 0x5dt 0x35t 0x1t
        0x64t 0x45t 0x3bt 0x2ft
        0xc5t 0x82t 0xact 0x92t
        0x3bt 0x81t 0xdat 0x26t
        0x9et 0xf0t 0xa3t 0x12t
        0xact 0xd9t 0x94t 0xa7t
        0x3bt 0xf0t 0xft 0xe8t
        0x48t 0x56t 0xd5t 0x87t
        0x6ft 0x1t 0xd0t 0x8et
        0x7dt 0xb0t 0x20t 0x5bt
        0x1ct 0x81t 0x7t 0x58t
        0xf8t 0x18t 0xct 0x27t
        0xcat 0x2at 0x1t 0x4ct
        0x38t 0x99t 0x59t 0xe7t
        0x34t 0x1at 0x51t 0x46t
        0xfat 0x45t 0x45t 0x39t
        0x86t 0x54t 0xf6t 0xfat
        0x55t 0x6at 0x8et 0x2dt
        0x73t 0x63t 0xf4t 0x8bt
        0x36t 0xfft 0x3ft 0x3et
        0xf0t 0xfct 0xaft 0x66t
        0x15t 0xdt 0xe7t 0xet
        0xa9t 0xb5t 0x42t 0x15t
        0x8at 0x5t 0xf4t 0x78t
        0xat 0xe8t 0x69t 0xb0t
        0xa8t 0x47t 0x1ct 0x76t
        0x8et 0xabt 0x50t 0xcft
        0x9t 0x9dt 0x5et 0x9ct
        0x33t 0xa2t 0x8t 0x39t
        0x7ft 0x1et 0x97t 0xa5t
        0x47t 0x6et 0x27t 0x53t
        0x4at 0x8ct 0xeft 0x4ft
        0x23t 0x68t 0x82t 0xd2t
        0x7t 0x48t 0xdbt 0x2at
        0xb9t 0x28t 0x83t 0xf8t
        0x3et 0x76t 0x45t 0xet
        0x67t 0xe8t 0x9ct 0x29t
        0xa3t 0xb9t 0x38t 0x1dt
        0x34t 0xdat 0x1bt 0xdt
        0x10t 0x81t 0x8ft 0x0t
        0x1t 0x4t 0x39t 0x48t
        0x78t 0x6et 0xcft 0x5bt
        0x23t 0x7et 0xc9t 0x3ft
        0x6at 0x25t 0xe1t 0x9et
        0x25t 0x4ft 0x63t 0xfct
        0x3at 0x41t 0xa9t 0xc0t
        0x90t 0x16t 0x6t 0x3ct
        0x9bt 0xf4t 0x14t 0x65t
        0xcft 0x8et 0xact 0x5dt
        0x5et 0xact 0x9t 0x66t
        0xb2t 0x8at 0xbet 0x70t
        0xd8t 0x89t 0xa5t 0x94t
        0x82t 0x4at 0xe1t 0x47t
        0x87t 0x1at 0x31t 0xd9t
        0x8at 0xa8t 0xa8t 0xb1t
        0x44t 0x70t 0xc6t 0x4ct
        0x4et 0xe7t 0x40t 0x5t
        0xadt 0xbdt 0x22t 0x57t
        0xect 0x88t 0xc1t 0x42t
        0x8ct 0x2bt 0xa7t 0x4dt
        0xc0t 0x97t 0xb3t 0x54t
        0xe4t 0x45t 0x24t 0x19t
        0x63t 0xe0t 0xb4t 0xfet
        0xb4t 0xe6t 0x7at 0x12t
        0xaft 0x43t 0x57t 0x83t
        0x7t 0x32t 0xd1t 0x75t
        0x34t 0xet 0x54t 0xa1t
        0x89t 0xd0t 0x69t 0x9bt
        0xc1t 0x93t 0xd8t 0x8t
        0x67t 0x4at 0x5ct 0x97t
        0xect 0x67t 0xb5t 0x7at
        0xe5t 0x45t 0x9et 0x80t
        0x9t 0xe5t 0x8t 0x69t
        0xf4t 0x56t 0x59t 0x59t
        0xcat 0x8ft 0x8ct 0xb7t
        0xcdt 0x28t 0x94t 0xaat
        0x7at 0x7ct 0x3at 0xf6t
        0xcat 0x6ct 0xeet 0x85t
        0x2at 0x9ft 0x5et 0xfat
        0xc9t 0xaft 0x86t 0xc4t
        0x3t 0x25t 0x2ct 0x33t
        0x6at 0xbft 0x67t 0x42t
        0x99t 0x7ct 0x9at 0x2dt
        0x22t 0xc3t 0x35t 0xe9t
        0xd1t 0xa5t 0x71t 0xc2t
        0x45t 0xbet 0x55t 0xe9t
        0xfft 0x81t 0x46t 0x7bt
        0x1t 0x4bt 0x3t 0xfat
        0x2t 0x1t 0xeet 0x10t
        0x62t 0xb6t 0x5ct 0x8dt
        0x81t 0x85t 0xc7t 0x4at
        0x3et 0x4t 0xa9t 0x2et
        0x4bt 0x28t 0x1ft 0x55t
        0x4ft 0x56t 0x9t 0x9dt
        0xfft 0xb1t 0xcdt 0x98t
        0xfet 0xd1t 0xf8t 0xe7t
        0xdt 0xddt 0x7at 0xcat
        0x32t 0xdt 0x25t 0xe6t
        0x6at 0xf5t 0xb4t 0x29t
        0x2t 0x10t 0x18t 0x22t
    .end array-data
.end method

.method public constructor <init>(Lcom/xxogli/xadroid/checkers/b;)V
    .locals 4

    const/16 v3, 0x40

    const/4 v2, 0x0

    const/16 v1, 0x1000

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/xxogli/xadroid/checkers/a;->h:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->i:Ljava/util/Random;

    iput-object p1, p0, Lcom/xxogli/xadroid/checkers/a;->j:Lcom/xxogli/xadroid/checkers/b;

    iput-boolean v2, p0, Lcom/xxogli/xadroid/checkers/a;->k:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->o:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->p:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->b:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->q:[I

    iput-boolean v2, p0, Lcom/xxogli/xadroid/checkers/a;->s:Z

    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/a;->d()V

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/a;->a()V

    invoke-virtual {p0}, Lcom/xxogli/xadroid/checkers/a;->start()V

    return-void
.end method

.method private static final a(II)I
    .locals 1

    if-lez p0, :cond_0

    add-int/lit16 v0, p0, 0x7e75

    sub-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    if-gez p0, :cond_1

    add-int/lit16 v0, p0, -0x7e75

    add-int/2addr v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final a(IIII)I
    .locals 3

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->x:I

    const v1, 0xfffff

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/a;->y:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->A:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    sub-int v2, p2, p1

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->A:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xc0

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->z:[S

    aget-short v0, v0, v1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    if-le v0, p3, :cond_0

    :cond_1
    const v0, 0xf423f

    goto :goto_0

    :sswitch_1
    if-lt v0, p4, :cond_1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private final a(IIIIIZ)I
    .locals 23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->C:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xxogli/xadroid/checkers/a;->C:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->v:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->w:I

    if-nez v4, :cond_2

    :cond_0
    move/from16 v0, p3

    add-int/lit16 v5, v0, -0x7ef4

    :cond_1
    :goto_0
    return v5

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xxogli/xadroid/checkers/a;->u:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->v:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->w:I

    add-int/2addr v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_3
    const/16 v4, 0x40

    move/from16 v0, p4

    if-ge v0, v4, :cond_1a

    const/16 v4, 0x64

    move/from16 v0, p5

    if-lt v0, v4, :cond_1a

    add-int/lit8 p5, p5, -0x64

    add-int/lit8 p4, p4, 0x1

    move/from16 v8, p4

    :goto_1
    move/from16 v0, p3

    if-ge v0, v8, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xxogli/xadroid/checkers/a;->B:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xxogli/xadroid/checkers/a;->a(IIII)I

    move-result v5

    const v4, 0xf423f

    if-ne v5, v4, :cond_1

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/xxogli/xadroid/checkers/a;->a(IZ)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/xxogli/xadroid/checkers/a;->r:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->v:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->x:I

    move/from16 v22, v0

    packed-switch v14, :pswitch_data_2

    const/4 v9, 0x0

    :goto_3
    const/16 v11, 0x40

    const/4 v4, 0x0

    move v13, v4

    move/from16 v12, p1

    :goto_4
    if-lt v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xxogli/xadroid/checkers/a;->B:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v8, v11, v12}, Lcom/xxogli/xadroid/checkers/a;->b(IIII)V

    :cond_6
    move v5, v12

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/xxogli/xadroid/checkers/a;->b(Z)I

    move-result v4

    move/from16 v0, p3

    invoke-static {v4, v0}, Lcom/xxogli/xadroid/checkers/a;->a(II)I

    move-result v5

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/xxogli/xadroid/checkers/a;->c(Z)I

    move-result v4

    move/from16 v0, p3

    invoke-static {v4, v0}, Lcom/xxogli/xadroid/checkers/a;->a(II)I

    move-result v5

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->v:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->w:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1, v4, v5}, Lcom/xxogli/xadroid/checkers/a;->d(ZII)I

    move-result v4

    move/from16 v0, p3

    invoke-static {v4, v0}, Lcom/xxogli/xadroid/checkers/a;->a(II)I

    move-result v5

    goto/16 :goto_0

    :pswitch_3
    move/from16 v0, p3

    add-int/lit16 v5, v0, -0x7ef4

    goto/16 :goto_0

    :pswitch_4
    sub-int v4, v8, p3

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    const/16 v4, 0x40

    if-ge v8, v4, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :pswitch_5
    add-int/lit8 v9, p5, 0x1e

    goto :goto_3

    :pswitch_6
    add-int/lit8 v9, p5, 0xa

    goto/16 :goto_3

    :pswitch_7
    add-int/lit8 v9, p5, 0x5

    goto/16 :goto_3

    :cond_7
    add-int v4, v15, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xxogli/xadroid/checkers/a;->b(I)V

    move/from16 v0, p2

    neg-int v5, v0

    neg-int v6, v12

    add-int/lit8 v7, p3, 0x1

    if-eqz p6, :cond_8

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/xxogli/xadroid/checkers/a;->a(IIIIIZ)I

    move-result v4

    neg-int v5, v4

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->d:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->e:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->f:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->g:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->v:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->w:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->x:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xxogli/xadroid/checkers/a;->m:Z

    if-eqz v4, :cond_9

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    if-le v5, v12, :cond_19

    move/from16 v0, p2

    if-lt v5, v0, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xxogli/xadroid/checkers/a;->B:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x80

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v8, v4, v5}, Lcom/xxogli/xadroid/checkers/a;->b(IIII)V

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xc0

    :goto_6
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    move v11, v4

    move v12, v5

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->n:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/xxogli/xadroid/checkers/a;->n:I

    const/16 v5, 0x1388

    if-le v4, v5, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xxogli/xadroid/checkers/a;->n:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/xxogli/xadroid/checkers/a;->l:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xxogli/xadroid/checkers/a;->h:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/xxogli/xadroid/checkers/a;->m:Z

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    :goto_7
    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    move v6, v5

    :goto_8
    if-nez v4, :cond_13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    :goto_9
    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    :goto_a
    if-nez v4, :cond_15

    if-ne v6, v5, :cond_16

    const/4 v4, 0x0

    :goto_b
    if-ge v6, v5, :cond_17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    const v6, -0x77ffffef

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    or-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    or-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    if-eqz v7, :cond_e

    and-int/lit8 v7, v5, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_e

    add-int/lit8 v4, v4, 0xc

    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    if-eqz v7, :cond_f

    const/high16 v7, -0x6000

    and-int/2addr v7, v6

    const/high16 v8, -0x6000

    if-ne v7, v8, :cond_f

    add-int/lit8 v4, v4, -0xc

    :cond_f
    const v7, 0x666600

    and-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    const v7, 0x666600

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    const v6, 0x18181818

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    const v7, 0x18181818

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    const v6, 0x10000008

    and-int/2addr v5, v6

    if-eqz v5, :cond_10

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v5

    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    const v6, 0x10000008

    and-int/2addr v5, v6

    if-eqz v5, :cond_11

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    :cond_11
    if-eqz p6, :cond_18

    :goto_d
    move v5, v4

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v5, v5, 0x64

    add-int/lit8 v6, v4, -0x1

    and-int/2addr v4, v6

    goto/16 :goto_7

    :cond_13
    add-int/lit16 v5, v6, 0x86

    add-int/lit8 v6, v4, -0x1

    and-int/2addr v4, v6

    move v6, v5

    goto/16 :goto_8

    :cond_14
    add-int/lit8 v5, v5, 0x64

    add-int/lit8 v7, v4, -0x1

    and-int/2addr v4, v7

    goto/16 :goto_9

    :cond_15
    add-int/lit16 v5, v5, 0x86

    add-int/lit8 v7, v4, -0x1

    and-int/2addr v4, v7

    goto/16 :goto_a

    :cond_16
    sub-int v4, v6, v5

    sub-int v7, v6, v5

    shl-int/lit8 v7, v7, 0x8

    add-int v8, v6, v5

    div-int/2addr v7, v8

    add-int/2addr v4, v7

    goto/16 :goto_b

    :cond_17
    if-le v6, v5, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    const v6, -0x77ffffef

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    goto/16 :goto_c

    :cond_18
    neg-int v4, v4

    goto :goto_d

    :cond_19
    move v4, v11

    move v5, v12

    goto/16 :goto_6

    :cond_1a
    move/from16 v8, p4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private final a(IZ)I
    .locals 4

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/a;->c:I

    mul-int/lit8 v2, p1, 0x40

    iput v2, p0, Lcom/xxogli/xadroid/checkers/a;->r:I

    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    or-int/2addr v2, v3

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    or-int/2addr v2, v3

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    or-int/2addr v2, v3

    xor-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Lcom/xxogli/xadroid/checkers/a;->s:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p2, v2}, Lcom/xxogli/xadroid/checkers/a;->a(IZI)Z

    move-result v3

    invoke-direct {p0, p1, p2, v2}, Lcom/xxogli/xadroid/checkers/a;->b(IZI)Z

    move-result v2

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lcom/xxogli/xadroid/checkers/a;->a(IZI)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/xxogli/xadroid/checkers/a;->b(IZI)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private final a(Z)I
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_1
    if-nez v0, :cond_1

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    :goto_2
    if-nez v0, :cond_2

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    :goto_3
    if-nez v0, :cond_3

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    :goto_4
    if-nez v0, :cond_4

    return v1

    :cond_0
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->M:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/xxogli/xadroid/checkers/a;->M:[I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/xxogli/xadroid/checkers/a;->M:[I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/xxogli/xadroid/checkers/a;->M:[I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/xxogli/xadroid/checkers/a;->M:[I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    goto :goto_4
.end method

.method private final a(ZII)I
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    :goto_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    rsub-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    :cond_0
    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->a:[B

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    return v0

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    goto :goto_0
.end method

.method private final a(ZIIIZ)I
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    if-eqz p5, :cond_0

    rsub-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    :cond_0
    if-eqz p1, :cond_1

    sget-object v3, Lcom/xxogli/xadroid/checkers/h;->i:[B

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v0, v3, v0

    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/xxogli/xadroid/checkers/h;->j:[B

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v0, v3, v0

    goto :goto_0
.end method

.method private final a(ZIIZ)I
    .locals 3

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    if-eqz p4, :cond_0

    rsub-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    :cond_0
    add-int/lit8 v0, v0, -0x4

    if-eqz p1, :cond_1

    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->b:[B

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->c:[B

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    goto :goto_0
.end method

.method private final a(IIIII)V
    .locals 4

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->c:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xxogli/xadroid/checkers/a;->c:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->r:I

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/a;->o:[I

    add-int v3, v1, v0

    aput p2, v2, v3

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    add-int v3, v1, v0

    aput p3, v2, v3

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/a;->p:[I

    add-int/2addr v1, v0

    aput p4, v2, v1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/a;->b:[I

    aput p5, v1, v0

    goto :goto_0
.end method

.method private final a(IIIIIIII)V
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, p4

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v1, v1, p4

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    add-int/lit8 v4, p4, -0x9

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v5, v0, p4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, p4

    or-int v6, p6, v0

    add-int/lit8 v7, p7, 0x1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v0, v0, p4

    or-int v8, p8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/xxogli/xadroid/checkers/a;->a(IIIIIIII)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, p4

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v1, v1, p4

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    add-int/lit8 v4, p4, -0x7

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v5, v0, p4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, p4

    or-int v6, p6, v0

    add-int/lit8 v7, p7, 0x1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v0, v0, p4

    or-int v8, p8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/xxogli/xadroid/checkers/a;->a(IIIIIIII)V

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_2
    return-void
.end method

.method private final a(IZI)Z
    .locals 17

    if-eqz p2, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    or-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    or-int v4, v1, v3

    const/4 v1, 0x0

    ushr-int/lit8 v3, p3, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const v5, -0x1f1f1f20

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x5

    const v6, 0x7070700

    and-int/2addr v3, v6

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v5

    and-int/2addr v3, v2

    or-int/2addr v1, v3

    :cond_0
    const v3, -0x1f1f1f20

    and-int v3, v3, p3

    ushr-int/lit8 v3, v3, 0x5

    const v5, 0x7070700

    and-int v5, v5, p3

    ushr-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    ushr-int/lit8 v3, v3, 0x4

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    if-eqz v2, :cond_3

    shl-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    const v5, 0x7070707

    and-int/2addr v5, v2

    shl-int/lit8 v5, v5, 0x5

    const v6, 0xe0e0e0

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v2, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    :cond_2
    const v2, 0x7070707

    and-int v2, v2, p3

    shl-int/lit8 v2, v2, 0x5

    const v3, 0xe0e0e0

    and-int v3, v3, p3

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v15

    const/4 v2, 0x1

    shl-int v16, v2, v15

    xor-int v14, v1, v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    and-int v1, v1, v16

    if-nez v1, :cond_7

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_6

    add-int/lit8 v5, v15, 0x7

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v6, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, v15

    or-int v7, v16, v1

    const/16 v8, 0x101

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v1, v1, v15

    or-int v9, v16, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct/range {v1 .. v9}, Lcom/xxogli/xadroid/checkers/a;->b(IIIIIIII)V

    :cond_6
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_b

    add-int/lit8 v5, v15, 0x9

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v6, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, v15

    or-int v7, v16, v1

    const/16 v8, 0x101

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v1, v1, v15

    or-int v9, v16, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct/range {v1 .. v9}, Lcom/xxogli/xadroid/checkers/a;->b(IIIIIIII)V

    move v1, v14

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_8

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_8

    or-int v7, p3, v16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, v15

    xor-int v8, v4, v1

    add-int/lit8 v9, v15, -0x9

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v10, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, v15

    or-int v11, v16, v1

    const/16 v12, 0x201

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v1, v1, v15

    or-int v13, v16, v1

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    :cond_8
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_9

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_9

    or-int v7, p3, v16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, v15

    xor-int v8, v4, v1

    add-int/lit8 v9, v15, -0x7

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v10, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, v15

    or-int v11, v16, v1

    const/16 v12, 0x201

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v1, v1, v15

    or-int v13, v16, v1

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    :cond_9
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_a

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_a

    or-int v7, p3, v16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, v15

    xor-int v8, v4, v1

    add-int/lit8 v9, v15, 0x7

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v10, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, v15

    or-int v11, v16, v1

    const/16 v12, 0x201

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v1, v1, v15

    or-int v13, v16, v1

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    :cond_a
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_b

    or-int v7, p3, v16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, v15

    xor-int v8, v4, v1

    add-int/lit8 v9, v15, 0x9

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v10, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, v15

    or-int v11, v16, v1

    const/16 v12, 0x201

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v1, v1, v15

    or-int v13, v16, v1

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    :cond_b
    move v1, v14

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    or-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    or-int v4, v1, v3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    if-eqz v3, :cond_e

    ushr-int/lit8 v3, p3, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    const v6, -0x1f1f1f20

    and-int/2addr v6, v3

    ushr-int/lit8 v6, v6, 0x5

    const v7, 0x7070700

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v6

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    :cond_d
    const v3, -0x1f1f1f20

    and-int v3, v3, p3

    ushr-int/lit8 v3, v3, 0x5

    const v5, 0x7070700

    and-int v5, v5, p3

    ushr-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    ushr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    :cond_e
    shl-int/lit8 v3, p3, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    const v5, 0x7070707

    and-int/2addr v5, v3

    shl-int/lit8 v5, v5, 0x5

    const v6, 0xe0e0e0

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v5

    and-int/2addr v3, v2

    or-int/2addr v1, v3

    :cond_f
    const v3, 0x7070707

    and-int v3, v3, p3

    shl-int/lit8 v3, v3, 0x5

    const v5, 0xe0e0e0

    and-int v5, v5, p3

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    shl-int/lit8 v3, v3, 0x4

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    :cond_10
    :goto_2
    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v15

    const/4 v2, 0x1

    shl-int v16, v2, v15

    xor-int v14, v1, v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    and-int v1, v1, v16

    if-nez v1, :cond_12

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_11

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_11

    add-int/lit8 v5, v15, -0x9

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v6, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, v15

    or-int v7, v16, v1

    const/16 v8, 0x401

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v1, v1, v15

    or-int v9, v16, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct/range {v1 .. v9}, Lcom/xxogli/xadroid/checkers/a;->a(IIIIIIII)V

    :cond_11
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_16

    add-int/lit8 v5, v15, -0x7

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v6, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, v15

    or-int v7, v16, v1

    const/16 v8, 0x401

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v1, v1, v15

    or-int v9, v16, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct/range {v1 .. v9}, Lcom/xxogli/xadroid/checkers/a;->a(IIIIIIII)V

    move v1, v14

    goto :goto_2

    :cond_12
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_13

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_13

    or-int v7, p3, v16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, v15

    xor-int v8, v4, v1

    add-int/lit8 v9, v15, -0x9

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v10, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, v15

    or-int v11, v16, v1

    const/16 v12, 0x801

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v1, v1, v15

    or-int v13, v16, v1

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    :cond_13
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_14

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_14

    or-int v7, p3, v16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, v15

    xor-int v8, v4, v1

    add-int/lit8 v9, v15, -0x7

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v10, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, v15

    or-int v11, v16, v1

    const/16 v12, 0x801

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v1, v1, v15

    or-int v13, v16, v1

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    :cond_14
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_15

    or-int v7, p3, v16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, v15

    xor-int v8, v4, v1

    add-int/lit8 v9, v15, 0x7

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v10, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, v15

    or-int v11, v16, v1

    const/16 v12, 0x801

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v1, v1, v15

    or-int v13, v16, v1

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    :cond_15
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, v15

    and-int/2addr v1, v4

    if-eqz v1, :cond_16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v1, v1, v15

    and-int v1, v1, p3

    if-eqz v1, :cond_16

    or-int v7, p3, v16

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, v15

    xor-int v8, v4, v1

    add-int/lit8 v9, v15, 0x9

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v10, v1, v15

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, v15

    or-int v11, v16, v1

    const/16 v12, 0x801

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v1, v1, v15

    or-int v13, v16, v1

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    :cond_16
    move v1, v14

    goto/16 :goto_2

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private final b(Z)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/a;->b(ZII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/xxogli/xadroid/checkers/a;->a(ZIIZ)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    :goto_1
    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xxogli/xadroid/checkers/a;->a(ZIIZ)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/a;->a(ZII)I

    move-result v0

    goto :goto_0
.end method

.method private final b(ZII)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x4

    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->d:[B

    mul-int/lit8 v0, v0, 0x1c

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    return v0

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x1f

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    goto :goto_0
.end method

.method private final b(ZIIIZ)I
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    if-eqz p5, :cond_0

    rsub-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    :cond_0
    add-int/lit8 v0, v0, -0x4

    if-eqz p1, :cond_1

    sget-object v3, Lcom/xxogli/xadroid/checkers/h;->k:[B

    mul-int/lit16 v0, v0, 0x380

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    aget-byte v0, v3, v0

    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/xxogli/xadroid/checkers/h;->l:[B

    mul-int/lit16 v0, v0, 0x380

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    aget-byte v0, v3, v0

    goto :goto_0
.end method

.method private final b(ZIIZ)I
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    if-eqz p4, :cond_0

    rsub-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    :cond_0
    add-int/lit8 v3, v0, -0x4

    if-ge v2, v1, :cond_1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v0, v1

    add-int/2addr v0, v2

    :goto_0
    if-eqz p1, :cond_2

    sget-object v1, Lcom/xxogli/xadroid/checkers/h;->g:[B

    mul-int/lit16 v2, v3, 0x1f0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v0, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xxogli/xadroid/checkers/h;->h:[B

    mul-int/lit16 v2, v3, 0x1f0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    goto :goto_1
.end method

.method private final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/a;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/a;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final b(I)V
    .locals 8

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v4, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget-object v1, p0, Lcom/xxogli/xadroid/checkers/a;->p:[I

    aget v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    iget-object v5, p0, Lcom/xxogli/xadroid/checkers/a;->p:[I

    aget v5, v5, p1

    and-int/lit16 v5, v5, 0xf00

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->o:[I

    aget v6, v6, p1

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->x:I

    sget-object v5, Lcom/xxogli/xadroid/checkers/a;->M:[I

    const/16 v6, 0x80

    aget v5, v5, v6

    xor-int/2addr v1, v5

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    xor-int/2addr v0, v5

    :goto_1
    if-nez v0, :cond_3

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    xor-int/2addr v0, v2

    :goto_2
    if-nez v0, :cond_4

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    xor-int/2addr v0, v3

    :goto_3
    if-nez v0, :cond_5

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    xor-int/2addr v0, v4

    :goto_4
    if-nez v0, :cond_6

    iput v1, p0, Lcom/xxogli/xadroid/checkers/a;->x:I

    return-void

    :sswitch_0
    const/high16 v5, -0x1000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget-object v7, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v7, v7, p1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    :goto_5
    if-eqz v1, :cond_0

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v6, v6, p1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v6, v6, p1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->w:I

    sub-int v1, v5, v1

    iput v1, p0, Lcom/xxogli/xadroid/checkers/a;->w:I

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget-object v7, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v7, v7, p1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    goto :goto_5

    :sswitch_1
    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget-object v7, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v7, v7, p1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    if-eqz v1, :cond_0

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v6, v6, p1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v6, v6, p1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->w:I

    sub-int v1, v5, v1

    iput v1, p0, Lcom/xxogli/xadroid/checkers/a;->w:I

    goto/16 :goto_0

    :sswitch_2
    and-int/lit8 v5, v6, 0xf

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget-object v7, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v7, v7, p1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    :goto_6
    if-eqz v1, :cond_0

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v6, v6, p1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v6, v6, p1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->v:I

    sub-int v1, v5, v1

    iput v1, p0, Lcom/xxogli/xadroid/checkers/a;->v:I

    goto/16 :goto_0

    :cond_2
    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget-object v7, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v7, v7, p1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    goto :goto_6

    :sswitch_3
    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget-object v7, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v7, v7, p1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    if-eqz v1, :cond_0

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v6, v6, p1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget-object v6, p0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v6, v6, p1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v5, p0, Lcom/xxogli/xadroid/checkers/a;->v:I

    sub-int v1, v5, v1

    iput v1, p0, Lcom/xxogli/xadroid/checkers/a;->v:I

    goto/16 :goto_0

    :cond_3
    sget-object v5, Lcom/xxogli/xadroid/checkers/a;->M:[I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    xor-int/2addr v1, v5

    add-int/lit8 v5, v0, -0x1

    and-int/2addr v0, v5

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lcom/xxogli/xadroid/checkers/a;->M:[I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v2, v2, v5

    xor-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    goto/16 :goto_2

    :cond_5
    sget-object v2, Lcom/xxogli/xadroid/checkers/a;->M:[I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    goto/16 :goto_3

    :cond_6
    sget-object v2, Lcom/xxogli/xadroid/checkers/a;->M:[I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
        0x800 -> :sswitch_3
    .end sparse-switch
.end method

.method private final b(IIII)V
    .locals 4

    const/16 v1, 0x7d00

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/16 v0, -0x7d00

    if-gt p4, v0, :cond_1

    sparse-switch p3, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/16 p3, 0x40

    :sswitch_1
    move p4, v0

    move p2, v2

    move p1, v3

    :cond_0
    :goto_1
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->x:I

    const v1, 0xfffff

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/a;->y:[I

    aput v0, v2, v1

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->z:[S

    int-to-short v2, p4

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->A:[B

    sub-int v2, p2, p1

    or-int/2addr v2, p3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_1
    if-lt p4, v1, :cond_0

    sparse-switch p3, :sswitch_data_1

    goto :goto_0

    :goto_2
    :sswitch_2
    move p4, v1

    move p2, v2

    move p1, v3

    goto :goto_1

    :sswitch_3
    const/16 p3, 0x80

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_3
    .end sparse-switch
.end method

.method private final b(IIIIIIII)V
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, p4

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v1, v1, p4

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    add-int/lit8 v4, p4, 0x7

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v5, v0, p4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, p4

    or-int v6, p6, v0

    add-int/lit8 v7, p7, 0x1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v0, v0, p4

    or-int v8, p8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/xxogli/xadroid/checkers/a;->b(IIIIIIII)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, p4

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v1, v1, p4

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    add-int/lit8 v4, p4, 0x9

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v5, v0, p4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, p4

    or-int v6, p6, v0

    add-int/lit8 v7, p7, 0x1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v0, v0, p4

    or-int v8, p8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/xxogli/xadroid/checkers/a;->b(IIIIIIII)V

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_2
    return-void
.end method

.method private final b(IZI)Z
    .locals 11

    const v4, 0xe0e0e0

    const/4 v6, 0x1

    const v3, -0x1f1f1f20

    const/16 v10, 0x800

    const/16 v9, 0x200

    if-eqz p2, :cond_9

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    ushr-int/lit8 v1, p3, 0x4

    and-int v2, p3, v3

    ushr-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    const v2, 0x7070700

    and-int/2addr v2, p3

    ushr-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->c:I

    if-eqz v0, :cond_11

    move v0, v6

    :goto_1
    return v0

    :cond_1
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p3, 0x4

    and-int v2, p3, v3

    ushr-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    const v2, 0x7070700

    and-int/2addr v2, p3

    ushr-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    shl-int/lit8 v2, p3, 0x4

    const v3, 0x7070707

    and-int/2addr v3, p3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    and-int v3, p3, v4

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v8

    shl-int v3, v6, v8

    xor-int v7, v0, v3

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v2, v0, v8

    const/16 v4, 0x100

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_3
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v2, v0, v8

    const/16 v4, 0x100

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    move v0, v7

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v2, v0, v8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_5
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v2, v0, v8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_6
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v2, v0, v8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_7
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v2, v0, v8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_8
    move v0, v7

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    shl-int/lit8 v1, p3, 0x4

    const v2, 0x7070707

    and-int/2addr v2, p3

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    and-int v2, p3, v4

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v8

    shl-int v3, v6, v8

    xor-int v7, v0, v3

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    and-int/2addr v0, v3

    if-nez v0, :cond_c

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v2, v0, v8

    const/16 v4, 0x400

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_a
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_10

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v2, v0, v8

    const/16 v4, 0x400

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    move v0, v7

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x4

    const v2, 0x7070707

    and-int/2addr v2, p3

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    and-int v2, p3, v4

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    ushr-int/lit8 v2, p3, 0x4

    and-int/2addr v3, p3

    ushr-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    const v3, 0x7070700

    and-int/2addr v3, p3

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_2

    :cond_c
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_d

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v2, v0, v8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_d
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_e

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v2, v0, v8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_e
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_f

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v2, v0, v8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_f
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, v8

    and-int/2addr v0, p3

    if-eqz v0, :cond_10

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v2, v0, v8

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, v8

    or-int v5, v3, v0

    move-object v0, p0

    move v1, p1

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_10
    move v0, v7

    goto/16 :goto_2

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private final c(Z)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->v:I

    if-ne v0, v5, :cond_b

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    move v0, v6

    :goto_0
    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/xxogli/xadroid/checkers/a;->d(ZIIZ)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v1, v6

    :goto_2
    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v4, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->b(ZIIIZ)I

    move-result v0

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    :goto_3
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    invoke-direct {p0, v6, v0, v1, v5}, Lcom/xxogli/xadroid/checkers/a;->b(ZIIZ)I

    move-result v0

    goto :goto_1

    :cond_4
    move v6, v5

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    :goto_4
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    invoke-direct {p0, v6, v0, v1, v5}, Lcom/xxogli/xadroid/checkers/a;->c(ZIIZ)I

    move-result v0

    goto :goto_1

    :cond_6
    move v6, v5

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    move v1, v6

    :goto_5
    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v4, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(ZIIIZ)I

    move-result v0

    goto :goto_1

    :cond_8
    move v1, v5

    goto :goto_5

    :cond_9
    if-eqz p1, :cond_a

    :goto_6
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    invoke-direct {p0, v6, v0, v1}, Lcom/xxogli/xadroid/checkers/a;->c(ZII)I

    move-result v0

    goto :goto_1

    :cond_a
    move v6, v5

    goto :goto_6

    :cond_b
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    invoke-direct {p0, p1, v0, v1, v6}, Lcom/xxogli/xadroid/checkers/a;->d(ZIIZ)I

    move-result v0

    goto :goto_1

    :cond_c
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    if-eqz v0, :cond_d

    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v4, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    move-object v0, p0

    move v1, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->b(ZIIIZ)I

    move-result v0

    goto :goto_1

    :cond_d
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    invoke-direct {p0, p1, v0, v1, v6}, Lcom/xxogli/xadroid/checkers/a;->b(ZIIZ)I

    move-result v0

    goto/16 :goto_1

    :cond_e
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    if-nez v0, :cond_f

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    invoke-direct {p0, p1, v0, v1, v6}, Lcom/xxogli/xadroid/checkers/a;->c(ZIIZ)I

    move-result v0

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    if-eqz v0, :cond_10

    iget v2, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v3, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v4, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    move-object v0, p0

    move v1, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(ZIIIZ)I

    move-result v0

    goto/16 :goto_1

    :cond_10
    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    invoke-direct {p0, p1, v0, v1}, Lcom/xxogli/xadroid/checkers/a;->c(ZII)I

    move-result v0

    goto/16 :goto_1
.end method

.method private final c(ZII)I
    .locals 5

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    rsub-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v3, v0

    add-int/2addr v0, v2

    :goto_1
    if-eqz p1, :cond_1

    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->e:[B

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    :goto_2
    return v0

    :cond_0
    sget-object v3, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v2, v3, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->f:[B

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    goto :goto_2

    :cond_2
    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_0
.end method

.method private final c(ZIIZ)I
    .locals 5

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    if-eqz p4, :cond_2

    rsub-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v3, v0

    add-int/2addr v0, v2

    :goto_1
    if-eqz p1, :cond_1

    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->m:[B

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    :goto_2
    return v0

    :cond_0
    sget-object v3, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v2, v3, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->n:[B

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    goto :goto_2

    :cond_2
    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_0
.end method

.method private final c()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final c(IIIIIIII)V
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v1, v1, p4

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v1, v1, p4

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, p4

    xor-int v3, p3, v0

    add-int/lit8 v4, p4, -0x9

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v5, v0, p4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->D:[I

    aget v0, v0, p4

    or-int v6, p6, v0

    add-int/lit8 v7, p7, 0x1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->E:[I

    aget v0, v0, p4

    or-int v8, p8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v1, v1, p4

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v1, v1, p4

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, p4

    xor-int v3, p3, v0

    add-int/lit8 v4, p4, -0x7

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v5, v0, p4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->F:[I

    aget v0, v0, p4

    or-int v6, p6, v0

    add-int/lit8 v7, p7, 0x1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->G:[I

    aget v0, v0, p4

    or-int v8, p8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    const/4 v0, 0x0

    :cond_1
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v1, v1, p4

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v1, v1, p4

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, p4

    xor-int v3, p3, v0

    add-int/lit8 v4, p4, 0x7

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v5, v0, p4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->H:[I

    aget v0, v0, p4

    or-int v6, p6, v0

    add-int/lit8 v7, p7, 0x1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->I:[I

    aget v0, v0, p4

    or-int v8, p8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    const/4 v0, 0x0

    :cond_2
    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v1, v1, p4

    and-int/2addr v1, p3

    if-eqz v1, :cond_3

    sget-object v1, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v1, v1, p4

    and-int/2addr v1, p2

    if-eqz v1, :cond_3

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, p4

    xor-int v3, p3, v0

    add-int/lit8 v4, p4, 0x9

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v5, v0, p4

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->J:[I

    aget v0, v0, p4

    or-int v6, p6, v0

    add-int/lit8 v7, p7, 0x1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->K:[I

    aget v0, v0, p4

    or-int v8, p8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/xxogli/xadroid/checkers/a;->c(IIIIIIII)V

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/xxogli/xadroid/checkers/a;->a(IIIII)V

    :cond_4
    return-void
.end method

.method private final d(ZII)I
    .locals 7

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    move v5, v0

    move v0, v2

    move v2, v5

    move v6, v1

    move v1, v3

    move v3, v6

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v4, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v4, v0

    add-int/2addr v0, v1

    move v1, v0

    :goto_1
    if-ge v3, v2, :cond_2

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v0, v2

    add-int/2addr v0, v3

    :goto_2
    sget-object v2, Lcom/xxogli/xadroid/checkers/h;->q:[B

    mul-int/lit16 v1, v1, 0x1f0

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    return v0

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    move v5, v0

    move v0, v2

    move v2, v5

    move v6, v1

    move v1, v3

    move v3, v6

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v1, v4, v1

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v0, v3

    add-int/2addr v0, v2

    goto :goto_2
.end method

.method private final d(ZIIZ)I
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    if-eqz p4, :cond_0

    rsub-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v0, v0, 0x1f

    :cond_0
    add-int/lit8 v3, v0, -0x4

    if-ge v2, v1, :cond_1

    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v0, v1

    add-int/2addr v0, v2

    :goto_0
    if-eqz p1, :cond_2

    sget-object v1, Lcom/xxogli/xadroid/checkers/h;->o:[B

    mul-int/lit8 v0, v0, 0x1c

    add-int/2addr v0, v3

    aget-byte v0, v1, v0

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcom/xxogli/xadroid/checkers/a;->L:[I

    aget v0, v0, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xxogli/xadroid/checkers/h;->p:[B

    mul-int/lit8 v0, v0, 0x1c

    add-int/2addr v0, v3

    aget-byte v0, v1, v0

    goto :goto_1
.end method

.method private final d()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x10

    :try_start_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->y:[I

    const/high16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->z:[S

    const/high16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->A:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->y:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->z:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxogli/xadroid/checkers/a;->A:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/a;->B:Z

    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/xxogli/xadroid/checkers/a;->y:[I

    iput-object v1, p0, Lcom/xxogli/xadroid/checkers/a;->z:[S

    iput-object v1, p0, Lcom/xxogli/xadroid/checkers/a;->A:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final e()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/high16 v2, 0x10

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/xxogli/xadroid/checkers/a;->y:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(IZZ)I
    .locals 1

    iput-boolean p3, p0, Lcom/xxogli/xadroid/checkers/a;->s:Z

    invoke-direct {p0, p1, p2}, Lcom/xxogli/xadroid/checkers/a;->a(IZ)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 3

    const/16 v2, 0xc

    const/4 v1, 0x0

    const/16 v0, 0xfff

    iput v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iput v1, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    const/high16 v0, -0x10

    iput v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iput v1, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iput v2, p0, Lcom/xxogli/xadroid/checkers/a;->v:I

    iput v2, p0, Lcom/xxogli/xadroid/checkers/a;->w:I

    invoke-direct {p0, v1}, Lcom/xxogli/xadroid/checkers/a;->a(Z)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/a;->x:I

    invoke-direct {p0, v1, v1}, Lcom/xxogli/xadroid/checkers/a;->a(IZ)I

    iget-boolean v0, p0, Lcom/xxogli/xadroid/checkers/a;->B:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xxogli/xadroid/checkers/a;->e()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xxogli/xadroid/checkers/a;->b(I)V

    return-void
.end method

.method public final a(IIIIZ)V
    .locals 2

    iput p1, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iput p2, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    iput p3, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iput p4, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->d:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->e:I

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/a;->v:I

    iget v0, p0, Lcom/xxogli/xadroid/checkers/a;->f:I

    iget v1, p0, Lcom/xxogli/xadroid/checkers/a;->g:I

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/a;->w:I

    invoke-direct {p0, p5}, Lcom/xxogli/xadroid/checkers/a;->a(Z)I

    move-result v0

    iput v0, p0, Lcom/xxogli/xadroid/checkers/a;->x:I

    return-void
.end method

.method public final declared-synchronized a(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/xxogli/xadroid/checkers/a;->t:Z

    iput-boolean p2, p0, Lcom/xxogli/xadroid/checkers/a;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xxogli/xadroid/checkers/a;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 24

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/xxogli/xadroid/checkers/a;->b()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/xxogli/xadroid/checkers/a;->c()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/a;->j:Lcom/xxogli/xadroid/checkers/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/xxogli/xadroid/checkers/b;->a(IIII)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/a;->h:I

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/xxogli/xadroid/checkers/a;->c()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/a;->i:Ljava/util/Random;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->j:Lcom/xxogli/xadroid/checkers/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/xxogli/xadroid/checkers/b;->a(IIII)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    const/16 v3, 0xfff

    if-ne v2, v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/xxogli/xadroid/checkers/a;->c()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->i:Ljava/util/Random;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xxogli/xadroid/checkers/a;->t:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->j:Lcom/xxogli/xadroid/checkers/b;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/xxogli/xadroid/checkers/b;->a(IIII)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/xxogli/xadroid/checkers/a;->l:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xxogli/xadroid/checkers/a;->n:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/xxogli/xadroid/checkers/a;->m:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xxogli/xadroid/checkers/a;->s:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/xxogli/xadroid/checkers/h;->r:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/xxogli/xadroid/checkers/a;->u:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/xxogli/xadroid/checkers/a;->c:I

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xxogli/xadroid/checkers/a;->C:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->e:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->f:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->g:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->v:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->w:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxogli/xadroid/checkers/a;->x:I

    move/from16 v21, v0

    const/4 v6, 0x1

    :goto_3
    const/16 v2, 0x40

    if-le v6, v2, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xxogli/xadroid/checkers/a;->j:Lcom/xxogli/xadroid/checkers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xxogli/xadroid/checkers/a;->C:I

    invoke-virtual {v2, v13, v11, v10, v3}, Lcom/xxogli/xadroid/checkers/b;->a(IIII)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/16 v9, -0x7fff

    const/16 v22, 0x7fff

    const/4 v12, 0x0

    :goto_4
    if-lt v12, v14, :cond_8

    const/16 v2, -0x7d00

    if-le v9, v2, :cond_4

    const/16 v2, 0x7d00

    if-ge v9, v2, :cond_4

    const/4 v2, 0x0

    move v5, v2

    move v2, v13

    :goto_5
    add-int/lit8 v3, v14, -0x1

    if-lt v5, v3, :cond_a

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move v13, v2

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/xxogli/xadroid/checkers/a;->b(I)V

    move/from16 v0, v22

    neg-int v3, v0

    neg-int v4, v9

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xxogli/xadroid/checkers/a;->t:Z

    if-eqz v2, :cond_9

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/xxogli/xadroid/checkers/a;->a(IIIIIZ)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->q:[I

    aput v2, v3, v12

    move-object/from16 v0, p0

    iput v15, v0, Lcom/xxogli/xadroid/checkers/a;->d:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->e:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->f:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->g:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->v:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->w:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxogli/xadroid/checkers/a;->x:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xxogli/xadroid/checkers/a;->m:Z

    if-nez v3, :cond_4

    if-le v2, v9, :cond_f

    move v3, v6

    move v4, v2

    move v5, v12

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move v9, v2

    move v10, v3

    move v11, v4

    move v13, v5

    goto :goto_4

    :cond_9
    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x1

    add-int/lit8 v3, v14, -0x1

    move/from16 v23, v3

    move v3, v4

    move/from16 v4, v23

    :goto_8
    if-lt v5, v4, :cond_b

    if-nez v3, :cond_7

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->q:[I

    aget v7, v7, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/a;->q:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    if-le v7, v8, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->q:[I

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->q:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/a;->q:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->q:[I

    add-int/lit8 v8, v4, -0x1

    aput v3, v7, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->o:[I

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->o:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/a;->o:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->o:[I

    add-int/lit8 v8, v4, -0x1

    aput v3, v7, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->a:[I

    add-int/lit8 v8, v4, -0x1

    aput v3, v7, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->p:[I

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->p:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/a;->p:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->p:[I

    add-int/lit8 v8, v4, -0x1

    aput v3, v7, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xxogli/xadroid/checkers/a;->b:[I

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->b:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xxogli/xadroid/checkers/a;->b:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xxogli/xadroid/checkers/a;->b:[I

    add-int/lit8 v8, v4, -0x1

    aput v3, v7, v8

    if-ne v2, v4, :cond_d

    add-int/lit8 v2, v2, -0x1

    :cond_c
    :goto_9
    const/4 v3, 0x0

    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    :goto_a
    add-int/lit8 v4, v4, -0x1

    move/from16 v23, v2

    move v2, v3

    move/from16 v3, v23

    goto/16 :goto_8

    :cond_d
    add-int/lit8 v3, v4, -0x1

    if-ne v2, v3, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    goto :goto_a

    :cond_f
    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v13

    goto/16 :goto_7
.end method

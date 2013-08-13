//                 Family     Latency     SIMD16     SIMD8
DECL_GEN7_SCHEDULE(Label,           0,         0,        0)
DECL_GEN7_SCHEDULE(Unary,           20,        4,        2)
DECL_GEN7_SCHEDULE(UnaryWithTemp,   20,        4,        2)
DECL_GEN7_SCHEDULE(Binary,          20,        4,        2)
DECL_GEN7_SCHEDULE(BinaryWithTemp,  20,        4,        2)
DECL_GEN7_SCHEDULE(Ternary,         20,        4,        2)
DECL_GEN7_SCHEDULE(I64Shift,        20,        4,        2)
DECL_GEN7_SCHEDULE(Compare,         20,        4,        2)
DECL_GEN7_SCHEDULE(Jump,            14,        1,        1)
DECL_GEN7_SCHEDULE(IndirectMove,    20,        2,        2)
DECL_GEN7_SCHEDULE(Eot,             20,        1,        1)
DECL_GEN7_SCHEDULE(NoOp,            20,        2,        2)
DECL_GEN7_SCHEDULE(Wait,            20,        2,        2)
DECL_GEN7_SCHEDULE(Math,            20,        4,        2)
DECL_GEN7_SCHEDULE(Barrier,         80,        1,        1)
DECL_GEN7_SCHEDULE(Fence,           80,        1,        1)
DECL_GEN7_SCHEDULE(Read64,          80,        1,        1)
DECL_GEN7_SCHEDULE(Write64,         80,        1,        1)
DECL_GEN7_SCHEDULE(UntypedRead,     80,        1,        1)
DECL_GEN7_SCHEDULE(UntypedWrite,    80,        1,        1)
DECL_GEN7_SCHEDULE(ByteGather,      80,        1,        1)
DECL_GEN7_SCHEDULE(ByteScatter,     80,        1,        1)
DECL_GEN7_SCHEDULE(Sample,          80,        1,        1)
DECL_GEN7_SCHEDULE(TypedWrite,      80,        1,        1)
DECL_GEN7_SCHEDULE(SpillReg,        80,        1,        1)
DECL_GEN7_SCHEDULE(UnSpillReg,      80,        1,        1)
DECL_GEN7_SCHEDULE(GetImageInfo,    20,        4,        2)
DECL_GEN7_SCHEDULE(Atomic,          80,        1,        1)
DECL_GEN7_SCHEDULE(I64MUL,          20,        4,        2)

DECL_SELECTION_IR(LABEL, LabelInstruction)
DECL_SELECTION_IR(MOV, UnaryInstruction)
DECL_SELECTION_IR(MOV_DF, UnaryWithTempInstruction)
DECL_SELECTION_IR(LOAD_DF_IMM, UnaryWithTempInstruction)
DECL_SELECTION_IR(LOAD_INT64_IMM, UnaryInstruction)
DECL_SELECTION_IR(NOT, UnaryInstruction)
DECL_SELECTION_IR(LZD, UnaryInstruction)
DECL_SELECTION_IR(RNDZ, UnaryInstruction)
DECL_SELECTION_IR(RNDE, UnaryInstruction)
DECL_SELECTION_IR(RNDD, UnaryInstruction)
DECL_SELECTION_IR(RNDU, UnaryInstruction)
DECL_SELECTION_IR(FRC, UnaryInstruction)
DECL_SELECTION_IR(SEL, BinaryInstruction)
DECL_SELECTION_IR(SEL_INT64, BinaryInstruction)
DECL_SELECTION_IR(AND, BinaryInstruction)
DECL_SELECTION_IR(OR, BinaryInstruction)
DECL_SELECTION_IR(XOR, BinaryInstruction)
DECL_SELECTION_IR(I64AND, BinaryInstruction)
DECL_SELECTION_IR(I64OR, BinaryInstruction)
DECL_SELECTION_IR(I64XOR, BinaryInstruction)
DECL_SELECTION_IR(SHR, BinaryInstruction)
DECL_SELECTION_IR(SHL, BinaryInstruction)
DECL_SELECTION_IR(RSR, BinaryInstruction)
DECL_SELECTION_IR(RSL, BinaryInstruction)
DECL_SELECTION_IR(ASR, BinaryInstruction)
DECL_SELECTION_IR(I64SHR, I64ShiftInstruction)
DECL_SELECTION_IR(I64SHL, I64ShiftInstruction)
DECL_SELECTION_IR(I64ASR, I64ShiftInstruction)
DECL_SELECTION_IR(ADD, BinaryInstruction)
DECL_SELECTION_IR(I64ADD, BinaryWithTempInstruction)
DECL_SELECTION_IR(I64SUB, BinaryWithTempInstruction)
DECL_SELECTION_IR(MUL, BinaryInstruction)
DECL_SELECTION_IR(I64MUL, I64MULInstruction)
DECL_SELECTION_IR(ATOMIC, AtomicInstruction)
DECL_SELECTION_IR(MACH, BinaryInstruction)
DECL_SELECTION_IR(CMP, CompareInstruction)
DECL_SELECTION_IR(SEL_CMP, CompareInstruction)
DECL_SELECTION_IR(MAD, TernaryInstruction)
DECL_SELECTION_IR(JMPI, JumpInstruction)
DECL_SELECTION_IR(EOT, EotInstruction)
DECL_SELECTION_IR(INDIRECT_MOVE, IndirectMoveInstruction)
DECL_SELECTION_IR(NOP, NoOpInstruction)
DECL_SELECTION_IR(WAIT, WaitInstruction)
DECL_SELECTION_IR(MATH, MathInstruction)
DECL_SELECTION_IR(BARRIER, BarrierInstruction)
DECL_SELECTION_IR(FENCE, FenceInstruction)
DECL_SELECTION_IR(UNTYPED_READ, UntypedReadInstruction)
DECL_SELECTION_IR(UNTYPED_WRITE, UntypedWriteInstruction)
DECL_SELECTION_IR(READ64, Read64Instruction)
DECL_SELECTION_IR(WRITE64, Write64Instruction)
DECL_SELECTION_IR(BYTE_GATHER, ByteGatherInstruction)
DECL_SELECTION_IR(BYTE_SCATTER, ByteScatterInstruction)
DECL_SELECTION_IR(SAMPLE, SampleInstruction)
DECL_SELECTION_IR(TYPED_WRITE, TypedWriteInstruction)
DECL_SELECTION_IR(GET_IMAGE_INFO, GetImageInfoInstruction)
DECL_SELECTION_IR(SPILL_REG, SpillRegInstruction)
DECL_SELECTION_IR(UNSPILL_REG, UnSpillRegInstruction)
DECL_SELECTION_IR(MUL_HI, BinaryWithTempInstruction)
DECL_SELECTION_IR(FBH, UnaryInstruction)
DECL_SELECTION_IR(FBL, UnaryInstruction)
DECL_SELECTION_IR(HADD, BinaryWithTempInstruction)
DECL_SELECTION_IR(RHADD, BinaryWithTempInstruction)
DECL_SELECTION_IR(UPSAMPLE_SHORT, BinaryInstruction)
DECL_SELECTION_IR(UPSAMPLE_INT, BinaryInstruction)
DECL_SELECTION_IR(CONVI_TO_I64, UnaryWithTempInstruction)

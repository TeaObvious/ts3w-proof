# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: float10 TreeVariation_DrawUniform(int * param_1)
Owned ranges: [[004faa60, 004faa95]]

004faa60  51  PUSH ECX
004faa61  833900  CMP dword ptr [ECX],0x0
004faa64  7504  JNZ 0x004faa6a
004faa66  0f31  RDTSC
004faa68  8901  MOV dword ptr [ECX],EAX
004faa6a  8b01  MOV EAX,dword ptr [ECX]
004faa6c  69c06dde8d27  IMUL EAX,EAX,0x278dde6d
004faa72  890424  MOV dword ptr [ESP],EAX
004faa75  8901  MOV dword ptr [ECX],EAX
004faa77  db0424  FILD dword ptr [ESP]
004faa7a  d80db4a8fb00  FMUL float ptr [0x00fba8b4]
004faa80  d805b4b5f900  FADD float ptr [0x00f9b5b4]
004faa86  d9e8  FLD1
004faa88  d9c9  FXCH
004faa8a  dbf1  FCOMI ST0,ST1
004faa8c  ddd9  FSTP ST1
004faa8e  7204  JC 0x004faa94
004faa90  ddd8  FSTP ST0
004faa92  d9ee  FLDZ
004faa94  59  POP ECX
004faa95  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108dedc0..108deddd; CAW_DbpfDeletingDestructor
108dedc0: 56  PUSH ESI
108dedc1: 8bf1  MOV ESI,ECX
108dedc3: e808f8ffff  CALL 0x108de5d0
108dedc8: f644240801  TEST byte ptr [ESP + 0x8],0x1
108dedcd: 7409  JZ 0x108dedd8
108dedcf: 56  PUSH ESI
108dedd0: e88b670300  CALL 0x10915560
108dedd5: 83c404  ADD ESP,0x4
108dedd8: 8bc6  MOV EAX,ESI
108dedda: 5e  POP ESI
108deddb: c20400  RET 0x4

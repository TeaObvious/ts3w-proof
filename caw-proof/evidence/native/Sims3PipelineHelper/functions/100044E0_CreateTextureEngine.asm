# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3PipelineHelper.dll; complete Ghidra function body 100044e0..100044f7; CreateTextureEngine
100044e0: 6a0c  PUSH 0xc
100044e2: e8e9461300  CALL 0x10138bd0
100044e7: 83c404  ADD ESP,0x4
100044ea: 85c0  TEST EAX,EAX
100044ec: 7407  JZ 0x100044f5
100044ee: 8bc8  MOV ECX,EAX
100044f0: e92bfcffff  JMP 0x10004120
100044f5: 33c0  XOR EAX,EAX
100044f7: c3  RET

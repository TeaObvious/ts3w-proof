# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ResourceBytes_SwapDwordsInPlace(uint * param_1, int param_2)
Owned ranges: [[007d3070, 007d3090]]

007d3070  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007d3074  85c9  TEST ECX,ECX
007d3076  7418  JZ 0x007d3090
007d3078  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d307c  8d642400  LEA ESP,[ESP]
007d3080  8b10  MOV EDX,dword ptr [EAX]
007d3082  0fca  BSWAP EDX
007d3084  83e901  SUB ECX,0x1
007d3087  8910  MOV dword ptr [EAX],EDX
007d3089  83c004  ADD EAX,0x4
007d308c  85c9  TEST ECX,ECX
007d308e  75f0  JNZ 0x007d3080
007d3090  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int * ResourceKeyMap_FindChain(int * param_1, int * param_2)
Owned ranges: [[008b2910, 008b2948]]

008b2910  8b442404  MOV EAX,dword ptr [ESP + 0x4]
008b2914  85c0  TEST EAX,EAX
008b2916  56  PUSH ESI
008b2917  742a  JZ 0x008b2943
008b2919  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
008b291d  8b11  MOV EDX,dword ptr [ECX]
008b291f  90  NOP
008b2920  3b10  CMP EDX,dword ptr [EAX]
008b2922  7518  JNZ 0x008b293c
008b2924  8b7108  MOV ESI,dword ptr [ECX + 0x8]
008b2927  3b7008  CMP ESI,dword ptr [EAX + 0x8]
008b292a  7510  JNZ 0x008b293c
008b292c  8b710c  MOV ESI,dword ptr [ECX + 0xc]
008b292f  3b700c  CMP ESI,dword ptr [EAX + 0xc]
008b2932  7508  JNZ 0x008b293c
008b2934  8b7104  MOV ESI,dword ptr [ECX + 0x4]
008b2937  3b7004  CMP ESI,dword ptr [EAX + 0x4]
008b293a  7409  JZ 0x008b2945
008b293c  8b4018  MOV EAX,dword ptr [EAX + 0x18]
008b293f  85c0  TEST EAX,EAX
008b2941  75dd  JNZ 0x008b2920
008b2943  33c0  XOR EAX,EAX
008b2945  5e  POP ESI
008b2946  c20c00  RET 0xc

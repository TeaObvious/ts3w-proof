# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SacsWalker_PropagateDirtyState(void * this, char param_1)
Owned ranges: [[007ffd90, 007ffde1]]

007ffd90  80790c00  CMP byte ptr [ECX + 0xc],0x0
007ffd94  750b  JNZ 0x007ffda1
007ffd96  807c240400  CMP byte ptr [ESP + 0x4],0x0
007ffd9b  7504  JNZ 0x007ffda1
007ffd9d  33c0  XOR EAX,EAX
007ffd9f  eb05  JMP 0x007ffda6
007ffda1  b801000000  MOV EAX,0x1
007ffda6  88410c  MOV byte ptr [ECX + 0xc],AL
007ffda9  8b4904  MOV ECX,dword ptr [ECX + 0x4]
007ffdac  80b94601000000  CMP byte ptr [ECX + 0x146],0x0
007ffdb3  7508  JNZ 0x007ffdbd
007ffdb5  84c0  TEST AL,AL
007ffdb7  7504  JNZ 0x007ffdbd
007ffdb9  33c0  XOR EAX,EAX
007ffdbb  eb05  JMP 0x007ffdc2
007ffdbd  b801000000  MOV EAX,0x1
007ffdc2  84c0  TEST AL,AL
007ffdc4  888146010000  MOV byte ptr [ECX + 0x146],AL
007ffdca  7413  JZ 0x007ffddf
007ffdcc  a1409d1d01  MOV EAX,[0x011d9d40]
007ffdd1  85c0  TEST EAX,EAX
007ffdd3  740a  JZ 0x007ffddf
007ffdd5  6a00  PUSH 0x0
007ffdd7  51  PUSH ECX
007ffdd8  8bc8  MOV ECX,EAX
007ffdda  e8a1d1ffff  CALL 0x007fcf80
007ffddf  c20400  RET 0x4

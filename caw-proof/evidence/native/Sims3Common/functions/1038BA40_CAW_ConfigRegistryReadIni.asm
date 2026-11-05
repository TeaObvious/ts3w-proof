# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1038ba40..1038baa8; CAW_ConfigRegistryReadIni
1038ba40: 81eca4040000  SUB ESP,0x4a4
1038ba46: 8b8424a8040000  MOV EAX,dword ptr [ESP + 0x4a8]
1038ba4d: 56  PUSH ESI
1038ba4e: 6a00  PUSH 0x0
1038ba50: 6a01  PUSH 0x1
1038ba52: 8bf1  MOV ESI,ECX
1038ba54: 50  PUSH EAX
1038ba55: 8d4c2420  LEA ECX,[ESP + 0x20]
1038ba59: e892812300  CALL 0x105c3bf0
1038ba5e: 8d542404  LEA EDX,[ESP + 0x4]
1038ba62: 52  PUSH EDX
1038ba63: 8d4c2418  LEA ECX,[ESP + 0x18]
1038ba67: 6820ba3810  PUSH 0x1038ba20
1038ba6c: 894c240c  MOV dword ptr [ESP + 0xc],ECX
1038ba70: 89742410  MOV dword ptr [ESP + 0x10],ESI
1038ba74: c744241400000000  MOV dword ptr [ESP + 0x14],0x0
1038ba7c: c744241800000000  MOV dword ptr [ESP + 0x18],0x0
1038ba84: e8c7905900  CALL 0x10924b50
1038ba89: 8bce  MOV ECX,ESI
1038ba8b: e820f9ffff  CALL 0x1038b3b0
1038ba90: 8b742410  MOV ESI,dword ptr [ESP + 0x10]
1038ba94: 8d4c2414  LEA ECX,[ESP + 0x14]
1038ba98: e873802300  CALL 0x105c3b10
1038ba9d: 8bc6  MOV EAX,ESI
1038ba9f: 5e  POP ESI
1038baa0: 81c4a4040000  ADD ESP,0x4a4
1038baa6: c20400  RET 0x4

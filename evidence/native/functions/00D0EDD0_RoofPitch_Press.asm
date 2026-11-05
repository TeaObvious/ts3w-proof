# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00d0edd0 RoofPitch_Press
# Body [[00d0edd0, 00d0eedd]]; owned bytes=270
00d0edd0  55  PUSH EBP
00d0edd1  8bec  MOV EBP,ESP
00d0edd3  83e4f0  AND ESP,0xfffffff0
00d0edd6  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00d0edd9  81ecd4000000  SUB ESP,0xd4
00d0eddf  53  PUSH EBX
00d0ede0  8b5d0c  MOV EBX,dword ptr [EBP + 0xc]
00d0ede3  56  PUSH ESI
00d0ede4  57  PUSH EDI
00d0ede5  53  PUSH EBX
00d0ede6  50  PUSH EAX
00d0ede7  8bf1  MOV ESI,ECX
00d0ede9  e802fafbff  CALL 0x00cce7f0
00d0edee  837e4400  CMP dword ptr [ESI + 0x44],0x0
00d0edf2  7564  JNZ 0x00d0ee58
00d0edf4  837e5cff  CMP dword ptr [ESI + 0x5c],-0x1
00d0edf8  755e  JNZ 0x00d0ee58
00d0edfa  e821fdfbff  CALL 0x00cceb20
00d0edff  85c0  TEST EAX,EAX
00d0ee01  7461  JZ 0x00d0ee64
00d0ee03  83b89802000000  CMP dword ptr [EAX + 0x298],0x0
00d0ee0a  8db880020000  LEA EDI,[EAX + 0x280]
00d0ee10  7452  JZ 0x00d0ee64
00d0ee12  8d4c2460  LEA ECX,[ESP + 0x60]
00d0ee16  e82589dcff  CALL 0x00ad7740
00d0ee1b  57  PUSH EDI
00d0ee1c  68c8000000  PUSH 0xc8
00d0ee21  8d4c2428  LEA ECX,[ESP + 0x28]
00d0ee25  e84679dcff  CALL 0x00ad6770
00d0ee2a  50  PUSH EAX
00d0ee2b  8d4c2464  LEA ECX,[ESP + 0x64]
00d0ee2f  e83c97dcff  CALL 0x00ad8570
00d0ee34  8d4c2420  LEA ECX,[ESP + 0x20]
00d0ee38  e89382dcff  CALL 0x00ad70d0
00d0ee3d  6a01  PUSH 0x1
00d0ee3f  6a01  PUSH 0x1
00d0ee41  8d4c2468  LEA ECX,[ESP + 0x68]
00d0ee45  51  PUSH ECX
00d0ee46  8bce  MOV ECX,ESI
00d0ee48  e8434afcff  CALL 0x00cd3890
00d0ee4d  8d4c2460  LEA ECX,[ESP + 0x60]
00d0ee51  e87a3cd4ff  CALL 0x00a52ad0
00d0ee56  eb0c  JMP 0x00d0ee64
00d0ee58  680ed1ae05  PUSH 0x5aed10e
00d0ee5d  8bce  MOV ECX,ESI
00d0ee5f  e8acfbfbff  CALL 0x00ccea10
00d0ee64  807e5900  CMP byte ptr [ESI + 0x59],0x0
00d0ee68  895e64  MOV dword ptr [ESI + 0x64],EBX
00d0ee6b  7459  JZ 0x00d0eec6
00d0ee6d  8b5640  MOV EDX,dword ptr [ESI + 0x40]
00d0ee70  8b463c  MOV EAX,dword ptr [ESI + 0x3c]
00d0ee73  8b0c90  MOV ECX,dword ptr [EAX + EDX*0x4]
00d0ee76  8d5e38  LEA EBX,[ESI + 0x38]
00d0ee79  8d7e5c  LEA EDI,[ESI + 0x5c]
00d0ee7c  57  PUSH EDI
00d0ee7d  8d542418  LEA EDX,[ESP + 0x18]
00d0ee81  894c2410  MOV dword ptr [ESP + 0x10],ECX
00d0ee85  52  PUSH EDX
00d0ee86  8bcb  MOV ECX,EBX
00d0ee88  e83338baff  CALL 0x008b26c0
00d0ee8d  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00d0ee91  3908  CMP dword ptr [EAX],ECX
00d0ee93  8bcb  MOV ECX,EBX
00d0ee95  7517  JNZ 0x00d0eeae
00d0ee97  c644240c00  MOV byte ptr [ESP + 0xc],0x0
00d0ee9c  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00d0eea0  52  PUSH EDX
00d0eea1  57  PUSH EDI
00d0eea2  8d44241c  LEA EAX,[ESP + 0x1c]
00d0eea6  50  PUSH EAX
00d0eea7  e8146d9aff  CALL 0x006b5bc0
00d0eeac  eb12  JMP 0x00d0eec0
00d0eeae  57  PUSH EDI
00d0eeaf  e81c6c99ff  CALL 0x006a5ad0
00d0eeb4  8b0f  MOV ECX,dword ptr [EDI]
00d0eeb6  6a00  PUSH 0x0
00d0eeb8  51  PUSH ECX
00d0eeb9  8bce  MOV ECX,ESI
00d0eebb  e8c0fbffff  CALL 0x00d0ea80
00d0eec0  c707ffffffff  MOV dword ptr [EDI],0xffffffff
00d0eec6  8b550c  MOV EDX,dword ptr [EBP + 0xc]
00d0eec9  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00d0eecc  52  PUSH EDX
00d0eecd  50  PUSH EAX
00d0eece  8bce  MOV ECX,ESI
00d0eed0  e81bf9fbff  CALL 0x00cce7f0
00d0eed5  5f  POP EDI
00d0eed6  5e  POP ESI
00d0eed7  5b  POP EBX
00d0eed8  8be5  MOV ESP,EBP
00d0eeda  5d  POP EBP
00d0eedb  c20800  RET 0x8

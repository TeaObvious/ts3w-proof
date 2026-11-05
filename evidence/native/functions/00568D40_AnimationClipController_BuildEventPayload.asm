# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined AnimationClipController_BuildEventPayload(void * this, undefined4 * param_1)
Owned ranges: [[00568d40, 00568ddb]]

00568d40  56  PUSH ESI
00568d41  8bf1  MOV ESI,ECX
00568d43  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
00568d46  57  PUSH EDI
00568d47  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00568d4b  8d8ef0040000  LEA ECX,[ESI + 0x4f0]
00568d51  894708  MOV dword ptr [EDI + 0x8],EAX
00568d54  8937  MOV dword ptr [EDI],ESI
00568d56  894f0c  MOV dword ptr [EDI + 0xc],ECX
00568d59  8b86d8050000  MOV EAX,dword ptr [ESI + 0x5d8]
00568d5f  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00568d62  3bc1  CMP EAX,ECX
00568d64  7437  JZ 0x00568d9d
00568d66  85c0  TEST EAX,EAX
00568d68  53  PUSH EBX
00568d69  740c  JZ 0x00568d77
00568d6b  8d5004  LEA EDX,[EAX + 0x4]
00568d6e  bb01000000  MOV EBX,0x1
00568d73  f00fc11a  XADD.LOCK dword ptr [EDX],EBX
00568d77  85c9  TEST ECX,ECX
00568d79  894704  MOV dword ptr [EDI + 0x4],EAX
00568d7c  741e  JZ 0x00568d9c
00568d7e  8d4104  LEA EAX,[ECX + 0x4]
00568d81  8bd0  MOV EDX,EAX
00568d83  83cbff  OR EBX,0xffffffff
00568d86  f00fc11a  XADD.LOCK dword ptr [EDX],EBX
00568d8a  4b  DEC EBX
00568d8b  750f  JNZ 0x00568d9c
00568d8d  ba01000000  MOV EDX,0x1
00568d92  8710  XCHG dword ptr [EAX],EDX
00568d94  8b01  MOV EAX,dword ptr [ECX]
00568d96  8b10  MOV EDX,dword ptr [EAX]
00568d98  6a01  PUSH 0x1
00568d9a  ffd2  CALL EDX
00568d9c  5b  POP EBX
00568d9d  8a86f9050000  MOV AL,byte ptr [ESI + 0x5f9]
00568da3  884715  MOV byte ptr [EDI + 0x15],AL
00568da6  8a8efa050000  MOV CL,byte ptr [ESI + 0x5fa]
00568dac  884f16  MOV byte ptr [EDI + 0x16],CL
00568daf  8b86d0050000  MOV EAX,dword ptr [ESI + 0x5d0]
00568db5  85c0  TEST EAX,EAX
00568db7  7419  JZ 0x00568dd2
00568db9  8d4854  LEA ECX,[EAX + 0x54]
00568dbc  e81f740100  CALL 0x005801e0
00568dc1  3b86f4050000  CMP EAX,dword ptr [ESI + 0x5f4]
00568dc7  0f9ec0  SETLE AL
00568dca  884714  MOV byte ptr [EDI + 0x14],AL
00568dcd  5f  POP EDI
00568dce  5e  POP ESI
00568dcf  c20400  RET 0x4
00568dd2  b001  MOV AL,0x1
00568dd4  884714  MOV byte ptr [EDI + 0x14],AL
00568dd7  5f  POP EDI
00568dd8  5e  POP ESI
00568dd9  c20400  RET 0x4

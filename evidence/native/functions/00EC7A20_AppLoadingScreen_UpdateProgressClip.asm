# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function AppLoadingScreen_UpdateProgressClip Entry 00ec7a20
OWNED_RANGE 00ec7a20:00ec7a98
00ec7a20: 83ec14  SUB ESP,0x14
00ec7a23: 56  PUSH ESI
00ec7a24: 8bf1  MOV ESI,ECX
00ec7a26: 8b8e64020000  MOV ECX,dword ptr [ESI + 0x264]
00ec7a2c: 8b01  MOV EAX,dword ptr [ECX]
00ec7a2e: 8b5034  MOV EDX,dword ptr [EAX + 0x34]
00ec7a31: ffd2  CALL EDX
00ec7a33: d900  FLD float ptr [EAX]
00ec7a35: d9542408  FST float ptr [ESP + 0x8]
00ec7a39: f30f104004  MOVSS XMM0,dword ptr [EAX + 0x4]
00ec7a3e: db865c020000  FILD dword ptr [ESI + 0x25c]
00ec7a44: f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00ec7a4a: f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
00ec7a4f: f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00ec7a55: f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
00ec7a5a: 8b865c020000  MOV EAX,dword ptr [ESI + 0x25c]
00ec7a60: 85c0  TEST EAX,EAX
00ec7a62: f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00ec7a68: 7d06  JGE 0x00ec7a70
00ec7a6a: d8054899f900  FADD float ptr [0x00f99948]
00ec7a70: d80d48580f01  FMUL float ptr [0x010f5848]
00ec7a76: 8b8e64020000  MOV ECX,dword ptr [ESI + 0x264]
00ec7a7c: 8d442408  LEA EAX,[ESP + 0x8]
00ec7a80: 50  PUSH EAX
00ec7a81: d88e60020000  FMUL float ptr [ESI + 0x260]
00ec7a87: dec1  FADDP
00ec7a89: d95c2414  FSTP float ptr [ESP + 0x14]
00ec7a8d: 8b11  MOV EDX,dword ptr [ECX]
00ec7a8f: 8b5264  MOV EDX,dword ptr [EDX + 0x64]
00ec7a92: ffd2  CALL EDX
00ec7a94: 5e  POP ESI
00ec7a95: 83c414  ADD ESP,0x14
00ec7a98: c3  RET
Total instructions: 33; owned bytes: 121

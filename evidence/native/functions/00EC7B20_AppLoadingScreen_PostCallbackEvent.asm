# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function AppLoadingScreen_PostCallbackEvent Entry 00ec7b20
OWNED_RANGE 00ec7b20:00ec7b67
00ec7b20: 83ec1c  SUB ESP,0x1c
00ec7b23: 56  PUSH ESI
00ec7b24: 8bf1  MOV ESI,ECX
00ec7b26: 8b86f0020000  MOV EAX,dword ptr [ESI + 0x2f0]
00ec7b2c: 8b96f4020000  MOV EDX,dword ptr [ESI + 0x2f4]
00ec7b32: b120  MOV CL,0x20
00ec7b34: c744240c64000100  MOV dword ptr [ESP + 0xc],0x10064
00ec7b3c: e87f7d0b00  CALL 0x00f7f8c0
00ec7b41: 8b4e30  MOV ECX,dword ptr [ESI + 0x30]
00ec7b44: 89442410  MOV dword ptr [ESP + 0x10],EAX
00ec7b48: 8b86f0020000  MOV EAX,dword ptr [ESI + 0x2f0]
00ec7b4e: 89442414  MOV dword ptr [ESP + 0x14],EAX
00ec7b52: 8b11  MOV EDX,dword ptr [ECX]
00ec7b54: 8d4604  LEA EAX,[ESI + 0x4]
00ec7b57: 8d742404  LEA ESI,[ESP + 0x4]
00ec7b5b: 56  PUSH ESI
00ec7b5c: 50  PUSH EAX
00ec7b5d: 50  PUSH EAX
00ec7b5e: 8b4218  MOV EAX,dword ptr [EDX + 0x18]
00ec7b61: ffd0  CALL EAX
00ec7b63: 5e  POP ESI
00ec7b64: 83c41c  ADD ESP,0x1c
00ec7b67: c3  RET
Total instructions: 23; owned bytes: 72

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function Window_FindStartupGrowInterface Entry 00ec76f0
OWNED_RANGE 00ec76f0:00ec7733
00ec76f0: 56  PUSH ESI
00ec76f1: 57  PUSH EDI
00ec76f2: 8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ec76f6: 8b07  MOV EAX,dword ptr [EDI]
00ec76f8: 8b9010010000  MOV EDX,dword ptr [EAX + 0x110]
00ec76fe: 6a00  PUSH 0x0
00ec7700: 8bcf  MOV ECX,EDI
00ec7702: ffd2  CALL EDX
00ec7704: 8bf0  MOV ESI,EAX
00ec7706: 85f6  TEST ESI,ESI
00ec7708: 7425  JZ 0x00ec772f
00ec770a: 8b06  MOV EAX,dword ptr [ESI]
00ec770c: 8b500c  MOV EDX,dword ptr [EAX + 0xc]
00ec770f: 68c11bec03  PUSH 0x3ec1bc1
00ec7714: 8bce  MOV ECX,ESI
00ec7716: ffd2  CALL EDX
00ec7718: 85c0  TEST EAX,EAX
00ec771a: 7515  JNZ 0x00ec7731
00ec771c: 8b07  MOV EAX,dword ptr [EDI]
00ec771e: 8b9010010000  MOV EDX,dword ptr [EAX + 0x110]
00ec7724: 56  PUSH ESI
00ec7725: 8bcf  MOV ECX,EDI
00ec7727: ffd2  CALL EDX
00ec7729: 8bf0  MOV ESI,EAX
00ec772b: 85f6  TEST ESI,ESI
00ec772d: 75db  JNZ 0x00ec770a
00ec772f: 33c0  XOR EAX,EAX
00ec7731: 5f  POP EDI
00ec7732: 5e  POP ESI
00ec7733: c3  RET
Total instructions: 30; owned bytes: 68

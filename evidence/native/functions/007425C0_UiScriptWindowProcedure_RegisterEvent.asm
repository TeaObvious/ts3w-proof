# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007425C0_UiScriptWindowProcedure_RegisterEvent.c
Owned ranges: [[007425c0, 00742621]]

007425c0  83ec10  SUB ESP,0x10
007425c3  56  PUSH ESI
007425c4  8bf1  MOV ESI,ECX
007425c6  c644240400  MOV byte ptr [ESP + 0x4],0x0
007425cb  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007425cf  50  PUSH EAX
007425d0  8d4c241c  LEA ECX,[ESP + 0x1c]
007425d4  51  PUSH ECX
007425d5  8d542410  LEA EDX,[ESP + 0x10]
007425d9  52  PUSH EDX
007425da  8d4e10  LEA ECX,[ESI + 0x10]
007425dd  e8de35f7ff  CALL 0x006b5bc0
007425e2  807c241000  CMP byte ptr [ESP + 0x10],0x0
007425e7  7509  JNZ 0x007425f2
007425e9  32c0  XOR AL,AL
007425eb  5e  POP ESI
007425ec  83c410  ADD ESP,0x10
007425ef  c20400  RET 0x4
007425f2  8b442418  MOV EAX,dword ptr [ESP + 0x18]
007425f6  50  PUSH EAX
007425f7  e894c3dcff  CALL 0x0050e990
007425fc  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
007425ff  83c404  ADD ESP,0x4
00742602  85c8  TEST EAX,ECX
00742604  7513  JNZ 0x00742619
00742606  0bc8  OR ECX,EAX
00742608  894e30  MOV dword ptr [ESI + 0x30],ECX
0074260b  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
0074260e  8b11  MOV EDX,dword ptr [ECX]
00742610  8b8208010000  MOV EAX,dword ptr [EDX + 0x108]
00742616  56  PUSH ESI
00742617  ffd0  CALL EAX
00742619  b001  MOV AL,0x1
0074261b  5e  POP ESI
0074261c  83c410  ADD ESP,0x10
0074261f  c20400  RET 0x4

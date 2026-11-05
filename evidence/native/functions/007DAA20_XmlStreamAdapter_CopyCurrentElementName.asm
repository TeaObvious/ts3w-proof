# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function XmlStreamAdapter_CopyCurrentElementName Entry 007daa20
OWNED_RANGE 007daa20:007daa75
007daa20: 56  PUSH ESI
007daa21: 8bf1  MOV ESI,ECX
007daa23: 837e4801  CMP dword ptr [ESI + 0x48],0x1
007daa27: 7547  JNZ 0x007daa70
007daa29: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007daa2c: 83790800  CMP dword ptr [ECX + 0x8],0x0
007daa30: 753e  JNZ 0x007daa70
007daa32: e81965c9ff  CALL 0x00470f50
007daa37: 66833800  CMP word ptr [EAX],0x0
007daa3b: 8bc8  MOV ECX,EAX
007daa3d: 740a  JZ 0x007daa49
007daa3f: 90  NOP
007daa40: 83c102  ADD ECX,0x2
007daa43: 66833900  CMP word ptr [ECX],0x0
007daa47: 75f7  JNZ 0x007daa40
007daa49: 2bc8  SUB ECX,EAX
007daa4b: d1f9  SAR ECX,0x1
007daa4d: 8d0c48  LEA ECX,[EAX + ECX*0x2]
007daa50: 51  PUSH ECX
007daa51: 8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007daa55: 50  PUSH EAX
007daa56: e805e3c2ff  CALL 0x00408d60
007daa5b: 837e4801  CMP dword ptr [ESI + 0x48],0x1
007daa5f: 7509  JNZ 0x007daa6a
007daa61: 8b5608  MOV EDX,dword ptr [ESI + 0x8]
007daa64: 837a0800  CMP dword ptr [EDX + 0x8],0x0
007daa68: 7506  JNZ 0x007daa70
007daa6a: b001  MOV AL,0x1
007daa6c: 5e  POP ESI
007daa6d: c20400  RET 0x4
007daa70: 32c0  XOR AL,AL
007daa72: 5e  POP ESI
007daa73: c20400  RET 0x4
Total instructions: 33; owned bytes: 86

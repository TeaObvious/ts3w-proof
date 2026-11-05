# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete current Ghidra function envelope.
Analyst name: RoofRenderer_SetSceneMembership
Paired actual annotated Ghidra pseudocode: 00B9CEE0_RoofRenderer_SetSceneMembership.c
Owned body: [[00b9cee0, 00b9cf43]]
Envelope bytes=100

GHIDRA LISTING (actual current owned instructions; current memory nonowned bytes explicit)
00b9cee0  53  PUSH EBX
00b9cee1  8a5c2408  MOV BL,byte ptr [ESP + 0x8]
00b9cee5  56  PUSH ESI
00b9cee6  8bf1  MOV ESI,ECX
00b9cee8  385e2c  CMP byte ptr [ESI + 0x2c],BL
00b9ceeb  7452  JZ 0x00b9cf3f
00b9ceed  837e3000  CMP dword ptr [ESI + 0x30],0x0
00b9cef1  7449  JZ 0x00b9cf3c
00b9cef3  57  PUSH EDI
00b9cef4  e877b2b4ff  CALL 0x006e8170
00b9cef9  807e2c00  CMP byte ptr [ESI + 0x2c],0x0
00b9cefd  8bf8  MOV EDI,EAX
00b9ceff  7414  JZ 0x00b9cf15
00b9cf01  8b4630  MOV EAX,dword ptr [ESI + 0x30]
00b9cf04  50  PUSH EAX
00b9cf05  8bcf  MOV ECX,EDI
00b9cf07  e8e4b3b4ff  CALL 0x006e82f0
00b9cf0c  5f  POP EDI
00b9cf0d  885e2c  MOV byte ptr [ESI + 0x2c],BL
00b9cf10  5e  POP ESI
00b9cf11  5b  POP EBX
00b9cf12  c20400  RET 0x4
00b9cf15  837e1800  CMP dword ptr [ESI + 0x18],0x0
00b9cf19  8b4620  MOV EAX,dword ptr [ESI + 0x20]
00b9cf1c  7403  JZ 0x00b9cf21
00b9cf1e  83c001  ADD EAX,0x1
00b9cf21  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b9cf24  8b5108  MOV EDX,dword ptr [ECX + 0x8]
00b9cf27  83c108  ADD ECX,0x8
00b9cf2a  50  PUSH EAX
00b9cf2b  8b02  MOV EAX,dword ptr [EDX]
00b9cf2d  ffd0  CALL EAX
00b9cf2f  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
00b9cf32  50  PUSH EAX
00b9cf33  51  PUSH ECX
00b9cf34  8bcf  MOV ECX,EDI
00b9cf36  e8a5b3b4ff  CALL 0x006e82e0
00b9cf3b  5f  POP EDI
00b9cf3c  885e2c  MOV byte ptr [ESI + 0x2c],BL
00b9cf3f  5e  POP ESI
00b9cf40  5b  POP EBX
00b9cf41  c20400  RET 0x4

Owned instructions=42 owned bytes=100 nonowned bytes=0

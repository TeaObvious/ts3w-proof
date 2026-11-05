# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LightInterest_RefreshPairedSourceRoomState
; Owned ranges: [[006c7d00, 006c7e41]]
; Actual entry PLATE: PC1.67 paired source-room state refresh. Require target+24 and service+14/pointee. Preserve old room, initialize query byte1 and query this interest; only in the target virtual+18 enabled branch initialize companion byte1 and query a present companion+28. Conditional bytes, external+50/+88 and target flags select 6BDE10 state updates; flag08 also transfers the companion target dimmer through 6BDE80. After an actual state-update call notify 6C72C0 for changed old room then current room; no-update early return bypasses notifications. This does not establish source-list insertion/removal, CEBF30 AL meaning or a universal room0/floor0 policy.

006c7d00  55  PUSH EBP
006c7d01  8bec  MOV EBP,ESP
006c7d03  83e4f0  AND ESP,0xfffffff0
006c7d06  83ec24  SUB ESP,0x24
006c7d09  53  PUSH EBX
006c7d0a  56  PUSH ESI
006c7d0b  8bf1  MOV ESI,ECX
006c7d0d  837e2400  CMP dword ptr [ESI + 0x24],0x0
006c7d11  57  PUSH EDI
006c7d12  0f8423010000  JZ 0x006c7e3b
006c7d18  8b4614  MOV EAX,dword ptr [ESI + 0x14]
006c7d1b  85c0  TEST EAX,EAX
006c7d1d  0f8418010000  JZ 0x006c7e3b
006c7d23  833800  CMP dword ptr [EAX],0x0
006c7d26  0f840f010000  JZ 0x006c7e3b
006c7d2c  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
006c7d2f  8d4c2419  LEA ECX,[ESP + 0x19]
006c7d33  51  PUSH ECX
006c7d34  8bce  MOV ECX,ESI
006c7d36  89442420  MOV dword ptr [ESP + 0x20],EAX
006c7d3a  c644241d01  MOV byte ptr [ESP + 0x1d],0x1
006c7d3f  e83cffffff  CALL 0x006c7c80
006c7d44  8b7e24  MOV EDI,dword ptr [ESI + 0x24]
006c7d47  8b17  MOV EDX,dword ptr [EDI]
006c7d49  8b4218  MOV EAX,dword ptr [EDX + 0x18]
006c7d4c  8bcf  MOV ECX,EDI
006c7d4e  ffd0  CALL EAX
006c7d50  84c0  TEST AL,AL
006c7d52  0f84ac000000  JZ 0x006c7e04
006c7d58  8bce  MOV ECX,ESI
006c7d5a  e891fbffff  CALL 0x006c78f0
006c7d5f  8b4e14  MOV ECX,dword ptr [ESI + 0x14]
006c7d62  8b5104  MOV EDX,dword ptr [ECX + 0x4]
006c7d65  8b02  MOV EAX,dword ptr [EDX]
006c7d67  83785000  CMP dword ptr [EAX + 0x50],0x0
006c7d6b  c644241b01  MOV byte ptr [ESP + 0x1b],0x1
006c7d70  0f9444241a  SETZ byte ptr [ESP + 0x1a]
006c7d75  807c241900  CMP byte ptr [ESP + 0x19],0x0
006c7d7a  b301  MOV BL,0x1
006c7d7c  7509  JNZ 0x006c7d87
006c7d7e  8b17  MOV EDX,dword ptr [EDI]
006c7d80  8b4238  MOV EAX,dword ptr [EDX + 0x38]
006c7d83  8bcf  MOV ECX,EDI
006c7d85  ffd0  CALL EAX
006c7d87  8b4e28  MOV ECX,dword ptr [ESI + 0x28]
006c7d8a  85c9  TEST ECX,ECX
006c7d8c  7433  JZ 0x006c7dc1
006c7d8e  8d54241b  LEA EDX,[ESP + 0x1b]
006c7d92  52  PUSH EDX
006c7d93  e8e8feffff  CALL 0x006c7c80
006c7d98  f6870001000008  TEST byte ptr [EDI + 0x100],0x8
006c7d9f  7420  JZ 0x006c7dc1
006c7da1  8b4628  MOV EAX,dword ptr [ESI + 0x28]
006c7da4  8b4824  MOV ECX,dword ptr [EAX + 0x24]
006c7da7  0f284110  MOVAPS XMM0,xmmword ptr [ECX + 0x10]
006c7dab  0f29442420  MOVAPS xmmword ptr [ESP + 0x20],XMM0
006c7db0  d9442420  FLD float ptr [ESP + 0x20]
006c7db4  6a00  PUSH 0x0
006c7db6  51  PUSH ECX
006c7db7  8bcf  MOV ECX,EDI
006c7db9  d91c24  FSTP float ptr [ESP]
006c7dbc  e8bf60ffff  CALL 0x006bde80
006c7dc1  8a442419  MOV AL,byte ptr [ESP + 0x19]
006c7dc5  84c0  TEST AL,AL
006c7dc7  7425  JZ 0x006c7dee
006c7dc9  807c241a00  CMP byte ptr [ESP + 0x1a],0x0
006c7dce  740e  JZ 0x006c7dde
006c7dd0  8b5614  MOV EDX,dword ptr [ESI + 0x14]
006c7dd3  8b0a  MOV ECX,dword ptr [EDX]
006c7dd5  83b98800000000  CMP dword ptr [ECX + 0x88],0x0
006c7ddc  7e02  JLE 0x006c7de0
006c7dde  32db  XOR BL,BL
006c7de0  3844241b  CMP byte ptr [ESP + 0x1b],AL
006c7de4  7411  JZ 0x006c7df7
006c7de6  84db  TEST BL,BL
006c7de8  740d  JZ 0x006c7df7
006c7dea  6a01  PUSH 0x1
006c7dec  eb28  JMP 0x006c7e16
006c7dee  807c241a00  CMP byte ptr [ESP + 0x1a],0x0
006c7df3  74eb  JZ 0x006c7de0
006c7df5  ebe7  JMP 0x006c7dde
006c7df7  f6870001000020  TEST byte ptr [EDI + 0x100],0x20
006c7dfe  743b  JZ 0x006c7e3b
006c7e00  6a00  PUSH 0x0
006c7e02  eb12  JMP 0x006c7e16
006c7e04  8b5620  MOV EDX,dword ptr [ESI + 0x20]
006c7e07  0fb68290000000  MOVZX EAX,byte ptr [EDX + 0x90]
006c7e0e  d0e8  SHR AL,0x1
006c7e10  2501ffffff  AND EAX,0xffffff01
006c7e15  50  PUSH EAX
006c7e16  8bcf  MOV ECX,EDI
006c7e18  e8f35fffff  CALL 0x006bde10
006c7e1d  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
006c7e21  3b461c  CMP EAX,dword ptr [ESI + 0x1c]
006c7e24  7409  JZ 0x006c7e2f
006c7e26  8b4e14  MOV ECX,dword ptr [ESI + 0x14]
006c7e29  50  PUSH EAX
006c7e2a  e891f4ffff  CALL 0x006c72c0
006c7e2f  8b4e1c  MOV ECX,dword ptr [ESI + 0x1c]
006c7e32  51  PUSH ECX
006c7e33  8b4e14  MOV ECX,dword ptr [ESI + 0x14]
006c7e36  e885f4ffff  CALL 0x006c72c0
006c7e3b  5f  POP EDI
006c7e3c  5e  POP ESI
006c7e3d  5b  POP EBX
006c7e3e  8be5  MOV ESP,EBP
006c7e40  5d  POP EBP
006c7e41  c3  RET

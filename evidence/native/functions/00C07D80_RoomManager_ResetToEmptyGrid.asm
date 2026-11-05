# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: RoomManager_ResetToEmptyGrid
; Owned ranges: [[00c07d80, 00c07e6e]]
; Actual entry PLATE: PC1.67 exact239B existing body. Physical ECX receiver, no incoming EDX parameter and no stack parameters/plainRET, contrary to the stored fastcall wording. Loads dimensions from owning lot+174/+178/+184 and minlevel-like field+17C into manager+10; resizes grid throughC05E40, passes a local two-DWORD-zero payload toC05DA0. Clears/reinitializes manager lists/maps, rebuilds room locations, retires five list buckets and marks worklist tails. Returns AL1 only, upperEAX not meaningful. Called by both inspected PartitionManager resource readers when fourth Platform lane is absent before format11; other reset callers exist, hence generic RoomManager name. Compact grid-fill internals and exact cleanup callee contracts are not reconstructed here.

00c07d80  83ec08  SUB ESP,0x8
00c07d83  53  PUSH EBX
00c07d84  55  PUSH EBP
00c07d85  56  PUSH ESI
00c07d86  8bf1  MOV ESI,ECX
00c07d88  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c07d8b  8b9078010000  MOV EDX,dword ptr [EAX + 0x178]
00c07d91  8b8874010000  MOV ECX,dword ptr [EAX + 0x174]
00c07d97  57  PUSH EDI
00c07d98  8bb884010000  MOV EDI,dword ptr [EAX + 0x184]
00c07d9e  8b807c010000  MOV EAX,dword ptr [EAX + 0x17c]
00c07da4  57  PUSH EDI
00c07da5  52  PUSH EDX
00c07da6  51  PUSH ECX
00c07da7  8b4e14  MOV ECX,dword ptr [ESI + 0x14]
00c07daa  894610  MOV dword ptr [ESI + 0x10],EAX
00c07dad  e88ee0ffff  CALL 0x00c05e40
00c07db2  8d4c2410  LEA ECX,[ESP + 0x10]
00c07db6  33c0  XOR EAX,EAX
00c07db8  51  PUSH ECX
00c07db9  8b4e14  MOV ECX,dword ptr [ESI + 0x14]
00c07dbc  33db  XOR EBX,EBX
00c07dbe  89442414  MOV dword ptr [ESP + 0x14],EAX
00c07dc2  89442418  MOV dword ptr [ESP + 0x18],EAX
00c07dc6  e8d5dfffff  CALL 0x00c05da0
00c07dcb  8b5624  MOV EDX,dword ptr [ESI + 0x24]
00c07dce  8d7e18  LEA EDI,[ESI + 0x18]
00c07dd1  52  PUSH EDX
00c07dd2  8bcf  MOV ECX,EDI
00c07dd4  e8d79bcaff  CALL 0x008b19b0
00c07dd9  8d4704  LEA EAX,[EDI + 0x4]
00c07ddc  894708  MOV dword ptr [EDI + 0x8],EAX
00c07ddf  895f0c  MOV dword ptr [EDI + 0xc],EBX
00c07de2  885f10  MOV byte ptr [EDI + 0x10],BL
00c07de5  895f14  MOV dword ptr [EDI + 0x14],EBX
00c07de8  8d7e34  LEA EDI,[ESI + 0x34]
00c07deb  8900  MOV dword ptr [EAX],EAX
00c07ded  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00c07df0  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00c07df3  50  PUSH EAX
00c07df4  51  PUSH ECX
00c07df5  8bcf  MOV ECX,EDI
00c07df7  e8f4caffff  CALL 0x00c048f0
00c07dfc  895f0c  MOV dword ptr [EDI + 0xc],EBX
00c07dff  8b5654  MOV EDX,dword ptr [ESI + 0x54]
00c07e02  8bce  MOV ECX,ESI
00c07e04  895658  MOV dword ptr [ESI + 0x58],EDX
00c07e07  e8d4faffff  CALL 0x00c078e0
00c07e0c  8d7e7c  LEA EDI,[ESI + 0x7c]
00c07e0f  c744241005000000  MOV dword ptr [ESP + 0x10],0x5
00c07e17  8b6f0c  MOV EBP,dword ptr [EDI + 0xc]
00c07e1a  3beb  CMP EBP,EBX
00c07e1c  741f  JZ 0x00c07e3d
00c07e1e  8bff  MOV EDI,EDI
00c07e20  8b4500  MOV EAX,dword ptr [EBP]
00c07e23  50  PUSH EAX
00c07e24  8bcf  MOV ECX,EDI
00c07e26  e8859bcaff  CALL 0x008b19b0
00c07e2b  8b5d04  MOV EBX,dword ptr [EBP + 0x4]
00c07e2e  55  PUSH EBP
00c07e2f  e8acc68dff  CALL 0x004e44e0
00c07e34  83c404  ADD ESP,0x4
00c07e37  85db  TEST EBX,EBX
00c07e39  8beb  MOV EBP,EBX
00c07e3b  75e3  JNZ 0x00c07e20
00c07e3d  8d4704  LEA EAX,[EDI + 0x4]
00c07e40  894708  MOV dword ptr [EDI + 0x8],EAX
00c07e43  895f0c  MOV dword ptr [EDI + 0xc],EBX
00c07e46  c6471000  MOV byte ptr [EDI + 0x10],0x0
00c07e4a  895f14  MOV dword ptr [EDI + 0x14],EBX
00c07e4d  83c71c  ADD EDI,0x1c
00c07e50  836c241001  SUB dword ptr [ESP + 0x10],0x1
00c07e55  8900  MOV dword ptr [EAX],EAX
00c07e57  75be  JNZ 0x00c07e17
00c07e59  8b8e08010000  MOV ECX,dword ptr [ESI + 0x108]
00c07e5f  5f  POP EDI
00c07e60  898e0c010000  MOV dword ptr [ESI + 0x10c],ECX
00c07e66  5e  POP ESI
00c07e67  5d  POP EBP
00c07e68  b001  MOV AL,0x1
00c07e6a  5b  POP EBX
00c07e6b  83c408  ADD ESP,0x8
00c07e6e  c3  RET

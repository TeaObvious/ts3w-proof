# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: PartitionState_ReadCountedUInt16Vector
; Owned ranges: [[00b4f990, 00b4fa0a]]
; Actual entry PLATE: PC1.67 exact existing123B/48I. Two stack DWORD inputs, RET8, no incoming ECX receiver used; void result, stream context is first stack arg and vector second. Reads UInt32 count, accumulates reader status, only resizes/reads vector if context+14 status remains nonzero. Each element is read by UInt16 helper and stored with16bit MOV at base+2*unsignedIndex; unsigned loop bound. Existing saved and bundle PartitionManager readers call exactly twice for partition format>=7. No native input byte-count/EOF limit is introduced by this body; host span bounds are a separate safe admission policy. Do not infer a C++ generic vector ABI or change original bytes.

00b4f990  51  PUSH ECX
00b4f991  56  PUSH ESI
00b4f992  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00b4f996  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00b4f999  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b4f99c  50  PUSH EAX
00b4f99d  8d4c2408  LEA ECX,[ESP + 0x8]
00b4f9a1  51  PUSH ECX
00b4f9a2  52  PUSH EDX
00b4f9a3  e8d8df98ff  CALL 0x004dd980
00b4f9a8  83c40c  ADD ESP,0xc
00b4f9ab  8bce  MOV ECX,ESI
00b4f9ad  50  PUSH EAX
00b4f9ae  e83d80c8ff  CALL 0x007d79f0
00b4f9b3  807e1400  CMP byte ptr [ESI + 0x14],0x0
00b4f9b7  744d  JZ 0x00b4fa06
00b4f9b9  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b4f9bd  53  PUSH EBX
00b4f9be  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00b4f9c2  57  PUSH EDI
00b4f9c3  50  PUSH EAX
00b4f9c4  8bcb  MOV ECX,EBX
00b4f9c6  e815fcb2ff  CALL 0x0067f5e0
00b4f9cb  33ff  XOR EDI,EDI
00b4f9cd  397c240c  CMP dword ptr [ESP + 0xc],EDI
00b4f9d1  7631  JBE 0x00b4fa04
00b4f9d3  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b4f9d6  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b4f9d9  51  PUSH ECX
00b4f9da  8d542418  LEA EDX,[ESP + 0x18]
00b4f9de  52  PUSH EDX
00b4f9df  50  PUSH EAX
00b4f9e0  e8fbde98ff  CALL 0x004dd8e0
00b4f9e5  83c40c  ADD ESP,0xc
00b4f9e8  8bce  MOV ECX,ESI
00b4f9ea  50  PUSH EAX
00b4f9eb  e80080c8ff  CALL 0x007d79f0
00b4f9f0  8b0b  MOV ECX,dword ptr [EBX]
00b4f9f2  668b542414  MOV DX,word ptr [ESP + 0x14]
00b4f9f7  66891479  MOV word ptr [ECX + EDI*0x2],DX
00b4f9fb  83c701  ADD EDI,0x1
00b4f9fe  3b7c240c  CMP EDI,dword ptr [ESP + 0xc]
00b4fa02  72cf  JC 0x00b4f9d3
00b4fa04  5f  POP EDI
00b4fa05  5b  POP EBX
00b4fa06  5e  POP ESI
00b4fa07  59  POP ECX
00b4fa08  c20800  RET 0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LightInterest_QuerySourceRoomRecord
; Owned ranges: [[006c7c80, 006c7cf9]]
; Actual entry PLATE: PC1.67 source-room query. Obtain source position through target virtual+24, query the already bound partition using X/Z. Absent service/pointee preserves room+1C and caller byte. Null query writes room0 but preserves the byte. Nonnull query copies record+0C and writes only CEBF30 AL into the caller byte. Physical RET4/void; incidental EAX is not a Boolean query result. CEBF30 predicate meaning and source-list admission are not established here. Decompiler fStack_44 is a stack-alias projection, not a proven uninitialized input; Listing copies the returned16-byte buffer and passes X/Z.

006c7c80  55  PUSH EBP
006c7c81  8bec  MOV EBP,ESP
006c7c83  83e4f0  AND ESP,0xfffffff0
006c7c86  83ec3c  SUB ESP,0x3c
006c7c89  56  PUSH ESI
006c7c8a  8bf1  MOV ESI,ECX
006c7c8c  8b4e24  MOV ECX,dword ptr [ESI + 0x24]
006c7c8f  8b01  MOV EAX,dword ptr [ECX]
006c7c91  8b4024  MOV EAX,dword ptr [EAX + 0x24]
006c7c94  8d542410  LEA EDX,[ESP + 0x10]
006c7c98  52  PUSH EDX
006c7c99  ffd0  CALL EAX
006c7c9b  8b4614  MOV EAX,dword ptr [ESI + 0x14]
006c7c9e  85c0  TEST EAX,EAX
006c7ca0  7451  JZ 0x006c7cf3
006c7ca2  833800  CMP dword ptr [EAX],0x0
006c7ca5  744c  JZ 0x006c7cf3
006c7ca7  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
006c7cac  8b08  MOV ECX,dword ptr [EAX]
006c7cae  0f29442420  MOVAPS xmmword ptr [ESP + 0x20],XMM0
006c7cb3  d9442428  FLD float ptr [ESP + 0x28]
006c7cb7  83ec08  SUB ESP,0x8
006c7cba  d95c2404  FSTP float ptr [ESP + 0x4]
006c7cbe  0f29442438  MOVAPS xmmword ptr [ESP + 0x38],XMM0
006c7cc3  d9442438  FLD float ptr [ESP + 0x38]
006c7cc7  d91c24  FSTP float ptr [ESP]
006c7cca  e82100feff  CALL 0x006a7cf0
006c7ccf  85c0  TEST EAX,EAX
006c7cd1  7419  JZ 0x006c7cec
006c7cd3  8b480c  MOV ECX,dword ptr [EAX + 0xc]
006c7cd6  894e1c  MOV dword ptr [ESI + 0x1c],ECX
006c7cd9  8bc8  MOV ECX,EAX
006c7cdb  e850426200  CALL 0x00cebf30
006c7ce0  8b5508  MOV EDX,dword ptr [EBP + 0x8]
006c7ce3  8802  MOV byte ptr [EDX],AL
006c7ce5  5e  POP ESI
006c7ce6  8be5  MOV ESP,EBP
006c7ce8  5d  POP EBP
006c7ce9  c20400  RET 0x4
006c7cec  c7461c00000000  MOV dword ptr [ESI + 0x1c],0x0
006c7cf3  5e  POP ESI
006c7cf4  8be5  MOV ESP,EBP
006c7cf6  5d  POP EBP
006c7cf7  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: WallVertex_InitializeCompactLocation
; Owned ranges: [[00c5d530, 00c5d57f]]
; Actual entry PLATE: Static PC1.67: ECX destination, stack+4 Float32X/Z+Int32level tuple, RET4; stored inferred return metadata remains unchanged. Stores ID FFFFFFFF; X and Z each pass Float32 FLD/FISTP Int32 under inherited x87 control then low byte to+4/+5; copies level low byte to+6; clears DWORD+8/+C. No local control-word change. Normal original writer supplies signed-byte integral X/Z; other FP rounding/exception modes remain separate, not inferred nearest parity.

00c5d530  51  PUSH ECX
00c5d531  8bc1  MOV EAX,ECX
00c5d533  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c5d537  c700ffffffff  MOV dword ptr [EAX],0xffffffff
00c5d53d  f30f1001  MOVSS XMM0,dword ptr [ECX]
00c5d541  f30f110424  MOVSS dword ptr [ESP],XMM0
00c5d546  d90424  FLD float ptr [ESP]
00c5d549  db5c2408  FISTP dword ptr [ESP + 0x8]
00c5d54d  0fb6542408  MOVZX EDX,byte ptr [ESP + 0x8]
00c5d552  885004  MOV byte ptr [EAX + 0x4],DL
00c5d555  f30f104104  MOVSS XMM0,dword ptr [ECX + 0x4]
00c5d55a  f30f110424  MOVSS dword ptr [ESP],XMM0
00c5d55f  d90424  FLD float ptr [ESP]
00c5d562  db5c2408  FISTP dword ptr [ESP + 0x8]
00c5d566  0fb6542408  MOVZX EDX,byte ptr [ESP + 0x8]
00c5d56b  885005  MOV byte ptr [EAX + 0x5],DL
00c5d56e  8a4908  MOV CL,byte ptr [ECX + 0x8]
00c5d571  884806  MOV byte ptr [EAX + 0x6],CL
00c5d574  33c9  XOR ECX,ECX
00c5d576  894808  MOV dword ptr [EAX + 0x8],ECX
00c5d579  89480c  MOV dword ptr [EAX + 0xc],ECX
00c5d57c  59  POP ECX
00c5d57d  c20400  RET 0x4

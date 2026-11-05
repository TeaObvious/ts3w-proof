# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00784DF0_FUN_00784df0.c
Body [[00784df0, 00784e71]]; envelope exclusive end 00784e72

GHIDRA LISTING (original bytes)
00784df0  51  PUSH ECX
00784df1  8bc1  MOV EAX,ECX
00784df3  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00784df7  f30f1001  MOVSS XMM0,dword ptr [ECX]
00784dfb  f30f110424  MOVSS dword ptr [ESP],XMM0
00784e00  d90424  FLD float ptr [ESP]
00784e03  db5c2408  FISTP dword ptr [ESP + 0x8]
00784e07  0fb6542408  MOVZX EDX,byte ptr [ESP + 0x8]
00784e0c  8810  MOV byte ptr [EAX],DL
00784e0e  f30f104104  MOVSS XMM0,dword ptr [ECX + 0x4]
00784e13  f30f110424  MOVSS dword ptr [ESP],XMM0
00784e18  d90424  FLD float ptr [ESP]
00784e1b  db5c2408  FISTP dword ptr [ESP + 0x8]
00784e1f  0fb6542408  MOVZX EDX,byte ptr [ESP + 0x8]
00784e24  885001  MOV byte ptr [EAX + 0x1],DL
00784e27  0fb64908  MOVZX ECX,byte ptr [ECX + 0x8]
00784e2b  884802  MOV byte ptr [EAX + 0x2],CL
00784e2e  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00784e32  f30f1001  MOVSS XMM0,dword ptr [ECX]
00784e36  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00784e3c  d944240c  FLD float ptr [ESP + 0xc]
00784e40  db5c2408  FISTP dword ptr [ESP + 0x8]
00784e44  0fb6542408  MOVZX EDX,byte ptr [ESP + 0x8]
00784e49  885003  MOV byte ptr [EAX + 0x3],DL
00784e4c  f30f104104  MOVSS XMM0,dword ptr [ECX + 0x4]
00784e51  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00784e57  d944240c  FLD float ptr [ESP + 0xc]
00784e5b  db5c2408  FISTP dword ptr [ESP + 0x8]
00784e5f  0fb6542408  MOVZX EDX,byte ptr [ESP + 0x8]
00784e64  885004  MOV byte ptr [EAX + 0x4],DL
00784e67  0fb64908  MOVZX ECX,byte ptr [ECX + 0x8]
00784e6b  884805  MOV byte ptr [EAX + 0x5],CL
00784e6e  59  POP ECX
00784e6f  c20800  RET 0x8

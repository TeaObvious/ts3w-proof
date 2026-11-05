# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: WorldObjects_FindByGuid
Paired actual annotated Ghidra pseudocode: 00C60740_WorldObjects_FindByGuid.c
Owned ranges: [[00c60740, 00c607a9]]
Envelope bytes=106

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c60740  53  PUSH EBX
00c60741  8b5c2408  MOV EBX,dword ptr [ESP + 0x8]
00c60745  55  PUSH EBP
00c60746  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00c6074a  56  PUSH ESI
00c6074b  8bf1  MOV ESI,ECX
00c6074d  8bcb  MOV ECX,EBX
00c6074f  33c0  XOR EAX,EAX
00c60751  0bcd  OR ECX,EBP
00c60753  744f  JZ 0x00c607a4
00c60755  8b96a0000000  MOV EDX,dword ptr [ESI + 0xa0]
00c6075b  2b969c000000  SUB EDX,dword ptr [ESI + 0x9c]
00c60761  57  PUSH EDI
00c60762  33ff  XOR EDI,EDI
00c60764  c1fa02  SAR EDX,0x2
00c60767  743a  JZ 0x00c607a3
00c60769  8da42400000000  LEA ESP,[ESP]
00c60770  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00c60774  8b869c000000  MOV EAX,dword ptr [ESI + 0x9c]
00c6077a  8b04b8  MOV EAX,dword ptr [EAX + EDI*0x4]
00c6077d  51  PUSH ECX
00c6077e  55  PUSH EBP
00c6077f  53  PUSH EBX
00c60780  50  PUSH EAX
00c60781  e83aedffff  CALL 0x00c5f4c0
00c60786  83c410  ADD ESP,0x10
00c60789  85c0  TEST EAX,EAX
00c6078b  7516  JNZ 0x00c607a3
00c6078d  8b96a0000000  MOV EDX,dword ptr [ESI + 0xa0]
00c60793  2b969c000000  SUB EDX,dword ptr [ESI + 0x9c]
00c60799  83c701  ADD EDI,0x1
00c6079c  c1fa02  SAR EDX,0x2
00c6079f  3bfa  CMP EDI,EDX
00c607a1  72cd  JC 0x00c60770
00c607a3  5f  POP EDI
00c607a4  5e  POP ESI
00c607a5  5d  POP EBP
00c607a6  5b  POP EBX
00c607a7  c20c00  RET 0xc
Owned instructions=39 owned bytes=106 nonowned bytes=0

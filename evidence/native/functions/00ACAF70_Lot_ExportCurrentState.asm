# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Lot_ExportCurrentState
Paired actual annotated Ghidra pseudocode: 00ACAF70_Lot_ExportCurrentState.c
Owned ranges: [[00acaf70, 00acb0b8]]
Envelope bytes=329

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00acaf70  81ec88000000  SUB ESP,0x88
00acaf76  8b8424a0000000  MOV EAX,dword ptr [ESP + 0xa0]
00acaf7d  53  PUSH EBX
00acaf7e  8b9c2494000000  MOV EBX,dword ptr [ESP + 0x94]
00acaf85  55  PUSH EBP
00acaf86  8bac249c000000  MOV EBP,dword ptr [ESP + 0x9c]
00acaf8d  56  PUSH ESI
00acaf8e  57  PUSH EDI
00acaf8f  8bbc249c000000  MOV EDI,dword ptr [ESP + 0x9c]
00acaf96  50  PUSH EAX
00acaf97  8bf1  MOV ESI,ECX
00acaf99  8b8c24b0000000  MOV ECX,dword ptr [ESP + 0xb0]
00acafa0  51  PUSH ECX
00acafa1  6a01  PUSH 0x1
00acafa3  55  PUSH EBP
00acafa4  53  PUSH EBX
00acafa5  57  PUSH EDI
00acafa6  8bce  MOV ECX,ESI
00acafa8  c644242b01  MOV byte ptr [ESP + 0x2b],0x1
00acafad  e87ef4ffff  CALL 0x00aca430
00acafb2  84c0  TEST AL,AL
00acafb4  750d  JNZ 0x00acafc3
00acafb6  5f  POP EDI
00acafb7  5e  POP ESI
00acafb8  5d  POP EBP
00acafb9  5b  POP EBX
00acafba  81c488000000  ADD ESP,0x88
00acafc0  c21800  RET 0x18
00acafc3  807f1400  CMP byte ptr [EDI + 0x14],0x0
00acafc7  7418  JZ 0x00acafe1
00acafc9  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acafcf  6a00  PUSH 0x0
00acafd1  55  PUSH EBP
00acafd2  53  PUSH EBX
00acafd3  57  PUSH EDI
00acafd4  e80702fcff  CALL 0x00a8b1e0
00acafd9  2401  AND AL,0x1
00acafdb  88442413  MOV byte ptr [ESP + 0x13],AL
00acafdf  eb04  JMP 0x00acafe5
00acafe1  8a442413  MOV AL,byte ptr [ESP + 0x13]
00acafe5  807f1400  CMP byte ptr [EDI + 0x14],0x0
00acafe9  0f84bd000000  JZ 0x00acb0ac
00acafef  6a00  PUSH 0x0
00acaff1  8d4c2418  LEA ECX,[ESP + 0x18]
00acaff5  e8e6bbd0ff  CALL 0x007d6be0
00acaffa  55  PUSH EBP
00acaffb  53  PUSH EBX
00acaffc  8d54241c  LEA EDX,[ESP + 0x1c]
00acb000  52  PUSH EDX
00acb001  57  PUSH EDI
00acb002  8bce  MOV ECX,ESI
00acb004  e867a3ffff  CALL 0x00ac5370
00acb009  8b8ee4020000  MOV ECX,dword ptr [ESI + 0x2e4]
00acb00f  85c9  TEST ECX,ECX
00acb011  7417  JZ 0x00acb02a
00acb013  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00acb01a  6a00  PUSH 0x0
00acb01c  55  PUSH EBP
00acb01d  53  PUSH EBX
00acb01e  50  PUSH EAX
00acb01f  8d542424  LEA EDX,[ESP + 0x24]
00acb023  52  PUSH EDX
00acb024  57  PUSH EDI
00acb025  e8862f1400  CALL 0x00c0dfb0
00acb02a  6a00  PUSH 0x0
00acb02c  55  PUSH EBP
00acb02d  53  PUSH EBX
00acb02e  6a00  PUSH 0x0
00acb030  57  PUSH EDI
00acb031  8d4c2428  LEA ECX,[ESP + 0x28]
00acb035  e806b9d0ff  CALL 0x007d6940
00acb03a  8bce  MOV ECX,ESI
00acb03c  e89f86feff  CALL 0x00ab36e0
00acb041  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00acb048  50  PUSH EAX
00acb049  55  PUSH EBP
00acb04a  53  PUSH EBX
00acb04b  57  PUSH EDI
00acb04c  8bce  MOV ECX,ESI
00acb04e  e89d02ffff  CALL 0x00abb2f0
00acb053  20442413  AND byte ptr [ESP + 0x13],AL
00acb057  8bce  MOV ECX,ESI
00acb059  e8e287feff  CALL 0x00ab3840
00acb05e  8b8ed8020000  MOV ECX,dword ptr [ESI + 0x2d8]
00acb064  85c9  TEST ECX,ECX
00acb066  7412  JZ 0x00acb07a
00acb068  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00acb06f  6a00  PUSH 0x0
00acb071  55  PUSH EBP
00acb072  53  PUSH EBX
00acb073  52  PUSH EDX
00acb074  57  PUSH EDI
00acb075  e836dd1300  CALL 0x00c08db0
00acb07a  8bb6cc020000  MOV ESI,dword ptr [ESI + 0x2cc]
00acb080  85f6  TEST ESI,ESI
00acb082  7414  JZ 0x00acb098
00acb084  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00acb08b  6a00  PUSH 0x0
00acb08d  55  PUSH EBP
00acb08e  53  PUSH EBX
00acb08f  50  PUSH EAX
00acb090  57  PUSH EDI
00acb091  8bce  MOV ECX,ESI
00acb093  e888b2faff  CALL 0x00a76320
00acb098  8a4f14  MOV CL,byte ptr [EDI + 0x14]
00acb09b  204c2413  AND byte ptr [ESP + 0x13],CL
00acb09f  8d4c2414  LEA ECX,[ESP + 0x14]
00acb0a3  e8e8b7d0ff  CALL 0x007d6890
00acb0a8  8a442413  MOV AL,byte ptr [ESP + 0x13]
00acb0ac  5f  POP EDI
00acb0ad  5e  POP ESI
00acb0ae  5d  POP EBP
00acb0af  5b  POP EBX
00acb0b0  81c488000000  ADD ESP,0x88
00acb0b6  c21800  RET 0x18
Owned instructions=115 owned bytes=329 gap/nonowned bytes=0

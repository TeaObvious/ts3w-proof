# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00c078e0, 00c07ab9]]
signature=undefined __fastcall RoomManager_RebuildRoomLocations(void * param_1)
PLATE
PC1.67 Room origin/query consumer gate: complete474byte/153instruction body C078E0..C07AB9, existing ECX register input retained. Copies enclosing lot+17C to RoomManager+10 before C03FC0 origin-aware queries. AF6B20/AF6610 traverse packed signed-byte locations; each tile queries masks1/2/4/8 with outsideflag0 and combines equal WORD room IDs before location insertion. C07AC0 calls this only after sticky-success body read. Packed endpoint127 successor wraps; a host Int32 rectangle is not an equivalent terminating native traversal for such domains. This note establishes origin/query/storage context, not Pool membership/ACF820 classification or a new original wire-size cap.

00c078e0  55  PUSH EBP
00c078e1  8bec  MOV EBP,ESP
00c078e3  83e4f8  AND ESP,0xfffffff8
00c078e6  83ec48  SUB ESP,0x48
00c078e9  53  PUSH EBX
00c078ea  55  PUSH EBP
00c078eb  56  PUSH ESI
00c078ec  8bf1  MOV ESI,ECX
00c078ee  8b463c  MOV EAX,dword ptr [ESI + 0x3c]
00c078f1  8b4e38  MOV ECX,dword ptr [ESI + 0x38]
00c078f4  8d6e34  LEA EBP,[ESI + 0x34]
00c078f7  57  PUSH EDI
00c078f8  50  PUSH EAX
00c078f9  51  PUSH ECX
00c078fa  8bcd  MOV ECX,EBP
00c078fc  89742428  MOV dword ptr [ESP + 0x28],ESI
00c07900  e8ebcfffff  CALL 0x00c048f0
00c07905  33ff  XOR EDI,EDI
00c07907  897d0c  MOV dword ptr [EBP + 0xc],EDI
00c0790a  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c0790d  8b907c010000  MOV EDX,dword ptr [EAX + 0x17c]
00c07913  33db  XOR EBX,EBX
00c07915  50  PUSH EAX
00c07916  8d4c243c  LEA ECX,[ESP + 0x3c]
00c0791a  895c2448  MOV dword ptr [ESP + 0x48],EBX
00c0791e  897c244c  MOV dword ptr [ESP + 0x4c],EDI
00c07922  897c2450  MOV dword ptr [ESP + 0x50],EDI
00c07926  c7442454dc480701  MOV dword ptr [ESP + 0x54],0x10748dc
00c0792e  895610  MOV dword ptr [ESI + 0x10],EDX
00c07931  e8eaf1eeff  CALL 0x00af6b20
00c07936  8d4c2438  LEA ECX,[ESP + 0x38]
00c0793a  e851ebeeff  CALL 0x00af6490
00c0793f  84c0  TEST AL,AL
00c07941  0f855e010000  JNZ 0x00c07aa5
00c07947  8d4c2438  LEA ECX,[ESP + 0x38]
00c0794b  e890ebeeff  CALL 0x00af64e0
00c07950  8bf8  MOV EDI,EAX
00c07952  895c2448  MOV dword ptr [ESP + 0x48],EBX
00c07956  33f6  XOR ESI,ESI
00c07958  668b07  MOV AX,word ptr [EDI]
00c0795b  8bce  MOV ECX,ESI
00c0795d  b301  MOV BL,0x1
00c0795f  d2e3  SHL BL,CL
00c07961  0fb64f02  MOVZX ECX,byte ptr [EDI + 0x2]
00c07965  6a00  PUSH 0x0
00c07967  8d542418  LEA EDX,[ESP + 0x18]
00c0796b  884c241a  MOV byte ptr [ESP + 0x1a],CL
00c0796f  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00c07973  52  PUSH EDX
00c07974  668944241c  MOV word ptr [ESP + 0x1c],AX
00c07979  885c241f  MOV byte ptr [ESP + 0x1f],BL
00c0797d  e83ec6ffff  CALL 0x00c03fc0
00c07982  0fb7c0  MOVZX EAX,AX
00c07985  8d4c241c  LEA ECX,[ESP + 0x1c]
00c07989  51  PUSH ECX
00c0798a  8d4c2448  LEA ECX,[ESP + 0x48]
00c0798e  89442420  MOV dword ptr [ESP + 0x20],EAX
00c07992  e8b9deffff  CALL 0x00c05850
00c07997  8a00  MOV AL,byte ptr [EAX]
00c07999  8d54241c  LEA EDX,[ESP + 0x1c]
00c0799d  0ac3  OR AL,BL
00c0799f  52  PUSH EDX
00c079a0  8d4c2448  LEA ECX,[ESP + 0x48]
00c079a4  88442417  MOV byte ptr [ESP + 0x17],AL
00c079a8  e8a3deffff  CALL 0x00c05850
00c079ad  0fb64c2413  MOVZX ECX,byte ptr [ESP + 0x13]
00c079b2  83c601  ADD ESI,0x1
00c079b5  83fe04  CMP ESI,0x4
00c079b8  8808  MOV byte ptr [EAX],CL
00c079ba  7c9c  JL 0x00c07958
00c079bc  8b442444  MOV EAX,dword ptr [ESP + 0x44]
00c079c0  3b442448  CMP EAX,dword ptr [ESP + 0x48]
00c079c4  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00c079c8  0f84b7000000  JZ 0x00c07a85
00c079ce  eb04  JMP 0x00c079d4
00c079d0  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c079d4  8a4f02  MOV CL,byte ptr [EDI + 0x2]
00c079d7  668b17  MOV DX,word ptr [EDI]
00c079da  8b7508  MOV ESI,dword ptr [EBP + 0x8]
00c079dd  6689542418  MOV word ptr [ESP + 0x18],DX
00c079e2  8a5002  MOV DL,byte ptr [EAX + 0x2]
00c079e5  884c241a  MOV byte ptr [ESP + 0x1a],CL
00c079e9  0fb708  MOVZX ECX,word ptr [EAX]
00c079ec  8854241b  MOV byte ptr [ESP + 0x1b],DL
00c079f0  0fbfc1  MOVSX EAX,CX
00c079f3  33d2  XOR EDX,EDX
00c079f5  f7f6  DIV ESI
00c079f7  8b5d04  MOV EBX,dword ptr [EBP + 0x4]
00c079fa  8b0493  MOV EAX,dword ptr [EBX + EDX*0x4]
00c079fd  85c0  TEST EAX,EAX
00c079ff  894c2424  MOV dword ptr [ESP + 0x24],ECX
00c07a03  8d1493  LEA EDX,[EBX + EDX*0x4]
00c07a06  740c  JZ 0x00c07a14
00c07a08  663b08  CMP CX,word ptr [EAX]
00c07a0b  7429  JZ 0x00c07a36
00c07a0d  8b4068  MOV EAX,dword ptr [EAX + 0x68]
00c07a10  85c0  TEST EAX,EAX
00c07a12  75f4  JNZ 0x00c07a08
00c07a14  8b0cb3  MOV ECX,dword ptr [EBX + ESI*0x4]
00c07a17  8d04b3  LEA EAX,[EBX + ESI*0x4]
00c07a1a  89442434  MOV dword ptr [ESP + 0x34],EAX
00c07a1e  894c2430  MOV dword ptr [ESP + 0x30],ECX
00c07a22  8d442430  LEA EAX,[ESP + 0x30]
00c07a26  8b00  MOV EAX,dword ptr [EAX]
00c07a28  8bd6  MOV EDX,ESI
00c07a2a  8bcb  MOV ECX,EBX
00c07a2c  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00c07a2f  7413  JZ 0x00c07a44
00c07a31  8d4804  LEA ECX,[EAX + 0x4]
00c07a34  eb30  JMP 0x00c07a66
00c07a36  89442428  MOV dword ptr [ESP + 0x28],EAX
00c07a3a  8954242c  MOV dword ptr [ESP + 0x2c],EDX
00c07a3e  8d442428  LEA EAX,[ESP + 0x28]
00c07a42  ebe2  JMP 0x00c07a26
00c07a44  8d542424  LEA EDX,[ESP + 0x24]
00c07a48  52  PUSH EDX
00c07a49  8bcd  MOV ECX,EBP
00c07a4b  e870fbffff  CALL 0x00c075c0
00c07a50  8bf0  MOV ESI,EAX
00c07a52  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c07a56  8b8818010000  MOV ECX,dword ptr [EAX + 0x118]
00c07a5c  51  PUSH ECX
00c07a5d  8bce  MOV ECX,ESI
00c07a5f  e8dc970200  CALL 0x00c31240
00c07a64  8bce  MOV ECX,ESI
00c07a66  8d542418  LEA EDX,[ESP + 0x18]
00c07a6a  52  PUSH EDX
00c07a6b  e800ad0200  CALL 0x00c32770
00c07a70  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c07a74  83c004  ADD EAX,0x4
00c07a77  3b442448  CMP EAX,dword ptr [ESP + 0x48]
00c07a7b  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00c07a7f  0f854bffffff  JNZ 0x00c079d0
00c07a85  8d4c2438  LEA ECX,[ESP + 0x38]
00c07a89  e882ebeeff  CALL 0x00af6610
00c07a8e  8d4c2438  LEA ECX,[ESP + 0x38]
00c07a92  e8f9e9eeff  CALL 0x00af6490
00c07a97  84c0  TEST AL,AL
00c07a99  8b5c2444  MOV EBX,dword ptr [ESP + 0x44]
00c07a9d  0f84a4feffff  JZ 0x00c07947
00c07aa3  33ff  XOR EDI,EDI
00c07aa5  3bdf  CMP EBX,EDI
00c07aa7  7409  JZ 0x00c07ab2
00c07aa9  53  PUSH EBX
00c07aaa  e831ca8dff  CALL 0x004e44e0
00c07aaf  83c404  ADD ESP,0x4
00c07ab2  5f  POP EDI
00c07ab3  5e  POP ESI
00c07ab4  5d  POP EBP
00c07ab5  5b  POP EBX
00c07ab6  8be5  MOV ESP,EBP
00c07ab8  5d  POP EBP
00c07ab9  c3  RET

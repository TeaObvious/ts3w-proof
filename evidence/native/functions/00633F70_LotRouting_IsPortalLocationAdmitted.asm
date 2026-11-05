# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LotRouting_IsPortalLocationAdmitted
; Owned ranges: [[00633f70, 006340b3]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. ECX routing owner plus lot-ID low/high and point/level pointer, RET0C, AL-only result. Creates scoped Routing/PortalCheckCache callback data and calls6328F0; null query returnsAL0. Increment query+28 reference count, call66B8D0 and admit precisely unsigned statuses0 or1 (CMP2/JC) or13 (CMP0D), otherwiseAL0. Decrement query reference; zero invokes original virtual destruction through query+24 with argument1 after restoring count1. Destroy scoped cache and free heap storage when count>1. Do not reinterpret these statuses as graph-passability without closing the actual query backend. Complete324bytes/98instructions; no native metadata/types/bytes edited.

00633f70  83ec64  SUB ESP,0x64
00633f73  8b542470  MOV EDX,dword ptr [ESP + 0x70]
00633f77  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00633f7f  33c0  XOR EAX,EAX
00633f81  53  PUSH EBX
00633f82  57  PUSH EDI
00633f83  89442414  MOV dword ptr [ESP + 0x14],EAX
00633f87  89442418  MOV dword ptr [ESP + 0x18],EAX
00633f8b  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00633f8f  89442420  MOV dword ptr [ESP + 0x20],EAX
00633f93  8d442408  LEA EAX,[ESP + 0x8]
00633f97  52  PUSH EDX
00633f98  8b542474  MOV EDX,dword ptr [ESP + 0x74]
00633f9c  33db  XOR EBX,EBX
00633f9e  89442458  MOV dword ptr [ESP + 0x58],EAX
00633fa2  8b442478  MOV EAX,dword ptr [ESP + 0x78]
00633fa6  50  PUSH EAX
00633fa7  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00633fad  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
00633fb5  bf01000000  MOV EDI,0x1
00633fba  52  PUSH EDX
00633fbb  c7442414d0cffe00  MOV dword ptr [ESP + 0x14],0xfecfd0
00633fc3  f30f11442448  MOVSS dword ptr [ESP + 0x48],XMM0
00633fc9  c74424504cd1fe00  MOV dword ptr [ESP + 0x50],0xfed14c
00633fd1  897c243c  MOV dword ptr [ESP + 0x3c],EDI
00633fd5  c744243800d91401  MOV dword ptr [ESP + 0x38],0x114d900
00633fdd  895c2440  MOV dword ptr [ESP + 0x40],EBX
00633fe1  895c244c  MOV dword ptr [ESP + 0x4c],EBX
00633fe5  895c2458  MOV dword ptr [ESP + 0x58],EBX
00633fe9  894c245c  MOV dword ptr [ESP + 0x5c],ECX
00633fed  895c2464  MOV dword ptr [ESP + 0x64],EBX
00633ff1  c744246800000100  MOV dword ptr [ESP + 0x68],0x10000
00633ff9  895c246c  MOV dword ptr [ESP + 0x6c],EBX
00633ffd  895c2470  MOV dword ptr [ESP + 0x70],EBX
00634001  e8eae8ffff  CALL 0x006328f0
00634006  3bc3  CMP EAX,EBX
00634008  7476  JZ 0x00634080
0063400a  017828  ADD dword ptr [EAX + 0x28],EDI
0063400d  56  PUSH ESI
0063400e  8d4c2410  LEA ECX,[ESP + 0x10]
00634012  8d7024  LEA ESI,[EAX + 0x24]
00634015  51  PUSH ECX
00634016  8bc8  MOV ECX,EAX
00634018  e8b3780300  CALL 0x0066b8d0
0063401d  83f802  CMP EAX,0x2
00634020  7209  JC 0x0063402b
00634022  83f80d  CMP EAX,0xd
00634025  885c247c  MOV byte ptr [ESP + 0x7c],BL
00634029  7505  JNZ 0x00634030
0063402b  c644247c01  MOV byte ptr [ESP + 0x7c],0x1
00634030  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00634033  83c0ff  ADD EAX,-0x1
00634036  3bc3  CMP EAX,EBX
00634038  894604  MOV dword ptr [ESI + 0x4],EAX
0063403b  750c  JNZ 0x00634049
0063403d  897e04  MOV dword ptr [ESI + 0x4],EDI
00634040  8b16  MOV EDX,dword ptr [ESI]
00634042  8b02  MOV EAX,dword ptr [EDX]
00634044  57  PUSH EDI
00634045  8bce  MOV ECX,ESI
00634047  ffd0  CALL EAX
00634049  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
0063404d  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00634051  51  PUSH ECX
00634052  52  PUSH EDX
00634053  8d4c2418  LEA ECX,[ESP + 0x18]
00634057  e894273a00  CALL 0x009d67f0
0063405c  397c2434  CMP dword ptr [ESP + 0x34],EDI
00634060  895c2438  MOV dword ptr [ESP + 0x38],EBX
00634064  5e  POP ESI
00634065  760d  JBE 0x00634074
00634067  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
0063406b  50  PUSH EAX
0063406c  e86f04ebff  CALL 0x004e44e0
00634071  83c404  ADD ESP,0x4
00634074  8a442478  MOV AL,byte ptr [ESP + 0x78]
00634078  5f  POP EDI
00634079  5b  POP EBX
0063407a  83c464  ADD ESP,0x64
0063407d  c20c00  RET 0xc
00634080  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00634084  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00634088  51  PUSH ECX
00634089  52  PUSH EDX
0063408a  8d4c2414  LEA ECX,[ESP + 0x14]
0063408e  e85d273a00  CALL 0x009d67f0
00634093  397c2430  CMP dword ptr [ESP + 0x30],EDI
00634097  895c2434  MOV dword ptr [ESP + 0x34],EBX
0063409b  760d  JBE 0x006340aa
0063409d  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
006340a1  50  PUSH EAX
006340a2  e83904ebff  CALL 0x004e44e0
006340a7  83c404  ADD ESP,0x4
006340aa  5f  POP EDI
006340ab  32c0  XOR AL,AL
006340ad  5b  POP EBX
006340ae  83c464  ADD ESP,0x64
006340b1  c20c00  RET 0xc

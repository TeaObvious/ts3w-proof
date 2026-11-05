# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00aa3770, 00aa3880]]
signature=undefined __thiscall RoomGrid_ImportFourHalfwords(void * this, int * param_1)
PLATE
PC1.67 Room wire/storage gate: complete273byte/100instruction body AA3770..AA3880, ECX grid and vector-address stackDWORD/RET4. Imports logical8byte cells in layer->X->Z order into internal4x4 storage, preserving four UInt16 bit patterns per cell. C07AC0 supplies the same logical output after old DWORD-lowWORD conversion or modern UInt16 reading; internal compression is not a wire-stride choice. Existing body/ABI metadata retained; no serialized-version or trailing-byte admission invented here.

00aa3770  83ec18  SUB ESP,0x18
00aa3773  53  PUSH EBX
00aa3774  56  PUSH ESI
00aa3775  8bf1  MOV ESI,ECX
00aa3777  8b5e24  MOV EBX,dword ptr [ESI + 0x24]
00aa377a  0faf5e20  IMUL EBX,dword ptr [ESI + 0x20]
00aa377e  0faf5e0c  IMUL EBX,dword ptr [ESI + 0xc]
00aa3782  8b464c  MOV EAX,dword ptr [ESI + 0x4c]
00aa3785  2b4648  SUB EAX,dword ptr [ESI + 0x48]
00aa3788  8d4e48  LEA ECX,[ESI + 0x48]
00aa378b  57  PUSH EDI
00aa378c  d1f8  SAR EAX,0x1
00aa378e  33ff  XOR EDI,EDI
00aa3790  3bc3  CMP EAX,EBX
00aa3792  740f  JZ 0x00aa37a3
00aa3794  53  PUSH EBX
00aa3795  e846bebdff  CALL 0x0067f5e0
00aa379a  53  PUSH EBX
00aa379b  8d4e38  LEA ECX,[ESI + 0x38]
00aa379e  e86d670500  CALL 0x00af9f10
00aa37a3  8b4e28  MOV ECX,dword ptr [ESI + 0x28]
00aa37a6  8d5e28  LEA EBX,[ESI + 0x28]
00aa37a9  8bd1  MOV EDX,ECX
00aa37ab  2bd1  SUB EDX,ECX
00aa37ad  c1fa03  SAR EDX,0x3
00aa37b0  894b04  MOV dword ptr [EBX + 0x4],ECX
00aa37b3  7408  JZ 0x00aa37bd
00aa37b5  57  PUSH EDI
00aa37b6  8bcb  MOV ECX,EBX
00aa37b8  e853670500  CALL 0x00af9f10
00aa37bd  53  PUSH EBX
00aa37be  8d4c2418  LEA ECX,[ESP + 0x18]
00aa37c2  e889e3ffff  CALL 0x00aa1b50
00aa37c7  8b03  MOV EAX,dword ptr [EBX]
00aa37c9  3bc7  CMP EAX,EDI
00aa37cb  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00aa37cf  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00aa37d3  890b  MOV dword ptr [EBX],ECX
00aa37d5  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00aa37d9  895304  MOV dword ptr [EBX + 0x4],EDX
00aa37dc  894b08  MOV dword ptr [EBX + 0x8],ECX
00aa37df  7409  JZ 0x00aa37ea
00aa37e1  50  PUSH EAX
00aa37e2  e8f90ca4ff  CALL 0x004e44e0
00aa37e7  83c404  ADD ESP,0x4
00aa37ea  397e0c  CMP dword ptr [ESI + 0xc],EDI
00aa37ed  897c2410  MOV dword ptr [ESP + 0x10],EDI
00aa37f1  897c240c  MOV dword ptr [ESP + 0xc],EDI
00aa37f5  0f8e7d000000  JLE 0x00aa3878
00aa37fb  55  PUSH EBP
00aa37fc  8d642400  LEA ESP,[ESP]
00aa3800  33ed  XOR EBP,EBP
00aa3802  396e04  CMP dword ptr [ESI + 0x4],EBP
00aa3805  7e60  JLE 0x00aa3867
00aa3807  33db  XOR EBX,EBX
00aa3809  395e08  CMP dword ptr [ESI + 0x8],EBX
00aa380c  7e51  JLE 0x00aa385f
00aa380e  8bff  MOV EDI,EDI
00aa3810  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00aa3814  8b02  MOV EAX,dword ptr [EDX]
00aa3816  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00aa381a  8bd3  MOV EDX,EBX
00aa381c  0bd5  OR EDX,EBP
00aa381e  f6c203  TEST DL,0x3
00aa3821  8d04c8  LEA EAX,[EAX + ECX*0x8]
00aa3824  751d  JNZ 0x00aa3843
00aa3826  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00aa3829  66c704790080  MOV word ptr [ECX + EDI*0x2],0x8000
00aa382f  8b10  MOV EDX,dword ptr [EAX]
00aa3831  8b4e38  MOV ECX,dword ptr [ESI + 0x38]
00aa3834  8914f9  MOV dword ptr [ECX + EDI*0x8],EDX
00aa3837  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00aa383a  8944f904  MOV dword ptr [ECX + EDI*0x8 + 0x4],EAX
00aa383e  83c701  ADD EDI,0x1
00aa3841  eb0f  JMP 0x00aa3852
00aa3843  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00aa3847  51  PUSH ECX
00aa3848  53  PUSH EBX
00aa3849  55  PUSH EBP
00aa384a  50  PUSH EAX
00aa384b  8bce  MOV ECX,ESI
00aa384d  e8defaffff  CALL 0x00aa3330
00aa3852  8344241001  ADD dword ptr [ESP + 0x10],0x1
00aa3857  83c301  ADD EBX,0x1
00aa385a  3b5e08  CMP EBX,dword ptr [ESI + 0x8]
00aa385d  7cb1  JL 0x00aa3810
00aa385f  83c501  ADD EBP,0x1
00aa3862  3b6e04  CMP EBP,dword ptr [ESI + 0x4]
00aa3865  7ca0  JL 0x00aa3807
00aa3867  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00aa386b  83c001  ADD EAX,0x1
00aa386e  3b460c  CMP EAX,dword ptr [ESI + 0xc]
00aa3871  89442414  MOV dword ptr [ESP + 0x14],EAX
00aa3875  7c89  JL 0x00aa3800
00aa3877  5d  POP EBP
00aa3878  5f  POP EDI
00aa3879  5e  POP ESI
00aa387a  5b  POP EBX
00aa387b  83c418  ADD ESP,0x18
00aa387e  c20400  RET 0x4

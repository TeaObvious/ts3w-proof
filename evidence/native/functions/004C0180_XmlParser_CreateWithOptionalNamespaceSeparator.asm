# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlParser_CreateWithOptionalNamespaceSeparator
Owned ranges: [[004c0180, 004c0393]]
Signature: void * __cdecl XmlParser_CreateWithOptionalNamespaceSeparator(void * allocatorSuite, ushort * encoding, ushort * namespaceSeparator, void * sharedContext)
Physical ABI: CUSTOM: EAX optional allocator-suite pointer; stack+4 encoding,+8 optional UTF16 namespace-separator pointer,+C optional shared context; EAX parser/null; plain RET, caller clears C bytes. Current cdecl metadata omits EAX input.

004c0180  53  PUSH EBX
004c0181  55  PUSH EBP
004c0182  56  PUSH ESI
004c0183  57  PUSH EDI
004c0184  8bf8  MOV EDI,EAX ; Incoming EAX is optional allocator suite, copied before any allocation; null selects imported default allocation callbacks.
004c0186  33db  XOR EBX,EBX
004c0188  3bfb  CMP EDI,EBX
004c018a  68f0010000  PUSH 0x1f0
004c018f  7426  JZ 0x004c01b7
004c0191  8b07  MOV EAX,dword ptr [EDI]
004c0193  ffd0  CALL EAX
004c0195  8be8  MOV EBP,EAX
004c0197  83c404  ADD ESP,0x4
004c019a  3beb  CMP EBP,EBX
004c019c  0f84eb010000  JZ 0x004c038d
004c01a2  8b0f  MOV ECX,dword ptr [EDI]
004c01a4  8d750c  LEA ESI,[EBP + 0xc]
004c01a7  890e  MOV dword ptr [ESI],ECX
004c01a9  8b5704  MOV EDX,dword ptr [EDI + 0x4]
004c01ac  895604  MOV dword ptr [ESI + 0x4],EDX
004c01af  8b4708  MOV EAX,dword ptr [EDI + 0x8]
004c01b2  894608  MOV dword ptr [ESI + 0x8],EAX
004c01b5  eb2c  JMP 0x004c01e3
004c01b7  8b3de466f900  MOV EDI,dword ptr [0x00f966e4]
004c01bd  ffd7  CALL EDI
004c01bf  8be8  MOV EBP,EAX
004c01c1  83c404  ADD ESP,0x4
004c01c4  3beb  CMP EBP,EBX
004c01c6  0f84c1010000  JZ 0x004c038d
004c01cc  8b0dfc65f900  MOV ECX,dword ptr [0x00f965fc]
004c01d2  8b15e866f900  MOV EDX,dword ptr [0x00f966e8]
004c01d8  8d750c  LEA ESI,[EBP + 0xc]
004c01db  893e  MOV dword ptr [ESI],EDI
004c01dd  894e04  MOV dword ptr [ESI + 0x4],ECX
004c01e0  895608  MOV dword ptr [ESI + 0x8],EDX
004c01e3  8b06  MOV EAX,dword ptr [ESI]
004c01e5  6800010000  PUSH 0x100
004c01ea  895d08  MOV dword ptr [EBP + 0x8],EBX
004c01ed  895d20  MOV dword ptr [EBP + 0x20],EBX
004c01f0  c7857c01000010000000  MOV dword ptr [EBP + 0x17c],0x10
004c01fa  ffd0  CALL EAX
004c01fc  83c404  ADD ESP,0x4
004c01ff  3bc3  CMP EAX,EBX
004c0201  898588010000  MOV dword ptr [EBP + 0x188],EAX
004c0207  7510  JNZ 0x004c0219
004c0209  8b4d14  MOV ECX,dword ptr [EBP + 0x14]
004c020c  55  PUSH EBP
004c020d  ffd1  CALL ECX
004c020f  83c404  ADD ESP,0x4
004c0212  5f  POP EDI
004c0213  5e  POP ESI
004c0214  5d  POP EBP
004c0215  33c0  XOR EAX,EAX
004c0217  5b  POP EBX
004c0218  c3  RET
004c0219  8b16  MOV EDX,dword ptr [ESI]
004c021b  6800080000  PUSH 0x800
004c0220  ffd2  CALL EDX
004c0222  83c404  ADD ESP,0x4
004c0225  3bc3  CMP EAX,EBX
004c0227  89452c  MOV dword ptr [EBP + 0x2c],EAX
004c022a  751c  JNZ 0x004c0248
004c022c  8b8588010000  MOV EAX,dword ptr [EBP + 0x188]
004c0232  8b4d14  MOV ECX,dword ptr [EBP + 0x14]
004c0235  50  PUSH EAX
004c0236  ffd1  CALL ECX
004c0238  8b5514  MOV EDX,dword ptr [EBP + 0x14]
004c023b  55  PUSH EBP
004c023c  ffd2  CALL EDX
004c023e  83c408  ADD ESP,0x8
004c0241  5f  POP EDI
004c0242  5e  POP ESI
004c0243  5d  POP EBP
004c0244  33c0  XOR EAX,EAX
004c0246  5b  POP EBX
004c0247  c3  RET
004c0248  0500080000  ADD EAX,0x800
004c024d  894530  MOV dword ptr [EBP + 0x30],EAX
004c0250  8b44241c  MOV EAX,dword ptr [ESP + 0x1c] ; Third physical stack word selects shared context, with local default construction only when null.
004c0254  3bc3  CMP EAX,EBX
004c0256  0f84c3000000  JZ 0x004c031f
004c025c  898564010000  MOV dword ptr [EBP + 0x164],EAX
004c0262  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
004c0266  899d78010000  MOV dword ptr [EBP + 0x178],EBX
004c026c  899d70010000  MOV dword ptr [EBP + 0x170],EBX
004c0272  899d30010000  MOV dword ptr [EBP + 0x130],EBX
004c0278  899dd4010000  MOV dword ptr [EBP + 0x1d4],EBX
004c027e  899dd0010000  MOV dword ptr [EBP + 0x1d0],EBX
004c0284  895d7c  MOV dword ptr [EBP + 0x7c],EBX
004c0287  899df8000000  MOV dword ptr [EBP + 0xf8],EBX
004c028d  66c785d80100002100  MOV word ptr [EBP + 0x1d8],0x21
004c0296  889dec000000  MOV byte ptr [EBP + 0xec],BL ; Namespace mode initializes0 independently of encoding and allocation.
004c029c  889ded000000  MOV byte ptr [EBP + 0xed],BL
004c02a2  899d8c010000  MOV dword ptr [EBP + 0x18c],EBX
004c02a8  899d90010000  MOV dword ptr [EBP + 0x190],EBX
004c02ae  889d94010000  MOV byte ptr [EBP + 0x194],BL
004c02b4  89b5b4010000  MOV dword ptr [EBP + 0x1b4],ESI
004c02ba  899da0010000  MOV dword ptr [EBP + 0x1a0],EBX
004c02c0  899da4010000  MOV dword ptr [EBP + 0x1a4],EBX
004c02c6  899db0010000  MOV dword ptr [EBP + 0x1b0],EBX
004c02cc  899dac010000  MOV dword ptr [EBP + 0x1ac],EBX
004c02d2  899da8010000  MOV dword ptr [EBP + 0x1a8],EBX
004c02d8  89b5cc010000  MOV dword ptr [EBP + 0x1cc],ESI
004c02de  8bf5  MOV ESI,EBP
004c02e0  899db8010000  MOV dword ptr [EBP + 0x1b8],EBX
004c02e6  899dbc010000  MOV dword ptr [EBP + 0x1bc],EBX
004c02ec  899dc8010000  MOV dword ptr [EBP + 0x1c8],EBX
004c02f2  899dc4010000  MOV dword ptr [EBP + 0x1c4],EBX
004c02f8  899dc0010000  MOV dword ptr [EBP + 0x1c0],EBX
004c02fe  e8fdfcffff  CALL 0x004c0000
004c0303  3bfb  CMP EDI,EBX
004c0305  7450  JZ 0x004c0357
004c0307  399de8000000  CMP dword ptr [EBP + 0xe8],EBX
004c030d  7548  JNZ 0x004c0357
004c030f  55  PUSH EBP
004c0310  e87bb5ffff  CALL 0x004bb890
004c0315  83c404  ADD ESP,0x4
004c0318  5f  POP EDI
004c0319  5e  POP ESI
004c031a  5d  POP EBP
004c031b  33c0  XOR EAX,EAX
004c031d  5b  POP EBX
004c031e  c3  RET
004c031f  e8ccb0ffff  CALL 0x004bb3f0
004c0324  3bc3  CMP EAX,EBX
004c0326  898564010000  MOV dword ptr [EBP + 0x164],EAX
004c032c  0f8530ffffff  JNZ 0x004c0262
004c0332  8b452c  MOV EAX,dword ptr [EBP + 0x2c]
004c0335  8b4d14  MOV ECX,dword ptr [EBP + 0x14]
004c0338  50  PUSH EAX
004c0339  ffd1  CALL ECX
004c033b  8b9588010000  MOV EDX,dword ptr [EBP + 0x188]
004c0341  8b4514  MOV EAX,dword ptr [EBP + 0x14]
004c0344  52  PUSH EDX
004c0345  ffd0  CALL EAX
004c0347  8b4d14  MOV ECX,dword ptr [EBP + 0x14]
004c034a  55  PUSH EBP
004c034b  ffd1  CALL ECX
004c034d  83c40c  ADD ESP,0xc
004c0350  5f  POP EDI
004c0351  5e  POP ESI
004c0352  5d  POP EBP
004c0353  33c0  XOR EAX,EAX
004c0355  5b  POP EBX
004c0356  c3  RET
004c0357  8b742418  MOV ESI,dword ptr [ESP + 0x18] ; Second physical stack word is optional namespace separator; null uses non-namespace setup.
004c035b  3bf3  CMP ESI,EBX
004c035d  7423  JZ 0x004c0382
004c035f  c685ec00000001  MOV byte ptr [EBP + 0xec],0x1 ; Only nonnull-separator branch enables namespace mode+EC and adopts the supplied UTF16 separator.
004c0366  e895c30000  CALL 0x004cc700
004c036b  8985e4000000  MOV dword ptr [EBP + 0xe4],EAX
004c0371  668b16  MOV DX,word ptr [ESI]
004c0374  5f  POP EDI
004c0375  5e  POP ESI
004c0376  668995d8010000  MOV word ptr [EBP + 0x1d8],DX
004c037d  8bc5  MOV EAX,EBP
004c037f  5d  POP EBP
004c0380  5b  POP EBX
004c0381  c3  RET
004c0382  e8e9c10000  CALL 0x004cc570
004c0387  8985e4000000  MOV dword ptr [EBP + 0xe4],EAX
004c038d  5f  POP EDI
004c038e  5e  POP ESI
004c038f  8bc5  MOV EAX,EBP
004c0391  5d  POP EBP
004c0392  5b  POP EBX
004c0393  c3  RET

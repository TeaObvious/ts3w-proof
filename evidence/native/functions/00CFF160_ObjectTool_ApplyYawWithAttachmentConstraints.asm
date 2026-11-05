# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00cff160 ObjectTool_ApplyYawWithAttachmentConstraints
# Body [[00cff160, 00cff609]]; owned bytes=1194
# ECX tool, float yaw and low-byte control in two stack words, RET8/AL result. Ordinary no-slot grid delegatesAFBDC0; free branch may constrain catalog+98bit25 to16 directions via DIVSS/FISTP/currentCW and3EC90FDB. Raw product slot flags do not select four directions for ordinary floor objects: quarter-turn path requires actual parent slot, flag intersection and relative parent angle. Full placement/callback/attachment branches retained; CLR parity not inferred.
00cff160  83ec30  SUB ESP,0x30
00cff163  55  PUSH EBP
00cff164  56  PUSH ESI
00cff165  8bf1  MOV ESI,ECX
00cff167  80bef702000000  CMP byte ptr [ESI + 0x2f7],0x0
00cff16e  57  PUSH EDI
00cff16f  c686de01000000  MOV byte ptr [ESI + 0x1de],0x0
00cff176  7405  JZ 0x00cff17d
00cff178  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cff17b  eb03  JMP 0x00cff180
00cff17d  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00cff180  33ed  XOR EBP,EBP
00cff182  3bc5  CMP EAX,EBP
00cff184  0f8475040000  JZ 0x00cff5ff
00cff18a  8b7858  MOV EDI,dword ptr [EAX + 0x58]
00cff18d  3bfd  CMP EDI,EBP
00cff18f  0f846a040000  JZ 0x00cff5ff
00cff195  a108df1e01  MOV EAX,[0x011edf08]
00cff19a  50  PUSH EAX
00cff19b  8bcf  MOV ECX,EDI
00cff19d  e8be50c3ff  CALL 0x00934260
00cff1a2  3bc5  CMP EAX,EBP
00cff1a4  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00cff1a8  0f8451040000  JZ 0x00cff5ff
00cff1ae  80bef702000000  CMP byte ptr [ESI + 0x2f7],0x0
00cff1b5  7405  JZ 0x00cff1bc
00cff1b7  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cff1ba  eb03  JMP 0x00cff1bf
00cff1bc  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00cff1bf  3bc5  CMP EAX,EBP
00cff1c1  740c  JZ 0x00cff1cf
00cff1c3  8b88e0000000  MOV ECX,dword ptr [EAX + 0xe0]
00cff1c9  894c2414  MOV dword ptr [ESP + 0x14],ECX
00cff1cd  eb04  JMP 0x00cff1d3
00cff1cf  896c2414  MOV dword ptr [ESP + 0x14],EBP
00cff1d3  396c2414  CMP dword ptr [ESP + 0x14],EBP
00cff1d7  7412  JZ 0x00cff1eb
00cff1d9  39a8e0000000  CMP dword ptr [EAX + 0xe0],EBP
00cff1df  740a  JZ 0x00cff1eb
00cff1e1  f30f1080e4000000  MOVSS XMM0,dword ptr [EAX + 0xe4]
00cff1e9  eb03  JMP 0x00cff1ee
00cff1eb  0f57c0  XORPS XMM0,XMM0
00cff1ee  53  PUSH EBX
00cff1ef  55  PUSH EBP
00cff1f0  57  PUSH EDI
00cff1f1  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00cff1f7  e8840ae0ff  CALL 0x00affc80
00cff1fc  f30f1044244c  MOVSS XMM0,dword ptr [ESP + 0x4c]
00cff202  8d54241c  LEA EDX,[ESP + 0x1c]
00cff206  52  PUSH EDX
00cff207  57  PUSH EDI
00cff208  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00cff20e  896c2424  MOV dword ptr [ESP + 0x24],EBP
00cff212  e8192de0ff  CALL 0x00b01f30
00cff217  83c410  ADD ESP,0x10
00cff21a  396c2414  CMP dword ptr [ESP + 0x14],EBP
00cff21e  8bd8  MOV EBX,EAX
00cff220  895c2424  MOV dword ptr [ESP + 0x24],EBX
00cff224  0f85a6000000  JNZ 0x00cff2d0
00cff22a  807c244800  CMP byte ptr [ESP + 0x48],0x0
00cff22f  741c  JZ 0x00cff24d
00cff231  80be8900000000  CMP byte ptr [ESI + 0x89],0x0
00cff238  0f8592000000  JNZ 0x00cff2d0
00cff23e  8bce  MOV ECX,ESI
00cff240  e83bb4ffff  CALL 0x00cfa680
00cff245  84c0  TEST AL,AL
00cff247  0f8583000000  JNZ 0x00cff2d0
00cff24d  8b86b8010000  MOV EAX,dword ptr [ESI + 0x1b8]
00cff253  3bc5  CMP EAX,EBP
00cff255  0f8488010000  JZ 0x00cff3e3
00cff25b  8b8098000000  MOV EAX,dword ptr [EAX + 0x98]
00cff261  c1e819  SHR EAX,0x19
00cff264  a801  TEST AL,0x1
00cff266  0f8477010000  JZ 0x00cff3e3
00cff26c  f605f4e81e0101  TEST byte ptr [0x011ee8f4],0x1
00cff273  7517  JNZ 0x00cff28c
00cff275  f30f1005786aff00  MOVSS XMM0,dword ptr [0x00ff6a78]
00cff27d  830df4e81e0101  OR dword ptr [0x011ee8f4],0x1
00cff284  f30f1105f0e81e01  MOVSS dword ptr [0x011ee8f0],XMM0
00cff28c  f30f10442444  MOVSS XMM0,dword ptr [ESP + 0x44]
00cff292  f30f5e05f0e81e01  DIVSS XMM0,dword ptr [0x011ee8f0]
00cff29a  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
00cff2a0  d9442444  FLD float ptr [ESP + 0x44]
00cff2a4  db5c2448  FISTP dword ptr [ESP + 0x48]
00cff2a8  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00cff2ac  81e10f000080  AND ECX,0x8000000f
00cff2b2  7905  JNS 0x00cff2b9
00cff2b4  49  DEC ECX
00cff2b5  83c9f0  OR ECX,0xfffffff0
00cff2b8  41  INC ECX
00cff2b9  f30f2ac1  CVTSI2SS XMM0,ECX
00cff2bd  f30f5905f0e81e01  MULSS XMM0,dword ptr [0x011ee8f0]
00cff2c5  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00cff2cb  e913010000  JMP 0x00cff3e3
00cff2d0  3bdd  CMP EBX,EBP
00cff2d2  0f84a8000000  JZ 0x00cff380
00cff2d8  396c2414  CMP dword ptr [ESP + 0x14],EBP
00cff2dc  0f849e000000  JZ 0x00cff380
00cff2e2  57  PUSH EDI
00cff2e3  e8c80ae0ff  CALL 0x00affdb0
00cff2e8  83c404  ADD ESP,0x4
00cff2eb  3bc5  CMP EAX,EBP
00cff2ed  7409  JZ 0x00cff2f8
00cff2ef  8bc8  MOV ECX,EAX
00cff2f1  e88a84f9ff  CALL 0x00c97780
00cff2f6  eb02  JMP 0x00cff2fa
00cff2f8  33c0  XOR EAX,EAX
00cff2fa  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00cff2fe  8b4a18  MOV ECX,dword ptr [EDX + 0x18]
00cff301  50  PUSH EAX
00cff302  51  PUSH ECX
00cff303  e8a8cddfff  CALL 0x00afc0b0
00cff308  8be8  MOV EBP,EAX
00cff30a  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00cff30e  50  PUSH EAX
00cff30f  53  PUSH EBX
00cff310  e83bf4e3ff  CALL 0x00b3e750
00cff315  d95c2458  FSTP float ptr [ESP + 0x58]
00cff319  83c410  ADD ESP,0x10
00cff31c  f7c500000020  TEST EBP,0x20000000
00cff322  7429  JZ 0x00cff34d
00cff324  80be8900000000  CMP byte ptr [ESI + 0x89],0x0
00cff32b  f30f10442444  MOVSS XMM0,dword ptr [ESP + 0x44]
00cff331  7445  JZ 0x00cff378
00cff333  f30f5c442448  SUBSS XMM0,dword ptr [ESP + 0x48]
00cff339  51  PUSH ECX
00cff33a  f30f110424  MOVSS dword ptr [ESP],XMM0
00cff33f  e87ccadfff  CALL 0x00afbdc0
00cff344  d844244c  FADD float ptr [ESP + 0x4c]
00cff348  e98f000000  JMP 0x00cff3dc
00cff34d  f7c500000010  TEST EBP,0x10000000
00cff353  741d  JZ 0x00cff372
00cff355  f30f10442444  MOVSS XMM0,dword ptr [ESP + 0x44]
00cff35b  f30f5c442448  SUBSS XMM0,dword ptr [ESP + 0x48]
00cff361  51  PUSH ECX
00cff362  f30f110424  MOVSS dword ptr [ESP],XMM0
00cff367  e834cbdfff  CALL 0x00afbea0
00cff36c  d844244c  FADD float ptr [ESP + 0x4c]
00cff370  eb6a  JMP 0x00cff3dc
00cff372  f30f10442448  MOVSS XMM0,dword ptr [ESP + 0x48]
00cff378  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00cff37e  eb63  JMP 0x00cff3e3
00cff380  8a8ef7020000  MOV CL,byte ptr [ESI + 0x2f7]
00cff386  84c9  TEST CL,CL
00cff388  7405  JZ 0x00cff38f
00cff38a  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cff38d  eb03  JMP 0x00cff392
00cff38f  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00cff392  3bc5  CMP EAX,EBP
00cff394  7439  JZ 0x00cff3cf
00cff396  84c9  TEST CL,CL
00cff398  7405  JZ 0x00cff39f
00cff39a  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cff39d  eb03  JMP 0x00cff3a2
00cff39f  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00cff3a2  39a8e0000000  CMP dword ptr [EAX + 0xe0],EBP
00cff3a8  7425  JZ 0x00cff3cf
00cff3aa  8bce  MOV ECX,ESI
00cff3ac  e84fbdffff  CALL 0x00cfb100
00cff3b1  8bc8  MOV ECX,EAX
00cff3b3  e868afffff  CALL 0x00cfa320
00cff3b8  d9542448  FST float ptr [ESP + 0x48]
00cff3bc  d86c2444  FSUBR float ptr [ESP + 0x44]
00cff3c0  51  PUSH ECX
00cff3c1  d91c24  FSTP float ptr [ESP]
00cff3c4  e8f7c9dfff  CALL 0x00afbdc0
00cff3c9  d844244c  FADD float ptr [ESP + 0x4c]
00cff3cd  eb0d  JMP 0x00cff3dc
00cff3cf  d9442444  FLD float ptr [ESP + 0x44]
00cff3d3  51  PUSH ECX
00cff3d4  d91c24  FSTP float ptr [ESP]
00cff3d7  e8e4c9dfff  CALL 0x00afbdc0
00cff3dc  d95c2414  FSTP float ptr [ESP + 0x14]
00cff3e0  83c404  ADD ESP,0x4
00cff3e3  85db  TEST EBX,EBX
00cff3e5  0f849a000000  JZ 0x00cff485
00cff3eb  837c241400  CMP dword ptr [ESP + 0x14],0x0
00cff3f0  0f848f000000  JZ 0x00cff485
00cff3f6  80bef702000000  CMP byte ptr [ESI + 0x2f7],0x0
00cff3fd  7405  JZ 0x00cff404
00cff3ff  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00cff402  eb03  JMP 0x00cff407
00cff404  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00cff407  d9442410  FLD float ptr [ESP + 0x10]
00cff40b  51  PUSH ECX
00cff40c  d91c24  FSTP float ptr [ESP]
00cff40f  e8dc6f0200  CALL 0x00d263f0
00cff414  0fb615b8e71e01  MOVZX EDX,byte ptr [0x011ee7b8]
00cff41b  d9442410  FLD float ptr [ESP + 0x10]
00cff41f  8d8e70020000  LEA ECX,[ESI + 0x270]
00cff425  51  PUSH ECX
00cff426  6a00  PUSH 0x0
00cff428  52  PUSH EDX
00cff429  6a00  PUSH 0x0
00cff42b  51  PUSH ECX
00cff42c  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00cff430  8ad8  MOV BL,AL
00cff432  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00cff436  d91c24  FSTP float ptr [ESP]
00cff439  50  PUSH EAX
00cff43a  51  PUSH ECX
00cff43b  57  PUSH EDI
00cff43c  e81fe9fcff  CALL 0x00ccdd60
00cff441  83c41c  ADD ESP,0x1c
00cff444  d9442414  FLD float ptr [ESP + 0x14]
00cff448  8844244c  MOV byte ptr [ESP + 0x4c],AL
00cff44c  d91c24  FSTP float ptr [ESP]
00cff44f  57  PUSH EDI
00cff450  e89b2be0ff  CALL 0x00b01ff0
00cff455  8b6c2450  MOV EBP,dword ptr [ESP + 0x50]
00cff459  83c408  ADD ESP,0x8
00cff45c  6a01  PUSH 0x1
00cff45e  55  PUSH EBP
00cff45f  57  PUSH EDI
00cff460  8bce  MOV ECX,ESI
00cff462  e819bbffff  CALL 0x00cfaf80
00cff467  6a01  PUSH 0x1
00cff469  55  PUSH EBP
00cff46a  8bce  MOV ECX,ESI
00cff46c  e8afbcffff  CALL 0x00cfb120
00cff471  50  PUSH EAX
00cff472  8bce  MOV ECX,ESI
00cff474  e807bbffff  CALL 0x00cfaf80
00cff479  8ac3  MOV AL,BL
00cff47b  5b  POP EBX
00cff47c  5f  POP EDI
00cff47d  5e  POP ESI
00cff47e  5d  POP EBP
00cff47f  83c430  ADD ESP,0x30
00cff482  c20800  RET 0x8
00cff485  8bcf  MOV ECX,EDI
00cff487  e8a4fc98ff  CALL 0x0068f130
00cff48c  85c0  TEST EAX,EAX
00cff48e  7412  JZ 0x00cff4a2
00cff490  8b10  MOV EDX,dword ptr [EAX]
00cff492  8bc8  MOV ECX,EAX
00cff494  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00cff497  680e6b5690  PUSH 0x90566b0e
00cff49c  ffd0  CALL EAX
00cff49e  8be8  MOV EBP,EAX
00cff4a0  eb02  JMP 0x00cff4a4
00cff4a2  33ed  XOR EBP,EBP
00cff4a4  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00cff4ac  8d4c2430  LEA ECX,[ESP + 0x30]
00cff4b0  51  PUSH ECX
00cff4b1  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00cff4b5  8d542430  LEA EDX,[ESP + 0x30]
00cff4b9  52  PUSH EDX
00cff4ba  8d442430  LEA EAX,[ESP + 0x30]
00cff4be  33db  XOR EBX,EBX
00cff4c0  50  PUSH EAX
00cff4c1  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
00cff4c7  f30f11442438  MOVSS dword ptr [ESP + 0x38],XMM0
00cff4cd  895c243c  MOV dword ptr [ESP + 0x3c],EBX
00cff4d1  e80aa0f8ff  CALL 0x00c894e0
00cff4d6  d9442410  FLD float ptr [ESP + 0x10]
00cff4da  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00cff4e2  8d4c2434  LEA ECX,[ESP + 0x34]
00cff4e6  51  PUSH ECX
00cff4e7  51  PUSH ECX
00cff4e8  8d542430  LEA EDX,[ESP + 0x30]
00cff4ec  d91c24  FSTP float ptr [ESP]
00cff4ef  52  PUSH EDX
00cff4f0  8bce  MOV ECX,ESI
00cff4f2  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00cff4f8  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
00cff4fe  895c2448  MOV dword ptr [ESP + 0x48],EBX
00cff502  e859d7ffff  CALL 0x00cfcc60
00cff507  d9ee  FLDZ
00cff509  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00cff50d  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00cff511  8b54243c  MOV EDX,dword ptr [ESP + 0x3c]
00cff515  6a01  PUSH 0x1
00cff517  53  PUSH EBX
00cff518  53  PUSH EBX
00cff519  83ec08  SUB ESP,0x8
00cff51c  d95c2404  FSTP float ptr [ESP + 0x4]
00cff520  8944243c  MOV dword ptr [ESP + 0x3c],EAX
00cff524  d9442424  FLD float ptr [ESP + 0x24]
00cff528  8d44243c  LEA EAX,[ESP + 0x3c]
00cff52c  d91c24  FSTP float ptr [ESP]
00cff52f  50  PUSH EAX
00cff530  55  PUSH EBP
00cff531  57  PUSH EDI
00cff532  894c244c  MOV dword ptr [ESP + 0x4c],ECX
00cff536  89542450  MOV dword ptr [ESP + 0x50],EDX
00cff53a  e8e1e6fcff  CALL 0x00ccdc20
00cff53f  83c420  ADD ESP,0x20
00cff542  84c0  TEST AL,AL
00cff544  0f848d000000  JZ 0x00cff5d7
00cff54a  389ef7020000  CMP byte ptr [ESI + 0x2f7],BL
00cff550  7405  JZ 0x00cff557
00cff552  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00cff555  eb03  JMP 0x00cff55a
00cff557  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00cff55a  d9442410  FLD float ptr [ESP + 0x10]
00cff55e  51  PUSH ECX
00cff55f  d91c24  FSTP float ptr [ESP]
00cff562  e8896e0200  CALL 0x00d263f0
00cff567  8ad8  MOV BL,AL
00cff569  84db  TEST BL,BL
00cff56b  0f8408ffffff  JZ 0x00cff479
00cff571  85ed  TEST EBP,EBP
00cff573  0f8400ffffff  JZ 0x00cff479
00cff579  8d86b8000000  LEA EAX,[ESI + 0xb8]
00cff57f  50  PUSH EAX
00cff580  8bcd  MOV ECX,EBP
00cff582  e8f9b4a4ff  CALL 0x0074aa80
00cff587  84c0  TEST AL,AL
00cff589  0f84eafeffff  JZ 0x00cff479
00cff58f  8b16  MOV EDX,dword ptr [ESI]
00cff591  8b527c  MOV EDX,dword ptr [EDX + 0x7c]
00cff594  6a01  PUSH 0x1
00cff596  8d44242c  LEA EAX,[ESP + 0x2c]
00cff59a  50  PUSH EAX
00cff59b  55  PUSH EBP
00cff59c  8bce  MOV ECX,ESI
00cff59e  ffd2  CALL EDX
00cff5a0  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00cff5a4  85d2  TEST EDX,EDX
00cff5a6  0f84cdfeffff  JZ 0x00cff479
00cff5ac  8bce  MOV ECX,ESI
00cff5ae  e84dbbffff  CALL 0x00cfb100
00cff5b3  85c0  TEST EAX,EAX
00cff5b5  0f84befeffff  JZ 0x00cff479
00cff5bb  d944241c  FLD float ptr [ESP + 0x1c]
00cff5bf  51  PUSH ECX
00cff5c0  d91c24  FSTP float ptr [ESP]
00cff5c3  52  PUSH EDX
00cff5c4  8bc8  MOV ECX,EAX
00cff5c6  e855650200  CALL 0x00d25b20
00cff5cb  8ac3  MOV AL,BL
00cff5cd  5b  POP EBX
00cff5ce  5f  POP EDI
00cff5cf  5e  POP ESI
00cff5d0  5d  POP EBP
00cff5d1  83c430  ADD ESP,0x30
00cff5d4  c20800  RET 0x8
00cff5d7  d9442410  FLD float ptr [ESP + 0x10]
00cff5db  51  PUSH ECX
00cff5dc  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00cff5e0  d91c24  FSTP float ptr [ESP]
00cff5e3  b301  MOV BL,0x1
00cff5e5  e866a9f8ff  CALL 0x00c89f50
00cff5ea  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00cff5ed  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00cff5f0  51  PUSH ECX
00cff5f1  52  PUSH EDX
00cff5f2  e81914a9ff  CALL 0x00790a10
00cff5f7  83c408  ADD ESP,0x8
00cff5fa  e972ffffff  JMP 0x00cff571
00cff5ff  5f  POP EDI
00cff600  5e  POP ESI
00cff601  32c0  XOR AL,AL
00cff603  5d  POP EBP
00cff604  83c430  ADD ESP,0x30
00cff607  c20800  RET 0x8

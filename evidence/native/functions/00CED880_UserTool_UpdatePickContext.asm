# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00ced880 UserTool_UpdatePickContext
# Body [[00ced880, 00cedab3]]; owned bytes=564
# ECX tool, four stack words, RET10hex. Complete pick/fallback flow publishes current context at+38/+3C/+40/+44 and boundary flags; it does not store object-tool raw anchor+B8. PressD07300 calls this before copying existing raw anchor. Virtual pick and tool boundary hooks remain dynamic.
00ced880  55  PUSH EBP
00ced881  8bec  MOV EBP,ESP
00ced883  83e4f0  AND ESP,0xfffffff0
00ced886  81ec84000000  SUB ESP,0x84
00ced88c  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00ced894  33c0  XOR EAX,EAX
00ced896  53  PUSH EBX
00ced897  56  PUSH ESI
00ced898  8b7514  MOV ESI,dword ptr [EBP + 0x14]
00ced89b  3bf0  CMP ESI,EAX
00ced89d  57  PUSH EDI
00ced89e  8bd9  MOV EBX,ECX
00ced8a0  89442410  MOV dword ptr [ESP + 0x10],EAX
00ced8a4  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00ced8aa  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00ced8b0  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00ced8b4  8844240f  MOV byte ptr [ESP + 0xf],AL
00ced8b8  88442420  MOV byte ptr [ESP + 0x20],AL
00ced8bc  c644242101  MOV byte ptr [ESP + 0x21],0x1
00ced8c1  c644242201  MOV byte ptr [ESP + 0x22],0x1
00ced8c6  88442425  MOV byte ptr [ESP + 0x25],AL
00ced8ca  88442426  MOV byte ptr [ESP + 0x26],AL
00ced8ce  89442428  MOV dword ptr [ESP + 0x28],EAX
00ced8d2  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00ced8d6  89442430  MOV dword ptr [ESP + 0x30],EAX
00ced8da  89442434  MOV dword ptr [ESP + 0x34],EAX
00ced8de  88442438  MOV byte ptr [ESP + 0x38],AL
00ced8e2  88442439  MOV byte ptr [ESP + 0x39],AL
00ced8e6  8844243a  MOV byte ptr [ESP + 0x3a],AL
00ced8ea  740b  JZ 0x00ced8f7
00ced8ec  b908000000  MOV ECX,0x8
00ced8f1  8d7c2420  LEA EDI,[ESP + 0x20]
00ced8f5  f3a5  MOVSD.REP ES:EDI,ESI
00ced8f7  384348  CMP byte ptr [EBX + 0x48],AL
00ced8fa  740c  JZ 0x00ced908
00ced8fc  8b4b4c  MOV ECX,dword ptr [EBX + 0x4c]
00ced8ff  c644242501  MOV byte ptr [ESP + 0x25],0x1
00ced904  894c2428  MOV dword ptr [ESP + 0x28],ECX
00ced908  8a4b4a  MOV CL,byte ptr [EBX + 0x4a]
00ced90b  8a5349  MOV DL,byte ptr [EBX + 0x49]
00ced90e  8b7510  MOV ESI,dword ptr [EBP + 0x10]
00ced911  8b7d0c  MOV EDI,dword ptr [EBP + 0xc]
00ced914  50  PUSH EAX
00ced915  50  PUSH EAX
00ced916  884c242c  MOV byte ptr [ESP + 0x2c],CL
00ced91a  8d44241c  LEA EAX,[ESP + 0x1c]
00ced91e  50  PUSH EAX
00ced91f  8d4c241c  LEA ECX,[ESP + 0x1c]
00ced923  51  PUSH ECX
00ced924  8d442430  LEA EAX,[ESP + 0x30]
00ced928  50  PUSH EAX
00ced929  88542437  MOV byte ptr [ESP + 0x37],DL
00ced92d  8b13  MOV EDX,dword ptr [EBX]
00ced92f  8b5248  MOV EDX,dword ptr [EDX + 0x48]
00ced932  56  PUSH ESI
00ced933  57  PUSH EDI
00ced934  8bcb  MOV ECX,EBX
00ced936  ffd2  CALL EDX
00ced938  84c0  TEST AL,AL
00ced93a  8844240e  MOV byte ptr [ESP + 0xe],AL
00ced93e  7470  JZ 0x00ced9b0
00ced940  8b430c  MOV EAX,dword ptr [EBX + 0xc]
00ced943  85c0  TEST EAX,EAX
00ced945  7409  JZ 0x00ced950
00ced947  3b442410  CMP EAX,dword ptr [ESP + 0x10]
00ced94b  0f9444240e  SETZ byte ptr [ESP + 0xe]
00ced950  807c240e00  CMP byte ptr [ESP + 0xe],0x0
00ced955  7459  JZ 0x00ced9b0
00ced957  807b4800  CMP byte ptr [EBX + 0x48],0x0
00ced95b  7548  JNZ 0x00ced9a5
00ced95d  8b4350  MOV EAX,dword ptr [EBX + 0x50]
00ced960  3944241c  CMP dword ptr [ESP + 0x1c],EAX
00ced964  7d3f  JGE 0x00ced9a5
00ced966  6a00  PUSH 0x0
00ced968  6a00  PUSH 0x0
00ced96a  8d4c241c  LEA ECX,[ESP + 0x1c]
00ced96e  51  PUSH ECX
00ced96f  8d54241c  LEA EDX,[ESP + 0x1c]
00ced973  52  PUSH EDX
00ced974  8d4c2430  LEA ECX,[ESP + 0x30]
00ced978  51  PUSH ECX
00ced979  8944243c  MOV dword ptr [ESP + 0x3c],EAX
00ced97d  8b03  MOV EAX,dword ptr [EBX]
00ced97f  8b5048  MOV EDX,dword ptr [EAX + 0x48]
00ced982  56  PUSH ESI
00ced983  57  PUSH EDI
00ced984  8bcb  MOV ECX,EBX
00ced986  c644244101  MOV byte ptr [ESP + 0x41],0x1
00ced98b  ffd2  CALL EDX
00ced98d  84c0  TEST AL,AL
00ced98f  8844240e  MOV byte ptr [ESP + 0xe],AL
00ced993  741b  JZ 0x00ced9b0
00ced995  8b430c  MOV EAX,dword ptr [EBX + 0xc]
00ced998  85c0  TEST EAX,EAX
00ced99a  7409  JZ 0x00ced9a5
00ced99c  3b442410  CMP EAX,dword ptr [ESP + 0x10]
00ced9a0  0f9444240e  SETZ byte ptr [ESP + 0xe]
00ced9a5  807c240e00  CMP byte ptr [ESP + 0xe],0x0
00ced9aa  0f85c1000000  JNZ 0x00ceda71
00ced9b0  807b3700  CMP byte ptr [EBX + 0x37],0x0
00ced9b4  743e  JZ 0x00ced9f4
00ced9b6  8d442440  LEA EAX,[ESP + 0x40]
00ced9ba  50  PUSH EAX
00ced9bb  8d4c2414  LEA ECX,[ESP + 0x14]
00ced9bf  51  PUSH ECX
00ced9c0  56  PUSH ESI
00ced9c1  57  PUSH EDI
00ced9c2  8bcb  MOV ECX,EBX
00ced9c4  e85713feff  CALL 0x00cced20
00ced9c9  84c0  TEST AL,AL
00ced9cb  7427  JZ 0x00ced9f4
00ced9cd  8b4b0c  MOV ECX,dword ptr [EBX + 0xc]
00ced9d0  8d542414  LEA EDX,[ESP + 0x14]
00ced9d4  52  PUSH EDX
00ced9d5  8d442444  LEA EAX,[ESP + 0x44]
00ced9d9  50  PUSH EAX
00ced9da  51  PUSH ECX
00ced9db  e840efdeff  CALL 0x00adc920
00ced9e0  8b530c  MOV EDX,dword ptr [EBX + 0xc]
00ced9e3  83c40c  ADD ESP,0xc
00ced9e6  8344241c01  ADD dword ptr [ESP + 0x1c],0x1
00ced9eb  c644240f01  MOV byte ptr [ESP + 0xf],0x1
00ced9f0  89542410  MOV dword ptr [ESP + 0x10],EDX
00ced9f4  807c240e00  CMP byte ptr [ESP + 0xe],0x0
00ced9f9  7576  JNZ 0x00ceda71
00ced9fb  807c240f00  CMP byte ptr [ESP + 0xf],0x0
00ceda00  756f  JNZ 0x00ceda71
00ceda02  807c242000  CMP byte ptr [ESP + 0x20],0x0
00ceda07  744c  JZ 0x00ceda55
00ceda09  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00ceda0d  33c0  XOR EAX,EAX
00ceda0f  0b4c2434  OR ECX,dword ptr [ESP + 0x34]
00ceda13  7416  JZ 0x00ceda2b
00ceda15  e8569bc4ff  CALL 0x00937570
00ceda1a  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00ceda1e  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00ceda22  52  PUSH EDX
00ceda23  51  PUSH ECX
00ceda24  8bc8  MOV ECX,EAX
00ceda26  e855a5c4ff  CALL 0x00937f80
00ceda2b  8b542438  MOV EDX,dword ptr [ESP + 0x38]
00ceda2f  6a00  PUSH 0x0
00ceda31  6a00  PUSH 0x0
00ceda33  52  PUSH EDX
00ceda34  50  PUSH EAX
00ceda35  8d442460  LEA EAX,[ESP + 0x60]
00ceda39  50  PUSH EAX
00ceda3a  56  PUSH ESI
00ceda3b  57  PUSH EDI
00ceda3c  8bcb  MOV ECX,EBX
00ceda3e  e84d19feff  CALL 0x00ccf390
00ceda43  84c0  TEST AL,AL
00ceda45  740e  JZ 0x00ceda55
00ceda47  8b13  MOV EDX,dword ptr [EBX]
00ceda49  8b5270  MOV EDX,dword ptr [EDX + 0x70]
00ceda4c  8d442450  LEA EAX,[ESP + 0x50]
00ceda50  50  PUSH EAX
00ceda51  8bcb  MOV ECX,EBX
00ceda53  ffd2  CALL EDX
00ceda55  807b3400  CMP byte ptr [EBX + 0x34],0x0
00ceda59  7450  JZ 0x00cedaab
00ceda5b  8b03  MOV EAX,dword ptr [EBX]
00ceda5d  8b506c  MOV EDX,dword ptr [EAX + 0x6c]
00ceda60  8bcb  MOV ECX,EBX
00ceda62  ffd2  CALL EDX
00ceda64  c6433400  MOV byte ptr [EBX + 0x34],0x0
00ceda68  5f  POP EDI
00ceda69  5e  POP ESI
00ceda6a  5b  POP EBX
00ceda6b  8be5  MOV ESP,EBP
00ceda6d  5d  POP EBP
00ceda6e  c21000  RET 0x10
00ceda71  807b3400  CMP byte ptr [EBX + 0x34],0x0
00ceda75  750d  JNZ 0x00ceda84
00ceda77  8b03  MOV EAX,dword ptr [EBX]
00ceda79  8b5068  MOV EDX,dword ptr [EAX + 0x68]
00ceda7c  8bcb  MOV ECX,EBX
00ceda7e  ffd2  CALL EDX
00ceda80  c6433401  MOV byte ptr [EBX + 0x34],0x1
00ceda84  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00ceda88  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ceda8c  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00ceda90  894b3c  MOV dword ptr [EBX + 0x3c],ECX
00ceda93  8a4c240f  MOV CL,byte ptr [ESP + 0xf]
00ceda97  894338  MOV dword ptr [EBX + 0x38],EAX
00ceda9a  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00ceda9e  895340  MOV dword ptr [EBX + 0x40],EDX
00cedaa1  894344  MOV dword ptr [EBX + 0x44],EAX
00cedaa4  c6433501  MOV byte ptr [EBX + 0x35],0x1
00cedaa8  884b36  MOV byte ptr [EBX + 0x36],CL
00cedaab  5f  POP EDI
00cedaac  5e  POP ESI
00cedaad  5b  POP EBX
00cedaae  8be5  MOV ESP,EBP
00cedab0  5d  POP EBP
00cedab1  c21000  RET 0x10

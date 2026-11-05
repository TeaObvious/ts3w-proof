# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: SpanShape_NextLocation
Paired actual annotated Ghidra pseudocode: 00C312E0_SpanShape_NextLocation.c
Owned ranges: [[00c312e0, 00c313c7] [00c313d0, 00c31449] [00c31450, 00c31578]]
Envelope bytes=665

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c312e0  83ec08  SUB ESP,0x8
00c312e3  53  PUSH EBX
00c312e4  8a593e  MOV BL,byte ptr [ECX + 0x3e]
00c312e7  3a5901  CMP BL,byte ptr [ECX + 0x1]
00c312ea  7e09  JLE 0x00c312f5
00c312ec  32c0  XOR AL,AL
00c312ee  5b  POP EBX
00c312ef  83c408  ADD ESP,0x8
00c312f2  c20400  RET 0x4
00c312f5  8a513c  MOV DL,byte ptr [ECX + 0x3c]
00c312f8  56  PUSH ESI
00c312f9  8b7140  MOV ESI,dword ptr [ECX + 0x40]
00c312fc  b804000000  MOV EAX,0x4
00c31301  03f0  ADD ESI,EAX
00c31303  3a5601  CMP DL,byte ptr [ESI + 0x1]
00c31306  7d3d  JGE 0x00c31345
00c31308  80c201  ADD DL,0x1
00c3130b  88513c  MOV byte ptr [ECX + 0x3c],DL
00c3130e  3a5601  CMP DL,byte ptr [ESI + 0x1]
00c31311  7509  JNZ 0x00c3131c
00c31313  8a4603  MOV AL,byte ptr [ESI + 0x3]
00c31316  8844240b  MOV byte ptr [ESP + 0xb],AL
00c3131a  eb05  JMP 0x00c31321
00c3131c  c644240b0f  MOV byte ptr [ESP + 0xb],0xf
00c31321  0fbec3  MOVSX EAX,BL
00c31324  0fbe593d  MOVSX EBX,byte ptr [ECX + 0x3d]
00c31328  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00c3132c  8811  MOV byte ptr [ECX],DL
00c3132e  8a54240b  MOV DL,byte ptr [ESP + 0xb]
00c31332  5e  POP ESI
00c31333  885901  MOV byte ptr [ECX + 0x1],BL
00c31336  884102  MOV byte ptr [ECX + 0x2],AL
00c31339  885103  MOV byte ptr [ECX + 0x3],DL
00c3133c  b001  MOV AL,0x1
00c3133e  5b  POP EBX
00c3133f  83c408  ADD ESP,0x8
00c31342  c20400  RET 0x4
00c31345  8b5140  MOV EDX,dword ptr [ECX + 0x40]
00c31348  8b12  MOV EDX,dword ptr [EDX]
00c3134a  8bf2  MOV ESI,EDX
00c3134c  85f6  TEST ESI,ESI
00c3134e  895140  MOV dword ptr [ECX + 0x40],EDX
00c31351  7432  JZ 0x00c31385
00c31353  0fbe413e  MOVSX EAX,byte ptr [ECX + 0x3e]
00c31357  8a5604  MOV DL,byte ptr [ESI + 0x4]
00c3135a  88513c  MOV byte ptr [ECX + 0x3c],DL
00c3135d  0fbe493d  MOVSX ECX,byte ptr [ECX + 0x3d]
00c31361  8a5e06  MOV BL,byte ptr [ESI + 0x6]
00c31364  8944240c  MOV dword ptr [ESP + 0xc],EAX
00c31368  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00c3136c  884801  MOV byte ptr [EAX + 0x1],CL
00c3136f  8a4c240c  MOV CL,byte ptr [ESP + 0xc]
00c31373  885803  MOV byte ptr [EAX + 0x3],BL
00c31376  5e  POP ESI
00c31377  8810  MOV byte ptr [EAX],DL
00c31379  884802  MOV byte ptr [EAX + 0x2],CL
00c3137c  b001  MOV AL,0x1
00c3137e  5b  POP EBX
00c3137f  83c408  ADD ESP,0x8
00c31382  c20400  RET 0x4
00c31385  57  PUSH EDI
00c31386  bf08000000  MOV EDI,0x8
00c3138b  017944  ADD dword ptr [ECX + 0x44],EDI
00c3138e  8b5144  MOV EDX,dword ptr [ECX + 0x44]
00c31391  3b514c  CMP EDX,dword ptr [ECX + 0x4c]
00c31394  751a  JNZ 0x00c313b0
00c31396  014150  ADD dword ptr [ECX + 0x50],EAX
00c31399  8b5150  MOV EDX,dword ptr [ECX + 0x50]
00c3139c  8b12  MOV EDX,dword ptr [EDX]
00c3139e  895148  MOV dword ptr [ECX + 0x48],EDX
00c313a1  81c200010000  ADD EDX,0x100
00c313a7  89514c  MOV dword ptr [ECX + 0x4c],EDX
00c313aa  8b5148  MOV EDX,dword ptr [ECX + 0x48]
00c313ad  895144  MOV dword ptr [ECX + 0x44],EDX
00c313b0  80413d01  ADD byte ptr [ECX + 0x3d],0x1
00c313b4  8a513d  MOV DL,byte ptr [ECX + 0x3d]
00c313b7  8854240f  MOV byte ptr [ESP + 0xf],DL
00c313bb  8b5154  MOV EDX,dword ptr [ECX + 0x54]
00c313be  8b7218  MOV ESI,dword ptr [EDX + 0x18]
00c313c1  397144  CMP dword ptr [ECX + 0x44],ESI
00c313c4  744b  JZ 0x00c31411
00c313c6  eb08  JMP 0x00c313d0
00c313c8  8d  .byte nonowned gap
00c313c9  a4  .byte nonowned gap
00c313ca  24  .byte nonowned gap
00c313cb  00  .byte nonowned gap
00c313cc  00  .byte nonowned gap
00c313cd  00  .byte nonowned gap
00c313ce  00  .byte nonowned gap
00c313cf  90  .byte nonowned gap
00c313d0  8b5144  MOV EDX,dword ptr [ECX + 0x44]
00c313d3  833a00  CMP dword ptr [EDX],0x0
00c313d6  0f8529010000  JNZ 0x00c31505
00c313dc  017944  ADD dword ptr [ECX + 0x44],EDI
00c313df  8b5144  MOV EDX,dword ptr [ECX + 0x44]
00c313e2  3b514c  CMP EDX,dword ptr [ECX + 0x4c]
00c313e5  751a  JNZ 0x00c31401
00c313e7  014150  ADD dword ptr [ECX + 0x50],EAX
00c313ea  8b5150  MOV EDX,dword ptr [ECX + 0x50]
00c313ed  8b12  MOV EDX,dword ptr [EDX]
00c313ef  895148  MOV dword ptr [ECX + 0x48],EDX
00c313f2  81c200010000  ADD EDX,0x100
00c313f8  89514c  MOV dword ptr [ECX + 0x4c],EDX
00c313fb  8b5148  MOV EDX,dword ptr [ECX + 0x48]
00c313fe  895144  MOV dword ptr [ECX + 0x44],EDX
00c31401  80413d01  ADD byte ptr [ECX + 0x3d],0x1
00c31405  397144  CMP dword ptr [ECX + 0x44],ESI
00c31408  8a513d  MOV DL,byte ptr [ECX + 0x3d]
00c3140b  8854240f  MOV byte ptr [ESP + 0xf],DL
00c3140f  75bf  JNZ 0x00c313d0
00c31411  83415430  ADD dword ptr [ECX + 0x54],0x30
00c31415  8b5154  MOV EDX,dword ptr [ECX + 0x54]
00c31418  3b515c  CMP EDX,dword ptr [ECX + 0x5c]
00c3141b  751a  JNZ 0x00c31437
00c3141d  014160  ADD dword ptr [ECX + 0x60],EAX
00c31420  8b5160  MOV EDX,dword ptr [ECX + 0x60]
00c31423  8b12  MOV EDX,dword ptr [EDX]
00c31425  895158  MOV dword ptr [ECX + 0x58],EDX
00c31428  81c2c0000000  ADD EDX,0xc0
00c3142e  89515c  MOV dword ptr [ECX + 0x5c],EDX
00c31431  8b5158  MOV EDX,dword ptr [ECX + 0x58]
00c31434  895154  MOV dword ptr [ECX + 0x54],EDX
00c31437  80413e01  ADD byte ptr [ECX + 0x3e],0x1
00c3143b  8b411c  MOV EAX,dword ptr [ECX + 0x1c]
00c3143e  394154  CMP dword ptr [ECX + 0x54],EAX
00c31441  55  PUSH EBP
00c31442  0f84a8000000  JZ 0x00c314f0
00c31448  eb06  JMP 0x00c31450
00c3144a  8d  .byte nonowned gap
00c3144b  9b  .byte nonowned gap
00c3144c  00  .byte nonowned gap
00c3144d  00  .byte nonowned gap
00c3144e  00  .byte nonowned gap
00c3144f  00  .byte nonowned gap
00c31450  8b5154  MOV EDX,dword ptr [ECX + 0x54]
00c31453  8b7208  MOV ESI,dword ptr [EDX + 0x8]
00c31456  8b5a10  MOV EBX,dword ptr [EDX + 0x10]
00c31459  8b7a0c  MOV EDI,dword ptr [EDX + 0xc]
00c3145c  8b6a14  MOV EBP,dword ptr [EDX + 0x14]
00c3145f  897144  MOV dword ptr [ECX + 0x44],ESI
00c31462  897948  MOV dword ptr [ECX + 0x48],EDI
00c31465  89594c  MOV dword ptr [ECX + 0x4c],EBX
00c31468  896950  MOV dword ptr [ECX + 0x50],EBP
00c3146b  8a5a2c  MOV BL,byte ptr [EDX + 0x2c]
00c3146e  88593d  MOV byte ptr [ECX + 0x3d],BL
00c31471  8b5218  MOV EDX,dword ptr [EDX + 0x18]
00c31474  395144  CMP dword ptr [ECX + 0x44],EDX
00c31477  7443  JZ 0x00c314bc
00c31479  8da42400000000  LEA ESP,[ESP]
00c31480  8b7144  MOV ESI,dword ptr [ECX + 0x44]
00c31483  833e00  CMP dword ptr [ESI],0x0
00c31486  0f85b3000000  JNZ 0x00c3153f
00c3148c  83414408  ADD dword ptr [ECX + 0x44],0x8
00c31490  8b7144  MOV ESI,dword ptr [ECX + 0x44]
00c31493  3b714c  CMP ESI,dword ptr [ECX + 0x4c]
00c31496  751b  JNZ 0x00c314b3
00c31498  83415004  ADD dword ptr [ECX + 0x50],0x4
00c3149c  8b7150  MOV ESI,dword ptr [ECX + 0x50]
00c3149f  8b36  MOV ESI,dword ptr [ESI]
00c314a1  897148  MOV dword ptr [ECX + 0x48],ESI
00c314a4  81c600010000  ADD ESI,0x100
00c314aa  89714c  MOV dword ptr [ECX + 0x4c],ESI
00c314ad  8b7148  MOV ESI,dword ptr [ECX + 0x48]
00c314b0  897144  MOV dword ptr [ECX + 0x44],ESI
00c314b3  80413d01  ADD byte ptr [ECX + 0x3d],0x1
00c314b7  395144  CMP dword ptr [ECX + 0x44],EDX
00c314ba  75c4  JNZ 0x00c31480
00c314bc  83415430  ADD dword ptr [ECX + 0x54],0x30
00c314c0  8b5154  MOV EDX,dword ptr [ECX + 0x54]
00c314c3  3b515c  CMP EDX,dword ptr [ECX + 0x5c]
00c314c6  751b  JNZ 0x00c314e3
00c314c8  83416004  ADD dword ptr [ECX + 0x60],0x4
00c314cc  8b5160  MOV EDX,dword ptr [ECX + 0x60]
00c314cf  8b12  MOV EDX,dword ptr [EDX]
00c314d1  895158  MOV dword ptr [ECX + 0x58],EDX
00c314d4  81c2c0000000  ADD EDX,0xc0
00c314da  89515c  MOV dword ptr [ECX + 0x5c],EDX
00c314dd  8b5158  MOV EDX,dword ptr [ECX + 0x58]
00c314e0  895154  MOV dword ptr [ECX + 0x54],EDX
00c314e3  80413e01  ADD byte ptr [ECX + 0x3e],0x1
00c314e7  394154  CMP dword ptr [ECX + 0x54],EAX
00c314ea  0f8560ffffff  JNZ 0x00c31450
00c314f0  8a5101  MOV DL,byte ptr [ECX + 0x1]
00c314f3  5d  POP EBP
00c314f4  5f  POP EDI
00c314f5  80c201  ADD DL,0x1
00c314f8  5e  POP ESI
00c314f9  88513e  MOV byte ptr [ECX + 0x3e],DL
00c314fc  32c0  XOR AL,AL
00c314fe  5b  POP EBX
00c314ff  83c408  ADD ESP,0x8
00c31502  c20400  RET 0x4
00c31505  8b12  MOV EDX,dword ptr [EDX]
00c31507  0fbe413e  MOVSX EAX,byte ptr [ECX + 0x3e]
00c3150b  895140  MOV dword ptr [ECX + 0x40],EDX
00c3150e  8a5a04  MOV BL,byte ptr [EDX + 0x4]
00c31511  88593c  MOV byte ptr [ECX + 0x3c],BL
00c31514  0fbe4c240f  MOVSX ECX,byte ptr [ESP + 0xf]
00c31519  8a5206  MOV DL,byte ptr [EDX + 0x6]
00c3151c  894c2410  MOV dword ptr [ESP + 0x10],ECX
00c31520  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00c31524  8819  MOV byte ptr [ECX],BL
00c31526  0fb65c2410  MOVZX EBX,byte ptr [ESP + 0x10]
00c3152b  5f  POP EDI
00c3152c  5e  POP ESI
00c3152d  885901  MOV byte ptr [ECX + 0x1],BL
00c31530  884102  MOV byte ptr [ECX + 0x2],AL
00c31533  885103  MOV byte ptr [ECX + 0x3],DL
00c31536  b001  MOV AL,0x1
00c31538  5b  POP EBX
00c31539  83c408  ADD ESP,0x8
00c3153c  c20400  RET 0x4
00c3153f  8b16  MOV EDX,dword ptr [ESI]
00c31541  0fbe413e  MOVSX EAX,byte ptr [ECX + 0x3e]
00c31545  895140  MOV dword ptr [ECX + 0x40],EDX
00c31548  8a5a04  MOV BL,byte ptr [EDX + 0x4]
00c3154b  88593c  MOV byte ptr [ECX + 0x3c],BL
00c3154e  0fbe493d  MOVSX ECX,byte ptr [ECX + 0x3d]
00c31552  8a5206  MOV DL,byte ptr [EDX + 0x6]
00c31555  894c2414  MOV dword ptr [ESP + 0x14],ECX
00c31559  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00c3155d  5d  POP EBP
00c3155e  8819  MOV byte ptr [ECX],BL
00c31560  0fb65c2410  MOVZX EBX,byte ptr [ESP + 0x10]
00c31565  5f  POP EDI
00c31566  5e  POP ESI
00c31567  885901  MOV byte ptr [ECX + 0x1],BL
00c3156a  884102  MOV byte ptr [ECX + 0x2],AL
00c3156d  885103  MOV byte ptr [ECX + 0x3],DL
00c31570  b001  MOV AL,0x1
00c31572  5b  POP EBX
00c31573  83c408  ADD ESP,0x8
00c31576  c20400  RET 0x4
Owned instructions=219 owned bytes=651 nonowned bytes=14

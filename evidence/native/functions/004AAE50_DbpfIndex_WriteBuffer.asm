# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004aae50, 004ab0d9]]
Signature: undefined1 DbpfIndex_WriteBuffer(void * this, undefined4 * outBuffer, undefined4 * outBytes, uint option)

004aae50  83ec10  SUB ESP,0x10
004aae53  53  PUSH EBX
004aae54  55  PUSH EBP
004aae55  8be9  MOV EBP,ECX
004aae57  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
004aae5a  8b01  MOV EAX,dword ptr [ECX]
004aae5c  33d2  XOR EDX,EDX
004aae5e  3bc2  CMP EAX,EDX
004aae60  b301  MOV BL,0x1
004aae62  56  PUSH ESI
004aae63  57  PUSH EDI
004aae64  8b7d14  MOV EDI,dword ptr [EBP + 0x14]
004aae67  885c2412  MOV byte ptr [ESP + 0x12],BL
004aae6b  885c2413  MOV byte ptr [ESP + 0x13],BL
004aae6f  885c2411  MOV byte ptr [ESP + 0x11],BL
004aae73  89542414  MOV dword ptr [ESP + 0x14],EDX
004aae77  89542418  MOV dword ptr [ESP + 0x18],EDX
004aae7b  8954241c  MOV dword ptr [ESP + 0x1c],EDX
004aae7f  7510  JNZ 0x004aae91
004aae81  83c104  ADD ECX,0x4
004aae84  3911  CMP dword ptr [ECX],EDX
004aae86  7507  JNZ 0x004aae8f
004aae88  83c104  ADD ECX,0x4
004aae8b  3911  CMP dword ptr [ECX],EDX
004aae8d  74f9  JZ 0x004aae88
004aae8f  8b01  MOV EAX,dword ptr [ECX]
004aae91  3bfa  CMP EDI,EDX
004aae93  7428  JZ 0x004aaebd
004aae95  8b7008  MOV ESI,dword ptr [EAX + 0x8]
004aae98  89742414  MOV dword ptr [ESP + 0x14],ESI
004aae9c  8b700c  MOV ESI,dword ptr [EAX + 0xc]
004aae9f  89742418  MOV dword ptr [ESP + 0x18],ESI
004aaea3  8b7004  MOV ESI,dword ptr [EAX + 0x4]
004aaea6  8b4020  MOV EAX,dword ptr [EAX + 0x20]
004aaea9  3bc2  CMP EAX,EDX
004aaeab  8974241c  MOV dword ptr [ESP + 0x1c],ESI
004aaeaf  751a  JNZ 0x004aaecb
004aaeb1  8b4104  MOV EAX,dword ptr [ECX + 0x4]
004aaeb4  83c104  ADD ECX,0x4
004aaeb7  3bc2  CMP EAX,EDX
004aaeb9  74f6  JZ 0x004aaeb1
004aaebb  eb0e  JMP 0x004aaecb
004aaebd  88542412  MOV byte ptr [ESP + 0x12],DL
004aaec1  88542413  MOV byte ptr [ESP + 0x13],DL
004aaec5  88542411  MOV byte ptr [ESP + 0x11],DL
004aaec9  8ada  MOV BL,DL
004aaecb  8b750c  MOV ESI,dword ptr [EBP + 0xc]
004aaece  8b5510  MOV EDX,dword ptr [EBP + 0x10]
004aaed1  8d1496  LEA EDX,[ESI + EDX*0x4]
004aaed4  8b32  MOV ESI,dword ptr [EDX]
004aaed6  3bc6  CMP EAX,ESI
004aaed8  746a  JZ 0x004aaf44
004aaeda  8d9b00000000  LEA EBX,[EBX]
004aaee0  84db  TEST BL,BL
004aaee2  740e  JZ 0x004aaef2
004aaee4  8b542414  MOV EDX,dword ptr [ESP + 0x14]
004aaee8  395008  CMP dword ptr [EAX + 0x8],EDX
004aaeeb  c644241201  MOV byte ptr [ESP + 0x12],0x1
004aaef0  7405  JZ 0x004aaef7
004aaef2  c644241200  MOV byte ptr [ESP + 0x12],0x0
004aaef7  807c241300  CMP byte ptr [ESP + 0x13],0x0
004aaefc  740e  JZ 0x004aaf0c
004aaefe  8b542418  MOV EDX,dword ptr [ESP + 0x18]
004aaf02  39500c  CMP dword ptr [EAX + 0xc],EDX
004aaf05  c644241301  MOV byte ptr [ESP + 0x13],0x1
004aaf0a  7405  JZ 0x004aaf11
004aaf0c  c644241300  MOV byte ptr [ESP + 0x13],0x0
004aaf11  807c241100  CMP byte ptr [ESP + 0x11],0x0
004aaf16  740e  JZ 0x004aaf26
004aaf18  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
004aaf1c  395004  CMP dword ptr [EAX + 0x4],EDX
004aaf1f  c644241101  MOV byte ptr [ESP + 0x11],0x1
004aaf24  7405  JZ 0x004aaf2b
004aaf26  c644241100  MOV byte ptr [ESP + 0x11],0x0
004aaf2b  8b4020  MOV EAX,dword ptr [EAX + 0x20]
004aaf2e  85c0  TEST EAX,EAX
004aaf30  750a  JNZ 0x004aaf3c
004aaf32  8b4104  MOV EAX,dword ptr [ECX + 0x4]
004aaf35  83c104  ADD ECX,0x4
004aaf38  85c0  TEST EAX,EAX
004aaf3a  74f6  JZ 0x004aaf32
004aaf3c  3bc6  CMP EAX,ESI
004aaf3e  8a5c2412  MOV BL,byte ptr [ESP + 0x12]
004aaf42  759c  JNZ 0x004aaee0
004aaf44  84db  TEST BL,BL
004aaf46  8b442428  MOV EAX,dword ptr [ESP + 0x28]
004aaf4a  b920000000  MOV ECX,0x20
004aaf4f  c70004000000  MOV dword ptr [EAX],0x4
004aaf55  740b  JZ 0x004aaf62
004aaf57  c70008000000  MOV dword ptr [EAX],0x8
004aaf5d  b91c000000  MOV ECX,0x1c
004aaf62  807c241300  CMP byte ptr [ESP + 0x13],0x0
004aaf67  7406  JZ 0x004aaf6f
004aaf69  830004  ADD dword ptr [EAX],0x4
004aaf6c  83e904  SUB ECX,0x4
004aaf6f  807c241100  CMP byte ptr [ESP + 0x11],0x0
004aaf74  7406  JZ 0x004aaf7c
004aaf76  830004  ADD dword ptr [EAX],0x4
004aaf79  83e904  SUB ECX,0x4
004aaf7c  0fafcf  IMUL ECX,EDI
004aaf7f  0108  ADD dword ptr [EAX],ECX
004aaf81  8b00  MOV EAX,dword ptr [EAX]
004aaf83  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
004aaf86  8b11  MOV EDX,dword ptr [ECX]
004aaf88  6a00  PUSH 0x0
004aaf8a  685437fb00  PUSH 0xfb3754
004aaf8f  50  PUSH EAX
004aaf90  8b4208  MOV EAX,dword ptr [EDX + 0x8]
004aaf93  ffd0  CALL EAX
004aaf95  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
004aaf99  8bf0  MOV ESI,EAX
004aaf9b  85f6  TEST ESI,ESI
004aaf9d  8931  MOV dword ptr [ECX],ESI
004aaf9f  0f8429010000  JZ 0x004ab0ce
004aafa5  8a542411  MOV DL,byte ptr [ESP + 0x11]
004aafa9  8a442413  MOV AL,byte ptr [ESP + 0x13]
004aafad  f6da  NEG DL
004aafaf  8ac8  MOV CL,AL
004aafb1  1bd2  SBB EDX,EDX
004aafb3  83e204  AND EDX,0x4
004aafb6  f6d9  NEG CL
004aafb8  1bc9  SBB ECX,ECX
004aafba  83e102  AND ECX,0x2
004aafbd  0bd1  OR EDX,ECX
004aafbf  33c9  XOR ECX,ECX
004aafc1  84db  TEST BL,BL
004aafc3  0f95c1  SETNZ CL
004aafc6  0bd1  OR EDX,ECX
004aafc8  84db  TEST BL,BL
004aafca  8916  MOV dword ptr [ESI],EDX
004aafcc  ba01000000  MOV EDX,0x1
004aafd1  740c  JZ 0x004aafdf
004aafd3  8b542414  MOV EDX,dword ptr [ESP + 0x14]
004aafd7  895604  MOV dword ptr [ESI + 0x4],EDX
004aafda  ba02000000  MOV EDX,0x2
004aafdf  84c0  TEST AL,AL
004aafe1  740a  JZ 0x004aafed
004aafe3  8b442418  MOV EAX,dword ptr [ESP + 0x18]
004aafe7  890496  MOV dword ptr [ESI + EDX*0x4],EAX
004aafea  83c201  ADD EDX,0x1
004aafed  807c241100  CMP byte ptr [ESP + 0x11],0x0
004aaff2  740a  JZ 0x004aaffe
004aaff4  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
004aaff8  890c96  MOV dword ptr [ESI + EDX*0x4],ECX
004aaffb  83c201  ADD EDX,0x1
004aaffe  8b450c  MOV EAX,dword ptr [EBP + 0xc]
004ab001  8b08  MOV ECX,dword ptr [EAX]
004ab003  85c9  TEST ECX,ECX
004ab005  7513  JNZ 0x004ab01a
004ab007  83c004  ADD EAX,0x4
004ab00a  3908  CMP dword ptr [EAX],ECX
004ab00c  750a  JNZ 0x004ab018
004ab00e  8bff  MOV EDI,EDI
004ab010  83c004  ADD EAX,0x4
004ab013  833800  CMP dword ptr [EAX],0x0
004ab016  74f8  JZ 0x004ab010
004ab018  8b08  MOV ECX,dword ptr [EAX]
004ab01a  8b5d0c  MOV EBX,dword ptr [EBP + 0xc]
004ab01d  8bf8  MOV EDI,EAX
004ab01f  8b4510  MOV EAX,dword ptr [EBP + 0x10]
004ab022  8b2c83  MOV EBP,dword ptr [EBX + EAX*0x4]
004ab025  3bcd  CMP ECX,EBP
004ab027  8d0483  LEA EAX,[EBX + EAX*0x4]
004ab02a  0f8492000000  JZ 0x004ab0c2
004ab030  8a5c242c  MOV BL,byte ptr [ESP + 0x2c]
004ab034  8d0496  LEA EAX,[ESI + EDX*0x4]
004ab037  807c241200  CMP byte ptr [ESP + 0x12],0x0
004ab03c  7508  JNZ 0x004ab046
004ab03e  8b5108  MOV EDX,dword ptr [ECX + 0x8]
004ab041  8910  MOV dword ptr [EAX],EDX
004ab043  83c004  ADD EAX,0x4
004ab046  807c241300  CMP byte ptr [ESP + 0x13],0x0
004ab04b  7508  JNZ 0x004ab055
004ab04d  8b510c  MOV EDX,dword ptr [ECX + 0xc]
004ab050  8910  MOV dword ptr [EAX],EDX
004ab052  83c004  ADD EAX,0x4
004ab055  807c241100  CMP byte ptr [ESP + 0x11],0x0
004ab05a  7508  JNZ 0x004ab064
004ab05c  8b5104  MOV EDX,dword ptr [ECX + 0x4]
004ab05f  8910  MOV dword ptr [EAX],EDX
004ab061  83c004  ADD EAX,0x4
004ab064  8b11  MOV EDX,dword ptr [ECX]
004ab066  8910  MOV dword ptr [EAX],EDX
004ab068  8b5110  MOV EDX,dword ptr [ECX + 0x10]
004ab06b  895004  MOV dword ptr [EAX + 0x4],EDX
004ab06e  8b5114  MOV EDX,dword ptr [ECX + 0x14]
004ab071  83c004  ADD EAX,0x4
004ab074  83c004  ADD EAX,0x4
004ab077  81ca00000080  OR EDX,0x80000000
004ab07d  8910  MOV dword ptr [EAX],EDX
004ab07f  8b5118  MOV EDX,dword ptr [ECX + 0x18]
004ab082  83c004  ADD EAX,0x4
004ab085  8910  MOV dword ptr [EAX],EDX
004ab087  83c004  ADD EAX,0x4
004ab08a  80791e00  CMP byte ptr [ECX + 0x1e],0x0
004ab08e  7508  JNZ 0x004ab098
004ab090  84db  TEST BL,BL
004ab092  7504  JNZ 0x004ab098
004ab094  33d2  XOR EDX,EDX
004ab096  eb05  JMP 0x004ab09d
004ab098  ba00000100  MOV EDX,0x10000
004ab09d  0fb7711c  MOVZX ESI,word ptr [ECX + 0x1c]
004ab0a1  0bf2  OR ESI,EDX
004ab0a3  8930  MOV dword ptr [EAX],ESI
004ab0a5  8b4920  MOV ECX,dword ptr [ECX + 0x20]
004ab0a8  83c004  ADD EAX,0x4
004ab0ab  85c9  TEST ECX,ECX
004ab0ad  750b  JNZ 0x004ab0ba
004ab0af  90  NOP
004ab0b0  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
004ab0b3  83c704  ADD EDI,0x4
004ab0b6  85c9  TEST ECX,ECX
004ab0b8  74f6  JZ 0x004ab0b0
004ab0ba  3bcd  CMP ECX,EBP
004ab0bc  0f8575ffffff  JNZ 0x004ab037
004ab0c2  5f  POP EDI
004ab0c3  5e  POP ESI
004ab0c4  5d  POP EBP
004ab0c5  b001  MOV AL,0x1
004ab0c7  5b  POP EBX
004ab0c8  83c410  ADD ESP,0x10
004ab0cb  c20c00  RET 0xc
004ab0ce  5f  POP EDI
004ab0cf  5e  POP ESI
004ab0d0  5d  POP EBP
004ab0d1  32c0  XOR AL,AL
004ab0d3  5b  POP EBX
004ab0d4  83c410  ADD ESP,0x10
004ab0d7  c20c00  RET 0xc

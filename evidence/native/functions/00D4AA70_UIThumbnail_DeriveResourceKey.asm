# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete current Ghidra function envelope.
Analyst name: UIThumbnail_DeriveResourceKey
Paired actual annotated Ghidra pseudocode: 00D4AA70_UIThumbnail_DeriveResourceKey.c
Owned body: [[00d4aa70, 00d4ae60]]
Envelope bytes=1009

GHIDRA LISTING (actual current owned instructions; current memory nonowned bytes explicit)
00d4aa70  56  PUSH ESI
00d4aa71  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00d4aa75  57  PUSH EDI
00d4aa76  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00d4aa7a  8b07  MOV EAX,dword ptr [EDI]
00d4aa7c  8906  MOV dword ptr [ESI],EAX
00d4aa7e  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00d4aa81  894e04  MOV dword ptr [ESI + 0x4],ECX
00d4aa84  c7460c00000000  MOV dword ptr [ESI + 0xc],0x0
00d4aa8b  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00d4aa8e  3d5e413a0b  CMP EAX,0xb3a415e
00d4aa93  b904007d2f  MOV ECX,0x2f7d0004
00d4aa98  0f876c020000  JA 0x00d4ad0a
00d4aa9e  0f8454020000  JZ 0x00d4acf8
00d4aaa4  3d2afe1804  CMP EAX,0x418fe2a
00d4aaa9  0f8799010000  JA 0x00d4ac48
00d4aaaf  0f8481010000  JZ 0x00d4ac36
00d4aab5  3df4d65e02  CMP EAX,0x25ed6f4
00d4aaba  0f874d010000  JA 0x00d4ac0d
00d4aac0  0f84f3000000  JZ 0x00d4abb9
00d4aac6  85c0  TEST EAX,EAX
00d4aac8  0f8422020000  JZ 0x00d4acf0
00d4aace  3d82d8b200  CMP EAX,0xb2d882
00d4aad3  744f  JZ 0x00d4ab24
00d4aad5  3d33126601  CMP EAX,0x1661233
00d4aada  0f854f030000  JNZ 0x00d4ae2f
00d4aae0  817f0cf7bdc302  CMP dword ptr [EDI + 0xc],0x2c3bdf7
00d4aae7  7512  JNZ 0x00d4aafb
00d4aae9  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4aaed  81c2c02fed7a  ADD EDX,0x7aed2fc0
00d4aaf3  895608  MOV dword ptr [ESI + 0x8],EDX
00d4aaf6  e945030000  JMP 0x00d4ae40
00d4aafb  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00d4aaff  50  PUSH EAX
00d4ab00  8d4c242c  LEA ECX,[ESP + 0x2c]
00d4ab04  6a04  PUSH 0x4
00d4ab06  51  PUSH ECX
00d4ab07  e844fc7aff  CALL 0x004fa750
00d4ab0c  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00d4ab10  83c40c  ADD ESP,0xc
00d4ab13  81c2946f36ad  ADD EDX,0xad366f94
00d4ab19  894604  MOV dword ptr [ESI + 0x4],EAX
00d4ab1c  895608  MOV dword ptr [ESI + 0x8],EDX
00d4ab1f  e91c030000  JMP 0x00d4ae40
00d4ab24  8b470c  MOV EAX,dword ptr [EDI + 0xc]
00d4ab27  3d99227202  CMP EAX,0x2722299
00d4ab2c  750e  JNZ 0x00d4ab3c
00d4ab2e  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4ab32  05d0d63846  ADD EAX,0x4638d6d0
00d4ab37  e901030000  JMP 0x00d4ae3d
00d4ab3c  3dca9f4b02  CMP EAX,0x24b9fca
00d4ab41  7512  JNZ 0x00d4ab55
00d4ab43  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d4ab47  81c12045aa85  ADD ECX,0x85aa4520
00d4ab4d  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4ab50  e9eb020000  JMP 0x00d4ae40
00d4ab55  3d38a87602  CMP EAX,0x276a838
00d4ab5a  7512  JNZ 0x00d4ab6e
00d4ab5c  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4ab60  81c28046fe56  ADD EDX,0x56fe4680
00d4ab66  895608  MOV dword ptr [ESI + 0x8],EDX
00d4ab69  e9d2020000  JMP 0x00d4ae40
00d4ab6e  3da828990e  CMP EAX,0xe9928a8
00d4ab73  750e  JNZ 0x00d4ab83
00d4ab75  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4ab79  05f021990e  ADD EAX,0xe9921f0
00d4ab7e  e9ba020000  JMP 0x00d4ae3d
00d4ab83  3da069bd02  CMP EAX,0x2bd69a0
00d4ab88  7512  JNZ 0x00d4ab9c
00d4ab8a  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d4ab8e  81c18046fe56  ADD ECX,0x56fe4680
00d4ab94  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4ab97  e9a4020000  JMP 0x00d4ae40
00d4ab9c  3d4cc63302  CMP EAX,0x233c64c
00d4aba1  0f8549010000  JNZ 0x00d4acf0
00d4aba7  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4abab  81c2b0ad6174  ADD EDX,0x7461adb0
00d4abb1  895608  MOV dword ptr [ESI + 0x8],EDX
00d4abb4  e987020000  JMP 0x00d4ae40
00d4abb9  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4abbd  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00d4abc1  05cca28005  ADD EAX,0x580a2cc
00d4abc6  0b4c2430  OR ECX,dword ptr [ESP + 0x30]
00d4abca  894608  MOV dword ptr [ESI + 0x8],EAX
00d4abcd  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00d4abd1  7517  JNZ 0x00d4abea
00d4abd3  8d9000ffffff  LEA EDX,[EAX + 0xffffff00]
00d4abd9  81fa00020000  CMP EDX,0x200
00d4abdf  7709  JA 0x00d4abea
00d4abe1  c7460c00010000  MOV dword ptr [ESI + 0xc],0x100
00d4abe8  eb0a  JMP 0x00d4abf4
00d4abea  3dff000000  CMP EAX,0xff
00d4abef  7703  JA 0x00d4abf4
00d4abf1  89460c  MOV dword ptr [ESI + 0xc],EAX
00d4abf4  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00d4abf8  0fb64c2420  MOVZX ECX,byte ptr [ESP + 0x20]
00d4abfd  c1e004  SHL EAX,0x4
00d4ac00  0bc1  OR EAX,ECX
00d4ac02  c1e010  SHL EAX,0x10
00d4ac05  09460c  OR dword ptr [ESI + 0xc],EAX
00d4ac08  e933020000  JMP 0x00d4ae40
00d4ac0d  3dcbee4a03  CMP EAX,0x34aeecb
00d4ac12  0f84a4010000  JZ 0x00d4adbc
00d4ac18  3da85b5503  CMP EAX,0x3555ba8
00d4ac1d  0f84a4010000  JZ 0x00d4adc7
00d4ac23  3d8ab05803  CMP EAX,0x358b08a
00d4ac28  0f8499010000  JZ 0x00d4adc7
00d4ac2e  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4ac31  e90a020000  JMP 0x00d4ae40
00d4ac36  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4ac3a  81c2c8e35326  ADD EDX,0x2653e3c8
00d4ac40  895608  MOV dword ptr [ESI + 0x8],EDX
00d4ac43  e9f8010000  JMP 0x00d4ae40
00d4ac48  3db24bed04  CMP EAX,0x4ed4bb2
00d4ac4d  7751  JA 0x00d4aca0
00d4ac4f  743d  JZ 0x00d4ac8e
00d4ac51  3dcda49c04  CMP EAX,0x49ca4cd
00d4ac56  7424  JZ 0x00d4ac7c
00d4ac58  3d6906b304  CMP EAX,0x4b30669
00d4ac5d  0f848d000000  JZ 0x00d4acf0
00d4ac63  3d0381c504  CMP EAX,0x4c58103
00d4ac68  0f85c1010000  JNZ 0x00d4ae2f
00d4ac6e  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4ac72  05f084422d  ADD EAX,0x2d4284f0
00d4ac77  e9c1010000  JMP 0x00d4ae3d
00d4ac7c  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d4ac80  81c1a0dbe95d  ADD ECX,0x5de9dba0
00d4ac86  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4ac89  e9b2010000  JMP 0x00d4ae40
00d4ac8e  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4ac92  81c224b5b105  ADD EDX,0x5b1b524
00d4ac98  895608  MOV dword ptr [ESI + 0x8],EDX
00d4ac9b  e9a0010000  JMP 0x00d4ae40
00d4aca0  3d01ccf304  CMP EAX,0x4f3cc01
00d4aca5  743f  JZ 0x00d4ace6
00d4aca7  3d6489f804  CMP EAX,0x4f88964
00d4acac  7413  JZ 0x00d4acc1
00d4acae  3dddf21d05  CMP EAX,0x51df2dd
00d4acb3  0f8403010000  JZ 0x00d4adbc
00d4acb9  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4acbc  e97f010000  JMP 0x00d4ae40
00d4acc1  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4acc5  83f803  CMP EAX,0x3
00d4acc8  7505  JNZ 0x00d4accf
00d4acca  b802000000  MOV EAX,0x2
00d4accf  0570243754  ADD EAX,0x54372470
00d4acd4  894608  MOV dword ptr [ESI + 0x8],EAX
00d4acd7  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00d4acdb  c1e014  SHL EAX,0x14
00d4acde  89460c  MOV dword ptr [ESI + 0xc],EAX
00d4ace1  e95a010000  JMP 0x00d4ae40
00d4ace6  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d4acea  81c19876b105  ADD ECX,0x5b17698
00d4acf0  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4acf3  e948010000  JMP 0x00d4ae40
00d4acf8  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4acfc  81c27c836d6b  ADD EDX,0x6b6d837c
00d4ad02  895608  MOV dword ptr [ESI + 0x8],EDX
00d4ad05  e936010000  JMP 0x00d4ae40
00d4ad0a  3dcda45c51  CMP EAX,0x515ca4cd
00d4ad0f  7774  JA 0x00d4ad85
00d4ad11  7464  JZ 0x00d4ad77
00d4ad13  3df2786c31  CMP EAX,0x316c78f2
00d4ad18  7727  JA 0x00d4ad41
00d4ad1a  74d4  JZ 0x00d4acf0
00d4ad1c  3d64c7752e  CMP EAX,0x2e75c764
00d4ad21  7410  JZ 0x00d4ad33
00d4ad23  3bc1  CMP EAX,ECX
00d4ad25  0f8504010000  JNZ 0x00d4ae2f
00d4ad2b  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4ad2e  e90d010000  JMP 0x00d4ae40
00d4ad33  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4ad37  0564c7752e  ADD EAX,0x2e75c764
00d4ad3c  e9fc000000  JMP 0x00d4ae3d
00d4ad41  3d1d4f9e31  CMP EAX,0x319e4f1d
00d4ad46  741d  JZ 0x00d4ad65
00d4ad48  3d4cee6f43  CMP EAX,0x436fee4c
00d4ad4d  0f85dc000000  JNZ 0x00d4ae2f
00d4ad53  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d4ad57  81c1c47f4ed8  ADD ECX,0xd84e7fc4
00d4ad5d  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4ad60  e9db000000  JMP 0x00d4ae40
00d4ad65  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4ad69  81c2b4a28005  ADD EDX,0x580a2b4
00d4ad6f  895608  MOV dword ptr [ESI + 0x8],EDX
00d4ad72  e9c9000000  JMP 0x00d4ae40
00d4ad77  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4ad7b  0544dc8905  ADD EAX,0x589dc44
00d4ad80  e9b8000000  JMP 0x00d4ae3d
00d4ad85  3d0cff6b9a  CMP EAX,0x9a6bff0c
00d4ad8a  7759  JA 0x00d4ade5
00d4ad8c  7448  JZ 0x00d4add6
00d4ad8e  3d3ebded91  CMP EAX,0x91edbd3e
00d4ad93  7720  JA 0x00d4adb5
00d4ad95  0f8455ffffff  JZ 0x00d4acf0
00d4ad9b  3d153c6872  CMP EAX,0x72683c15
00d4ada0  7425  JZ 0x00d4adc7
00d4ada2  3dbce65191  CMP EAX,0x9151e6bc
00d4ada7  0f8443ffffff  JZ 0x00d4acf0
00d4adad  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4adb0  e98b000000  JMP 0x00d4ae40
00d4adb5  3d4148d893  CMP EAX,0x93d84841
00d4adba  7573  JNZ 0x00d4ae2f
00d4adbc  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00d4adc0  85c0  TEST EAX,EAX
00d4adc2  7e03  JLE 0x00d4adc7
00d4adc4  89460c  MOV dword ptr [ESI + 0xc],EAX
00d4adc7  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d4adcb  81c1cc606f62  ADD ECX,0x626f60cc
00d4add1  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4add4  eb6a  JMP 0x00d4ae40
00d4add6  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4adda  81c20cff6b9a  ADD EDX,0x9a6bff0c
00d4ade0  895608  MOV dword ptr [ESI + 0x8],EDX
00d4ade3  eb5b  JMP 0x00d4ae40
00d4ade5  3d86bdedf1  CMP EAX,0xf1edbd86
00d4adea  773c  JA 0x00d4ae28
00d4adec  0f84fefeffff  JZ 0x00d4acf0
00d4adf2  3dc040a1c4  CMP EAX,0xc4a140c0
00d4adf7  7420  JZ 0x00d4ae19
00d4adf9  3d1c95a2de  CMP EAX,0xdea2951c
00d4adfe  752f  JNZ 0x00d4ae2f
00d4ae00  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d4ae04  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4ae08  c1e114  SHL ECX,0x14
00d4ae0b  05cca28005  ADD EAX,0x580a2cc
00d4ae10  0b4c2418  OR ECX,dword ptr [ESP + 0x18]
00d4ae14  894e0c  MOV dword ptr [ESI + 0xc],ECX
00d4ae17  eb24  JMP 0x00d4ae3d
00d4ae19  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4ae1d  81c22c2608f7  ADD EDX,0xf708262c
00d4ae23  895608  MOV dword ptr [ESI + 0x8],EDX
00d4ae26  eb18  JMP 0x00d4ae40
00d4ae28  3d10b7a0f6  CMP EAX,0xf6a0b710
00d4ae2d  7405  JZ 0x00d4ae34
00d4ae2f  894e08  MOV dword ptr [ESI + 0x8],ECX
00d4ae32  eb0c  JMP 0x00d4ae40
00d4ae34  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d4ae38  0510b7a0f6  ADD EAX,0xf6a0b710
00d4ae3d  894608  MOV dword ptr [ESI + 0x8],EAX
00d4ae40  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00d4ae43  85c0  TEST EAX,EAX
00d4ae45  7509  JNZ 0x00d4ae50
00d4ae47  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00d4ae4a  5f  POP EDI
00d4ae4b  894e0c  MOV dword ptr [ESI + 0xc],ECX
00d4ae4e  5e  POP ESI
00d4ae4f  c3  RET
00d4ae50  8b570c  MOV EDX,dword ptr [EDI + 0xc]
00d4ae53  81e2000000f8  AND EDX,0xf8000000
00d4ae59  0bd0  OR EDX,EAX
00d4ae5b  5f  POP EDI
00d4ae5c  89560c  MOV dword ptr [ESI + 0xc],EDX
00d4ae5f  5e  POP ESI
00d4ae60  c3  RET

Owned instructions=255 owned bytes=1009 nonowned bytes=0

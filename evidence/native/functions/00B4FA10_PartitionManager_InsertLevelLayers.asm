# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void PartitionManager_InsertLevelLayers(void * this, int count, uint modeBits)
Owned ranges: [[00b4fa10, 00b4fb02]]

00b4fa10  51  PUSH ECX
00b4fa11  53  PUSH EBX
00b4fa12  55  PUSH EBP
00b4fa13  56  PUSH ESI
00b4fa14  57  PUSH EDI
00b4fa15  8bf1  MOV ESI,ECX
00b4fa17  e8d4ca8fff  CALL 0x0044c4f0
00b4fa1c  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00b4fa20  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00b4fa24  8d6e54  LEA EBP,[ESI + 0x54]
00b4fa27  c744241006000000  MOV dword ptr [ESP + 0x10],0x6
00b4fa2f  90  NOP
00b4fa30  8b4d00  MOV ECX,dword ptr [EBP]
00b4fa33  6a00  PUSH 0x0
00b4fa35  53  PUSH EBX
00b4fa36  57  PUSH EDI
00b4fa37  e824fe0e00  CALL 0x00c3f860
00b4fa3c  83c504  ADD EBP,0x4
00b4fa3f  836c241001  SUB dword ptr [ESP + 0x10],0x1
00b4fa44  75ea  JNZ 0x00b4fa30
00b4fa46  8d6e44  LEA EBP,[ESI + 0x44]
00b4fa49  c744241804000000  MOV dword ptr [ESP + 0x18],0x4
00b4fa51  8b4d00  MOV ECX,dword ptr [EBP]
00b4fa54  53  PUSH EBX
00b4fa55  57  PUSH EDI
00b4fa56  e8557c0b00  CALL 0x00c076b0
00b4fa5b  83c504  ADD EBP,0x4
00b4fa5e  836c241801  SUB dword ptr [ESP + 0x18],0x1
00b4fa63  75ec  JNZ 0x00b4fa51
00b4fa65  84db  TEST BL,BL
00b4fa67  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
00b4fa6a  740b  JZ 0x00b4fa77
00b4fa6c  8b6e20  MOV EBP,dword ptr [ESI + 0x20]
00b4fa6f  89442418  MOV dword ptr [ESP + 0x18],EAX
00b4fa73  03ef  ADD EBP,EDI
00b4fa75  eb09  JMP 0x00b4fa80
00b4fa77  8b6e20  MOV EBP,dword ptr [ESI + 0x20]
00b4fa7a  2bc7  SUB EAX,EDI
00b4fa7c  89442418  MOV dword ptr [ESP + 0x18],EAX
00b4fa80  8b8ea4000000  MOV ECX,dword ptr [ESI + 0xa4]
00b4fa86  6a00  PUSH 0x0
00b4fa88  53  PUSH EBX
00b4fa89  57  PUSH EDI
00b4fa8a  e8e1f8ffff  CALL 0x00b4f370
00b4fa8f  85ff  TEST EDI,EDI
00b4fa91  7e31  JLE 0x00b4fac4
00b4fa93  84db  TEST BL,BL
00b4fa95  743f  JZ 0x00b4fad6
00b4fa97  8b86a4000000  MOV EAX,dword ptr [ESI + 0xa4]
00b4fa9d  8b4810  MOV ECX,dword ptr [EAX + 0x10]
00b4faa0  8b5014  MOV EDX,dword ptr [EAX + 0x14]
00b4faa3  8b4620  MOV EAX,dword ptr [ESI + 0x20]
00b4faa6  83c001  ADD EAX,0x1
00b4faa9  0fafc1  IMUL EAX,ECX
00b4faac  8d7d01  LEA EDI,[EBP + 0x1]
00b4faaf  0faff9  IMUL EDI,ECX
00b4fab2  03c2  ADD EAX,EDX
00b4fab4  2bf8  SUB EDI,EAX
00b4fab6  03fa  ADD EDI,EDX
00b4fab8  57  PUSH EDI
00b4fab9  6a00  PUSH 0x0
00b4fabb  50  PUSH EAX
00b4fabc  e8d7f74200  CALL 0x00f7f298
00b4fac1  83c40c  ADD ESP,0xc
00b4fac4  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00b4fac8  5f  POP EDI
00b4fac9  896e20  MOV dword ptr [ESI + 0x20],EBP
00b4facc  894e1c  MOV dword ptr [ESI + 0x1c],ECX
00b4facf  5e  POP ESI
00b4fad0  5d  POP EBP
00b4fad1  5b  POP EBX
00b4fad2  59  POP ECX
00b4fad3  c20800  RET 0x8
00b4fad6  8b8ea4000000  MOV ECX,dword ptr [ESI + 0xa4]
00b4fadc  8b5110  MOV EDX,dword ptr [ECX + 0x10]
00b4fadf  8b4114  MOV EAX,dword ptr [ECX + 0x14]
00b4fae2  0fafd7  IMUL EDX,EDI
00b4fae5  52  PUSH EDX
00b4fae6  6a00  PUSH 0x0
00b4fae8  50  PUSH EAX
00b4fae9  e8aaf74200  CALL 0x00f7f298
00b4faee  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00b4faf2  83c40c  ADD ESP,0xc
00b4faf5  5f  POP EDI
00b4faf6  896e20  MOV dword ptr [ESI + 0x20],EBP
00b4faf9  89461c  MOV dword ptr [ESI + 0x1c],EAX
00b4fafc  5e  POP ESI
00b4fafd  5d  POP EBP
00b4fafe  5b  POP EBX
00b4faff  59  POP ECX
00b4fb00  c20800  RET 0x8

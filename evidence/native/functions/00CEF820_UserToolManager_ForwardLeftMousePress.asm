# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00cef820 UserToolManager_ForwardLeftMousePress
# Body [[00cef820, 00cef8da]]; owned bytes=187
# Left-button1000 only; changed UI modifiers precede floor conversion of client x/y. ECX manager, four stack words, RET10hex; dispatch tool virtual0C. Finite screen floor uses integer conversion and residual adjustment; arbitrary FPU traps/out-of-range behavior unresolved.
00cef820  51  PUSH ECX
00cef821  817c2410e8030000  CMP dword ptr [ESP + 0x10],0x3e8
00cef829  56  PUSH ESI
00cef82a  8bf1  MOV ESI,ECX
00cef82c  0f85a4000000  JNZ 0x00cef8d6
00cef832  8b462c  MOV EAX,dword ptr [ESI + 0x2c]
00cef835  85c0  TEST EAX,EAX
00cef837  0f8499000000  JZ 0x00cef8d6
00cef83d  57  PUSH EDI
00cef83e  8b780c  MOV EDI,dword ptr [EAX + 0xc]
00cef841  85ff  TEST EDI,EDI
00cef843  740d  JZ 0x00cef852
00cef845  8d87d0000000  LEA EAX,[EDI + 0xd0]
00cef84b  50  PUSH EAX
00cef84c  ff152c61f900  CALL dword ptr [0x00f9612c]
00cef852  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
00cef855  8b11  MOV EDX,dword ptr [ECX]
00cef857  8b422c  MOV EAX,dword ptr [EDX + 0x2c]
00cef85a  ffd0  CALL EAX
00cef85c  84c0  TEST AL,AL
00cef85e  7564  JNZ 0x00cef8c4
00cef860  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
00cef863  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00cef867  c6411401  MOV byte ptr [ECX + 0x14],0x1
00cef86b  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
00cef86e  52  PUSH EDX
00cef86f  e8bcf0fdff  CALL 0x00cce930
00cef874  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
00cef877  d9442414  FLD float ptr [ESP + 0x14]
00cef87b  db542418  FIST dword ptr [ESP + 0x18]
00cef87f  db442418  FILD dword ptr [ESP + 0x18]
00cef883  dee9  FSUBP
00cef885  d95c241c  FSTP float ptr [ESP + 0x1c]
00cef889  817c241c01000080  CMP dword ptr [ESP + 0x1c],0x80000001
00cef891  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00cef895  83d0ff  ADC EAX,-0x1
00cef898  8bd0  MOV EDX,EAX
00cef89a  d9442410  FLD float ptr [ESP + 0x10]
00cef89e  db542408  FIST dword ptr [ESP + 0x8]
00cef8a2  db442408  FILD dword ptr [ESP + 0x8]
00cef8a6  dee9  FSUBP
00cef8a8  d95c2414  FSTP float ptr [ESP + 0x14]
00cef8ac  817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
00cef8b4  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00cef8b8  83d0ff  ADC EAX,-0x1
00cef8bb  8b31  MOV ESI,dword ptr [ECX]
00cef8bd  52  PUSH EDX
00cef8be  50  PUSH EAX
00cef8bf  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00cef8c2  ffd0  CALL EAX
00cef8c4  85ff  TEST EDI,EDI
00cef8c6  740d  JZ 0x00cef8d5
00cef8c8  81c7d0000000  ADD EDI,0xd0
00cef8ce  57  PUSH EDI
00cef8cf  ff153061f900  CALL dword ptr [0x00f96130]
00cef8d5  5f  POP EDI
00cef8d6  5e  POP ESI
00cef8d7  59  POP ECX
00cef8d8  c21000  RET 0x10

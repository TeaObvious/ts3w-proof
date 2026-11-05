# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ScriptComponent_ReadStoredClass
Paired actual annotated Ghidra pseudocode: 0094E440_ScriptComponent_ReadStoredClass.c
Owned ranges: [[0094e440, 0094e511]]
Envelope bytes=210

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0094e440  83ec20  SUB ESP,0x20
0094e443  807c242c00  CMP byte ptr [ESP + 0x2c],0x0
0094e448  56  PUSH ESI
0094e449  8bf1  MOV ESI,ECX
0094e44b  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
0094e44f  b8548e1c01  MOV EAX,0x11c8e54
0094e454  7452  JZ 0x0094e4a8
0094e456  89442414  MOV dword ptr [ESP + 0x14],EAX
0094e45a  89442418  MOV dword ptr [ESP + 0x18],EAX
0094e45e  8d442414  LEA EAX,[ESP + 0x14]
0094e462  50  PUSH EAX
0094e463  6860900ebe  PUSH 0xbe0e9060
0094e468  c6462001  MOV byte ptr [ESI + 0x20],0x1
0094e46c  c7442428144f0401  MOV dword ptr [ESP + 0x28],0x1044f14
0094e474  c7442424558e1c01  MOV dword ptr [ESP + 0x24],0x11c8e55
0094e47c  e8bf71e8ff  CALL 0x007d5640
0094e481  84c0  TEST AL,AL
0094e483  7419  JZ 0x0094e49e
0094e485  8d4c2414  LEA ECX,[ESP + 0x14]
0094e489  51  PUSH ECX
0094e48a  8d5610  LEA EDX,[ESI + 0x10]
0094e48d  52  PUSH EDX
0094e48e  e88d414200  CALL 0x00d72620
0094e493  83c408  ADD ESP,0x8
0094e496  84c0  TEST AL,AL
0094e498  7404  JZ 0x0094e49e
0094e49a  c6462000  MOV byte ptr [ESI + 0x20],0x0
0094e49e  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
0094e4a2  8b442414  MOV EAX,dword ptr [ESP + 0x14]
0094e4a6  eb4d  JMP 0x0094e4f5
0094e4a8  8d542404  LEA EDX,[ESP + 0x4]
0094e4ac  52  PUSH EDX
0094e4ad  6860900ebe  PUSH 0xbe0e9060
0094e4b2  c7442418144f0401  MOV dword ptr [ESP + 0x18],0x1044f14
0094e4ba  8944240c  MOV dword ptr [ESP + 0xc],EAX
0094e4be  89442410  MOV dword ptr [ESP + 0x10],EAX
0094e4c2  c7442414558e1c01  MOV dword ptr [ESP + 0x14],0x11c8e55
0094e4ca  e87171e8ff  CALL 0x007d5640
0094e4cf  84c0  TEST AL,AL
0094e4d1  741a  JZ 0x0094e4ed
0094e4d3  8d4e10  LEA ECX,[ESI + 0x10]
0094e4d6  8d442404  LEA EAX,[ESP + 0x4]
0094e4da  3bc1  CMP EAX,ECX
0094e4dc  740f  JZ 0x0094e4ed
0094e4de  8b542408  MOV EDX,dword ptr [ESP + 0x8]
0094e4e2  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0094e4e6  52  PUSH EDX
0094e4e7  50  PUSH EAX
0094e4e8  e82374abff  CALL 0x00405910
0094e4ed  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0094e4f1  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0094e4f5  2bc8  SUB ECX,EAX
0094e4f7  83f901  CMP ECX,0x1
0094e4fa  7e0d  JLE 0x0094e509
0094e4fc  85c0  TEST EAX,EAX
0094e4fe  7409  JZ 0x0094e509
0094e500  50  PUSH EAX
0094e501  e8da5fb9ff  CALL 0x004e44e0
0094e506  83c404  ADD ESP,0x4
0094e509  b001  MOV AL,0x1
0094e50b  5e  POP ESI
0094e50c  83c420  ADD ESP,0x20
0094e50f  c20c00  RET 0xc
Owned instructions=63 owned bytes=210 gap/nonowned bytes=0

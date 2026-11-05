# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00CE5D10_ProductSort_ConstructOrdering.c
Owned ranges: [[00ce5d10, 00ce5d6d]]

00ce5d10  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00ce5d14  83fa04  CMP EDX,0x4
00ce5d17  8bc1  MOV EAX,ECX
00ce5d19  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00ce5d1d  c70000000000  MOV dword ptr [EAX],0x0
00ce5d23  894804  MOV dword ptr [EAX + 0x4],ECX
00ce5d26  752a  JNZ 0x00ce5d52
00ce5d28  85c9  TEST ECX,ECX
00ce5d2a  743f  JZ 0x00ce5d6b
00ce5d2c  817920ffffffef  CMP dword ptr [ECX + 0x20],0xefffffff
00ce5d33  7527  JNZ 0x00ce5d5c
00ce5d35  8b5118  MOV EDX,dword ptr [ECX + 0x18]
00ce5d38  23511c  AND EDX,dword ptr [ECX + 0x1c]
00ce5d3b  83faff  CMP EDX,-0x1
00ce5d3e  7409  JZ 0x00ce5d49
00ce5d40  c70002000000  MOV dword ptr [EAX],0x2
00ce5d46  c20800  RET 0x8
00ce5d49  c70001000000  MOV dword ptr [EAX],0x1
00ce5d4f  c20800  RET 0x8
00ce5d52  83fa0e  CMP EDX,0xe
00ce5d55  740e  JZ 0x00ce5d65
00ce5d57  83fa17  CMP EDX,0x17
00ce5d5a  7409  JZ 0x00ce5d65
00ce5d5c  c70003000000  MOV dword ptr [EAX],0x3
00ce5d62  c20800  RET 0x8
00ce5d65  c70004000000  MOV dword ptr [EAX],0x4
00ce5d6b  c20800  RET 0x8

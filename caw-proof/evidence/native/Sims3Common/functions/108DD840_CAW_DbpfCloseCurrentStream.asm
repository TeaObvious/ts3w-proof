# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108dd840..108dd8ac; CAW_DbpfCloseCurrentStream
108dd840: 53  PUSH EBX
108dd841: 56  PUSH ESI
108dd842: 8bf1  MOV ESI,ECX
108dd844: 57  PUSH EDI
108dd845: 8d9ea0020000  LEA EBX,[ESI + 0x2a0]
108dd84b: 680077b810  PUSH 0x10b87700
108dd850: 8bcb  MOV ECX,EBX
108dd852: e8698e0300  CALL 0x109166c0
108dd857: 33ff  XOR EDI,EDI
108dd859: 39be64020000  CMP dword ptr [ESI + 0x264],EDI
108dd85f: 7406  JZ 0x108dd867
108dd861: 89be6c020000  MOV dword ptr [ESI + 0x26c],EDI
108dd867: 8b8e60020000  MOV ECX,dword ptr [ESI + 0x260]
108dd86d: 3bcf  CMP ECX,EDI
108dd86f: 7407  JZ 0x108dd878
108dd871: 8b01  MOV EAX,dword ptr [ECX]
108dd873: 8b5018  MOV EDX,dword ptr [EAX + 0x18]
108dd876: ffd2  CALL EDX
108dd878: 8d4634  LEA EAX,[ESI + 0x34]
108dd87b: 398660020000  CMP dword ptr [ESI + 0x260],EAX
108dd881: 7517  JNZ 0x108dd89a
108dd883: 8b8e60020000  MOV ECX,dword ptr [ESI + 0x260]
108dd889: 3bcf  CMP ECX,EDI
108dd88b: 740d  JZ 0x108dd89a
108dd88d: 89be60020000  MOV dword ptr [ESI + 0x260],EDI
108dd893: 8b11  MOV EDX,dword ptr [ECX]
108dd895: 8b4208  MOV EAX,dword ptr [EDX + 0x8]
108dd898: ffd0  CALL EAX
108dd89a: 8bcb  MOV ECX,EBX
108dd89c: 897e14  MOV dword ptr [ESI + 0x14],EDI
108dd89f: 897e1c  MOV dword ptr [ESI + 0x1c],EDI
108dd8a2: e8d98e0300  CALL 0x10916780
108dd8a7: 5f  POP EDI
108dd8a8: 5e  POP ESI
108dd8a9: b001  MOV AL,0x1
108dd8ab: 5b  POP EBX
108dd8ac: c3  RET

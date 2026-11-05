# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ResourceKey_MakeAlternate(uint * param_1, uint * param_2)
Owned ranges: [[007d77b0, 007d783a]]

007d77b0  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007d77b4  f7410c000000f0  TEST dword ptr [ECX + 0xc],0xf0000000
007d77bb  741b  JZ 0x007d77d8
007d77bd  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d77c1  8b11  MOV EDX,dword ptr [ECX]
007d77c3  8910  MOV dword ptr [EAX],EDX
007d77c5  8b5104  MOV EDX,dword ptr [ECX + 0x4]
007d77c8  895004  MOV dword ptr [EAX + 0x4],EDX
007d77cb  8b5108  MOV EDX,dword ptr [ECX + 0x8]
007d77ce  8b490c  MOV ECX,dword ptr [ECX + 0xc]
007d77d1  895008  MOV dword ptr [EAX + 0x8],EDX
007d77d4  89480c  MOV dword ptr [EAX + 0xc],ECX
007d77d7  c3  RET
007d77d8  8b510c  MOV EDX,dword ptr [ECX + 0xc]
007d77db  53  PUSH EBX
007d77dc  8b5908  MOV EBX,dword ptr [ECX + 0x8]
007d77df  56  PUSH ESI
007d77e0  8b31  MOV ESI,dword ptr [ECX]
007d77e2  57  PUSH EDI
007d77e3  8b7904  MOV EDI,dword ptr [ECX + 0x4]
007d77e6  81f200000008  XOR EDX,0x8000000
007d77ec  85ff  TEST EDI,EDI
007d77ee  7538  JNZ 0x007d7828
007d77f0  f7c6000000f8  TEST ESI,0xf8000000
007d77f6  7530  JNZ 0x007d7828
007d77f8  8bcb  MOV ECX,EBX
007d77fa  81f9f1846873  CMP ECX,0x736884f1
007d7800  7420  JZ 0x007d7822
007d7802  81f94ad1c594  CMP ECX,0x94c5d14a
007d7808  7418  JZ 0x007d7822
007d780a  81f9340fd101  CMP ECX,0x1d10f34
007d7810  7410  JZ 0x007d7822
007d7812  81f933126601  CMP ECX,0x1661233
007d7818  7408  JZ 0x007d7822
007d781a  81f9676cae00  CMP ECX,0xae6c67
007d7820  7506  JNZ 0x007d7828
007d7822  81f600000008  XOR ESI,0x8000000
007d7828  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007d782c  8930  MOV dword ptr [EAX],ESI
007d782e  897804  MOV dword ptr [EAX + 0x4],EDI
007d7831  5f  POP EDI
007d7832  895808  MOV dword ptr [EAX + 0x8],EBX
007d7835  5e  POP ESI
007d7836  89500c  MOV dword ptr [EAX + 0xc],EDX
007d7839  5b  POP EBX
007d783a  c3  RET

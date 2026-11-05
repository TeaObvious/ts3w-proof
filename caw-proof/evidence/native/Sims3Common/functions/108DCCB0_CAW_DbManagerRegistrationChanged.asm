# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108dccb0..108dcd55; CAW_DbManagerRegistrationChanged
108dccb0: 53  PUSH EBX
108dccb1: 56  PUSH ESI
108dccb2: 33db  XOR EBX,EBX
108dccb4: 385c240c  CMP byte ptr [ESP + 0xc],BL
108dccb8: 57  PUSH EDI
108dccb9: 8bf1  MOV ESI,ECX
108dccbb: 7451  JZ 0x108dcd0e
108dccbd: 8b8690030000  MOV EAX,dword ptr [ESI + 0x390]
108dccc3: 3bc3  CMP EAX,EBX
108dccc5: 8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
108dccc9: 7414  JZ 0x108dccdf
108dcccb: 3bf8  CMP EDI,EAX
108dcccd: 7410  JZ 0x108dccdf
108dcccf: 8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
108dccd3: 8b16  MOV EDX,dword ptr [ESI]
108dccd5: 8b5248  MOV EDX,dword ptr [EDX + 0x48]
108dccd8: 51  PUSH ECX
108dccd9: 50  PUSH EAX
108dccda: 53  PUSH EBX
108dccdb: 8bce  MOV ECX,ESI
108dccdd: ffd2  CALL EDX
108dccdf: 3bfb  CMP EDI,EBX
108dcce1: 746b  JZ 0x108dcd4e
108dcce3: 385c2418  CMP byte ptr [ESP + 0x18],BL
108dcce7: 7410  JZ 0x108dccf9
108dcce9: 89be90030000  MOV dword ptr [ESI + 0x390],EDI
108dccef: 5f  POP EDI
108dccf0: b301  MOV BL,0x1
108dccf2: 5e  POP ESI
108dccf3: 8ac3  MOV AL,BL
108dccf5: 5b  POP EBX
108dccf6: c20c00  RET 0xc
108dccf9: 8b07  MOV EAX,dword ptr [EDI]
108dccfb: 8b5034  MOV EDX,dword ptr [EAX + 0x34]
108dccfe: 53  PUSH EBX
108dccff: 56  PUSH ESI
108dcd00: 6a01  PUSH 0x1
108dcd02: 8bcf  MOV ECX,EDI
108dcd04: ffd2  CALL EDX
108dcd06: 5f  POP EDI
108dcd07: 5e  POP ESI
108dcd08: 8ad8  MOV BL,AL
108dcd0a: 5b  POP EBX
108dcd0b: c20c00  RET 0xc
108dcd0e: 8b442414  MOV EAX,dword ptr [ESP + 0x14]
108dcd12: 3bc3  CMP EAX,EBX
108dcd14: 7410  JZ 0x108dcd26
108dcd16: 3b8690030000  CMP EAX,dword ptr [ESI + 0x390]
108dcd1c: 7408  JZ 0x108dcd26
108dcd1e: 5f  POP EDI
108dcd1f: 5e  POP ESI
108dcd20: 32c0  XOR AL,AL
108dcd22: 5b  POP EBX
108dcd23: c20c00  RET 0xc
108dcd26: 385c2418  CMP byte ptr [ESP + 0x18],BL
108dcd2a: 7410  JZ 0x108dcd3c
108dcd2c: 899e90030000  MOV dword ptr [ESI + 0x390],EBX
108dcd32: 5f  POP EDI
108dcd33: b301  MOV BL,0x1
108dcd35: 5e  POP ESI
108dcd36: 8ac3  MOV AL,BL
108dcd38: 5b  POP EBX
108dcd39: c20c00  RET 0xc
108dcd3c: 8b8e90030000  MOV ECX,dword ptr [ESI + 0x390]
108dcd42: 8b01  MOV EAX,dword ptr [ECX]
108dcd44: 8b5034  MOV EDX,dword ptr [EAX + 0x34]
108dcd47: 53  PUSH EBX
108dcd48: 56  PUSH ESI
108dcd49: 53  PUSH EBX
108dcd4a: ffd2  CALL EDX
108dcd4c: 8ad8  MOV BL,AL
108dcd4e: 5f  POP EDI
108dcd4f: 5e  POP ESI
108dcd50: 8ac3  MOV AL,BL
108dcd52: 5b  POP EBX
108dcd53: c20c00  RET 0xc

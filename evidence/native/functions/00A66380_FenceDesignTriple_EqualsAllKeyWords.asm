# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FenceDesignTriple_EqualsAllKeyWords(void * this, uint * otherTripleWords)
Owned ranges: [[00a66380, 00a663ee]]

00a66380  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00a66384  8b10  MOV EDX,dword ptr [EAX]
00a66386  3b11  CMP EDX,dword ptr [ECX]
00a66388  7560  JNZ 0x00a663ea
00a6638a  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00a6638d  3b5108  CMP EDX,dword ptr [ECX + 0x8]
00a66390  7558  JNZ 0x00a663ea
00a66392  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00a66395  3b510c  CMP EDX,dword ptr [ECX + 0xc]
00a66398  7550  JNZ 0x00a663ea
00a6639a  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00a6639d  3b5104  CMP EDX,dword ptr [ECX + 0x4]
00a663a0  7548  JNZ 0x00a663ea
00a663a2  8b5010  MOV EDX,dword ptr [EAX + 0x10]
00a663a5  3b5110  CMP EDX,dword ptr [ECX + 0x10]
00a663a8  7540  JNZ 0x00a663ea
00a663aa  8b5018  MOV EDX,dword ptr [EAX + 0x18]
00a663ad  3b5118  CMP EDX,dword ptr [ECX + 0x18]
00a663b0  7538  JNZ 0x00a663ea
00a663b2  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
00a663b5  3b511c  CMP EDX,dword ptr [ECX + 0x1c]
00a663b8  7530  JNZ 0x00a663ea
00a663ba  8b5014  MOV EDX,dword ptr [EAX + 0x14]
00a663bd  3b5114  CMP EDX,dword ptr [ECX + 0x14]
00a663c0  7528  JNZ 0x00a663ea
00a663c2  8b5020  MOV EDX,dword ptr [EAX + 0x20]
00a663c5  3b5120  CMP EDX,dword ptr [ECX + 0x20]
00a663c8  7520  JNZ 0x00a663ea
00a663ca  8b5028  MOV EDX,dword ptr [EAX + 0x28]
00a663cd  3b5128  CMP EDX,dword ptr [ECX + 0x28]
00a663d0  7518  JNZ 0x00a663ea
00a663d2  8b502c  MOV EDX,dword ptr [EAX + 0x2c]
00a663d5  3b512c  CMP EDX,dword ptr [ECX + 0x2c]
00a663d8  7510  JNZ 0x00a663ea
00a663da  8b4024  MOV EAX,dword ptr [EAX + 0x24]
00a663dd  3b4124  CMP EAX,dword ptr [ECX + 0x24]
00a663e0  7508  JNZ 0x00a663ea
00a663e2  b801000000  MOV EAX,0x1
00a663e7  c20400  RET 0x4
00a663ea  33c0  XOR EAX,EAX
00a663ec  c20400  RET 0x4

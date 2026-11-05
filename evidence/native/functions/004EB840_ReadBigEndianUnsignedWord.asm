# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004eb840, 004eb88f]]
Signature: uint ReadBigEndianUnsignedWord(uint * param_1, int param_2)

004eb840  8b442408  MOV EAX,dword ptr [ESP + 0x8]
004eb844  83f801  CMP EAX,0x1
004eb847  7508  JNZ 0x004eb851
004eb849  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004eb84d  0fb600  MOVZX EAX,byte ptr [EAX]
004eb850  c3  RET
004eb851  83f804  CMP EAX,0x4
004eb854  7509  JNZ 0x004eb85f
004eb856  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
004eb85a  8b01  MOV EAX,dword ptr [ECX]
004eb85c  0fc8  BSWAP EAX
004eb85e  c3  RET
004eb85f  83f802  CMP EAX,0x2
004eb862  750f  JNZ 0x004eb873
004eb864  8b542404  MOV EDX,dword ptr [ESP + 0x4]
004eb868  668b02  MOV AX,word ptr [EDX]
004eb86b  8ae8  MOV CH,AL
004eb86d  8acc  MOV CL,AH
004eb86f  0fb7c1  MOVZX EAX,CX
004eb872  c3  RET
004eb873  83f803  CMP EAX,0x3
004eb876  7515  JNZ 0x004eb88d
004eb878  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004eb87c  33d2  XOR EDX,EDX
004eb87e  8a30  MOV DH,byte ptr [EAX]
004eb880  8a5001  MOV DL,byte ptr [EAX + 0x1]
004eb883  0fb64002  MOVZX EAX,byte ptr [EAX + 0x2]
004eb887  c1e208  SHL EDX,0x8
004eb88a  0bc2  OR EAX,EDX
004eb88c  c3  RET
004eb88d  33c0  XOR EAX,EAX
004eb88f  c3  RET

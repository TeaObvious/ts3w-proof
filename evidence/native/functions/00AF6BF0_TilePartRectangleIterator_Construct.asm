# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TilePartRectangleIterator_Construct(void * this, undefined2 * param_1, undefined2 * param_2)
Owned ranges: [[00af6bf0, 00af6c39]]

00af6bf0  8bc1  MOV EAX,ECX
00af6bf2  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00af6bf6  0fb711  MOVZX EDX,word ptr [ECX]
00af6bf9  668910  MOV word ptr [EAX],DX
00af6bfc  0fb64902  MOVZX ECX,byte ptr [ECX + 0x2]
00af6c00  884802  MOV byte ptr [EAX + 0x2],CL
00af6c03  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00af6c07  0fb711  MOVZX EDX,word ptr [ECX]
00af6c0a  66895003  MOV word ptr [EAX + 0x3],DX
00af6c0e  0fb64902  MOVZX ECX,byte ptr [ECX + 0x2]
00af6c12  884805  MOV byte ptr [EAX + 0x5],CL
00af6c15  80c9ff  OR CL,0xff
00af6c18  884806  MOV byte ptr [EAX + 0x6],CL
00af6c1b  884807  MOV byte ptr [EAX + 0x7],CL
00af6c1e  c6400800  MOV byte ptr [EAX + 0x8],0x0
00af6c22  884809  MOV byte ptr [EAX + 0x9],CL
00af6c25  0fb710  MOVZX EDX,word ptr [EAX]
00af6c28  0fb64802  MOVZX ECX,byte ptr [EAX + 0x2]
00af6c2c  66895006  MOV word ptr [EAX + 0x6],DX
00af6c30  884808  MOV byte ptr [EAX + 0x8],CL
00af6c33  c6400901  MOV byte ptr [EAX + 0x9],0x1
00af6c37  c20800  RET 0x8

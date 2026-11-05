# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined MoveObjects_CommandHandler(void)
Owned ranges: [[00cfa8f0, 00cfa935]]

00cfa8f0  817c240496d0f005  CMP dword ptr [ESP + 0x4],0x5f0d096
00cfa8f8  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00cfa8fc  7526  JNZ 0x00cfa924
00cfa8fe  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00cfa901  3b410c  CMP EAX,dword ptr [ECX + 0xc]
00cfa904  741e  JZ 0x00cfa924
00cfa906  6683780a01  CMP word ptr [EAX + 0xa],0x1
00cfa90b  7517  JNZ 0x00cfa924
00cfa90d  8a4010  MOV AL,byte ptr [EAX + 0x10]
00cfa910  33d2  XOR EDX,EDX
00cfa912  a2b8e71e01  MOV [0x011ee7b8],AL
00cfa917  81c1d8000000  ADD ECX,0xd8
00cfa91d  8711  XCHG dword ptr [ECX],EDX
00cfa91f  b001  MOV AL,0x1
00cfa921  c20800  RET 0x8
00cfa924  b802000000  MOV EAX,0x2
00cfa929  81c1d8000000  ADD ECX,0xd8
00cfa92f  8701  XCHG dword ptr [ECX],EAX
00cfa931  32c0  XOR AL,AL
00cfa933  c20800  RET 0x8

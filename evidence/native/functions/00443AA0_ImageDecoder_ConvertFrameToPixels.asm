# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ImageDecoder_ConvertFrameToPixels(void * this, pointer frame, pointer data, uint rowPitch)
Owned ranges: [[00443aa0, 00443ad2]]

00443aa0  80791000  CMP byte ptr [ECX + 0x10],0x0
00443aa4  7428  JZ 0x00443ace
00443aa6  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00443aa9  85c0  TEST EAX,EAX
00443aab  7421  JZ 0x00443ace
00443aad  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00443ab1  8b490c  MOV ECX,dword ptr [ECX + 0xc]
00443ab4  52  PUSH EDX
00443ab5  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00443ab9  52  PUSH EDX
00443aba  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00443abe  52  PUSH EDX
00443abf  8b5018  MOV EDX,dword ptr [EAX + 0x18]
00443ac2  51  PUSH ECX
00443ac3  ffd2  CALL EDX
00443ac5  f7d8  NEG EAX
00443ac7  1bc0  SBB EAX,EAX
00443ac9  f7d8  NEG EAX
00443acb  c20c00  RET 0xc
00443ace  32c0  XOR AL,AL
00443ad0  c20c00  RET 0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Version_ReadContentVersion
Paired actual annotated Ghidra pseudocode: 007DA080_Version_ReadContentVersion.c
Owned ranges: [[007da080, 007da11c]]
Envelope bytes=157

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007da080  81ec18020000  SUB ESP,0x218
007da086  8d842420020000  LEA EAX,[ESP + 0x220]
007da08d  50  PUSH EAX
007da08e  b9e0ed1c01  MOV ECX,0x11cede0
007da093  e878b4dbff  CALL 0x00595510
007da098  85c0  TEST EAX,EAX
007da09a  7509  JNZ 0x007da0a5
007da09c  32c0  XOR AL,AL
007da09e  81c418020000  ADD ESP,0x218
007da0a4  c3  RET
007da0a5  8d4c2410  LEA ECX,[ESP + 0x10]
007da0a9  8bd1  MOV EDX,ECX
007da0ab  894c2404  MOV dword ptr [ESP + 0x4],ECX
007da0af  8d8c2418020000  LEA ECX,[ESP + 0x218]
007da0b6  894c2408  MOV dword ptr [ESP + 0x8],ECX
007da0ba  891424  MOV dword ptr [ESP],EDX
007da0bd  66c74424100000  MOV word ptr [ESP + 0x10],0x0
007da0c4  8b10  MOV EDX,dword ptr [EAX]
007da0c6  52  PUSH EDX
007da0c7  8d4c2404  LEA ECX,[ESP + 0x4]
007da0cb  e830b01e00  CALL 0x009c5100
007da0d0  b8b0080001  MOV EAX,0x10008b0
007da0d5  83c002  ADD EAX,0x2
007da0d8  66833800  CMP word ptr [EAX],0x0
007da0dc  75f7  JNZ 0x007da0d5
007da0de  2db0080001  SUB EAX,0x10008b0
007da0e3  d1f8  SAR EAX,0x1
007da0e5  8d0445b0080001  LEA EAX,[EAX*0x2 + 0x10008b0]
007da0ec  50  PUSH EAX
007da0ed  68b0080001  PUSH 0x10008b0
007da0f2  8d4c2408  LEA ECX,[ESP + 0x8]
007da0f6  e875661d00  CALL 0x009b0770
007da0fb  8b8c241c020000  MOV ECX,dword ptr [ESP + 0x21c]
007da102  8b1424  MOV EDX,dword ptr [ESP]
007da105  6a01  PUSH 0x1
007da107  51  PUSH ECX
007da108  6818b70101  PUSH 0x101b718
007da10d  52  PUSH EDX
007da10e  e88dfbffff  CALL 0x007d9ca0
007da113  83c410  ADD ESP,0x10
007da116  81c418020000  ADD ESP,0x218
007da11c  c3  RET
Owned instructions=42 owned bytes=157 gap/nonowned bytes=0

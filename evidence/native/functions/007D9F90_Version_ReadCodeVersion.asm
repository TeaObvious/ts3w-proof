# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Version_ReadCodeVersion
Paired actual annotated Ghidra pseudocode: 007D9F90_Version_ReadCodeVersion.c
Owned ranges: [[007d9f90, 007da00c] [007da010, 007da07d]]
Envelope bytes=238

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d9f90  81ec18020000  SUB ESP,0x218
007d9f96  53  PUSH EBX
007d9f97  6898b70101  PUSH 0x101b798
007d9f9c  68e8d7fc00  PUSH 0xfcd7e8
007d9fa1  b301  MOV BL,0x1
007d9fa3  ff158c66f900  CALL dword ptr [0x00f9668c]
007d9fa9  83c408  ADD ESP,0x8
007d9fac  85c0  TEST EAX,EAX
007d9fae  7520  JNZ 0x007d9fd0
007d9fb0  8b8c2420020000  MOV ECX,dword ptr [ESP + 0x220]
007d9fb7  689db70101  PUSH 0x101b79d
007d9fbc  6898b70101  PUSH 0x101b798
007d9fc1  e84ab9c2ff  CALL 0x00405910
007d9fc6  32c0  XOR AL,AL
007d9fc8  5b  POP EBX
007d9fc9  81c418020000  ADD ESP,0x218
007d9fcf  c3  RET
007d9fd0  8d442414  LEA EAX,[ESP + 0x14]
007d9fd4  8bc8  MOV ECX,EAX
007d9fd6  894c2404  MOV dword ptr [ESP + 0x4],ECX
007d9fda  8d94241c020000  LEA EDX,[ESP + 0x21c]
007d9fe1  b9e0ed1c01  MOV ECX,0x11cede0
007d9fe6  89442408  MOV dword ptr [ESP + 0x8],EAX
007d9fea  8954240c  MOV dword ptr [ESP + 0xc],EDX
007d9fee  66c74424140000  MOV word ptr [ESP + 0x14],0x0
007d9ff5  e8e6f1d6ff  CALL 0x005491e0
007d9ffa  8b00  MOV EAX,dword ptr [EAX]
007d9ffc  50  PUSH EAX
007d9ffd  8d4c2408  LEA ECX,[ESP + 0x8]
007da001  e8fab01e00  CALL 0x009c5100
007da006  b874b70101  MOV EAX,0x101b774
007da00b  eb03  JMP 0x007da010
007da00d  8d  .byte (gap/alignment)
007da00e  49  .byte (gap/alignment)
007da00f  00  .byte (gap/alignment)
007da010  83c002  ADD EAX,0x2
007da013  66833800  CMP word ptr [EAX],0x0
007da017  75f7  JNZ 0x007da010
007da019  2d74b70101  SUB EAX,0x101b774
007da01e  d1f8  SAR EAX,0x1
007da020  56  PUSH ESI
007da021  8d0c4574b70101  LEA ECX,[EAX*0x2 + 0x101b774]
007da028  51  PUSH ECX
007da029  6874b70101  PUSH 0x101b774
007da02e  8d4c2410  LEA ECX,[ESP + 0x10]
007da032  e839671d00  CALL 0x009b0770
007da037  8bb42424020000  MOV ESI,dword ptr [ESP + 0x224]
007da03e  8b542408  MOV EDX,dword ptr [ESP + 0x8]
007da042  6a01  PUSH 0x1
007da044  56  PUSH ESI
007da045  6818b70101  PUSH 0x101b718
007da04a  52  PUSH EDX
007da04b  e850fcffff  CALL 0x007d9ca0
007da050  83c410  ADD ESP,0x10
007da053  84c0  TEST AL,AL
007da055  751c  JNZ 0x007da073
007da057  6847c5fc00  PUSH 0xfcc547
007da05c  6840c5fc00  PUSH 0xfcc540
007da061  8bce  MOV ECX,ESI
007da063  e8a8b8c2ff  CALL 0x00405910
007da068  5e  POP ESI
007da069  32c0  XOR AL,AL
007da06b  5b  POP EBX
007da06c  81c418020000  ADD ESP,0x218
007da072  c3  RET
007da073  5e  POP ESI
007da074  8ac3  MOV AL,BL
007da076  5b  POP EBX
007da077  81c418020000  ADD ESP,0x218
007da07d  c3  RET
Owned instructions=67 owned bytes=235 gap/nonowned bytes=3

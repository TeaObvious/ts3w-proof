# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ResourceKey_CopyWithMountedCandidate(uint * outKey, uint * key)
Owned ranges: [[007d8310, 007d83cd]]

007d8310  83ec10  SUB ESP,0x10
007d8313  56  PUSH ESI
007d8314  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
007d8318  f7460c000000f0  TEST dword ptr [ESI + 0xc],0xf0000000
007d831f  741f  JZ 0x007d8340
007d8321  8b442418  MOV EAX,dword ptr [ESP + 0x18]
007d8325  8b0e  MOV ECX,dword ptr [ESI]
007d8327  8b5604  MOV EDX,dword ptr [ESI + 0x4]
007d832a  8908  MOV dword ptr [EAX],ECX
007d832c  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d832f  895004  MOV dword ptr [EAX + 0x4],EDX
007d8332  8b560c  MOV EDX,dword ptr [ESI + 0xc]
007d8335  894808  MOV dword ptr [EAX + 0x8],ECX
007d8338  89500c  MOV dword ptr [EAX + 0xc],EDX
007d833b  5e  POP ESI
007d833c  83c410  ADD ESP,0x10
007d833f  c3  RET
007d8340  57  PUSH EDI
007d8341  e83a7bcdff  CALL 0x004afe80
007d8346  8bf8  MOV EDI,EAX
007d8348  85ff  TEST EDI,EDI
007d834a  7462  JZ 0x007d83ae
007d834c  8b07  MOV EAX,dword ptr [EDI]
007d834e  8b5044  MOV EDX,dword ptr [EAX + 0x44]
007d8351  56  PUSH ESI
007d8352  8bcf  MOV ECX,EDI
007d8354  ffd2  CALL EDX
007d8356  85c0  TEST EAX,EAX
007d8358  7554  JNZ 0x007d83ae
007d835a  8d442408  LEA EAX,[ESP + 0x8]
007d835e  56  PUSH ESI
007d835f  50  PUSH EAX
007d8360  e84bf4ffff  CALL 0x007d77b0
007d8365  8d4c2410  LEA ECX,[ESP + 0x10]
007d8369  56  PUSH ESI
007d836a  51  PUSH ECX
007d836b  e8305dd7ff  CALL 0x0054e0a0
007d8370  83c410  ADD ESP,0x10
007d8373  84c0  TEST AL,AL
007d8375  7437  JZ 0x007d83ae
007d8377  8b17  MOV EDX,dword ptr [EDI]
007d8379  8b5244  MOV EDX,dword ptr [EDX + 0x44]
007d837c  8d442408  LEA EAX,[ESP + 0x8]
007d8380  50  PUSH EAX
007d8381  8bcf  MOV ECX,EDI
007d8383  ffd2  CALL EDX
007d8385  85c0  TEST EAX,EAX
007d8387  7425  JZ 0x007d83ae
007d8389  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
007d838d  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007d8391  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007d8395  8908  MOV dword ptr [EAX],ECX
007d8397  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
007d839b  895004  MOV dword ptr [EAX + 0x4],EDX
007d839e  8b542414  MOV EDX,dword ptr [ESP + 0x14]
007d83a2  5f  POP EDI
007d83a3  894808  MOV dword ptr [EAX + 0x8],ECX
007d83a6  89500c  MOV dword ptr [EAX + 0xc],EDX
007d83a9  5e  POP ESI
007d83aa  83c410  ADD ESP,0x10
007d83ad  c3  RET
007d83ae  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
007d83b2  8b0e  MOV ECX,dword ptr [ESI]
007d83b4  8b5604  MOV EDX,dword ptr [ESI + 0x4]
007d83b7  8908  MOV dword ptr [EAX],ECX
007d83b9  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d83bc  895004  MOV dword ptr [EAX + 0x4],EDX
007d83bf  8b560c  MOV EDX,dword ptr [ESI + 0xc]
007d83c2  5f  POP EDI
007d83c3  894808  MOV dword ptr [EAX + 0x8],ECX
007d83c6  89500c  MOV dword ptr [EAX + 0xc],EDX
007d83c9  5e  POP ESI
007d83ca  83c410  ADD ESP,0x10
007d83cd  c3  RET

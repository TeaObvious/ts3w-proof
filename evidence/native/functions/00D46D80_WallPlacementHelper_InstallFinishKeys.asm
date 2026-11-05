# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void WallPlacementHelper_InstallFinishKeys(void * this, uint * diffuseKey, uint * specularKey, uint * designKey)
Owned ranges: [[00d46d80, 00d46e57]]

00d46d80  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00d46d84  53  PUSH EBX
00d46d85  56  PUSH ESI
00d46d86  8bf1  MOV ESI,ECX
00d46d88  8b08  MOV ECX,dword ptr [EAX]
00d46d8a  894e38  MOV dword ptr [ESI + 0x38],ECX
00d46d8d  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d46d90  89563c  MOV dword ptr [ESI + 0x3c],EDX
00d46d93  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00d46d96  894e40  MOV dword ptr [ESI + 0x40],ECX
00d46d99  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00d46d9c  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d46da0  895644  MOV dword ptr [ESI + 0x44],EDX
00d46da3  8b08  MOV ECX,dword ptr [EAX]
00d46da5  894e48  MOV dword ptr [ESI + 0x48],ECX
00d46da8  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d46dab  89564c  MOV dword ptr [ESI + 0x4c],EDX
00d46dae  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00d46db1  894e50  MOV dword ptr [ESI + 0x50],ECX
00d46db4  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00d46db7  895654  MOV dword ptr [ESI + 0x54],EDX
00d46dba  57  PUSH EDI
00d46dbb  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00d46dbf  8b07  MOV EAX,dword ptr [EDI]
00d46dc1  894628  MOV dword ptr [ESI + 0x28],EAX
00d46dc4  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00d46dc7  894e2c  MOV dword ptr [ESI + 0x2c],ECX
00d46dca  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00d46dcd  895630  MOV dword ptr [ESI + 0x30],EDX
00d46dd0  8b470c  MOV EAX,dword ptr [EDI + 0xc]
00d46dd3  894634  MOV dword ptr [ESI + 0x34],EAX
00d46dd6  e8a59076ff  CALL 0x004afe80
00d46ddb  6a00  PUSH 0x0
00d46ddd  6a00  PUSH 0x0
00d46ddf  6a00  PUSH 0x0
00d46de1  6a00  PUSH 0x0
00d46de3  8d4c2420  LEA ECX,[ESP + 0x20]
00d46de7  c744242000000000  MOV dword ptr [ESP + 0x20],0x0
00d46def  8b10  MOV EDX,dword ptr [EAX]
00d46df1  8b520c  MOV EDX,dword ptr [EDX + 0xc]
00d46df4  51  PUSH ECX
00d46df5  57  PUSH EDI
00d46df6  8bc8  MOV ECX,EAX
00d46df8  ffd2  CALL EDX
00d46dfa  84c0  TEST AL,AL
00d46dfc  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d46e00  7445  JZ 0x00d46e47
00d46e02  85c9  TEST ECX,ECX
00d46e04  7414  JZ 0x00d46e1a
00d46e06  8b01  MOV EAX,dword ptr [ECX]
00d46e08  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00d46e0b  683519de05  PUSH 0x5de1935
00d46e10  ffd2  CALL EDX
00d46e12  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d46e16  8bf8  MOV EDI,EAX
00d46e18  eb02  JMP 0x00d46e1c
00d46e1a  33ff  XOR EDI,EDI
00d46e1c  8b5e10  MOV EBX,dword ptr [ESI + 0x10]
00d46e1f  3bfb  CMP EDI,EBX
00d46e21  7424  JZ 0x00d46e47
00d46e23  85ff  TEST EDI,EDI
00d46e25  740c  JZ 0x00d46e33
00d46e27  8b07  MOV EAX,dword ptr [EDI]
00d46e29  8b10  MOV EDX,dword ptr [EAX]
00d46e2b  8bcf  MOV ECX,EDI
00d46e2d  ffd2  CALL EDX
00d46e2f  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d46e33  85db  TEST EBX,EBX
00d46e35  897e10  MOV dword ptr [ESI + 0x10],EDI
00d46e38  740d  JZ 0x00d46e47
00d46e3a  8b03  MOV EAX,dword ptr [EBX]
00d46e3c  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d46e3f  8bcb  MOV ECX,EBX
00d46e41  ffd2  CALL EDX
00d46e43  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d46e47  85c9  TEST ECX,ECX
00d46e49  5f  POP EDI
00d46e4a  5e  POP ESI
00d46e4b  5b  POP EBX
00d46e4c  7407  JZ 0x00d46e55
00d46e4e  8b01  MOV EAX,dword ptr [ECX]
00d46e50  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d46e53  ffd2  CALL EDX
00d46e55  c20c00  RET 0xc

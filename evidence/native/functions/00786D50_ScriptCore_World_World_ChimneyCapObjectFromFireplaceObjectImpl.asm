# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: ulonglong ScriptCore.World::World_ChimneyCapObjectFromFireplaceObjectImpl(ulonglong lotId, ulonglong objectId)
Owned ranges: [[00786d50, 00786d8f]]

00786d50  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00786d56  85c9  TEST ECX,ECX
00786d58  7431  JZ 0x00786d8b
00786d5a  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00786d5e  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00786d62  6a00  PUSH 0x0
00786d64  50  PUSH EAX
00786d65  52  PUSH EDX
00786d66  e8a5ba4d00  CALL 0x00c62810
00786d6b  85c0  TEST EAX,EAX
00786d6d  741c  JZ 0x00786d8b
00786d6f  8b80cc020000  MOV EAX,dword ptr [EAX + 0x2cc]
00786d75  85c0  TEST EAX,EAX
00786d77  7412  JZ 0x00786d8b
00786d79  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00786d7d  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00786d81  51  PUSH ECX
00786d82  52  PUSH EDX
00786d83  8bc8  MOV ECX,EAX
00786d85  e8e6ec2e00  CALL 0x00a75a70
00786d8a  c3  RET
00786d8b  33c0  XOR EAX,EAX
00786d8d  33d2  XOR EDX,EDX
00786d8f  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00a9ac70, 00a9acd0]]
Signature: undefined4 FloorPattern_HasAssignedRenderKey(int param_1)

00a9ac70  8b4110  MOV EAX,dword ptr [ECX + 0x10]
00a9ac73  3b05a0c81e01  CMP EAX,dword ptr [0x011ec8a0]
00a9ac79  7521  JNZ 0x00a9ac9c
00a9ac7b  8b5118  MOV EDX,dword ptr [ECX + 0x18]
00a9ac7e  3b15a8c81e01  CMP EDX,dword ptr [0x011ec8a8]
00a9ac84  7516  JNZ 0x00a9ac9c
00a9ac86  8b411c  MOV EAX,dword ptr [ECX + 0x1c]
00a9ac89  3b05acc81e01  CMP EAX,dword ptr [0x011ec8ac]
00a9ac8f  750b  JNZ 0x00a9ac9c
00a9ac91  8b5114  MOV EDX,dword ptr [ECX + 0x14]
00a9ac94  3b15a4c81e01  CMP EDX,dword ptr [0x011ec8a4]
00a9ac9a  7432  JZ 0x00a9acce
00a9ac9c  8b4110  MOV EAX,dword ptr [ECX + 0x10]
00a9ac9f  3b0568451801  CMP EAX,dword ptr [0x01184568]
00a9aca5  7521  JNZ 0x00a9acc8
00a9aca7  8b5118  MOV EDX,dword ptr [ECX + 0x18]
00a9acaa  3b1570451801  CMP EDX,dword ptr [0x01184570]
00a9acb0  7516  JNZ 0x00a9acc8
00a9acb2  8b411c  MOV EAX,dword ptr [ECX + 0x1c]
00a9acb5  3b0574451801  CMP EAX,dword ptr [0x01184574]
00a9acbb  750b  JNZ 0x00a9acc8
00a9acbd  8b4914  MOV ECX,dword ptr [ECX + 0x14]
00a9acc0  3b0d6c451801  CMP ECX,dword ptr [0x0118456c]
00a9acc6  7406  JZ 0x00a9acce
00a9acc8  b801000000  MOV EAX,0x1
00a9accd  c3  RET
00a9acce  33c0  XOR EAX,EAX
00a9acd0  c3  RET

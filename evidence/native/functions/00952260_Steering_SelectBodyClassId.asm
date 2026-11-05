# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int Steering_SelectBodyClassId(undefined4 param_1, int param_2, char param_3)
Owned ranges: [[00952260, 009522a8]]

00952260  807c240c00  CMP byte ptr [ESP + 0xc],0x0
00952265  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00952269  740b  JZ 0x00952276
0095226b  83f801  CMP EAX,0x1
0095226e  7506  JNZ 0x00952276
00952270  b8dad7cff4  MOV EAX,0xf4cfd7da
00952275  c3  RET
00952276  83f802  CMP EAX,0x2
00952279  7506  JNZ 0x00952281
0095227b  b87fa0dbf4  MOV EAX,0xf4dba07f
00952280  c3  RET
00952281  83f803  CMP EAX,0x3
00952284  7506  JNZ 0x0095228c
00952286  b83ac5aa06  MOV EAX,0x6aac53a
0095228b  c3  RET
0095228c  83f804  CMP EAX,0x4
0095228f  7506  JNZ 0x00952297
00952291  b82f9fbc7b  MOV EAX,0x7bbc9f2f
00952296  c3  RET
00952297  83e805  SUB EAX,0x5
0095229a  f7d8  NEG EAX
0095229c  1bc0  SBB EAX,EAX
0095229e  255b8d6ee5  AND EAX,0xe56e8d5b
009522a3  05912d610f  ADD EAX,0xf612d91
009522a8  c3  RET

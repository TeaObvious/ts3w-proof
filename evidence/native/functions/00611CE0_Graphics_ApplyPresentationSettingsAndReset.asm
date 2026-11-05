# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; Graphics_ApplyPresentationSettingsAndReset; owned ranges [[00611ce0, 00611d34]]
00611ce0	8b81e0000000	MOV EAX,dword ptr [ECX + 0xe0]
00611ce6	8b512c	MOV EDX,dword ptr [ECX + 0x2c]
00611ce9	054c010000	ADD EAX,0x14c
00611cee	8910	MOV dword ptr [EAX],EDX
00611cf0	8b5130	MOV EDX,dword ptr [ECX + 0x30]
00611cf3	895004	MOV dword ptr [EAX + 0x4],EDX
00611cf6	0fb65124	MOVZX EDX,byte ptr [ECX + 0x24]
00611cfa	895020	MOV dword ptr [EAX + 0x20],EDX
00611cfd	8b5138	MOV EDX,dword ptr [ECX + 0x38]
00611d00	8b1495d88afe00	MOV EDX,dword ptr [EDX*0x4 + 0xfe8ad8]
00611d07	895010	MOV dword ptr [EAX + 0x10],EDX
00611d0a	c7401400000000	MOV dword ptr [EAX + 0x14],0x0
00611d11	8b5134	MOV EDX,dword ptr [ECX + 0x34]
00611d14	895030	MOV dword ptr [EAX + 0x30],EDX
00611d17	8a5125	MOV DL,byte ptr [ECX + 0x25]
00611d1a	f6da	NEG DL
00611d1c	6a01	PUSH 0x1
00611d1e	1bd2	SBB EDX,EDX
00611d20	81e201000080	AND EDX,0x80000001
00611d26	81c200000080	ADD EDX,0x80000000
00611d2c	895034	MOV dword ptr [EAX + 0x34],EDX
00611d2f	e89cf4ffff	CALL 0x006111d0
00611d34	c3	RET

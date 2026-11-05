# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; SpeedTree_GetCamera; owned ranges [[007bb260, 007bb2cb]]
007bb260	8b4c2404	MOV ECX,dword ptr [ESP + 0x4]
007bb264	83ec0c	SUB ESP,0xc
007bb267	85c9	TEST ECX,ECX
007bb269	7450	JZ 0x007bb2bb
007bb26b	8b442414	MOV EAX,dword ptr [ESP + 0x14]
007bb26f	85c0	TEST EAX,EAX
007bb271	7448	JZ 0x007bb2bb
007bb273	8b153c951d01	MOV EDX,dword ptr [0x011d953c]
007bb279	53	PUSH EBX
007bb27a	8b1db03e1601	MOV EBX,dword ptr [0x01163eb0]
007bb280	55	PUSH EBP
007bb281	8b2db43e1601	MOV EBP,dword ptr [0x01163eb4]
007bb287	56	PUSH ESI
007bb288	8b3540951d01	MOV ESI,dword ptr [0x011d9540]
007bb28e	57	PUSH EDI
007bb28f	8b3d44951d01	MOV EDI,dword ptr [0x011d9544]
007bb295	896c2414	MOV dword ptr [ESP + 0x14],EBP
007bb299	8b2db83e1601	MOV EBP,dword ptr [0x01163eb8]
007bb29f	8911	MOV dword ptr [ECX],EDX
007bb2a1	897104	MOV dword ptr [ECX + 0x4],ESI
007bb2a4	897908	MOV dword ptr [ECX + 0x8],EDI
007bb2a7	8b4c2414	MOV ECX,dword ptr [ESP + 0x14]
007bb2ab	5f	POP EDI
007bb2ac	8918	MOV dword ptr [EAX],EBX
007bb2ae	5e	POP ESI
007bb2af	894804	MOV dword ptr [EAX + 0x4],ECX
007bb2b2	896808	MOV dword ptr [EAX + 0x8],EBP
007bb2b5	5d	POP EBP
007bb2b6	5b	POP EBX
007bb2b7	83c40c	ADD ESP,0xc
007bb2ba	c3	RET
007bb2bb	6810760101	PUSH 0x1017610
007bb2c0	e8ebf4ffff	CALL 0x007ba7b0
007bb2c5	83c404	ADD ESP,0x4
007bb2c8	83c40c	ADD ESP,0xc
007bb2cb	c3	RET

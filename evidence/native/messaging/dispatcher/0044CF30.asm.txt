PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: QueueMessage.
Complete existing Ghidra stored body union: [0044CF30,0044CFC8] inclusive; 153 owned bytes / 47 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Queues one 24-byte message record into dispatcher list +0C through 44CC20; this is not immediate
   listener delivery. ECX dispatcher plus ID, payload, ordering word, optional target listener; RET
   10h. Analyst-assigned name.

0044cf30	83ec18	SUB ESP, 0x18
0044cf33	55	PUSH EBP
0044cf34	8b6c2424	MOV EBP, dword ptr [ESP + 0x24]
0044cf38	56	PUSH ESI
0044cf39	8bf1	MOV ESI, ECX
0044cf3b	80beb400000000	CMP byte ptr [ESI + 0xb4], 0x0
0044cf42	57	PUSH EDI
0044cf43	8b7c2434	MOV EDI, dword ptr [ESP + 0x34]
0044cf47	741b	JZ 0x0044cf64
0044cf49	85ed	TEST EBP, EBP ; When +B4 is enabled, retain nonnull payload via its virtual +4 before enqueue. A913D0 passes its pooled floor message; its table 01065F8C resolves this slot to EC1C10.
0044cf4b	740a	JZ 0x0044cf57
0044cf4d	8b4500	MOV EAX, dword ptr [EBP]
0044cf50	8b5004	MOV EDX, dword ptr [EAX + 0x4]
0044cf53	8bcd	MOV ECX, EBP
0044cf55	ffd2	CALL EDX
0044cf57	85ff	TEST EDI, EDI
0044cf59	7409	JZ 0x0044cf64
0044cf5b	8b07	MOV EAX, dword ptr [EDI]
0044cf5d	8b5008	MOV EDX, dword ptr [EAX + 0x8]
0044cf60	8bcf	MOV ECX, EDI
0044cf62	ffd2	CALL EDX
0044cf64	80beb000000000	CMP byte ptr [ESI + 0xb0], 0x0
0044cf6b	740d	JZ 0x0044cf7a
0044cf6d	68c82afa00	PUSH 0xfa2ac8
0044cf72	8d4e20	LEA ECX, [ESI + 0x20]
0044cf75	e8864c0900	CALL 0x004e1c00
0044cf7a	8b4c2430	MOV ECX, dword ptr [ESP + 0x30]
0044cf7e	8b442428	MOV EAX, dword ptr [ESP + 0x28]
0044cf82	8d54240c	LEA EDX, [ESP + 0xc] ; A913D0 supplies event 0431BFC9, payload, 0, 0. The queue record stores ID/payload/target/ordering word and two zero callback fields. Queue growth/failure is a separate child boundary.
0044cf86	894c2418	MOV dword ptr [ESP + 0x18], ECX
0044cf8a	52	PUSH EDX
0044cf8b	8d4e0c	LEA ECX, [ESI + 0xc]
0044cf8e	89442410	MOV dword ptr [ESP + 0x10], EAX
0044cf92	896c2414	MOV dword ptr [ESP + 0x14], EBP
0044cf96	897c2418	MOV dword ptr [ESP + 0x18], EDI
0044cf9a	c744242000000000	MOV dword ptr [ESP + 0x20], 0x0
0044cfa2	c744242400000000	MOV dword ptr [ESP + 0x24], 0x0
0044cfaa	e871fcffff	CALL 0x0044cc20 ; Insert into the priority-ordered queue while optional dispatcher queue lock +20 is held. Delivery requires the later pump; no receiver callback occurs in this body.
0044cfaf	80beb000000000	CMP byte ptr [ESI + 0xb0], 0x0
0044cfb6	7408	JZ 0x0044cfc0
0044cfb8	8d4e20	LEA ECX, [ESI + 0x20]
0044cfbb	e8004d0900	CALL 0x004e1cc0
0044cfc0	5f	POP EDI
0044cfc1	5e	POP ESI
0044cfc2	5d	POP EBP
0044cfc3	83c418	ADD ESP, 0x18
0044cfc6	c21000	RET 0x10

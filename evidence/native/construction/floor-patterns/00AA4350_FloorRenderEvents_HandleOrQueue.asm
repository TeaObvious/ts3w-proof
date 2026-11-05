PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: FloorRenderEvents_HandleOrQueue.
Complete existing Ghidra stored body union: [00AA4350,00AA4654] inclusive; 773 owned bytes / 230 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Analyst note (PC1.67 construction topology/projection counterpart): Analyst floor event receiver
   role from actual per-level consumers, not recovered symbol. ECX receiver plus UInt32 event
   ID/payload pointer, RET8; physical AL result. Require enabled byte+70 and nonnull attached lot+8.
   Event/owner identity branches change flags or nesting counter +80, including guarded
   decrement/flush. Relevant matched events with counter0 call AA3890 immediately; otherwise
   construct local retained event record through C1EC20, append at+84 through A6CA70, release local
   payload virtual+8. Unsupported IDs and disabled/null-lot path return AL0; handled/nonmatching
   identity branches preserve their actual AL1 behavior. No parity with current managed task/cache
   priority or mesh array selection is established.

00aa4350	83ec08	SUB ESP, 0x8
00aa4353	56	PUSH ESI
00aa4354	8bf1	MOV ESI, ECX
00aa4356	807e7000	CMP byte ptr [ESI + 0x70], 0x0
00aa435a	0f84ec020000	JZ 0x00aa464c
00aa4360	8b4608	MOV EAX, dword ptr [ESI + 0x8]
00aa4363	85c0	TEST EAX, EAX
00aa4365	0f84e1020000	JZ 0x00aa464c
00aa436b	8b5010	MOV EDX, dword ptr [EAX + 0x10]
00aa436e	57	PUSH EDI
00aa436f	8b7814	MOV EDI, dword ptr [EAX + 0x14]
00aa4372	8b442414	MOV EAX, dword ptr [ESP + 0x14]
00aa4376	3d8b574f08	CMP EAX, 0x84f578b
00aa437b	0f87be010000	JA 0x00aa453f
00aa4381	0f848e010000	JZ 0x00aa4515
00aa4387	3d2eac6204	CMP EAX, 0x462ac2e
00aa438c	0f87c6000000	JA 0x00aa4458
00aa4392	7479	JZ 0x00aa440d
00aa4394	3dc9bf3104	CMP EAX, 0x431bfc9 ; Exact event0431BFC9 branch goes to owner-pair comparison atAA45EA; message-ID coincidence alone does not bypass owner filtering.
00aa4399	773c	JA 0x00aa43d7
00aa439b	0f8449020000	JZ 0x00aa45ea
00aa43a1	3da98bfe03	CMP EAX, 0x3fe8ba9
00aa43a6	740a	JZ 0x00aa43b2
00aa43a8	3dac881f04	CMP EAX, 0x41f88ac
00aa43ad	e92c020000	JMP 0x00aa45de
00aa43b2	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa43b6	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa43b9	3bca	CMP ECX, EDX
00aa43bb	0f8581020000	JNZ 0x00aa4642
00aa43c1	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa43c4	3bd7	CMP EDX, EDI
00aa43c6	0f8576020000	JNZ 0x00aa4642
00aa43cc	50	PUSH EAX
00aa43cd	68a98bfe03	PUSH 0x3fe8ba9
00aa43d2	e929020000	JMP 0x00aa4600
00aa43d7	3d25ac6204	CMP EAX, 0x462ac25
00aa43dc	0f85fe010000	JNZ 0x00aa45e0
00aa43e2	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa43e6	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa43e9	3bca	CMP ECX, EDX
00aa43eb	0f8551020000	JNZ 0x00aa4642
00aa43f1	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa43f4	3bd7	CMP EDX, EDI
00aa43f6	0f8546020000	JNZ 0x00aa4642
00aa43fc	83868000000001	ADD dword ptr [ESI + 0x80], 0x1
00aa4403	5f	POP EDI
00aa4404	b001	MOV AL, 0x1
00aa4406	5e	POP ESI
00aa4407	83c408	ADD ESP, 0x8
00aa440a	c20800	RET 0x8
00aa440d	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa4411	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa4414	3bca	CMP ECX, EDX
00aa4416	0f8526020000	JNZ 0x00aa4642
00aa441c	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa441f	3bd7	CMP EDX, EDI
00aa4421	0f851b020000	JNZ 0x00aa4642
00aa4427	8b8680000000	MOV EAX, dword ptr [ESI + 0x80]
00aa442d	85c0	TEST EAX, EAX ; A zero end counter skips decrement but still reaches flush; any nonzero DWORD is decremented, not only signed-positive counts. Overflow and reentrant flush safety are not guarded here.
00aa442f	7609	JBE 0x00aa443a
00aa4431	83c0ff	ADD EAX, -0x1
00aa4434	898680000000	MOV dword ptr [ESI + 0x80], EAX
00aa443a	83be8000000000	CMP dword ptr [ESI + 0x80], 0x0
00aa4441	0f85fb010000	JNZ 0x00aa4642
00aa4447	8bce	MOV ECX, ESI
00aa4449	e882feffff	CALL 0x00aa42d0
00aa444e	5f	POP EDI
00aa444f	b001	MOV AL, 0x1
00aa4451	5e	POP ESI
00aa4452	83c408	ADD ESP, 0x8
00aa4455	c20800	RET 0x8
00aa4458	3d4980c205	CMP EAX, 0x5c28049
00aa445d	0f87a8000000	JA 0x00aa450b
00aa4463	0f8481010000	JZ 0x00aa45ea
00aa4469	3d062b5405	CMP EAX, 0x5542b06
00aa446e	744d	JZ 0x00aa44bd
00aa4470	3de912bb05	CMP EAX, 0x5bb12e9
00aa4475	0f8565010000	JNZ 0x00aa45e0
00aa447b	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa447f	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa4482	3bca	CMP ECX, EDX
00aa4484	0f85b8010000	JNZ 0x00aa4642
00aa448a	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa448d	3bd7	CMP EDX, EDI
00aa448f	0f85ad010000	JNZ 0x00aa4642
00aa4495	83be8000000000	CMP dword ptr [ESI + 0x80], 0x0
00aa449c	0f86a0010000	JBE 0x00aa4642
00aa44a2	8bce	MOV ECX, ESI
00aa44a4	c7868000000000000000	MOV dword ptr [ESI + 0x80], 0x0 ; Handled event05BB12E9 resets a nonzero counter and flushes. That ID is absent from AA0640s inspected18-ID registration table; this branch alone does not prove a subscribed delivery path.
00aa44ae	e81dfeffff	CALL 0x00aa42d0
00aa44b3	5f	POP EDI
00aa44b4	b001	MOV AL, 0x1
00aa44b6	5e	POP ESI
00aa44b7	83c408	ADD ESP, 0x8
00aa44ba	c20800	RET 0x8
00aa44bd	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa44c1	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa44c4	3bca	CMP ECX, EDX
00aa44c6	0f8576010000	JNZ 0x00aa4642
00aa44cc	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa44cf	3bd7	CMP EDX, EDI
00aa44d1	0f856b010000	JNZ 0x00aa4642
00aa44d7	6a01	PUSH 0x1
00aa44d9	6a00	PUSH 0x0
00aa44db	8bce	MOV ECX, ESI
00aa44dd	e8bec5ffff	CALL 0x00aa0aa0
00aa44e2	85c0	TEST EAX, EAX
00aa44e4	0f8458010000	JZ 0x00aa4642
00aa44ea	8b8000010000	MOV EAX, dword ptr [EAX + 0x100]
00aa44f0	85c0	TEST EAX, EAX
00aa44f2	0f844a010000	JZ 0x00aa4642
00aa44f8	6a01	PUSH 0x1
00aa44fa	8bc8	MOV ECX, EAX
00aa44fc	e81f4afeff	CALL 0x00a88f20
00aa4501	5f	POP EDI
00aa4502	b001	MOV AL, 0x1
00aa4504	5e	POP ESI
00aa4505	83c408	ADD ESP, 0x8
00aa4508	c20800	RET 0x8
00aa450b	3d3b54ff05	CMP EAX, 0x5ff543b
00aa4510	e9c9000000	JMP 0x00aa45de
00aa4515	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa4519	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa451c	3bca	CMP ECX, EDX
00aa451e	0f851e010000	JNZ 0x00aa4642
00aa4524	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa4527	3bd7	CMP EDX, EDI
00aa4529	0f8513010000	JNZ 0x00aa4642
00aa452f	8a4010	MOV AL, byte ptr [EAX + 0x10]
00aa4532	884673	MOV byte ptr [ESI + 0x73], AL
00aa4535	5f	POP EDI
00aa4536	b001	MOV AL, 0x1
00aa4538	5e	POP ESI
00aa4539	83c408	ADD ESP, 0x8
00aa453c	c20800	RET 0x8
00aa453f	3d8c55690a	CMP EAX, 0xa69558c
00aa4544	772c	JA 0x00aa4572
00aa4546	0f849e000000	JZ 0x00aa45ea
00aa454c	3d9ea13409	CMP EAX, 0x934a19e
00aa4551	7718	JA 0x00aa456b
00aa4553	0f8491000000	JZ 0x00aa45ea
00aa4559	3df9651a09	CMP EAX, 0x91a65f9
00aa455e	0f8486000000	JZ 0x00aa45ea
00aa4564	3d969a2c09	CMP EAX, 0x92c9a96
00aa4569	eb73	JMP 0x00aa45de
00aa456b	3d2ec17a09	CMP EAX, 0x97ac12e
00aa4570	eb6c	JMP 0x00aa45de
00aa4572	3df7654711	CMP EAX, 0x114765f7
00aa4577	7760	JA 0x00aa45d9
00aa4579	746f	JZ 0x00aa45ea
00aa457b	2de2f0390e	SUB EAX, 0xe39f0e2
00aa4580	7430	JZ 0x00aa45b2
00aa4582	83e801	SUB EAX, 0x1
00aa4585	7559	JNZ 0x00aa45e0
00aa4587	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa458b	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa458e	3bca	CMP ECX, EDX
00aa4590	0f85ac000000	JNZ 0x00aa4642
00aa4596	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa4599	3bd7	CMP EDX, EDI
00aa459b	0f85a1000000	JNZ 0x00aa4642
00aa45a1	8bce	MOV ECX, ESI
00aa45a3	e8f8c1ffff	CALL 0x00aa07a0
00aa45a8	5f	POP EDI
00aa45a9	b001	MOV AL, 0x1
00aa45ab	5e	POP ESI
00aa45ac	83c408	ADD ESP, 0x8
00aa45af	c20800	RET 0x8
00aa45b2	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa45b6	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa45b9	3bca	CMP ECX, EDX
00aa45bb	0f8581000000	JNZ 0x00aa4642
00aa45c1	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa45c4	3bd7	CMP EDX, EDI
00aa45c6	757a	JNZ 0x00aa4642
00aa45c8	8bce	MOV ECX, ESI
00aa45ca	e8a1c1ffff	CALL 0x00aa0770
00aa45cf	5f	POP EDI
00aa45d0	b001	MOV AL, 0x1
00aa45d2	5e	POP ESI
00aa45d3	83c408	ADD ESP, 0x8
00aa45d6	c20800	RET 0x8
00aa45d9	3d42ae7531	CMP EAX, 0x3175ae42
00aa45de	740a	JZ 0x00aa45ea
00aa45e0	5f	POP EDI
00aa45e1	32c0	XOR AL, AL
00aa45e3	5e	POP ESI
00aa45e4	83c408	ADD ESP, 0x8
00aa45e7	c20800	RET 0x8
00aa45ea	8b4c2418	MOV ECX, dword ptr [ESP + 0x18] ; Compare payload+8/+C to attached record+10/+14. Mismatch returns handled AL1 without apply/queue. The core-lot to attached-renderer pair producer is not established by these offsets.
00aa45ee	53	PUSH EBX
00aa45ef	8b5908	MOV EBX, dword ptr [ECX + 0x8]
00aa45f2	3bda	CMP EBX, EDX
00aa45f4	5b	POP EBX
00aa45f5	754b	JNZ 0x00aa4642
00aa45f7	8b510c	MOV EDX, dword ptr [ECX + 0xc]
00aa45fa	3bd7	CMP EDX, EDI
00aa45fc	7544	JNZ 0x00aa4642
00aa45fe	51	PUSH ECX
00aa45ff	50	PUSH EAX
00aa4600	83be8000000000	CMP dword ptr [ESI + 0x80], 0x0 ; Counter+80 zero invokesAA3890; nonzero constructs/queues an8-byte retained record. This receiver-local queue is separate from the shared dispatcher queue; reaching this branch alone does not prove that the outer queue was pumped or its installed dispatch path completed.
00aa4607	7632	JBE 0x00aa463b
00aa4609	8d4c2410	LEA ECX, [ESP + 0x10]
00aa460d	e80ea61700	CALL 0x00c1ec20
00aa4612	8d442408	LEA EAX, [ESP + 0x8]
00aa4616	50	PUSH EAX
00aa4617	8d8e84000000	LEA ECX, [ESI + 0x84]
00aa461d	e84e84fcff	CALL 0x00a6ca70
00aa4622	8b4c240c	MOV ECX, dword ptr [ESP + 0xc]
00aa4626	85c9	TEST ECX, ECX
00aa4628	7418	JZ 0x00aa4642
00aa462a	8b11	MOV EDX, dword ptr [ECX]
00aa462c	8b4208	MOV EAX, dword ptr [EDX + 0x8]
00aa462f	ffd0	CALL EAX
00aa4631	5f	POP EDI
00aa4632	b001	MOV AL, 0x1
00aa4634	5e	POP ESI
00aa4635	83c408	ADD ESP, 0x8
00aa4638	c20800	RET 0x8
00aa463b	8bce	MOV ECX, ESI
00aa463d	e84ef2ffff	CALL 0x00aa3890
00aa4642	5f	POP EDI
00aa4643	b001	MOV AL, 0x1
00aa4645	5e	POP ESI
00aa4646	83c408	ADD ESP, 0x8
00aa4649	c20800	RET 0x8
00aa464c	32c0	XOR AL, AL
00aa464e	5e	POP ESI
00aa464f	83c408	ADD ESP, 0x8
00aa4652	c20800	RET 0x8

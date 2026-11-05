PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: RefreshFloorUpperQuarterFlags.
Complete existing Ghidra owned body: [00A913D0,00A9175E] inclusive; 911 owned bytes / 288 instructions.
Original PE bytes and independent objdump instruction starts match the owned Listing.

Refreshes selected stored upper-quarter flags, or defers the location into a sorted unique pending list. ECX is the floor manager; packed signed cell plus raw 64-bit excluded-object ID halves and a low-byte force flag occupy four stack words (RET 10h). Changed bits are published before per-quarter event 0431BFC9. Analyst-assigned name.

00a913d0	83ec58	SUB ESP, 0x58
00a913d3	53	PUSH EBX
00a913d4	57	PUSH EDI
00a913d5	8b7c2464	MOV EDI, dword ptr [ESP + 0x64]
00a913d9	0fbe5701	MOVSX EDX, byte ptr [EDI + 0x1] ; Signed cell X/Z use half-open lot bounds; signed level uses inclusive lot min/max. Out-of-range returns before queueing or touching flags.
00a913dd	8bd9	MOV EBX, ECX
00a913df	0fbe0f	MOVSX ECX, byte ptr [EDI]
00a913e2	85c9	TEST ECX, ECX
00a913e4	8b4304	MOV EAX, dword ptr [EBX + 0x4]
00a913e7	0f8c6a030000	JL 0x00a91757
00a913ed	3b8874010000	CMP ECX, dword ptr [EAX + 0x174]
00a913f3	0f8d5e030000	JGE 0x00a91757
00a913f9	85d2	TEST EDX, EDX
00a913fb	0f8c56030000	JL 0x00a91757
00a91401	3b9078010000	CMP EDX, dword ptr [EAX + 0x178]
00a91407	0f8d4a030000	JGE 0x00a91757
00a9140d	0fbe4f02	MOVSX ECX, byte ptr [EDI + 0x2]
00a91411	3b887c010000	CMP ECX, dword ptr [EAX + 0x17c]
00a91417	0f8c3a030000	JL 0x00a91757
00a9141d	3b8880010000	CMP ECX, dword ptr [EAX + 0x180]
00a91423	0f8f2e030000	JG 0x00a91757
00a91429	83bb7801000000	CMP dword ptr [EBX + 0x178], 0x0 ; If manager DWORD +178 is positive and force byte is zero, insert the three-byte location in pending +F0 and return. Mask is not part of the pending key; A925B0 later forces mask 0F and force 1.
00a91430	7e20	JLE 0x00a91452
00a91432	807c247000	CMP byte ptr [ESP + 0x70], 0x0
00a91437	7519	JNZ 0x00a91452
00a91439	57	PUSH EDI
00a9143a	8d44246c	LEA EAX, [ESP + 0x6c]
00a9143e	50	PUSH EAX
00a9143f	8d8bf0000000	LEA ECX, [EBX + 0xf0]
00a91445	e8d6040400	CALL 0x00ad1920
00a9144a	5f	POP EDI
00a9144b	5b	POP EBX
00a9144c	83c458	ADD ESP, 0x58
00a9144f	c21000	RET 0x10
00a91452	55	PUSH EBP
00a91453	8b6c2470	MOV EBP, dword ptr [ESP + 0x70]
00a91457	56	PUSH ESI
00a91458	8b742470	MOV ESI, dword ptr [ESP + 0x70]
00a9145c	8bce	MOV ECX, ESI
00a9145e	0bcd	OR ECX, EBP
00a91460	c744241800000000	MOV dword ptr [ESP + 0x18], 0x0
00a91468	7412	JZ 0x00a9147c
00a9146a	e80161eaff	CALL 0x00937570 ; The two UInt32 stack words form an original 64-bit object ID. Registry lookup occurs if their bitwise OR is nonzero (either or both halves may be nonzero); registry lookup yields a borrowed Object pointer passed only to the support predicate. A925B0 supplies ID 0, so its refresh excludes no resolved object.
00a9146f	55	PUSH EBP
00a91470	56	PUSH ESI
00a91471	8bc8	MOV ECX, EAX
00a91473	e8086beaff	CALL 0x00937f80
00a91478	89442418	MOV dword ptr [ESP + 0x18], EAX
00a9147c	8b5304	MOV EDX, dword ptr [EBX + 0x4]
00a9147f	8b8a98020000	MOV ECX, dword ptr [EDX + 0x298]
00a91485	6a00	PUSH 0x0
00a91487	e8145a0b00	CALL 0x00b46ea0
00a9148c	57	PUSH EDI
00a9148d	8bcb	MOV ECX, EBX
00a9148f	89442424	MOV dword ptr [ESP + 0x24], EAX
00a91493	e8d8d8ffff	CALL 0x00a8ed70
00a91498	33f6	XOR ESI, ESI
00a9149a	89442424	MOV dword ptr [ESP + 0x24], EAX
00a9149e	8974241c	MOV dword ptr [ESP + 0x1c], ESI
00a914a2	b001	MOV AL, 0x1 ; Iterate q=0..3 in order; input low mask bit q selects one iteration. Construct a local single-quarter mask 1<<q. Unselected quarters produce no support call, bit write or event.
00a914a4	8bce	MOV ECX, ESI
00a914a6	d2e0	SHL AL, CL
00a914a8	844703	TEST byte ptr [EDI + 0x3], AL
00a914ab	0f8494020000	JZ 0x00a91745
00a914b1	668b0f	MOV CX, word ptr [EDI]
00a914b4	66894c2414	MOV word ptr [ESP + 0x14], CX
00a914b9	8a4f02	MOV CL, byte ptr [EDI + 0x2]
00a914bc	0fbed1	MOVSX EDX, CL
00a914bf	2b5310	SUB EDX, dword ptr [EBX + 0x10]
00a914c2	88442417	MOV byte ptr [ESP + 0x17], AL
00a914c6	8b4328	MOV EAX, dword ptr [EBX + 0x28]
00a914c9	884c2416	MOV byte ptr [ESP + 0x16], CL
00a914cd	0faf5004	IMUL EDX, dword ptr [EAX + 0x4]
00a914d1	0fbe4c2414	MOVSX ECX, byte ptr [ESP + 0x14]
00a914d6	03d1	ADD EDX, ECX
00a914d8	0faf5008	IMUL EDX, dword ptr [EAX + 0x8]
00a914dc	035010	ADD EDX, dword ptr [EAX + 0x10]
00a914df	0fbe442415	MOVSX EAX, byte ptr [ESP + 0x15]
00a914e4	0fb60c02	MOVZX ECX, byte ptr [EDX + EAX*0x1]
00a914e8	8b542418	MOV EDX, dword ptr [ESP + 0x18]
00a914ec	52	PUSH EDX
00a914ed	56	PUSH ESI
00a914ee	8d44241c	LEA EAX, [ESP + 0x1c]
00a914f2	884c2478	MOV byte ptr [ESP + 0x78], CL
00a914f6	8b4b04	MOV ECX, dword ptr [EBX + 0x4]
00a914f9	50	PUSH EAX
00a914fa	51	PUSH ECX
00a914fb	e890140400	CALL 0x00ad2990 ; Compute support through AD2990 using lot, single-quarter cell, q, and optional excluded Object pointer. Only returned AL is compared with the old stored Boolean; old bit is 1<<(q+4).
00a91500	8d4e04	LEA ECX, [ESI + 0x4]
00a91503	b201	MOV DL, 0x1
00a91505	d2e2	SHL DL, CL
00a91507	0fb68c2480000000	MOVZX ECX, byte ptr [ESP + 0x80]
00a9150f	83c410	ADD ESP, 0x10
00a91512	84d1	TEST CL, DL
00a91514	0f95c1	SETNZ CL
00a91517	3ac8	CMP CL, AL
00a91519	88442478	MOV byte ptr [ESP + 0x78], AL
00a9151d	88542413	MOV byte ptr [ESP + 0x13], DL
00a91521	0f841e020000	JZ 0x00a91745
00a91527	0fbe4702	MOVSX EAX, byte ptr [EDI + 0x2]
00a9152b	2b4310	SUB EAX, dword ptr [EBX + 0x10]
00a9152e	8b4b28	MOV ECX, dword ptr [EBX + 0x28]
00a91531	0faf4104	IMUL EAX, dword ptr [ECX + 0x4]
00a91535	0fbe37	MOVSX ESI, byte ptr [EDI]
00a91538	03c6	ADD EAX, ESI
00a9153a	0faf4108	IMUL EAX, dword ptr [ECX + 0x8]
00a9153e	034110	ADD EAX, dword ptr [ECX + 0x10]
00a91541	0fbe4f01	MOVSX ECX, byte ptr [EDI + 0x1]
00a91545	03c1	ADD EAX, ECX
00a91547	f6d2	NOT DL ; On change only, clear bit q+4, then set it iff support AL is nonzero. The low nibble and all other upper-quarter bits are preserved. The store precedes message allocation and dispatch; no rollback follows here.
00a91549	2010	AND byte ptr [EAX], DL
00a9154b	807c247800	CMP byte ptr [ESP + 0x78], 0x0
00a91550	8a08	MOV CL, byte ptr [EAX]
00a91552	740a	JZ 0x00a9155e
00a91554	0a4c2413	OR CL, byte ptr [ESP + 0x13]
00a91558	8b7c246c	MOV EDI, dword ptr [ESP + 0x6c]
00a9155c	8808	MOV byte ptr [EAX], CL
00a9155e	6890000000	PUSH 0x90
00a91563	e8e8db0400	CALL 0x00adf150
00a91568	83c404	ADD ESP, 0x4
00a9156b	85c0	TEST EAX, EAX
00a9156d	740b	JZ 0x00a9157a
00a9156f	8bc8	MOV ECX, EAX
00a91571	e8fa9affff	CALL 0x00a8b070
00a91576	8be8	MOV EBP, EAX
00a91578	eb02	JMP 0x00a9157c
00a9157a	33ed	XOR EBP, EBP ; Allocation-null path still reaches message field stores; this body does not implement a safe allocation-failure return or rollback of the already changed flag.
00a9157c	8b4304	MOV EAX, dword ptr [EBX + 0x4]
00a9157f	8b5048	MOV EDX, dword ptr [EAX + 0x48]
00a91582	895508	MOV dword ptr [EBP + 0x8], EDX
00a91585	8b404c	MOV EAX, dword ptr [EAX + 0x4c]
00a91588	89450c	MOV dword ptr [EBP + 0xc], EAX
00a9158b	8b4c2414	MOV ECX, dword ptr [ESP + 0x14]
00a9158f	8d542414	LEA EDX, [ESP + 0x14]
00a91593	894d10	MOV dword ptr [EBP + 0x10], ECX
00a91596	52	PUSH EDX
00a91597	8bcb	MOV ECX, EBX
00a91599	e872b5ffff	CALL 0x00a8cb10
00a9159e	84c0	TEST AL, AL
00a915a0	7423	JZ 0x00a915c5
00a915a2	8d4c2428	LEA ECX, [ESP + 0x28]
00a915a6	e8c5a40600	CALL 0x00afba70
00a915ab	8d4518	LEA EAX, [EBP + 0x18]
00a915ae	50	PUSH EAX
00a915af	8d442418	LEA EAX, [ESP + 0x18]
00a915b3	50	PUSH EAX
00a915b4	8bcb	MOV ECX, EBX
00a915b6	e805bcffff	CALL 0x00a8d1c0
00a915bb	8bcb	MOV ECX, EBX
00a915bd	50	PUSH EAX
00a915be	e87dd8ffff	CALL 0x00a8ee40
00a915c3	eb13	JMP 0x00a915d8
00a915c5	8d7d18	LEA EDI, [EBP + 0x18]
00a915c8	b910000000	MOV ECX, 0x10
00a915cd	be20c91e01	MOV ESI, 0x11ec920
00a915d2	f3a5	MOVSD.REP ES:EDI, ESI
00a915d4	8b7c246c	MOV EDI, dword ptr [ESP + 0x6c]
00a915d8	8d4d58	LEA ECX, [EBP + 0x58]
00a915db	51	PUSH ECX
00a915dc	8d4518	LEA EAX, [EBP + 0x18]
00a915df	50	PUSH EAX
00a915e0	8bcb	MOV ECX, EBX
00a915e2	e8d9fbffff	CALL 0x00a911c0
00a915e7	0fbe542416	MOVSX EDX, byte ptr [ESP + 0x16]
00a915ec	2b5310	SUB EDX, dword ptr [EBX + 0x10]
00a915ef	0fbe442415	MOVSX EAX, byte ptr [ESP + 0x15]
00a915f4	0fbe4c2414	MOVSX ECX, byte ptr [ESP + 0x14]
00a915f9	52	PUSH EDX
00a915fa	50	PUSH EAX
00a915fb	51	PUSH ECX
00a915fc	8b4b30	MOV ECX, dword ptr [EBX + 0x30]
00a915ff	e8ac9dffff	CALL 0x00a8b3b0
00a91604	8a00	MOV AL, byte ptr [EAX]
00a91606	88455a	MOV byte ptr [EBP + 0x5a], AL
00a91609	8a542417	MOV DL, byte ptr [ESP + 0x17]
00a9160d	f6d2	NOT DL
00a9160f	f6c210	TEST DL, 0x10
00a91612	741e	JZ 0x00a91632
00a91614	8b4b04	MOV ECX, dword ptr [EBX + 0x4]
00a91617	6a00	PUSH 0x0
00a91619	8d442418	LEA EAX, [ESP + 0x18]
00a9161d	50	PUSH EAX
00a9161e	51	PUSH ECX
00a9161f	e83cd70600	CALL 0x00afed60
00a91624	83c40c	ADD ESP, 0xc
00a91627	84c0	TEST AL, AL
00a91629	7407	JZ 0x00a91632
00a9162b	b801000000	MOV EAX, 0x1
00a91630	eb02	JMP 0x00a91634
00a91632	33c0	XOR EAX, EAX
00a91634	6a00	PUSH 0x0
00a91636	6a01	PUSH 0x1
00a91638	8d54241c	LEA EDX, [ESP + 0x1c]
00a9163c	888584000000	MOV byte ptr [EBP + 0x84], AL
00a91642	8b4304	MOV EAX, dword ptr [EBX + 0x4]
00a91645	52	PUSH EDX
00a91646	50	PUSH EAX
00a91647	e8d4e30300	CALL 0x00acfa20
00a9164c	0fb68c2488000000	MOVZX ECX, byte ptr [ESP + 0x88]
00a91654	83c410	ADD ESP, 0x10
00a91657	6a00	PUSH 0x0 ; Message byte +5B receives the newly computed support Boolean. It is separate from low flags and platform +84. Support-below +85 is assigned twice by separate calls.
00a91659	8d542418	LEA EDX, [ESP + 0x18]
00a9165d	884d5b	MOV byte ptr [EBP + 0x5b], CL
00a91660	8b4c2424	MOV ECX, dword ptr [ESP + 0x24]
00a91664	52	PUSH EDX
00a91665	888585000000	MOV byte ptr [EBP + 0x85], AL
00a9166b	e850291700	CALL 0x00c03fc0
00a91670	6689455e	MOV word ptr [EBP + 0x5e], AX
00a91674	8b4304	MOV EAX, dword ptr [EBX + 0x4]
00a91677	8d7510	LEA ESI, [EBP + 0x10]
00a9167a	56	PUSH ESI
00a9167b	50	PUSH EAX
00a9167c	e8fffc0300	CALL 0x00ad1380
00a91681	0fb64d13	MOVZX ECX, byte ptr [EBP + 0x13]
00a91685	f6d1	NOT CL
00a91687	83c408	ADD ESP, 0x8
00a9168a	f6c110	TEST CL, 0x10
00a9168d	888586000000	MOV byte ptr [EBP + 0x86], AL
00a91693	741c	JZ 0x00a916b1
00a91695	8b5304	MOV EDX, dword ptr [EBX + 0x4]
00a91698	6a00	PUSH 0x0
00a9169a	6a01	PUSH 0x1
00a9169c	56	PUSH ESI
00a9169d	52	PUSH EDX
00a9169e	e87de10300	CALL 0x00acf820
00a916a3	83c410	ADD ESP, 0x10
00a916a6	84c0	TEST AL, AL
00a916a8	7407	JZ 0x00a916b1
00a916aa	b801000000	MOV EAX, 0x1
00a916af	eb02	JMP 0x00a916b3
00a916b1	33c0	XOR EAX, EAX
00a916b3	6a00	PUSH 0x0
00a916b5	88455c	MOV byte ptr [EBP + 0x5c], AL
00a916b8	8b4b04	MOV ECX, dword ptr [EBX + 0x4]
00a916bb	6a01	PUSH 0x1
00a916bd	8d44241c	LEA EAX, [ESP + 0x1c]
00a916c1	50	PUSH EAX
00a916c2	51	PUSH ECX
00a916c3	e858e30300	CALL 0x00acfa20
00a916c8	83c410	ADD ESP, 0x10
00a916cb	888585000000	MOV byte ptr [EBP + 0x85], AL
00a916d1	8b4b04	MOV ECX, dword ptr [EBX + 0x4]
00a916d4	56	PUSH ESI
00a916d5	e826230200	CALL 0x00ab3a00
00a916da	888588000000	MOV byte ptr [EBP + 0x88], AL
00a916e0	8b442424	MOV EAX, dword ptr [ESP + 0x24]
00a916e4	85c0	TEST EAX, EAX
00a916e6	7441	JZ 0x00a91729
00a916e8	8b10	MOV EDX, dword ptr [EAX]
00a916ea	895560	MOV dword ptr [EBP + 0x60], EDX
00a916ed	8b4804	MOV ECX, dword ptr [EAX + 0x4]
00a916f0	894d64	MOV dword ptr [EBP + 0x64], ECX
00a916f3	8b5008	MOV EDX, dword ptr [EAX + 0x8]
00a916f6	895568	MOV dword ptr [EBP + 0x68], EDX
00a916f9	8b480c	MOV ECX, dword ptr [EAX + 0xc]
00a916fc	894d6c	MOV dword ptr [EBP + 0x6c], ECX
00a916ff	d94010	FLD float ptr [EAX + 0x10]
00a91702	d95d70	FSTP float ptr [EBP + 0x70]
00a91705	d94014	FLD float ptr [EAX + 0x14]
00a91708	d95d74	FSTP float ptr [EBP + 0x74]
00a9170b	d94018	FLD float ptr [EAX + 0x18]
00a9170e	d95d78	FSTP float ptr [EBP + 0x78]
00a91711	d94030	FLD float ptr [EAX + 0x30]
00a91714	d95d7c	FSTP float ptr [EBP + 0x7c]
00a91717	d94034	FLD float ptr [EAX + 0x34]
00a9171a	d99d80000000	FSTP float ptr [EBP + 0x80]
00a91720	8a5038	MOV DL, byte ptr [EAX + 0x38]
00a91723	889587000000	MOV byte ptr [EBP + 0x87], DL
00a91729	e8c2ad9bff	CALL 0x0044c4f0 ; Emit event 0431BFC9 through current dispatcher vtable +1C for this changed quarter. A925B0 removes the pending location only after this entire refresh returns. Delivery timing/reentrancy and message retirement remain outside this body.
00a9172e	8b10	MOV EDX, dword ptr [EAX]
00a91730	6a00	PUSH 0x0
00a91732	6a00	PUSH 0x0
00a91734	55	PUSH EBP
00a91735	8bc8	MOV ECX, EAX
00a91737	8b421c	MOV EAX, dword ptr [EDX + 0x1c]
00a9173a	68c9bf3104	PUSH 0x431bfc9
00a9173f	ffd0	CALL EAX
00a91741	8b74241c	MOV ESI, dword ptr [ESP + 0x1c]
00a91745	83c601	ADD ESI, 0x1
00a91748	83fe04	CMP ESI, 0x4
00a9174b	8974241c	MOV dword ptr [ESP + 0x1c], ESI
00a9174f	0f8c4dfdffff	JL 0x00a914a2
00a91755	5e	POP ESI
00a91756	5d	POP EBP
00a91757	5f	POP EDI
00a91758	5b	POP EBX
00a91759	83c458	ADD ESP, 0x58
00a9175c	c21000	RET 0x10

TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra Listing; current name: UpdateLotRenderer.
Original instruction/byte block and addressed comments are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.

PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: UpdateLotRenderer.
Complete existing Ghidra stored body union: [00AE9700,00AE9808] inclusive; 265 owned bytes / 80 instruction starts.
Original PE bytes and independent objdump starts match the Listing.

Runs the renderer pre-update child, then under byte+0C dispatches detailed-initialization or imposter work and renderer updates. Detailed initialization is called only when +2C is nonzero, +1E is zero and +1F is zero; the same renderer pointer is forwarded. One float stack word, RET4. Child job/rendering behavior remains with the actual callees. Analyst-assigned name.

00ae9700	56	PUSH ESI
00ae9701	8bf1	MOV ESI, ECX
00ae9703	e858f1ffff	CALL 0x00ae8860 ; AE8860 runs before the +0C admission test; no claim that an inactive renderer has no side effects.
00ae9708	807e0c00	CMP byte ptr [ESI + 0xc], 0x0
00ae970c	0f84f3000000	JZ 0x00ae9805
00ae9712	837e2c00	CMP dword ptr [ESI + 0x2c], 0x0
00ae9716	7420	JZ 0x00ae9738
00ae9718	807e1e00	CMP byte ptr [ESI + 0x1e], 0x0
00ae971c	750d	JNZ 0x00ae972b
00ae971e	807e1f00	CMP byte ptr [ESI + 0x1f], 0x0
00ae9722	7507	JNZ 0x00ae972b
00ae9724	8bce	MOV ECX, ESI
00ae9726	e875f3ffff	CALL 0x00ae8aa0 ; The identical renderer ECX enters AE8AA0 under +2C!=0, +1E==0 and +1F==0. These local conditions do not prove how the state was enabled or runtime scheduling.
00ae972b	8d8e70030000	LEA ECX, [ESI + 0x370]
00ae9731	e8ea00ffff	CALL 0x00ad9820
00ae9736	eb48	JMP 0x00ae9780
00ae9738	807e1e00	CMP byte ptr [ESI + 0x1e], 0x0
00ae973c	57	PUSH EDI
00ae973d	8dbe70030000	LEA EDI, [ESI + 0x370]
00ae9743	8bcf	MOV ECX, EDI
00ae9745	7428	JZ 0x00ae976f
00ae9747	e844f2feff	CALL 0x00ad8990
00ae974c	84c0	TEST AL, AL
00ae974e	752f	JNZ 0x00ae977f
00ae9750	8bcf	MOV ECX, EDI
00ae9752	e8c9f6feff	CALL 0x00ad8e20
00ae9757	84c0	TEST AL, AL
00ae9759	750b	JNZ 0x00ae9766
00ae975b	8bce	MOV ECX, ESI
00ae975d	e8ce5bffff	CALL 0x00adf330
00ae9762	84c0	TEST AL, AL
00ae9764	7419	JZ 0x00ae977f
00ae9766	8bce	MOV ECX, ESI
00ae9768	e873a0ffff	CALL 0x00ae37e0
00ae976d	eb10	JMP 0x00ae977f
00ae976f	e83c00d0ff	CALL 0x007e97b0
00ae9774	84c0	TEST AL, AL
00ae9776	7507	JNZ 0x00ae977f
00ae9778	8bcf	MOV ECX, EDI
00ae977a	e801f9feff	CALL 0x00ad9080
00ae977f	5f	POP EDI
00ae9780	8bce	MOV ECX, ESI
00ae9782	e859a5ffff	CALL 0x00ae3ce0
00ae9787	807e1e00	CMP byte ptr [ESI + 0x1e], 0x0
00ae978b	7441	JZ 0x00ae97ce
00ae978d	8bce	MOV ECX, ESI
00ae978f	e8bc68ffff	CALL 0x00ae0050
00ae9794	8bce	MOV ECX, ESI
00ae9796	e8c5eeffff	CALL 0x00ae8660
00ae979b	80be3203000000	CMP byte ptr [ESI + 0x332], 0x0
00ae97a2	7407	JZ 0x00ae97ab
00ae97a4	8bce	MOV ECX, ESI
00ae97a6	e895c8ffff	CALL 0x00ae6040
00ae97ab	80be3303000000	CMP byte ptr [ESI + 0x333], 0x0
00ae97b2	7407	JZ 0x00ae97bb
00ae97b4	8bce	MOV ECX, ESI
00ae97b6	e815cfffff	CALL 0x00ae66d0
00ae97bb	8b4618	MOV EAX, dword ptr [ESI + 0x18]
00ae97be	80b82404000000	CMP byte ptr [EAX + 0x424], 0x0
00ae97c5	7407	JZ 0x00ae97ce
00ae97c7	8bce	MOV ECX, ESI
00ae97c9	e8d264ffff	CALL 0x00adfca0
00ae97ce	80bed803000000	CMP byte ptr [ESI + 0x3d8], 0x0
00ae97d5	741f	JZ 0x00ae97f6
00ae97d7	e894e9bfff	CALL 0x006e8170
00ae97dc	85c0	TEST EAX, EAX
00ae97de	7416	JZ 0x00ae97f6
00ae97e0	8bc8	MOV ECX, EAX
00ae97e2	e8a917c0ff	CALL 0x006eaf90
00ae97e7	3a86d7030000	CMP AL, byte ptr [ESI + 0x3d7]
00ae97ed	7407	JZ 0x00ae97f6
00ae97ef	8bce	MOV ECX, ESI
00ae97f1	e81a73ffff	CALL 0x00ae0b10
00ae97f6	d9442408	FLD float ptr [ESP + 0x8]
00ae97fa	51	PUSH ECX
00ae97fb	8bce	MOV ECX, ESI
00ae97fd	d91c24	FSTP float ptr [ESP]
00ae9800	e80ba3ffff	CALL 0x00ae3b10
00ae9805	5e	POP ESI
00ae9806	c20400	RET 0x4

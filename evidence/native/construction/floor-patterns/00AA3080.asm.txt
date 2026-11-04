PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: InitializeFloorRenderManager.
Complete existing Ghidra stored body union: [00AA3080,00AA31B0] inclusive; 305 owned bytes / 81 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Initializes the floor-render manager, installs listener table 01064B9C, clears
   attached/registration state and local delayed-message vector, and initializes retained
   containers/locks. Enabled byte +70 and nesting counter +80 initially zero. Analyst-assigned name.

00aa3080	53	PUSH EBX
00aa3081	33db	XOR EBX, EBX
00aa3083	56	PUSH ESI
00aa3084	8bf1	MOV ESI, ECX
00aa3086	c7069c4b0601	MOV dword ptr [ESI], 0x1064b9c ; Listener table 01064B9C has inspected callback slot +4 equal to AA4350. No receiver adjustment is inserted by AA0640; it registers this exact pointer.
00aa308c	885e04	MOV byte ptr [ESI + 0x4], BL
00aa308f	895e08	MOV dword ptr [ESI + 0x8], EBX
00aa3092	895e0c	MOV dword ptr [ESI + 0xc], EBX
00aa3095	895e10	MOV dword ptr [ESI + 0x10], EBX
00aa3098	895e14	MOV dword ptr [ESI + 0x14], EBX
00aa309b	895e18	MOV dword ptr [ESI + 0x18], EBX
00aa309e	895e20	MOV dword ptr [ESI + 0x20], EBX
00aa30a1	895e24	MOV dword ptr [ESI + 0x24], EBX
00aa30a4	895e28	MOV dword ptr [ESI + 0x28], EBX
00aa30a7	895e2c	MOV dword ptr [ESI + 0x2c], EBX
00aa30aa	8d4e44	LEA ECX, [ESI + 0x44]
00aa30ad	895e30	MOV dword ptr [ESI + 0x30], EBX
00aa30b0	895e34	MOV dword ptr [ESI + 0x34], EBX
00aa30b3	895e38	MOV dword ptr [ESI + 0x38], EBX
00aa30b6	895e3c	MOV dword ptr [ESI + 0x3c], EBX
00aa30b9	895e40	MOV dword ptr [ESI + 0x40], EBX
00aa30bc	8919	MOV dword ptr [ECX], EBX
00aa30be	895904	MOV dword ptr [ECX + 0x4], EBX
00aa30c1	895908	MOV dword ptr [ECX + 0x8], EBX
00aa30c4	89590c	MOV dword ptr [ECX + 0xc], EBX
00aa30c7	895910	MOV dword ptr [ECX + 0x10], EBX
00aa30ca	895914	MOV dword ptr [ECX + 0x14], EBX
00aa30cd	57	PUSH EDI
00aa30ce	895918	MOV dword ptr [ECX + 0x18], EBX
00aa30d1	89591c	MOV dword ptr [ECX + 0x1c], EBX
00aa30d4	895920	MOV dword ptr [ECX + 0x20], EBX
00aa30d7	895924	MOV dword ptr [ECX + 0x24], EBX
00aa30da	53	PUSH EBX
00aa30db	c741286c4b0601	MOV dword ptr [ECX + 0x28], 0x1064b6c
00aa30e2	e86946c8ff	CALL 0x00727750
00aa30e7	885e70	MOV byte ptr [ESI + 0x70], BL
00aa30ea	885e71	MOV byte ptr [ESI + 0x71], BL
00aa30ed	885e72	MOV byte ptr [ESI + 0x72], BL
00aa30f0	885e73	MOV byte ptr [ESI + 0x73], BL
00aa30f3	c6467403	MOV byte ptr [ESI + 0x74], 0x3
00aa30f7	895e78	MOV dword ptr [ESI + 0x78], EBX
00aa30fa	895e7c	MOV dword ptr [ESI + 0x7c], EBX
00aa30fd	899e80000000	MOV dword ptr [ESI + 0x80], EBX
00aa3103	899e84000000	MOV dword ptr [ESI + 0x84], EBX
00aa3109	899e88000000	MOV dword ptr [ESI + 0x88], EBX
00aa310f	899e8c000000	MOV dword ptr [ESI + 0x8c], EBX
00aa3115	c786900000003c4b0601	MOV dword ptr [ESI + 0x90], 0x1064b3c
00aa311f	8d8e98000000	LEA ECX, [ESI + 0x98]
00aa3125	889e94000000	MOV byte ptr [ESI + 0x94], BL
00aa312b	e870fec7ff	CALL 0x00722fa0
00aa3130	8d8eb0000000	LEA ECX, [ESI + 0xb0]
00aa3136	e865fec7ff	CALL 0x00722fa0
00aa313b	8d8ec8000000	LEA ECX, [ESI + 0xc8]
00aa3141	e85afec7ff	CALL 0x00722fa0
00aa3146	8d8ee0000000	LEA ECX, [ESI + 0xe0]
00aa314c	e84ffec7ff	CALL 0x00722fa0
00aa3151	8b3d2461f900	MOV EDI, dword ptr [0x00f96124]
00aa3157	899ef8000000	MOV dword ptr [ESI + 0xf8], EBX
00aa315d	8d8610010000	LEA EAX, [ESI + 0x110]
00aa3163	899efc000000	MOV dword ptr [ESI + 0xfc], EBX
00aa3169	899e00010000	MOV dword ptr [ESI + 0x100], EBX
00aa316f	899e04010000	MOV dword ptr [ESI + 0x104], EBX
00aa3175	50	PUSH EAX
00aa3176	c78608010000104b0601	MOV dword ptr [ESI + 0x108], 0x1064b10
00aa3180	ffd7	CALL EDI
00aa3182	33c9	XOR ECX, ECX
00aa3184	8d9630010000	LEA EDX, [ESI + 0x130]
00aa318a	870a	XCHG dword ptr [EDX], ECX
00aa318c	8d8638010000	LEA EAX, [ESI + 0x138]
00aa3192	50	PUSH EAX
00aa3193	ffd7	CALL EDI
00aa3195	33c9	XOR ECX, ECX
00aa3197	8d9658010000	LEA EDX, [ESI + 0x158]
00aa319d	870a	XCHG dword ptr [EDX], ECX
00aa319f	5f	POP EDI
00aa31a0	889e5c010000	MOV byte ptr [ESI + 0x15c], BL
00aa31a6	889e5d010000	MOV byte ptr [ESI + 0x15d], BL
00aa31ac	8bc6	MOV EAX, ESI
00aa31ae	5e	POP ESI
00aa31af	5b	POP EBX
00aa31b0	c3	RET

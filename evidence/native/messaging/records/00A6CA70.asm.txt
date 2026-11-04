PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: AppendRetainedMessageRecord.
Complete existing Ghidra stored body union: [00A6CA70,00A6CAAB] inclusive; 60 owned bytes / 23 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Appends one 8-byte retained event/payload record. Spare-capacity path advances end by 8, copies
   both words and retains the payload. Full capacity delegates to A6BD10; allocator/movement/failure
   policy remains there. Analyst-assigned name.

00a6ca70	8b4104	MOV EAX, dword ptr [ECX + 0x4] ; AA4350 constructs a local retained record first, appends it here, then releases the local payload. Spare-capacity append therefore leaves one additional queued reference.
00a6ca73	3b4108	CMP EAX, dword ptr [ECX + 0x8]
00a6ca76	7326	JNC 0x00a6ca9e
00a6ca78	85c0	TEST EAX, EAX
00a6ca7a	8d5008	LEA EDX, [EAX + 0x8]
00a6ca7d	895104	MOV dword ptr [ECX + 0x4], EDX
00a6ca80	7427	JZ 0x00a6caa9
00a6ca82	8b4c2404	MOV ECX, dword ptr [ESP + 0x4]
00a6ca86	8b11	MOV EDX, dword ptr [ECX]
00a6ca88	8910	MOV dword ptr [EAX], EDX
00a6ca8a	8b4904	MOV ECX, dword ptr [ECX + 0x4]
00a6ca8d	85c9	TEST ECX, ECX
00a6ca8f	894804	MOV dword ptr [EAX + 0x4], ECX
00a6ca92	7415	JZ 0x00a6caa9
00a6ca94	8b01	MOV EAX, dword ptr [ECX]
00a6ca96	8b5004	MOV EDX, dword ptr [EAX + 0x4]
00a6ca99	ffd2	CALL EDX
00a6ca9b	c20400	RET 0x4
00a6ca9e	8b542404	MOV EDX, dword ptr [ESP + 0x4]
00a6caa2	52	PUSH EDX
00a6caa3	50	PUSH EAX
00a6caa4	e867f2ffff	CALL 0x00a6bd10
00a6caa9	c20400	RET 0x4

PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: FlushDeferredFloorMessages.
Complete existing Ghidra stored body union: [00AA42D0,00AA4340] inclusive; 113 owned bytes / 43 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Applies queued 8-byte event/payload records using the original begin/end snapshot, then reloads
   queue bounds for a separate payload-release pass and resets end to begin. No reentrancy or
   mutation safety is established. Analyst-assigned name.

00aa42d0	53	PUSH EBX ; Two distinct passes: first AA3890 application over the original range, then virtual +8 release over reloaded bounds. This is not apply-and-release interleaved per entry.
00aa42d1	56	PUSH ESI
00aa42d2	57	PUSH EDI
00aa42d3	8bf9	MOV EDI, ECX
00aa42d5	8bb784000000	MOV ESI, dword ptr [EDI + 0x84]
00aa42db	8b9f88000000	MOV EBX, dword ptr [EDI + 0x88]
00aa42e1	3bf3	CMP ESI, EBX
00aa42e3	7415	JZ 0x00aa42fa
00aa42e5	8b4604	MOV EAX, dword ptr [ESI + 0x4]
00aa42e8	8b0e	MOV ECX, dword ptr [ESI]
00aa42ea	50	PUSH EAX
00aa42eb	51	PUSH ECX
00aa42ec	8bcf	MOV ECX, EDI
00aa42ee	e89df5ffff	CALL 0x00aa3890
00aa42f3	83c608	ADD ESI, 0x8
00aa42f6	3bf3	CMP ESI, EBX
00aa42f8	75eb	JNZ 0x00aa42e5
00aa42fa	8b9f88000000	MOV EBX, dword ptr [EDI + 0x88]
00aa4300	8bb784000000	MOV ESI, dword ptr [EDI + 0x84]
00aa4306	3bf3	CMP ESI, EBX
00aa4308	732b	JNC 0x00aa4335
00aa430a	8d9b00000000	LEA EBX, [EBX]
00aa4310	8b4e04	MOV ECX, dword ptr [ESI + 0x4]
00aa4313	85c9	TEST ECX, ECX
00aa4315	7407	JZ 0x00aa431e
00aa4317	8b11	MOV EDX, dword ptr [ECX]
00aa4319	8b4208	MOV EAX, dword ptr [EDX + 0x8]
00aa431c	ffd0	CALL EAX
00aa431e	83c608	ADD ESI, 0x8
00aa4321	3bf3	CMP ESI, EBX
00aa4323	72eb	JC 0x00aa4310
00aa4325	8b8f84000000	MOV ECX, dword ptr [EDI + 0x84]
00aa432b	898f88000000	MOV dword ptr [EDI + 0x88], ECX
00aa4331	5f	POP EDI
00aa4332	5e	POP ESI
00aa4333	5b	POP EBX
00aa4334	c3	RET
00aa4335	8bd6	MOV EDX, ESI
00aa4337	899788000000	MOV dword ptr [EDI + 0x88], EDX
00aa433d	5f	POP EDI
00aa433e	5e	POP ESI
00aa433f	5b	POP EBX
00aa4340	c3	RET

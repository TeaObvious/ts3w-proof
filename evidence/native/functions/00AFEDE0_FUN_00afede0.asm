# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00afede0,00afee0f]. 48 owned bytes/15 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Platform full-cell forwarding. cdecl lot/packedcell/mode, plain RET. Copies three signed coordinate/level bytes, forces mask0F and forwards mode to AFED60. Physical ADD ESP/RET leaves child AL/EAX intact, despite stored void projection. Does not mutate caller cell.

00afede0	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00afede4	668b08	MOV CX, word ptr [EAX]
00afede7	8a5002	MOV DL, byte ptr [EAX + 0x2]
00afedea	8b44240c	MOV EAX, dword ptr [ESP + 0xc]
00afedee	66894c2408	MOV word ptr [ESP + 0x8], CX
00afedf3	50	PUSH EAX
00afedf4	8d4c240c	LEA ECX, [ESP + 0xc]
00afedf8	8854240e	MOV byte ptr [ESP + 0xe], DL
00afedfc	8b542408	MOV EDX, dword ptr [ESP + 0x8]
00afee00	51	PUSH ECX
00afee01	52	PUSH EDX
00afee02	c64424170f	MOV byte ptr [ESP + 0x17], 0xf
00afee07	e854ffffff	CALL 0x00afed60
00afee0c	83c40c	ADD ESP, 0xc
00afee0f	c3	RET

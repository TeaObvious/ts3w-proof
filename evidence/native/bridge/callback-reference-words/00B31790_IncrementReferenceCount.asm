Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: IncrementReferenceCount.
Paired actual Ghidra C: 00B31790_IncrementReferenceCount.c
Actual owned interval is half-open. Types/signatures are preserved projections; no body/ABI repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: IncrementReferenceCount
Entry Point: 00b31790
Body: [[00b31790, 00b31799]]
Parameter Count: 1
Return Type: undefined
Signature: undefined __fastcall IncrementReferenceCount(int counterOwner)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [00B31790,00B3179A); 10 bytes; original PE file offset 00731790.
00B31790: 8b 41 04 83 c0 01 89 41 04 c3

Independent original PE instructions:
  b31790:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  b31793:	83 c0 01                                        	add    eax,0x1
  b31796:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  b31799:	c3                                              	ret

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: IncrementReferenceCount
Entry Point: 00b31790

00b31790: MOV EAX, dword ptr [ECX + 0x4]
00b31793: ADD EAX, 0x1
00b31796: MOV dword ptr [ECX + 0x4], EAX
00b31799: RET

Total instructions: 4

CURRENT DB FUNCTION COMMENTS (as returned)
[Context] Operating on: TS3W.exe

Comments in function: 0x00B31790

Function comment: Increments the receiver's 32-bit reference-count word at byte offset+4.
The full body is MOV EAX,[ECX+4]; ADD EAX,1; MOV [ECX+4],EAX; RET. Arithmetic wraps modulo2^32 and the updated word remains physically in EAX. The current undefined/void return projection is preserved; no caller-consumed return contract is proved here. There is no receiver/null/count validation in this body.
This is a shared helper, including slot0 of the EventQueue wrapper table010022D0, not an EventQueue-specific operation. It uses ordinary MOV/ADD/MOV instructions with no LOCK prefix or synchronization performed here. Family-wide ownership, lifetime and external synchronization remain open.

00b31790 [plate]: Increments the receiver's 32-bit reference-count word at byte offset+4.
The full body is MOV EAX,[ECX+4]; ADD EAX,1; MOV [ECX+4],EAX; RET. Arithmetic wraps modulo2^32 and the updated word remains physically in EAX. The current undefined/void return projection is preserved; no caller-consumed return contract is proved here. There is no receiver/null/count validation in this body.
This is a shared helper, including slot0 of the EventQueue wrapper table010022D0, not an EventQueue-specific operation. It uses ordinary MOV/ADD/MOV instructions with no LOCK prefix or synchronization performed here. Family-wide ownership, lifetime and external synchronization remain open.

Total: 1 address comments

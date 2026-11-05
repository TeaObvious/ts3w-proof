Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: DecrementReferenceCountAndDispatchAtZero.
Paired actual Ghidra C: 00EC7190_DecrementReferenceCountAndDispatchAtZero.c
Actual owned interval is half-open. Types/signatures are preserved projections; no body/ABI repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: DecrementReferenceCountAndDispatchAtZero
Entry Point: 00ec7190
Body: [[00ec7190, 00ec71ad]]
Parameter Count: 1
Return Type: int
Signature: int __fastcall DecrementReferenceCountAndDispatchAtZero(int * counterOwner)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [00EC7190,00EC71AE); 30 bytes; original PE file offset 00AC7190.
00EC7190: 8b 41 04 83 c0 ff 89 41 04 75 12 c7 41 04 01 00
00EC71A0: 00 00 8b 01 8b 50 08 6a 01 ff d2 33 c0 c3

Independent original PE instructions:
  ec7190:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  ec7193:	83 c0 ff                                        	add    eax,0xffffffff
  ec7196:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  ec7199:	75 12                                           	jne    0xec71ad
  ec719b:	c7 41 04 01 00 00 00                            	mov    DWORD PTR [ecx+0x4],0x1
  ec71a2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  ec71a4:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  ec71a7:	6a 01                                           	push   0x1
  ec71a9:	ff d2                                           	call   edx
  ec71ab:	33 c0                                           	xor    eax,eax
  ec71ad:	c3                                              	ret

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: DecrementReferenceCountAndDispatchAtZero
Entry Point: 00ec7190

00ec7190: MOV EAX, dword ptr [ECX + 0x4]
00ec7193: ADD EAX, -0x1
00ec7196: MOV dword ptr [ECX + 0x4], EAX
00ec7199: JNZ 0x00ec71ad
00ec719b: MOV dword ptr [ECX + 0x4], 0x1
00ec71a2: MOV EAX, dword ptr [ECX]
00ec71a4: MOV EDX, dword ptr [EAX + 0x8]
00ec71a7: PUSH 0x1
00ec71a9: CALL EDX
00ec71ab: XOR EAX, EAX
00ec71ad: RET

Total instructions: 11

CURRENT DB FUNCTION COMMENTS (as returned)
[Context] Operating on: TS3W.exe

Comments in function: 0x00EC7190

Function comment: Decrements the receiver's 32-bit reference-count word at byte offset+4 and dispatches table slot+8 when the decremented word is zero.
The body stores the modulo2^32 decrement result before testing it. If nonzero it returns that result in EAX. If zero, it writes1 to receiver+4 BEFORE loading/calling receiver table slot+8 with stack word1; after that call it clears EAX and returns0. It does not dereference the receiver after the indirect call. Return0 is not a statement that receiver+4 remains0 or1, nor proof that the receiver survives the call.
The table/callee implementation, destruction/reentrancy policy, overall lifetime and external synchronization remain open. Slot+8 of the EventQueue wrapper table010022D0 contains0051A720, currently reported as Function not found; this does not authorize a definition or name for that candidate. This shared body contains no LOCK/atomic instruction or null/underflow guard. All current types, parameter ABI and function boundaries are preserved.

00ec7190 [plate]: Decrements the receiver's 32-bit reference-count word at byte offset+4 and dispatches table slot+8 when the decremented word is zero.
The body stores the modulo2^32 decrement result before testing it. If nonzero it returns that result in EAX. If zero, it writes1 to receiver+4 BEFORE loading/calling receiver table slot+8 with stack word1; after that call it clears EAX and returns0. It does not dereference the receiver after the indirect call. Return0 is not a statement that receiver+4 remains0 or1, nor proof that the receiver survives the call.
The table/callee implementation, destruction/reentrancy policy, overall lifetime and external synchronization remain open. Slot+8 of the EventQueue wrapper table010022D0 contains0051A720, currently reported as Function not found; this does not authorize a definition or name for that candidate. This shared body contains no LOCK/atomic instruction or null/underflow guard. All current types, parameter ABI and function boundaries are preserved.

Total: 1 address comments

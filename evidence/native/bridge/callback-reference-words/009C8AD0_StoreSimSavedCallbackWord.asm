Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: StoreSimSavedCallbackWord.
Paired actual Ghidra C: 009C8AD0_StoreSimSavedCallbackWord.c
Actual owned interval is half-open. Types/signatures are preserved projections; no body/ABI repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: StoreSimSavedCallbackWord
Entry Point: 009c8ad0
Body: [[009c8ad0, 009c8adb]]
Parameter Count: 1
Return Type: undefined
Signature: undefined __stdcall StoreSimSavedCallbackWord(undefined4 callbackWord)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [009C8AD0,009C8ADC); 12 bytes; original PE file offset 005C8AD0.
009C8AD0: 8b 44 24 04 a3 58 a9 1e 01 c2 04 00

Independent original PE instructions:
  9c8ad0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  9c8ad4:	a3 58 a9 1e 01                                  	mov    ds:0x11ea958,eax
  9c8ad9:	c2 04 00                                        	ret    0x4

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: StoreSimSavedCallbackWord
Entry Point: 009c8ad0

009c8ad0: MOV EAX, dword ptr [ESP + 0x4]
009c8ad4: MOV [0x011ea958], EAX
009c8ad9: RET 0x4

Total instructions: 3

CURRENT DB FUNCTION COMMENTS (as returned)
[Context] Operating on: TS3W.exe

Comments in function: 0x009C8AD0

Function comment: Stores the incoming 32-bit callback word in global 011EA958.
The existing DownloadContent bridge at 009956F0 forwards the managed SimSaved delegate word here through direct call 00995708. This complete body loads entry stack word+4, stores it at 009C8AD4, and uses RET4. It performs no validation, synchronization, add-reference, release, or callback invocation in this body; ownership elsewhere remains open. The stored word is opaque: no code-pointer, CLR-object-pointer, handle representation, or native callback ABI is inferred.
The existing 009CB0D0 consumer reads the global and forwards it through host slot+134h. The current undefined/void return projection and all parameter types/calling convention are preserved; no independently proved API return-value contract is introduced.

009c8ad0 [plate]: Stores the incoming 32-bit callback word in global 011EA958.
The existing DownloadContent bridge at 009956F0 forwards the managed SimSaved delegate word here through direct call 00995708. This complete body loads entry stack word+4, stores it at 009C8AD4, and uses RET4. It performs no validation, synchronization, add-reference, release, or callback invocation in this body; ownership elsewhere remains open. The stored word is opaque: no code-pointer, CLR-object-pointer, handle representation, or native callback ABI is inferred.
The existing 009CB0D0 consumer reads the global and forwards it through host slot+134h. The current undefined/void return projection and all parameter types/calling convention are preserved; no independently proved API return-value contract is introduced.

Total: 1 address comments

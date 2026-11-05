Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: FreeWithAllocatorHeader.
Paired actual Ghidra C: 00505080_FreeWithAllocatorHeader.c
Owned intervals below are half-open and come from actual function metadata.
Original bytes/instructions are unchanged; no body/signature repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: FreeWithAllocatorHeader
Entry Point: 00505080
Body: [[00505080, 005050a9]]
Parameter Count: 1
Return Type: undefined
Signature: undefined __cdecl FreeWithAllocatorHeader(int userPointer)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [00505080,005050AA); 42 bytes; original PE file offset 00105080.
00505080: 8b 44 24 04 85 c0 74 21 8b 48 f0 83 c0 f0 85 c9
00505090: 74 0b 8b 11 6a 00 50 8b 42 0c ff d0 c3 8b 0d 64
005050A0: c8 1c 01 50 e8 c7 0d fe ff c3

Independent original PE instructions:
  505080:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  505084:	85 c0                                           	test   eax,eax
  505086:	74 21                                           	je     0x5050a9
  505088:	8b 48 f0                                        	mov    ecx,DWORD PTR [eax-0x10]
  50508b:	83 c0 f0                                        	add    eax,0xfffffff0
  50508e:	85 c9                                           	test   ecx,ecx
  505090:	74 0b                                           	je     0x50509d
  505092:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  505094:	6a 00                                           	push   0x0
  505096:	50                                              	push   eax
  505097:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  50509a:	ff d0                                           	call   eax
  50509c:	c3                                              	ret
  50509d:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  5050a3:	50                                              	push   eax
  5050a4:	e8 c7 0d fe ff                                  	call   0x4e5e70
  5050a9:	c3                                              	ret

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: FreeWithAllocatorHeader
Entry Point: 00505080

00505080: MOV EAX, dword ptr [ESP + 0x4]
00505084: TEST EAX, EAX
00505086: JZ 0x005050a9 ; Null user pointer is a no-op; nonnull path requires a valid16byte allocation header.
00505088: MOV ECX, dword ptr [EAX + -0x10] ; Read saved allocator at userpointer-16; all release calls receive header base, not user pointer.
0050508b: ADD EAX, -0x10
0050508e: TEST ECX, ECX
00505090: JZ 0x0050509d
00505092: MOV EDX, dword ptr [ECX]
00505094: PUSH 0x0
00505096: PUSH EAX
00505097: MOV EAX, dword ptr [EDX + 0xc]
0050509a: CALL EAX ; Nonzero saved allocator: virtual+C(headerbase,0); allocator lifetime and concrete backend unresolved.
0050509c: RET
0050509d: MOV ECX, dword ptr [0x011cc864]
005050a3: PUSH EAX
005050a4: CALL 0x004e5e70 ; Zero saved allocator uses current default global011CC864, not an allocator pointer stored at allocation time.
005050a9: RET

Total instructions: 17
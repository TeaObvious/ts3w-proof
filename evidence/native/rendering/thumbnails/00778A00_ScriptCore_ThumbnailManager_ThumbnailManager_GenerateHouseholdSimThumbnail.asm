TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: ScriptCore.ThumbnailManager::ThumbnailManager_GenerateHouseholdSimThumbnail.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; consult the machine instructions.

TS3W.exe PC 1.67 — original bytes and saved Ghidra Listing
DB entry: 00778A00
Paired actual Ghidra pseudocode: 00778A00_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateHouseholdSimThumbnail.c
Owned body inclusive: 00778A00..00778A5C
Complete current Ghidra body (contiguous)
Preserved interval: [00778A00, 00778A5D)
Originalbytes read from identified pristine PE; independently decoded by GNU objdump.
Ghidra names/comments are analyst-assigned where stated; no runtime observed.

ORIGINAL BYTES
00778A00: 83 ec 34 83 7c 24 64 00 57 8b 3d 30 ec 1e 01 89
00778A10: 7c 24 04 75 48 85 ff 0f 84 76 01 00 00 8b 44 24
00778A20: 64 8b 4c 24 60 8b 54 24 5c 6a 00 50 8b 44 24 60
00778A30: 51 8b 4c 24 60 52 8b 54 24 60 50 8b 44 24 60 51
00778A40: 52 50 8d 4c 24 28 51 8d 4c 24 60 e8 90 36 ff ff
00778A50: 50 8b cf e8 c8 8b 5e 00 5f 83 c4 34 c3

SAVED GHIDRA LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: ScriptCore.ThumbnailManager::ThumbnailManager_GenerateHouseholdSimThumbnail
Entry Point: 00778a00

00778a00: SUB ESP, 0x34
00778a03: CMP dword ptr [ESP + 0x64], 0x0
00778a08: PUSH EDI
00778a09: MOV EDI, dword ptr [0x011eec30]
00778a0f: MOV dword ptr [ESP + 0x4], EDI
00778a13: JNZ 0x00778a5d
00778a15: TEST EDI, EDI
00778a17: JZ 0x00778b93
00778a1d: MOV EAX, dword ptr [ESP + 0x64]
00778a21: MOV ECX, dword ptr [ESP + 0x60]
00778a25: MOV EDX, dword ptr [ESP + 0x5c]
00778a29: PUSH 0x0
00778a2b: PUSH EAX
00778a2c: MOV EAX, dword ptr [ESP + 0x60]
00778a30: PUSH ECX
00778a31: MOV ECX, dword ptr [ESP + 0x60]
00778a35: PUSH EDX
00778a36: MOV EDX, dword ptr [ESP + 0x60]
00778a3a: PUSH EAX
00778a3b: MOV EAX, dword ptr [ESP + 0x60]
00778a3f: PUSH ECX
00778a40: PUSH EDX
00778a41: PUSH EAX
00778a42: LEA ECX, [ESP + 0x28]
00778a46: PUSH ECX
00778a47: LEA ECX, [ESP + 0x60]
00778a4b: CALL 0x0076c0e0
00778a50: PUSH EAX
00778a51: MOV ECX, EDI
00778a53: CALL 0x00d61620
00778a58: POP EDI
00778a59: ADD ESP, 0x34
00778a5c: RET

Total instructions: 33

INDEPENDENT PE DISASSEMBLY
00778a00 <.text+0x377a00>:
  778a00:	83 ec 34                                        	sub    esp,0x34
  778a03:	83 7c 24 64 00                                  	cmp    DWORD PTR [esp+0x64],0x0
  778a08:	57                                              	push   edi
  778a09:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  778a0f:	89 7c 24 04                                     	mov    DWORD PTR [esp+0x4],edi
  778a13:	75 48                                           	jne    0x778a5d
  778a15:	85 ff                                           	test   edi,edi
  778a17:	0f 84 76 01 00 00                               	je     0x778b93
  778a1d:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  778a21:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  778a25:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  778a29:	6a 00                                           	push   0x0
  778a2b:	50                                              	push   eax
  778a2c:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  778a30:	51                                              	push   ecx
  778a31:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  778a35:	52                                              	push   edx
  778a36:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  778a3a:	50                                              	push   eax
  778a3b:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  778a3f:	51                                              	push   ecx
  778a40:	52                                              	push   edx
  778a41:	50                                              	push   eax
  778a42:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  778a46:	51                                              	push   ecx
  778a47:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  778a4b:	e8 90 36 ff ff                                  	call   0x76c0e0
  778a50:	50                                              	push   eax
  778a51:	8b cf                                           	mov    ecx,edi
  778a53:	e8 c8 8b 5e 00                                  	call   0xd61620
  778a58:	5f                                              	pop    edi
  778a59:	83 c4 34                                        	add    esp,0x34
  778a5c:	c3                                              	ret

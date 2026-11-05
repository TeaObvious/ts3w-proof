# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5f90 (ScriptCore.CASUtils::CASUtils_SimBuilderResetAnimationImpl)
Paired Ghidra pseudocode: 005A5F90_ScriptCore_CASUtils_CASUtils_SimBuilderResetAnimationImpl.c
Window: [0x005a5f90, 0x005a5fd0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5f90: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5fa0: 35 75 1e e8 e8 33 1c 00 8b 10 8b c8 8b 82 cc 00
005a5fb0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 2f b6 03
005a5fc0: 00 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5f90 <.text+0x1a4f90>:
  5a5f90:	56                                              	push   esi
  5a5f91:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5f95:	8b c6                                           	mov    eax,esi
  5a5f97:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a5f9c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5fa1:	75 1e                                           	jne    0x5a5fc1
  5a5fa3:	e8 e8 33 1c 00                                  	call   0x769390
  5a5fa8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5faa:	8b c8                                           	mov    ecx,eax
  5a5fac:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5fb2:	56                                              	push   esi
  5a5fb3:	ff d0                                           	call   eax
  5a5fb5:	85 c0                                           	test   eax,eax
  5a5fb7:	74 08                                           	je     0x5a5fc1
  5a5fb9:	8b c8                                           	mov    ecx,eax
  5a5fbb:	5e                                              	pop    esi
  5a5fbc:	e9 2f b6 03 00                                  	jmp    0x5e15f0
  5a5fc1:	32 c0                                           	xor    al,al
  5a5fc3:	5e                                              	pop    esi
  5a5fc4:	c3                                              	ret
  5a5fc5:	cc                                              	int3
  5a5fc6:	cc                                              	int3
  5a5fc7:	cc                                              	int3
  5a5fc8:	cc                                              	int3
  5a5fc9:	cc                                              	int3
  5a5fca:	cc                                              	int3
  5a5fcb:	cc                                              	int3
  5a5fcc:	cc                                              	int3
  5a5fcd:	cc                                              	int3
  5a5fce:	cc                                              	int3
  5a5fcf:	cc                                              	int3

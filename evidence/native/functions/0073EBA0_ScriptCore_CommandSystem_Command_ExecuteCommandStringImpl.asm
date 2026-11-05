# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073eba0 (ScriptCore.CommandSystem::Command_ExecuteCommandStringImpl)
Paired Ghidra pseudocode: 0073EBA0_ScriptCore_CommandSystem_Command_ExecuteCommandStringImpl.c
Window: [0x0073eba0, 0x0073ebe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073ebe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073eba0: 56 e8 ea a7 02 00 8b 4c 24 08 85 c9 74 23 8b 10
0073ebb0: 51 8b c8 8b 42 58 ff d0 8b f0 85 f6 74 13 e8 dd
0073ebc0: ae e4 ff 85 c0 74 0a 56 8b c8 e8 b1 bf e4 ff 5e
0073ebd0: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073eba0 <.text+0x33dba0>:
  73eba0:	56                                              	push   esi
  73eba1:	e8 ea a7 02 00                                  	call   0x769390
  73eba6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  73ebaa:	85 c9                                           	test   ecx,ecx
  73ebac:	74 23                                           	je     0x73ebd1
  73ebae:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73ebb0:	51                                              	push   ecx
  73ebb1:	8b c8                                           	mov    ecx,eax
  73ebb3:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  73ebb6:	ff d0                                           	call   eax
  73ebb8:	8b f0                                           	mov    esi,eax
  73ebba:	85 f6                                           	test   esi,esi
  73ebbc:	74 13                                           	je     0x73ebd1
  73ebbe:	e8 dd ae e4 ff                                  	call   0x589aa0
  73ebc3:	85 c0                                           	test   eax,eax
  73ebc5:	74 0a                                           	je     0x73ebd1
  73ebc7:	56                                              	push   esi
  73ebc8:	8b c8                                           	mov    ecx,eax
  73ebca:	e8 b1 bf e4 ff                                  	call   0x58ab80
  73ebcf:	5e                                              	pop    esi
  73ebd0:	c3                                              	ret
  73ebd1:	32 c0                                           	xor    al,al
  73ebd3:	5e                                              	pop    esi
  73ebd4:	c3                                              	ret
  73ebd5:	cc                                              	int3
  73ebd6:	cc                                              	int3
  73ebd7:	cc                                              	int3
  73ebd8:	cc                                              	int3
  73ebd9:	cc                                              	int3
  73ebda:	cc                                              	int3
  73ebdb:	cc                                              	int3
  73ebdc:	cc                                              	int3
  73ebdd:	cc                                              	int3
  73ebde:	cc                                              	int3
  73ebdf:	cc                                              	int3

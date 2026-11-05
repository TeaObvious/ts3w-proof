# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Instruction-qualified window only, not a Ghidra-owned function/decompiler export. Existing listener registration95FCB0 binds raw event19hex (25decimal) to this exact address. Cdecl object/payload pointers, two plainRET exits. Null object or absent VisualState returnsAL1. OtherwiseECXcomponent plus payload pointer to95E970, forwarding childAL. Complete39byte/15instruction CFG ends95F646RET; nineCCpadding and next event24hex wrapper95F650 excluded. Native get_data48bytes PEidentical; no function creation or fake Ghidra C.

ORIGINAL BYTES
8b 4c 24 04 85 c9 74 1c a1 a8 a2 1e 01 50 e8 2d 4c fd ff 85 c0 74 0d 8b 4c 24 08 51 8b c8 e8 2d f3 ff ff c3 b0 01 c3

INDEPENDENT PE DECODE

/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095f620 <.text+0x55e620>:
  95f620:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  95f624:	85 c9                                           	test   ecx,ecx
  95f626:	74 1c                                           	je     0x95f644
  95f628:	a1 a8 a2 1e 01                                  	mov    eax,ds:0x11ea2a8
  95f62d:	50                                              	push   eax
  95f62e:	e8 2d 4c fd ff                                  	call   0x934260
  95f633:	85 c0                                           	test   eax,eax
  95f635:	74 0d                                           	je     0x95f644
  95f637:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  95f63b:	51                                              	push   ecx
  95f63c:	8b c8                                           	mov    ecx,eax
  95f63e:	e8 2d f3 ff ff                                  	call   0x95e970
  95f643:	c3                                              	ret
  95f644:	b0 01                                           	mov    al,0x1
  95f646:	c3                                              	ret

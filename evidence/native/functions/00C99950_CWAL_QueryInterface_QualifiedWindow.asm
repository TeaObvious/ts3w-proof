# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 instruction-qualified query WINDOW, NOT a Ghidra-owned function export. Explicit get_code returned Function not found; DB remains unchanged. GhidrAssist get_data_at128bytes matched pristine PE; only7instructions/25bytes[C99950,C99969) qualify both branch paths, excluding7CCpadding and subsequent helpers. ECXreceiver/oneUInt32word: F14A3B3C returnsECX RET4, other IDs tailJMP C92FE0, whose existing owned pair defines base interface set. No missing decompiler result invented.

ORIGINAL BYTES
8b 44 24 04 3d 3c 3b 4a f1 75 05 8b c1 c2 04 00 89 44 24 04 e9 77 96 ff ff

INDEPENDENT PE DECODE

/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c99950 <.text+0x898950>:
  c99950:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  c99954:	3d 3c 3b 4a f1                                  	cmp    eax,0xf14a3b3c
  c99959:	75 05                                           	jne    0xc99960
  c9995b:	8b c1                                           	mov    eax,ecx
  c9995d:	c2 04 00                                        	ret    0x4
  c99960:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  c99964:	e9 77 96 ff ff                                  	jmp    0xc92fe0

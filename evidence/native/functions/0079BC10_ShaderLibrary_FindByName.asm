# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079bc10, 0x0079bc36); analyst name ShaderLibrary_FindByName.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079bc10 <.text+0x39ac10>:
  79bc10:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  79bc14:	56                   	push   esi
  79bc15:	50                   	push   eax
  79bc16:	8b f1                	mov    esi,ecx
  79bc18:	e8 03 56 00 00       	call   0x7a1220
  79bc1d:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  79bc21:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  79bc25:	83 c4 04             	add    esp,0x4
  79bc28:	51                   	push   ecx
  79bc29:	52                   	push   edx
  79bc2a:	50                   	push   eax
  79bc2b:	8b ce                	mov    ecx,esi
  79bc2d:	e8 2e ff ff ff       	call   0x79bb60
  79bc32:	5e                   	pop    esi
  79bc33:	c2 0c 00             	ret    0xc

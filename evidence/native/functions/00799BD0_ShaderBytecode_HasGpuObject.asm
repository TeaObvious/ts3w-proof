# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00799bd0, 0x00799bd9); analyst name ShaderBytecode_HasGpuObject.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00799bd0 <.text+0x398bd0>:
  799bd0:	33 c0                	xor    eax,eax
  799bd2:	39 41 10             	cmp    DWORD PTR [ecx+0x10],eax
  799bd5:	0f 95 c0             	setne  al
  799bd8:	c3                   	ret

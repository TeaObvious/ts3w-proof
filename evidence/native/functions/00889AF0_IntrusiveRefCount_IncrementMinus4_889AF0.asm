# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00889af0 IntrusiveRefCount_IncrementMinus4_889AF0
# Complete current Ghidra body [00889af0, 00889afd] inclusive: 5 body instructions, 14 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 00889AF0_IntrusiveRefCount_IncrementMinus4_889AF0.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00889af0 <.text+0x488af0>:
  889af0:	83 c1 fc                                        	add    ecx,0xfffffffc
  889af3:	b8 01 00 00 00                                  	mov    eax,0x1
  889af8:	f0 0f c1 01                                     	lock xadd DWORD PTR [ecx],eax
  889afc:	40                                              	inc    eax
  889afd:	c3                                              	ret

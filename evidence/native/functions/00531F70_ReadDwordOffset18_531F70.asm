# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00531f70 ReadDwordOffset18_531F70
# Complete current Ghidra body [00531f70, 00531f73] inclusive: 2 body instructions, 4 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 00531F70_ReadDwordOffset18_531F70.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00531f70 <.text+0x130f70>:
  531f70:	8b 41 18                                        	mov    eax,DWORD PTR [ecx+0x18]
  531f73:	c3                                              	ret

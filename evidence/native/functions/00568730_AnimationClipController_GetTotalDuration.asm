# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568730, 0x00568764); analyst name AnimationClipController_GetTotalDuration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568730 <.text+0x167730>:
  568730:	51                   	push   ecx
  568731:	8b 81 ec 05 00 00    	mov    eax,DWORD PTR [ecx+0x5ec]
  568737:	85 c0                	test   eax,eax
  568739:	74 21                	je     0x56875c
  56873b:	83 b9 d0 05 00 00 00 	cmp    DWORD PTR [ecx+0x5d0],0x0
  568742:	74 18                	je     0x56875c
  568744:	85 c0                	test   eax,eax
  568746:	89 04 24             	mov    DWORD PTR [esp],eax
  568749:	db 04 24             	fild   DWORD PTR [esp]
  56874c:	7d 06                	jge    0x568754
  56874e:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  568754:	d8 89 e8 05 00 00    	fmul   DWORD PTR [ecx+0x5e8]
  56875a:	59                   	pop    ecx
  56875b:	c3                   	ret
  56875c:	d9 05 94 05 15 01    	fld    DWORD PTR ds:0x1150594
  568762:	59                   	pop    ecx
  568763:	c3                   	ret

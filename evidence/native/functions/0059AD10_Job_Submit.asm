# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059ad10..0059ad30; Job_Submit
  59ad10:	85 c9                	test   ecx,ecx
  59ad12:	74 0f                	je     0x59ad23
  59ad14:	8d 41 f8             	lea    eax,[ecx-0x8]
  59ad17:	8b c8                	mov    ecx,eax
  59ad19:	8b 49 34             	mov    ecx,DWORD PTR [ecx+0x34]
  59ad1c:	50                   	push   eax
  59ad1d:	e8 2e fe ff ff       	call   0x59ab50
  59ad22:	c3                   	ret
  59ad23:	33 c0                	xor    eax,eax
  59ad25:	33 c9                	xor    ecx,ecx
  59ad27:	8b 49 34             	mov    ecx,DWORD PTR [ecx+0x34]
  59ad2a:	50                   	push   eax
  59ad2b:	e8 20 fe ff ff       	call   0x59ab50
  59ad30:	c3                   	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00599e20..00599e38; Job_AddReference
  599e20:	85 c9                	test   ecx,ecx
  599e22:	74 05                	je     0x599e29
  599e24:	8d 41 f8             	lea    eax,[ecx-0x8]
  599e27:	eb 02                	jmp    0x599e2b
  599e29:	33 c0                	xor    eax,eax
  599e2b:	8d 48 30             	lea    ecx,[eax+0x30]
  599e2e:	b8 01 00 00 00       	mov    eax,0x1
  599e33:	f0 0f c1 01          	lock xadd DWORD PTR [ecx],eax
  599e37:	40                   	inc    eax
  599e38:	c3                   	ret

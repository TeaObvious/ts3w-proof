# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 004e44e0..004e44f4; Memory_FreeIfNonNull
  4e44e0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  4e44e4:	85 c0                	test   eax,eax
  4e44e6:	74 0c                	je     0x4e44f4
  4e44e8:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  4e44ee:	50                   	push   eax
  4e44ef:	e8 7c 19 00 00       	call   0x4e5e70
  4e44f4:	c3                   	ret

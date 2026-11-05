# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059b230..0059b265; Job_AddDependency
  59b230:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  59b234:	85 c0                	test   eax,eax
  59b236:	74 05                	je     0x59b23d
  59b238:	8d 50 f8             	lea    edx,[eax-0x8]
  59b23b:	eb 02                	jmp    0x59b23f
  59b23d:	33 d2                	xor    edx,edx
  59b23f:	85 c9                	test   ecx,ecx
  59b241:	74 12                	je     0x59b255
  59b243:	8d 41 f8             	lea    eax,[ecx-0x8]
  59b246:	8b c8                	mov    ecx,eax
  59b248:	8b 49 34             	mov    ecx,DWORD PTR [ecx+0x34]
  59b24b:	52                   	push   edx
  59b24c:	50                   	push   eax
  59b24d:	e8 4e fe ff ff       	call   0x59b0a0
  59b252:	c2 04 00             	ret    0x4
  59b255:	33 c0                	xor    eax,eax
  59b257:	33 c9                	xor    ecx,ecx
  59b259:	8b 49 34             	mov    ecx,DWORD PTR [ecx+0x34]
  59b25c:	52                   	push   edx
  59b25d:	50                   	push   eax
  59b25e:	e8 3d fe ff ff       	call   0x59b0a0
  59b263:	c2 04 00             	ret    0x4

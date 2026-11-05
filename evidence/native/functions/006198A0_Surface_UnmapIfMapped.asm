# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006198a0 <.text+0x2188a0>:
  6198a0:	56                   	push   esi
  6198a1:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  6198a5:	83 3e 00             	cmp    DWORD PTR [esi],0x0
  6198a8:	74 5d                	je     0x619907
  6198aa:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
  6198ad:	83 e8 00             	sub    eax,0x0
  6198b0:	74 40                	je     0x6198f2
  6198b2:	83 e8 01             	sub    eax,0x1
  6198b5:	74 1e                	je     0x6198d5
  6198b7:	83 e8 01             	sub    eax,0x1
  6198ba:	75 45                	jne    0x619901
  6198bc:	8b 49 30             	mov    ecx,DWORD PTR [ecx+0x30]
  6198bf:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  6198c2:	8b 01                	mov    eax,DWORD PTR [ecx]
  6198c4:	8b 40 50             	mov    eax,DWORD PTR [eax+0x50]
  6198c7:	52                   	push   edx
  6198c8:	51                   	push   ecx
  6198c9:	ff d0                	call   eax
  6198cb:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  6198d1:	5e                   	pop    esi
  6198d2:	c2 04 00             	ret    0x4
  6198d5:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  6198d8:	8b 49 30             	mov    ecx,DWORD PTR [ecx+0x30]
  6198db:	8b 11                	mov    edx,DWORD PTR [ecx]
  6198dd:	50                   	push   eax
  6198de:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  6198e1:	50                   	push   eax
  6198e2:	51                   	push   ecx
  6198e3:	8b 4a 50             	mov    ecx,DWORD PTR [edx+0x50]
  6198e6:	ff d1                	call   ecx
  6198e8:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  6198ee:	5e                   	pop    esi
  6198ef:	c2 04 00             	ret    0x4
  6198f2:	8b 49 30             	mov    ecx,DWORD PTR [ecx+0x30]
  6198f5:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  6198f8:	8b 11                	mov    edx,DWORD PTR [ecx]
  6198fa:	50                   	push   eax
  6198fb:	51                   	push   ecx
  6198fc:	8b 4a 50             	mov    ecx,DWORD PTR [edx+0x50]
  6198ff:	ff d1                	call   ecx
  619901:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  619907:	5e                   	pop    esi
  619908:	c2 04 00             	ret    0x4

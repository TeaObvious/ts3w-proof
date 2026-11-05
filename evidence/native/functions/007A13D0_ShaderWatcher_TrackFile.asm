# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007a13d0, 0x007a1458); analyst name ShaderWatcher_TrackFile.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a13d0 <.text+0x3a03d0>:
  7a13d0:	83 ec 08             	sub    esp,0x8
  7a13d3:	53                   	push   ebx
  7a13d4:	56                   	push   esi
  7a13d5:	8b f1                	mov    esi,ecx
  7a13d7:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7a13db:	33 db                	xor    ebx,ebx
  7a13dd:	66 39 19             	cmp    WORD PTR [ecx],bx
  7a13e0:	57                   	push   edi
  7a13e1:	8b c1                	mov    eax,ecx
  7a13e3:	74 08                	je     0x7a13ed
  7a13e5:	83 c0 02             	add    eax,0x2
  7a13e8:	66 39 18             	cmp    WORD PTR [eax],bx
  7a13eb:	75 f8                	jne    0x7a13e5
  7a13ed:	2b c1                	sub    eax,ecx
  7a13ef:	d1 f8                	sar    eax,1
  7a13f1:	8d 04 41             	lea    eax,[ecx+eax*2]
  7a13f4:	50                   	push   eax
  7a13f5:	8d 7e 40             	lea    edi,[esi+0x40]
  7a13f8:	51                   	push   ecx
  7a13f9:	8b cf                	mov    ecx,edi
  7a13fb:	e8 60 79 c6 ff       	call   0x408d60
  7a1400:	8b 3f                	mov    edi,DWORD PTR [edi]
  7a1402:	6a 02                	push   0x2
  7a1404:	57                   	push   edi
  7a1405:	e8 b6 aa d3 ff       	call   0x4dbec0
  7a140a:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  7a140d:	89 56 3c             	mov    DWORD PTR [esi+0x3c],edx
  7a1410:	83 c4 08             	add    esp,0x8
  7a1413:	83 7e 28 01          	cmp    DWORD PTR [esi+0x28],0x1
  7a1417:	89 5e 18             	mov    DWORD PTR [esi+0x18],ebx
  7a141a:	89 5e 1c             	mov    DWORD PTR [esi+0x1c],ebx
  7a141d:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  7a1420:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  7a1423:	75 11                	jne    0x7a1436
  7a1425:	0f 31                	rdtsc
  7a1427:	5f                   	pop    edi
  7a1428:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  7a142b:	89 56 1c             	mov    DWORD PTR [esi+0x1c],edx
  7a142e:	5e                   	pop    esi
  7a142f:	5b                   	pop    ebx
  7a1430:	83 c4 08             	add    esp,0x8
  7a1433:	c2 04 00             	ret    0x4
  7a1436:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  7a143a:	51                   	push   ecx
  7a143b:	ff 15 bc 63 f9 00    	call   DWORD PTR ds:0xf963bc
  7a1441:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  7a1445:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7a1449:	5f                   	pop    edi
  7a144a:	89 56 18             	mov    DWORD PTR [esi+0x18],edx
  7a144d:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  7a1450:	5e                   	pop    esi
  7a1451:	5b                   	pop    ebx
  7a1452:	83 c4 08             	add    esp,0x8
  7a1455:	c2 04 00             	ret    0x4

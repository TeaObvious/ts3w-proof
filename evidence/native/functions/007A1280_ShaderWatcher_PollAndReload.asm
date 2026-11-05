# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007a1280, 0x007a1333); analyst name ShaderWatcher_PollAndReload.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a1280 <.text+0x3a0280>:
  7a1280:	83 ec 08             	sub    esp,0x8
  7a1283:	56                   	push   esi
  7a1284:	8b f1                	mov    esi,ecx
  7a1286:	57                   	push   edi
  7a1287:	8d 7e 18             	lea    edi,[esi+0x18]
  7a128a:	8b cf                	mov    ecx,edi
  7a128c:	e8 2f 24 d5 ff       	call   0x4f36c0
  7a1291:	85 d2                	test   edx,edx
  7a1293:	77 07                	ja     0x7a129c
  7a1295:	3d b8 0b 00 00       	cmp    eax,0xbb8
  7a129a:	72 64                	jb     0x7a1300
  7a129c:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  7a129f:	6a 02                	push   0x2
  7a12a1:	50                   	push   eax
  7a12a2:	e8 19 ac d3 ff       	call   0x4dbec0
  7a12a7:	83 c4 08             	add    esp,0x8
  7a12aa:	3b 46 38             	cmp    eax,DWORD PTR [esi+0x38]
  7a12ad:	75 05                	jne    0x7a12b4
  7a12af:	3b 56 3c             	cmp    edx,DWORD PTR [esi+0x3c]
  7a12b2:	74 0d                	je     0x7a12c1
  7a12b4:	8b ce                	mov    ecx,esi
  7a12b6:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  7a12b9:	89 56 3c             	mov    DWORD PTR [esi+0x3c],edx
  7a12bc:	e8 cf 25 d4 ff       	call   0x4e3890
  7a12c1:	83 7f 10 01          	cmp    DWORD PTR [edi+0x10],0x1
  7a12c5:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  7a12cb:	c7 47 04 00 00 00 00 	mov    DWORD PTR [edi+0x4],0x0
  7a12d2:	c7 47 08 00 00 00 00 	mov    DWORD PTR [edi+0x8],0x0
  7a12d9:	c7 47 0c 00 00 00 00 	mov    DWORD PTR [edi+0xc],0x0
  7a12e0:	75 06                	jne    0x7a12e8
  7a12e2:	0f 31                	rdtsc
  7a12e4:	89 07                	mov    DWORD PTR [edi],eax
  7a12e6:	eb 15                	jmp    0x7a12fd
  7a12e8:	8d 44 24 08          	lea    eax,[esp+0x8]
  7a12ec:	50                   	push   eax
  7a12ed:	ff 15 bc 63 f9 00    	call   DWORD PTR ds:0xf963bc
  7a12f3:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  7a12f7:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  7a12fb:	89 0f                	mov    DWORD PTR [edi],ecx
  7a12fd:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  7a1300:	8b 06                	mov    eax,DWORD PTR [esi]
  7a1302:	0b 46 04             	or     eax,DWORD PTR [esi+0x4]
  7a1305:	74 26                	je     0x7a132d
  7a1307:	8b ce                	mov    ecx,esi
  7a1309:	e8 b2 23 d5 ff       	call   0x4f36c0
  7a130e:	85 d2                	test   edx,edx
  7a1310:	77 07                	ja     0x7a1319
  7a1312:	3d e8 03 00 00       	cmp    eax,0x3e8
  7a1317:	72 14                	jb     0x7a132d
  7a1319:	8b ce                	mov    ecx,esi
  7a131b:	e8 00 23 d5 ff       	call   0x4f3620
  7a1320:	8b 0d 3c 85 1d 01    	mov    ecx,DWORD PTR ds:0x11d853c
  7a1326:	6a 01                	push   0x1
  7a1328:	e8 13 a9 ff ff       	call   0x79bc40
  7a132d:	5f                   	pop    edi
  7a132e:	5e                   	pop    esi
  7a132f:	83 c4 08             	add    esp,0x8
  7a1332:	c3                   	ret

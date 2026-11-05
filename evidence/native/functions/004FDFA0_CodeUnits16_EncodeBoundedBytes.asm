# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004fdfa0 <.text+0xfcfa0>:
  4fdfa0:	51                   	push   ecx
  4fdfa1:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  4fdfa6:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  4fdfaa:	53                   	push   ebx
  4fdfab:	55                   	push   ebp
  4fdfac:	56                   	push   esi
  4fdfad:	57                   	push   edi
  4fdfae:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  4fdfb5:	00 
  4fdfb6:	0f 86 6a 01 00 00    	jbe    0x4fe126
  4fdfbc:	be 03 00 00 00       	mov    esi,0x3
  4fdfc1:	8d 5e 01             	lea    ebx,[esi+0x1]
  4fdfc4:	8d 6e ff             	lea    ebp,[esi-0x1]
  4fdfc7:	8d 7e fe             	lea    edi,[esi-0x2]
  4fdfca:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  4fdfd0:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  4fdfd4:	0f b7 10             	movzx  edx,WORD PTR [eax]
  4fdfd7:	83 6c 24 24 01       	sub    DWORD PTR [esp+0x24],0x1
  4fdfdc:	83 c0 02             	add    eax,0x2
  4fdfdf:	81 fa 80 00 00 00    	cmp    edx,0x80
  4fdfe5:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  4fdfe9:	73 2d                	jae    0x4fe018
  4fdfeb:	85 d2                	test   edx,edx
  4fdfed:	0f 84 33 01 00 00    	je     0x4fe126
  4fdff3:	85 c9                	test   ecx,ecx
  4fdff5:	74 0b                	je     0x4fe002
  4fdff7:	3b 7c 24 20          	cmp    edi,DWORD PTR [esp+0x20]
  4fdffb:	73 05                	jae    0x4fe002
  4fdffd:	88 11                	mov    BYTE PTR [ecx],dl
  4fdfff:	83 c1 01             	add    ecx,0x1
  4fe002:	83 44 24 10 01       	add    DWORD PTR [esp+0x10],0x1
  4fe007:	83 c7 01             	add    edi,0x1
  4fe00a:	83 c5 01             	add    ebp,0x1
  4fe00d:	83 c3 01             	add    ebx,0x1
  4fe010:	83 c6 01             	add    esi,0x1
  4fe013:	e9 03 01 00 00       	jmp    0x4fe11b
  4fe018:	81 fa 00 08 00 00    	cmp    edx,0x800
  4fe01e:	73 37                	jae    0x4fe057
  4fe020:	85 c9                	test   ecx,ecx
  4fe022:	74 1d                	je     0x4fe041
  4fe024:	3b 6c 24 20          	cmp    ebp,DWORD PTR [esp+0x20]
  4fe028:	73 17                	jae    0x4fe041
  4fe02a:	8b c2                	mov    eax,edx
  4fe02c:	c1 e8 06             	shr    eax,0x6
  4fe02f:	0c c0                	or     al,0xc0
  4fe031:	88 01                	mov    BYTE PTR [ecx],al
  4fe033:	80 e2 3f             	and    dl,0x3f
  4fe036:	83 c1 01             	add    ecx,0x1
  4fe039:	80 ca 80             	or     dl,0x80
  4fe03c:	88 11                	mov    BYTE PTR [ecx],dl
  4fe03e:	83 c1 01             	add    ecx,0x1
  4fe041:	83 44 24 10 02       	add    DWORD PTR [esp+0x10],0x2
  4fe046:	83 c7 02             	add    edi,0x2
  4fe049:	83 c5 02             	add    ebp,0x2
  4fe04c:	83 c3 02             	add    ebx,0x2
  4fe04f:	83 c6 02             	add    esi,0x2
  4fe052:	e9 c4 00 00 00       	jmp    0x4fe11b
  4fe057:	81 fa 00 00 01 00    	cmp    edx,0x10000
  4fe05d:	73 36                	jae    0x4fe095
  4fe05f:	85 c9                	test   ecx,ecx
  4fe061:	0f 84 a3 00 00 00    	je     0x4fe10a
  4fe067:	3b 74 24 20          	cmp    esi,DWORD PTR [esp+0x20]
  4fe06b:	0f 83 99 00 00 00    	jae    0x4fe10a
  4fe071:	8b c2                	mov    eax,edx
  4fe073:	c1 e8 0c             	shr    eax,0xc
  4fe076:	0c e0                	or     al,0xe0
  4fe078:	88 01                	mov    BYTE PTR [ecx],al
  4fe07a:	8b c2                	mov    eax,edx
  4fe07c:	c1 e8 06             	shr    eax,0x6
  4fe07f:	24 3f                	and    al,0x3f
  4fe081:	83 c1 01             	add    ecx,0x1
  4fe084:	0c 80                	or     al,0x80
  4fe086:	88 01                	mov    BYTE PTR [ecx],al
  4fe088:	83 c1 01             	add    ecx,0x1
  4fe08b:	80 e2 3f             	and    dl,0x3f
  4fe08e:	80 ca 80             	or     dl,0x80
  4fe091:	88 11                	mov    BYTE PTR [ecx],dl
  4fe093:	eb 72                	jmp    0x4fe107
  4fe095:	81 fa 00 00 20 00    	cmp    edx,0x200000
  4fe09b:	73 51                	jae    0x4fe0ee
  4fe09d:	85 c9                	test   ecx,ecx
  4fe09f:	74 3a                	je     0x4fe0db
  4fe0a1:	3b 5c 24 20          	cmp    ebx,DWORD PTR [esp+0x20]
  4fe0a5:	73 34                	jae    0x4fe0db
  4fe0a7:	8b c2                	mov    eax,edx
  4fe0a9:	c1 e8 12             	shr    eax,0x12
  4fe0ac:	0c f0                	or     al,0xf0
  4fe0ae:	88 01                	mov    BYTE PTR [ecx],al
  4fe0b0:	8b c2                	mov    eax,edx
  4fe0b2:	c1 e8 0c             	shr    eax,0xc
  4fe0b5:	24 3f                	and    al,0x3f
  4fe0b7:	0c 80                	or     al,0x80
  4fe0b9:	88 41 01             	mov    BYTE PTR [ecx+0x1],al
  4fe0bc:	83 c1 01             	add    ecx,0x1
  4fe0bf:	8b c2                	mov    eax,edx
  4fe0c1:	c1 e8 06             	shr    eax,0x6
  4fe0c4:	24 3f                	and    al,0x3f
  4fe0c6:	83 c1 01             	add    ecx,0x1
  4fe0c9:	0c 80                	or     al,0x80
  4fe0cb:	88 01                	mov    BYTE PTR [ecx],al
  4fe0cd:	80 e2 3f             	and    dl,0x3f
  4fe0d0:	83 c1 01             	add    ecx,0x1
  4fe0d3:	80 ca 80             	or     dl,0x80
  4fe0d6:	88 11                	mov    BYTE PTR [ecx],dl
  4fe0d8:	83 c1 01             	add    ecx,0x1
  4fe0db:	83 44 24 10 04       	add    DWORD PTR [esp+0x10],0x4
  4fe0e0:	83 c7 04             	add    edi,0x4
  4fe0e3:	83 c5 04             	add    ebp,0x4
  4fe0e6:	83 c3 04             	add    ebx,0x4
  4fe0e9:	83 c6 04             	add    esi,0x4
  4fe0ec:	eb 2d                	jmp    0x4fe11b
  4fe0ee:	85 c9                	test   ecx,ecx
  4fe0f0:	74 18                	je     0x4fe10a
  4fe0f2:	3b 74 24 20          	cmp    esi,DWORD PTR [esp+0x20]
  4fe0f6:	73 12                	jae    0x4fe10a
  4fe0f8:	c6 01 ef             	mov    BYTE PTR [ecx],0xef
  4fe0fb:	83 c1 01             	add    ecx,0x1
  4fe0fe:	c6 01 bf             	mov    BYTE PTR [ecx],0xbf
  4fe101:	83 c1 01             	add    ecx,0x1
  4fe104:	c6 01 bd             	mov    BYTE PTR [ecx],0xbd
  4fe107:	83 c1 01             	add    ecx,0x1
  4fe10a:	83 44 24 10 03       	add    DWORD PTR [esp+0x10],0x3
  4fe10f:	83 c7 03             	add    edi,0x3
  4fe112:	83 c5 03             	add    ebp,0x3
  4fe115:	83 c3 03             	add    ebx,0x3
  4fe118:	83 c6 03             	add    esi,0x3
  4fe11b:	83 7c 24 24 00       	cmp    DWORD PTR [esp+0x24],0x0
  4fe120:	0f 87 aa fe ff ff    	ja     0x4fdfd0
  4fe126:	85 c9                	test   ecx,ecx
  4fe128:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  4fe12c:	5f                   	pop    edi
  4fe12d:	5e                   	pop    esi
  4fe12e:	5d                   	pop    ebp
  4fe12f:	5b                   	pop    ebx
  4fe130:	74 0a                	je     0x4fe13c
  4fe132:	83 7c 24 10 00       	cmp    DWORD PTR [esp+0x10],0x0
  4fe137:	74 03                	je     0x4fe13c
  4fe139:	c6 01 00             	mov    BYTE PTR [ecx],0x0
  4fe13c:	59                   	pop    ecx
  4fe13d:	c3                   	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00828e90, 0x00828ef5); analyst name RoutingSystem_QueryHeightForLevel.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00828e90 <.text+0x427e90>:
  828e90:	8b 89 64 09 00 00    	mov    ecx,DWORD PTR [ecx+0x964]
  828e96:	85 c9                	test   ecx,ecx
  828e98:	74 56                	je     0x828ef0
  828e9a:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  828e9f:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  828ea3:	6a 01                	push   0x1
  828ea5:	6a 00                	push   0x0
  828ea7:	6a 00                	push   0x0
  828ea9:	6a 00                	push   0x0
  828eab:	6a 00                	push   0x0
  828ead:	74 24                	je     0x828ed3
  828eaf:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  828eb3:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  828eb7:	6a 00                	push   0x0
  828eb9:	6a 01                	push   0x1
  828ebb:	50                   	push   eax
  828ebc:	52                   	push   edx
  828ebd:	83 ec 08             	sub    esp,0x8
  828ec0:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  828ec4:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  828ec8:	d9 1c 24             	fstp   DWORD PTR [esp]
  828ecb:	e8 b0 14 44 00       	call   0xc6a380
  828ed0:	c2 14 00             	ret    0x14
  828ed3:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  828ed7:	6a 01                	push   0x1
  828ed9:	50                   	push   eax
  828eda:	83 ec 08             	sub    esp,0x8
  828edd:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  828ee1:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  828ee5:	d9 1c 24             	fstp   DWORD PTR [esp]
  828ee8:	e8 a3 11 44 00       	call   0xc6a090
  828eed:	c2 14 00             	ret    0x14
  828ef0:	d9 ee                	fldz
  828ef2:	c2 14 00             	ret    0x14

/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 00471380: Count complete UTF16 units until NUL; no colon, prefix or namespace processing occurs.
 * 0047138f: Round storage including terminator to an eight-byte arena allocation.
 * 004713c5: Copy the entire source including NUL; EAX remains the returned destination pointer. Native allocation failure is not safely contained here.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlCursor_CopyUtf16ToArena.
   Physical ABI: ECX cursor; stack+4 NUL-ended UTF16 source; EAX arena-copy pointer; RET4. Current
   undefined return is wrong. */

ushort * __thiscall XmlCursor_CopyUtf16ToArena(void *this,ushort *source)

{
  ushort uVar1;
  undefined4 uVar2;
  ushort *puVar3;
  int iVar4;
  uint uVar5;
  
  puVar3 = source;
  do {
    uVar1 = *puVar3;
    puVar3 = puVar3 + 1;
  } while (uVar1 != 0);
  uVar5 = ((int)puVar3 - (int)(source + 1) >> 1) * 2 + 9U & 0xfffffff8;
  if ((int)((*(int *)((int)this + 0x20) - uVar5) - *(int *)((int)this + 0x24)) < 0) {
    uVar2 = FUN_004e8b80((void *)((int)this + 0x18),uVar5);
    if ((char)uVar2 == '\0') {
      puVar3 = (ushort *)0x0;
      goto LAB_004713bf;
    }
  }
  puVar3 = *(ushort **)((int)this + 0x24);
  *(uint *)((int)this + 0x24) = (int)puVar3 + uVar5;
  *(uint *)((int)this + 0x28) = (int)puVar3 + uVar5;
LAB_004713bf:
  iVar4 = (int)puVar3 - (int)source;
  do {
    uVar1 = *source;
    *(ushort *)(iVar4 + (int)source) = uVar1;
    source = source + 1;
  } while (uVar1 != 0);
  return puVar3;
}


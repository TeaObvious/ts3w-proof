/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 UTF16 arena copy. Physical loader ECX, one caller supplied UTF16 pointer at
   stack4; returns actual copied UTF16 pointer in EAX and RET4. Scalar caller54B103 stores EAX into
   its output at54B10C, so this is a consumed pointer return, not global void. Counts through the
   first NUL, rounds allocation size to8-byte alignment and copies all UTF16 words including NUL; no
   lexical conversion. Native allocation failure is its actual arena service and is not host CLR
   allocation parity. Owned43 instructions106 bytes; existing DEFAULT local and all bytes/neighbor
   functions/references remain unchanged. */

ushort * __thiscall LayoutXml_CopyUtf16IntoArena(void *this,ushort *text)

{
  ushort uVar1;
  undefined4 uVar2;
  ushort *puVar3;
  int iVar4;
  uint uVar5;
  
  puVar3 = text;
  do {
    uVar1 = *puVar3;
    puVar3 = puVar3 + 1;
  } while (uVar1 != 0);
  uVar5 = ((int)puVar3 - (int)(text + 1) >> 1) * 2 + 9U & 0xfffffff8;
  if ((int)((*(int *)((int)this + 0x10) - uVar5) - *(int *)((int)this + 0x14)) < 0) {
    uVar2 = FUN_004e8b80((void *)((int)this + 8),uVar5);
    if ((char)uVar2 == '\0') {
      puVar3 = (ushort *)0x0;
      goto LAB_0054af6f;
    }
  }
  puVar3 = *(ushort **)((int)this + 0x14);
  *(uint *)((int)this + 0x14) = (int)puVar3 + uVar5;
  *(uint *)((int)this + 0x18) = (int)puVar3 + uVar5;
LAB_0054af6f:
  iVar4 = (int)puVar3 - (int)text;
  do {
    uVar1 = *text;
    *(ushort *)(iVar4 + (int)text) = uVar1;
    text = text + 1;
  } while (uVar1 != 0);
  return puVar3;
}


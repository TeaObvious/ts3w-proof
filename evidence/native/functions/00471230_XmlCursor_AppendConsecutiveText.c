/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 consecutive text reader. Physical cursor ECX, stack4 output arena, stack8 UInt32
   character-count output; returns UTF16 pointer EAX or null and RET8. If positioned on start token1
   it advances once. Concatenates consecutive token-kind4 UTF16 payloads, advancing queued/refilled
   cursor nodes, and stops at first nontext. Writes character count; zero characters or cursor
   refill failure returns null. Successful output gets UTF16 NUL and arena advances to8-byte
   boundary. It does not flatten arbitrary descendant text. Allocator/cursor/parser implementation
   and failures remain actual called services. Owned112 instructions295 bytes; no child
   definitions/annotations or bytes change. */

ushort * __thiscall XmlCursor_AppendConsecutiveText(void *this,void *arena,uint *outCharacterCount)

{
  int iVar1;
  void *_Src;
  int *piVar2;
  ushort *puVar3;
  undefined4 uVar4;
  uint uVar5;
  
  if ((*(int *)((int)this + 0x48) == 0) ||
     ((*(int *)(*(int *)((int)this + 0x48) + 4) == 1 &&
      (uVar4 = FUN_00471150(this), (char)uVar4 == '\0')))) {
    return (ushort *)0x0;
  }
  iVar1 = *(int *)((int)this + 0x48);
  do {
    if ((iVar1 == 0) || (iVar1 = *(int *)((int)this + 0x48), *(int *)(iVar1 + 4) != 4)) {
      uVar5 = (uint)(*(int *)((int)arena + 0x10) - *(int *)((int)arena + 0xc)) >> 1;
      *outCharacterCount = uVar5;
      if (uVar5 == 0) {
        return (ushort *)0x0;
      }
      if ((*(int *)((int)arena + 0x10) + 2U <= *(uint *)((int)arena + 8)) ||
         (uVar4 = FUN_004e8b80(arena,2), (char)uVar4 != '\0')) {
        **(undefined2 **)((int)arena + 0x10) = DAT_00fae580;
        *(int *)((int)arena + 0x10) = *(int *)((int)arena + 0x10) + 2;
      }
      puVar3 = *(ushort **)((int)arena + 0xc);
      uVar5 = *(int *)((int)arena + 0x10) + 7U & 0xfffffff8;
      *(uint *)((int)arena + 0x10) = uVar5;
      if (*(uint *)((int)arena + 8) < uVar5) {
        *(uint *)((int)arena + 0x10) = *(uint *)((int)arena + 8);
      }
      *(undefined4 *)((int)arena + 0xc) = *(undefined4 *)((int)arena + 0x10);
      return puVar3;
    }
    _Src = *(void **)(iVar1 + 0xc);
    uVar5 = *(int *)(iVar1 + 0x24) * 2;
    if ((*(int *)((int)arena + 0x10) + uVar5 <= *(uint *)((int)arena + 8)) ||
       (uVar4 = FUN_004e8b80(arena,uVar5), (char)uVar4 != '\0')) {
      memcpy(*(void **)((int)arena + 0x10),_Src,uVar5);
      *(int *)((int)arena + 0x10) = *(int *)((int)arena + 0x10) + uVar5;
    }
    if ((*(int **)((int)this + 0x48) == (int *)0x0) ||
       (iVar1 = **(int **)((int)this + 0x48), *(int *)((int)this + 0x48) = iVar1, iVar1 == 0)) {
      piVar2 = *(int **)((int)this + 0x50);
      if ((*(int **)((int)this + 0x1c) < piVar2) && (piVar2 < *(int **)((int)this + 0x20))) {
        *(int **)((int)this + 0x24) = piVar2;
        *(int **)((int)this + 0x28) = piVar2;
      }
      else {
        FUN_004e8c20((void *)((int)this + 0x18),piVar2);
      }
      *(undefined4 *)((int)this + 0x48) = 0;
      *(undefined4 *)((int)this + 0x44) = 0;
      *(undefined4 *)((int)this + 0x40) = 0;
      uVar4 = FUN_004710c0(this);
      if ((char)uVar4 == '\0') {
        return (ushort *)0x0;
      }
      *(undefined4 *)((int)this + 0x48) = *(undefined4 *)((int)this + 0x40);
    }
    iVar1 = *(int *)((int)this + 0x48);
  } while( true );
}


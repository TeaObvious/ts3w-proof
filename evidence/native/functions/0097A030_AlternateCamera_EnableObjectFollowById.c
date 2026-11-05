/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 alternate camera follow-by-identity adapter. Physical ECX receiver, stack4/8
   identity low/high words and stackC offset pointer; RET0Ch. Existing undefined return and all
   parameter types/storage are preserved. Release the prior retained object and clear active before
   registry lookup. A found object is retained, sixteen offset bytes are copied, then active is set
   before the point-query call. A successful low-byte query result starts the observed transition
   with Float32 one; failure calls cleanup. The point-query, transition, cleanup and offset-space
   internals are uninspected, and the sixteen-byte copy does not establish a public managed vector
   layout. Complete existing70 instructions197 owned bytes; no instruction, ABI or neighbor
   definition changed. */

void __thiscall
AlternateCamera_EnableObjectFollowById
          (void *this,undefined4 objectIdLow,undefined4 objectIdHigh,undefined4 *offsetWords)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  void *pvVar6;
  undefined4 uVar7;
  float afStack_20 [7];
  
  puVar3 = *(undefined4 **)((int)this + 0x664);
  if (puVar3 != (undefined4 *)0x0) {
    piVar1 = puVar3 + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (puVar3 != (undefined4 *)0x0) {
        (**(code **)*puVar3)(1);
      }
    }
    *(undefined4 *)((int)this + 0x664) = 0;
  }
  *(undefined1 *)((int)this + 0x660) = 0;
  pvVar6 = ObjectRegistry_GetGlobal();
  if (pvVar6 != (void *)0x0) {
    pvVar6 = ObjectRegistry_FindBorrowed(pvVar6,CONCAT44(objectIdHigh,objectIdLow));
    *(void **)((int)this + 0x664) = pvVar6;
    if (pvVar6 != (void *)0x0) {
      LOCK();
      *(int *)((int)pvVar6 + 4) = *(int *)((int)pvVar6 + 4) + 1;
      UNLOCK();
      uVar7 = offsetWords[1];
      uVar4 = offsetWords[2];
      uVar5 = offsetWords[3];
      *(undefined4 *)((int)this + 0x670) = *offsetWords;
      *(undefined4 *)((int)this + 0x674) = uVar7;
      *(undefined4 *)((int)this + 0x678) = uVar4;
      *(undefined4 *)((int)this + 0x67c) = uVar5;
      *(undefined1 *)((int)this + 0x660) = 1;
      uVar7 = FUN_00979690(this,afStack_20);
      if ((char)uVar7 != '\0') {
        FUN_00979ff0(this,afStack_20,0x3f800000);
        return;
      }
      FUN_00979db0((int)this);
    }
  }
  return;
}


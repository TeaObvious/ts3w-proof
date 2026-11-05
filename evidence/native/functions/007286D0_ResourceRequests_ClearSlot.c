/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX service, slotpointer and callback stack
   RET8, void. Zero slot returns. Bit0 set means pending node=(slot-1): unlink, release node+14 job,
   return node to398 freelist; if load+B8list empty records reason4 via727DB0. Untagged nonzero
   (low2bits0) unlocks40, calls suppliedcdecl callback(resource), then relocks. Nonzero tag2
   doesnotinvoke it. Every nonzero path clears slot0. This is actual pending-request detachment and
   old-resource release callback boundary, not a CancellationToken exception contract; full I/O
   cancellation under last consumer remains child policy. */

void __thiscall ResourceRequests_ClearSlot(void *this,uint *slot,void *releaseCallback)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  float10 fVar5;
  
  uVar1 = *slot;
  if (uVar1 != 0) {
    if ((uVar1 & 1) == 0) {
      if ((uVar1 & 3) == 0) {
        FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x40));
        (*releaseCallback)(uVar1);
        FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0x40),(uint *)&DAT_00ffe344);
      }
    }
    else {
      iVar2 = *(int *)(uVar1 - 1);
      piVar3 = *(int **)(uVar1 + 3);
      iVar4 = *(int *)(uVar1 + 0xf);
      *piVar3 = iVar2;
      *(int **)(iVar2 + 4) = piVar3;
      if (*(void **)(uVar1 + 0x13) != (void *)0x0) {
        Job_ReleaseReference(*(void **)(uVar1 + 0x13));
      }
      *(undefined4 *)(uVar1 - 1) = *(undefined4 *)((int)this + 0x398);
      *(undefined4 **)((int)this + 0x398) = (undefined4 *)(uVar1 - 1);
      if (*(int *)(iVar4 + 0xbc) == iVar4 + 0xb8) {
        fVar5 = FUN_00727340(iVar4);
        FUN_00727db0(this,iVar4 + 0x10,4,(float)fVar5);
        *slot = 0;
        return;
      }
    }
    *slot = 0;
  }
  return;
}


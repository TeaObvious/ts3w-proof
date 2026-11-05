/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX driver,walker pointer RET4,AL readiness. With
   retained loop, no destination and entity, resolves animation component and selected priority
   (driver+38 or machine+34 at-2), obtains track remaining time0093CB30 and compares to manager+3C *
   float00FC2B9C. Above threshold attempts status2 and can immediate-schedule driver, returns false.
   Full component/track helper and float threshold constant interpretation remain bounded; no fixed
   C# bool is proven equivalent. */

uint __thiscall SacsDriver_CheckWalkerIdleReadiness(void *this,int param_1)

{
  undefined4 in_EAX;
  void *pvVar1;
  undefined4 extraout_EAX;
  uint uVar2;
  int iVar3;
  float10 fVar4;
  
  if ((((param_1 != 0) && (*(int *)(param_1 + 0x18) != 0)) && (*(int *)(param_1 + 0x24) == 0)) &&
     (*(void **)(param_1 + 8) != (void *)0x0)) {
    pvVar1 = (void *)FUN_00581870(*(void **)(param_1 + 8),'\0');
    in_EAX = 0;
    if (pvVar1 != (void *)0x0) {
      pvVar1 = (void *)FUN_0055e030(pvVar1);
      in_EAX = 0;
      if (pvVar1 != (void *)0x0) {
        iVar3 = *(int *)((int)this + 0x38);
        if (iVar3 == -2) {
          iVar3 = *(int *)(*(int *)((int)this + 0xc) + 0x34);
        }
        fVar4 = FUN_0093cb30(pvVar1,iVar3);
        in_EAX = extraout_EAX;
        if ((float10)*(int *)((int)DAT_011d9d40 + 0x3c) * (float10)DAT_00fc2b9c < fVar4) {
          uVar2 = SacsWalker_TrySetExecutionStatus((void *)param_1,2);
          if ((char)uVar2 == '\0') {
            *(undefined1 *)((int)this + 0x146) = 1;
            if (DAT_011d9d40 != (void *)0x0) {
              uVar2 = SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,(int)this,'\x01');
            }
          }
          return uVar2 & 0xffffff00;
        }
      }
    }
  }
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}


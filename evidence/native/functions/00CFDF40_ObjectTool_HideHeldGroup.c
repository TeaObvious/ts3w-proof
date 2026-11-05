/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC1.67 hand-tool ownership/physical ABI closure. Dispatches object event0C for
   the actual held actor and contained actor children, with the original visual/command children
   retained. */

void __fastcall ObjectTool_HideHeldGroup(int param_1)

{
  char cVar1;
  void *pvVar2;
  undefined4 uVar3;
  int iVar4;
  void *pvVar5;
  int local_14 [5];
  
  if (*(char *)(param_1 + 0x2f7) == '\0') {
    iVar4 = *(int *)(param_1 + 0x5c);
  }
  else {
    iVar4 = *(int *)(param_1 + 0x60);
  }
  if ((iVar4 != 0) && (pvVar5 = *(void **)(iVar4 + 0x58), pvVar5 != (void *)0x0)) {
    ObjectEvents_Dispatch(0xc,pvVar5,(void *)0x0);
    pvVar2 = Object_GetComponentByMask(pvVar5,DAT_011ea114);
    if ((pvVar2 != (void *)0x0) && (uVar3 = FUN_00950400((int)pvVar2), (char)uVar3 != '\0')) {
      FUN_00951890(pvVar2,local_14);
      iVar4 = FUN_00950f40(local_14);
      cVar1 = (char)iVar4;
      while (cVar1 != '\0') {
        pvVar2 = (void *)FUN_009503c0((int)local_14);
        ObjectEvents_Dispatch(0xc,pvVar2,(void *)0x0);
        iVar4 = FUN_00950f40(local_14);
        cVar1 = (char)iVar4;
      }
    }
    iVar4 = *(int *)(param_1 + 0x1b8);
    if (((iVar4 != 0) && (*(int *)(iVar4 + 0xd4) != *(int *)(iVar4 + 0xd8))) &&
       (pvVar5 = Object_GetComponentByMask(pvVar5,DAT_011edf08), pvVar5 != (void *)0x0)) {
      FUN_00c89960(pvVar5,0);
    }
  }
  return;
}


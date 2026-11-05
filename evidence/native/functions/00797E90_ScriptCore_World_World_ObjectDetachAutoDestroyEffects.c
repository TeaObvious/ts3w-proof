/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction qualification797F62..6C: child GUIDhigh/low are physically pushed toC63930 withECXworld, RET8/AL membership result; old C omitted both key words. Snapshot yielded Slot child pointers before iteration, then only world-map members: destroyflagfalse resolvesTransform and9595B0, trueC63970. Full borrowed-child/map/ref lifetime and membership producers remain open; no all-Effect/all-script-AutoDestroy equivalence. */

/* Verified PC 1.67 registration table at 0x01163658 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDetachAutoDestroyEffects [assembly=ScriptCore token=0x060007CF;
   objId: System.UInt64, destroyEffects: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDetachAutoDestroyEffects
          (undefined4 param_1,undefined4 param_2,char param_3)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  void *pvVar5;
  void *pvVar6;
  int *piVar7;
  int *piVar8;
  int local_28;
  int *local_24;
  int *local_20;
  int *local_1c;
  char *local_18;
  int local_14 [5];
  
  iVar4 = FUN_00937570();
  if (((iVar4 != 0) && (pvVar5 = (void *)FUN_00937f80(iVar4), pvVar5 != (void *)0x0)) &&
     (pvVar5 = (void *)FUN_00934260(pvVar5,DAT_011ea114), pvVar5 != (void *)0x0)) {
    FUN_00951890(pvVar5,local_14);
    piVar7 = (int *)0x0;
    local_24 = (int *)0x0;
    local_20 = (int *)0x0;
    local_1c = (int *)0x0;
    local_18 = "Objects/Components";
    iVar4 = FUN_00950f40(local_14);
    cVar2 = (char)iVar4;
    piVar8 = (int *)0x0;
    pvVar5 = DAT_011edbc4;
    while (DAT_011edbc4 = pvVar5, cVar2 != '\0') {
      local_28 = FUN_009503c0((int)local_14);
      if (piVar7 < local_1c) {
        local_20 = piVar7 + 1;
        if (piVar7 != (int *)0x0) {
          *piVar7 = local_28;
        }
      }
      else {
        FUN_00982420(&local_24,piVar7,&local_28);
      }
      piVar7 = local_20;
      iVar4 = FUN_00950f40(local_14);
      piVar8 = local_24;
      pvVar5 = DAT_011edbc4;
      cVar2 = (char)iVar4;
    }
    piVar1 = piVar8;
    if (pvVar5 != (void *)0x0) {
      for (; piVar1 != piVar7; piVar1 = piVar1 + 1) {
        iVar4 = *piVar1;
        bVar3 = FUN_00c63930((int)pvVar5);
        if (bVar3) {
          if (param_3 == '\0') {
            if ((void *)*piVar1 == (void *)0x0) {
              pvVar6 = (void *)0x0;
            }
            else {
              pvVar6 = (void *)FUN_00934260((void *)*piVar1,DAT_011ea158);
            }
            FUN_009595b0(pvVar6);
          }
          else {
            FUN_00c63970(pvVar5,*(uint *)(iVar4 + 8),*(undefined4 *)(iVar4 + 0xc));
          }
        }
        piVar8 = local_24;
      }
    }
    if (piVar8 != (int *)0x0) {
      FUN_004e44e0((int)piVar8);
    }
  }
  return;
}


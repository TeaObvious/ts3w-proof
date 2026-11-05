/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Instruction qualification797F62..6C: child GUIDhigh/low are physically pushed toC63930 withECXworld, RET8/AL membership result; old C omitted both key words. Snapshot yielded Slot child pointers before iteration, then only world-map members: destroyflagfalse resolvesTransform and9595B0, trueC63970. Full borrowed-child/map/ref lifetime and membership producers remain open; no all-Effect/all-script-AutoDestroy equivalence. */



/* Verified PC 1.67 registration table at 0x01163658 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDetachAutoDestroyEffects [assembly=ScriptCore token=0x060007CF;
   objId: System.UInt64, destroyEffects: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDetachAutoDestroyEffects
          (undefined4 param_1,undefined4 param_2,char param_3)

{
  bool bVar1;
  void *pvVar2;
  int iVar3;
  void *pvVar4;
  int *piVar5;
  int *allocation;
  int local_28;
  int *local_24;
  int *local_20;
  int *local_1c;
  char *local_18;
  int local_14 [5];
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (((pvVar2 != (void *)0x0) &&
      (pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1)), pvVar2 != (void *)0x0
      )) && (pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea114), pvVar2 != (void *)0x0)) {
    FUN_00951890(pvVar2,local_14);
    piVar5 = (int *)0x0;
    local_24 = (int *)0x0;
    local_20 = (int *)0x0;
    local_1c = (int *)0x0;
    local_18 = "Objects/Components";
    iVar3 = FUN_00950f40(local_14);
    allocation = (int *)0x0;
    if ((char)iVar3 != '\0') {
      do {
        local_28 = FUN_009503c0((int)local_14);
        if (piVar5 < local_1c) {
          local_20 = piVar5 + 1;
          if (piVar5 != (int *)0x0) {
            *piVar5 = local_28;
          }
        }
        else {
          FUN_00982420(&local_24,piVar5,&local_28);
        }
        piVar5 = local_20;
        iVar3 = FUN_00950f40(local_14);
      } while ((char)iVar3 != '\0');
      allocation = local_24;
    }
    pvVar2 = DAT_011edbc4;
    if ((DAT_011edbc4 != (void *)0x0) && (allocation != piVar5)) {
      do {
        iVar3 = *allocation;
        bVar1 = FUN_00c63930((int)pvVar2);
        if (bVar1) {
          if (param_3 == '\0') {
            if ((void *)*allocation == (void *)0x0) {
              pvVar4 = (void *)0x0;
            }
            else {
              pvVar4 = Object_GetComponentByMask((void *)*allocation,DAT_011ea158);
            }
            FUN_009595b0(pvVar4);
          }
          else {
            FUN_00c63970(pvVar2,*(uint *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0xc));
          }
        }
        allocation = allocation + 1;
      } while (allocation != piVar5);
      allocation = local_24;
    }
    if (allocation != (int *)0x0) {
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}


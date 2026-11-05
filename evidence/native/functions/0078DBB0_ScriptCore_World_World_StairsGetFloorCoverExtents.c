/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163728 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_StairsGetFloorCoverExtents [assembly=ScriptCore token=0x060007EC; objId:
   Sims3.SimIFace.ObjectGuid, min: Sims3.SimIFace.Vector3&, max: Sims3.SimIFace.Vector3&;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_StairsGetFloorCoverExtents
          (int param_1,int param_2,void *param_3,void *param_4)

{
  void *pvVar1;
  void *pvVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 auStack_34 [4];
  undefined4 auStack_24 [8];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
    if (pvVar1 != (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011edf08);
      if (pvVar2 != (void *)0x0) {
        piVar3 = (int *)FUN_0068f130((int)pvVar1);
        if (piVar3 != (int *)0x0) {
          iVar4 = (**(code **)(*piVar3 + 0xc))(0x90566b0e);
          if (iVar4 != 0) {
            uVar5 = FUN_00b186e0(*(void **)(iVar4 + 0x2b4),param_1,param_2,
                                 (undefined1 (*) [16])auStack_34,(undefined1 (*) [16])auStack_24);
            if ((char)uVar5 != '\0') {
              FUN_0076c100(param_3,auStack_34);
              FUN_0076c100(param_4,auStack_24);
            }
          }
        }
      }
    }
  }
  return;
}


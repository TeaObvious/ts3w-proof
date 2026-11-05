/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163728 (original PC 1.67 TS3W.exe).
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
  int iVar1;
  void *this;
  int *piVar2;
  undefined4 uVar3;
  undefined4 auStack_34 [4];
  undefined4 auStack_24 [8];
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    this = (void *)FUN_00937f80(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_00934260(this,DAT_011edf08);
      if (iVar1 != 0) {
        piVar2 = (int *)FUN_0068f130((int)this);
        if (piVar2 != (int *)0x0) {
          iVar1 = (**(code **)(*piVar2 + 0xc))(0x90566b0e);
          if (iVar1 != 0) {
            uVar3 = FUN_00b186e0(*(void **)(iVar1 + 0x2b4),param_1,param_2,
                                 (undefined1 (*) [16])auStack_34,(undefined1 (*) [16])auStack_24);
            if ((char)uVar3 != '\0') {
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


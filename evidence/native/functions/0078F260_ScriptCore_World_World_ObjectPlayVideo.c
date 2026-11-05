/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163700 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectPlayVideo [assembly=ScriptCore token=0x060007E4; objId:
   System.UInt64, videoName: System.String, bLoop: System.Boolean, product: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_ObjectPlayVideo(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  undefined4 uVar4;
  uint *puVar5;
  uint unaff_EBX;
  uint unaff_EBP;
  uint unaff_ESI;
  uint unaff_EDI;
  undefined1 unaff_retaddr;
  uint auStack_20 [8];
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    uVar2 = FUN_00937f80(iVar1);
    if (uVar2 != 0) {
      piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
      if (param_3 == 0) {
        uVar4 = 0;
      }
      else {
        uVar4 = (**(code **)(*piVar3 + 0x58))(param_3);
      }
      piVar3 = (int *)FUN_004afe80();
      auStack_20[0] = 0;
      auStack_20[1] = 0;
      auStack_20[2] = 0;
      auStack_20[3] = 0;
      (**(code **)(*piVar3 + 0x80))(auStack_20,uVar4,0xb1cc1af6,0);
      if (param_1 == 0) {
        puVar5 = (uint *)FUN_007d8310(auStack_20,(uint *)&stack0xffffffd0);
        unaff_EDI = *puVar5;
        unaff_ESI = puVar5[1];
        unaff_EBP = puVar5[2];
        unaff_EBX = puVar5[3];
      }
      else {
        FUN_007d7860(param_1,(uint *)&stack0xffffffdc);
      }
      uVar4 = FUN_0078ed20(param_1,param_2,unaff_EDI,unaff_ESI,unaff_EBP,unaff_EBX,unaff_retaddr,0,0
                          );
      return uVar4;
    }
  }
  return 0;
}


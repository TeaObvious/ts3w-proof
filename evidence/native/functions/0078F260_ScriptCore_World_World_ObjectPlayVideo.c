/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163700 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectPlayVideo [assembly=ScriptCore token=0x060007E4; objId:
   System.UInt64, videoName: System.String, bLoop: System.Boolean, product: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_ObjectPlayVideo(int param_1,undefined4 param_2,int param_3)

{
  void *pvVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 *extraout_EAX;
  undefined4 unaff_EBX;
  undefined4 unaff_EBP;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 unaff_retaddr;
  uint auStack_20 [8];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
    if (pvVar1 != (void *)0x0) {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      if (param_3 == 0) {
        uVar3 = 0;
      }
      else {
        uVar3 = (**(code **)(*piVar2 + 0x58))(param_3);
      }
      piVar2 = (int *)FUN_004afe80();
      auStack_20[0] = 0;
      auStack_20[1] = 0;
      auStack_20[2] = 0;
      auStack_20[3] = 0;
      (**(code **)(*piVar2 + 0x80))(auStack_20,uVar3,0xb1cc1af6,0);
      if (param_1 == 0) {
        ResourceKey_CopyWithMountedCandidate(auStack_20,auStack_20 + -4);
        unaff_EDI = *extraout_EAX;
        unaff_ESI = extraout_EAX[1];
        unaff_EBP = extraout_EAX[2];
        unaff_EBX = extraout_EAX[3];
      }
      else {
        AnimationResource_ApplyProductGroupBits(param_1,auStack_20 + -1);
      }
      uVar3 = ObjectVideo_QueuePlayWithPairedSound
                        (param_1,param_2,unaff_EDI,unaff_ESI,unaff_EBP,unaff_EBX,unaff_retaddr,0,0);
      return uVar3;
    }
  }
  return 0;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156728 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_ApplyPresetToPartImpl [assembly=ScriptCore token=0x06000393;
   handle: System.UInt32, part: Sims3.SimIFace.CAS.CASPart, designPreset: System.String;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_CASUtils__CASUtils_ApplyPresetToPartImpl
          (undefined4 param_1,int param_2,undefined4 param_3)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint uVar3;
  void *this;
  undefined4 uVar4;
  uint unaff_retaddr;
  int *in_stack_00000050;
  int *piStack_88;
  int iStack_78;
  undefined4 uStack_74;
  undefined4 uStack_6c;
  undefined4 auStack_68 [26];
  
  piStack_88 = (int *)0x5abc8c;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piStack_88 = in_stack_00000050;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  uVar3 = unaff_retaddr & 0xff000000;
  if (uVar3 == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(unaff_retaddr);
    uVar3 = 0;
    if (this != (void *)0x0) {
      FUN_005bfac0(auStack_68);
      FUN_005c0060(auStack_68,pWVar2);
      uVar3 = FUN_005bef50((int)auStack_68);
      if ((char)uVar3 != '\0') {
        iStack_78 = param_2;
        uStack_74 = param_3;
        uStack_6c = param_1;
        uVar3 = FUN_005bef60(auStack_68,this,&iStack_78);
        if ((char)uVar3 != '\0') {
          piStack_88 = (int *)0x0;
          uVar4 = FUN_005c0310(auStack_68,(int *)&piStack_88,0,'\0');
          piVar1 = piStack_88;
          if ((char)uVar4 != '\0') {
            for (; piVar1 != (int *)0x0; piVar1 = piVar1 + 3) {
              FUN_005e36d0(this,&iStack_78,*(int *)(*piVar1 + 0x58),
                           (int *)(uint)*(byte *)(piVar1 + 2),piVar1[1]);
            }
            FUN_005ab2d0((int *)&piStack_88);
            uVar4 = FUN_005bfce0(auStack_68);
            return CONCAT31((int3)((uint)uVar4 >> 8),1);
          }
          FUN_005ab2d0((int *)&piStack_88);
        }
      }
      uVar3 = FUN_005bfce0(auStack_68);
    }
  }
  return uVar3 & 0xffffff00;
}


/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156728 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  bool bVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  void *this;
  undefined4 uVar5;
  uint unaff_retaddr;
  int *in_stack_00000050;
  int *piStack_88;
  int iStack_78;
  undefined4 uStack_74;
  undefined4 uStack_6c;
  undefined4 auStack_68 [26];
  
  piStack_88 = (int *)0x5abc8c;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piStack_88 = in_stack_00000050;
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))();
  if (pWVar3 == (LPCWSTR)0x0) {
    return 0;
  }
  uVar4 = unaff_retaddr & 0xff000000;
  if (uVar4 == 0x35000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar2 + 0xcc))(unaff_retaddr);
    uVar4 = 0;
    if (this != (void *)0x0) {
      DesignPreset_InitializeEmpty(auStack_68);
      FUN_005c0060(auStack_68,pWVar3);
      uVar4 = FUN_005bef50((int)auStack_68);
      if ((char)uVar4 != '\0') {
        iStack_78 = param_2;
        uStack_74 = param_3;
        uStack_6c = param_1;
        uVar4 = FUN_005bef60(auStack_68,this,&iStack_78);
        if ((char)uVar4 != '\0') {
          piStack_88 = (int *)0x0;
          bVar1 = ComplateNative_BuildPrograms(auStack_68,(undefined *)&piStack_88,0,false);
          piVar2 = piStack_88;
          if (bVar1) {
            for (; piVar2 != (int *)0x0; piVar2 = piVar2 + 3) {
              FUN_005e36d0(this,&iStack_78,*(int *)(*piVar2 + 0x58),
                           (int *)(uint)*(byte *)(piVar2 + 2),piVar2[1]);
            }
            FUN_005ab2d0((int *)&piStack_88);
            uVar5 = FUN_005bfce0(auStack_68);
            return CONCAT31((int3)((uint)uVar5 >> 8),1);
          }
          FUN_005ab2d0((int *)&piStack_88);
        }
      }
      uVar4 = FUN_005bfce0(auStack_68);
    }
  }
  return uVar4 & 0xffffff00;
}


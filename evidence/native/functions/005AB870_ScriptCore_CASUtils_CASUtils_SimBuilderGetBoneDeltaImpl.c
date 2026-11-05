/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156430 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_SimBuilderGetBoneDeltaImpl [assembly=ScriptCore token=0x0600032E;
   handle: System.UInt32, index: System.UInt32, position: Sims3.SimIFace.Vector3&, orientation:
   Sims3.SimIFace.Quaternion&, scale: Sims3.SimIFace.Vector3&; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.CASUtils::CASUtils_SimBuilderGetBoneDeltaImpl
          (uint param_1,int *param_2,undefined4 *param_3,void *param_4,undefined4 *param_5)

{
  int *piVar1;
  int *piVar2;
  void *pvVar3;
  undefined4 *puVar4;
  byte *unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 auStack_68 [4];
  void *pvStack_64;
  undefined4 uStack_60;
  undefined **ppuStack_5c;
  undefined4 uStack_58;
  void *pvStack_54;
  undefined4 uStack_50;
  undefined **ppuStack_4c;
  undefined4 uStack_48;
  void *pvStack_44;
  undefined4 uStack_40;
  undefined **ppuStack_3c;
  undefined4 uStack_38;
  byte abStack_34 [48];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x35000000)) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pvVar3 = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (pvVar3 != (void *)0x0) {
      puVar4 = (undefined4 *)FUN_005e2c40(pvVar3,param_2,(undefined4 *)(auStack_68 + -4));
      if (puVar4 != (undefined4 *)0x0) {
        FUN_0076c150(param_3,puVar4);
        FUN_0076c150(param_5,puVar4 + 8);
        *(undefined4 *)((int)param_4 + 0xc) = puVar4[7];
        pvStack_64 = (void *)puVar4[4];
        uStack_60 = puVar4[5];
        ppuStack_5c = (undefined **)puVar4[6];
        uStack_58 = puVar4[7];
        pvStack_54 = pvStack_64;
        uStack_50 = uStack_60;
        ppuStack_4c = ppuStack_5c;
        uStack_48 = uStack_58;
        pvStack_44 = pvStack_64;
        uStack_40 = uStack_60;
        ppuStack_3c = ppuStack_5c;
        uStack_38 = uStack_58;
        FUN_0076bf70(param_4,pvStack_64,uStack_60,ppuStack_5c);
        pvVar3 = EaString_FromUtf8Bytes(&pvStack_64,unaff_ESI,0xffffffff,(byte *)0x0);
        FUN_005ab2a0(abStack_34,pvVar3);
        if ((2 < (int)((int)ppuStack_5c - (int)pvStack_64 & 0xfffffffeU)) &&
           (pvStack_64 != (void *)0x0)) {
          Memory_FreeIfNonNull(pvStack_64);
        }
        (**(code **)(*piVar1 + 0x50))(abStack_34,auStack_68);
        ppuStack_3c = &PTR_FUN_00fba6f4;
        if ((abStack_34[0] & 4) != 0) {
          FUN_004f5760(&ppuStack_3c,'\0');
        }
        return unaff_EDI;
      }
    }
  }
  return 0;
}


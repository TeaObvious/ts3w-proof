/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x005ac5d3) */
/* Verified PC 1.67 registration table at 0x01156748 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_InjectEyebrowColorImpl [assembly=ScriptCore token=0x060003A2;
   handle: System.UInt32, part: Sims3.SimIFace.CAS.CASPart, designPreset: System.String, color:
   System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_CASUtils__CASUtils_InjectEyebrowColorImpl
          (undefined4 param_1,int param_2,undefined4 param_3)

{
  bool bVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  int *piVar4;
  void *pvVar5;
  undefined4 uVar6;
  uint uVar7;
  void *unaff_retaddr;
  uint in_stack_0000004c;
  int in_stack_00000050;
  undefined4 uStack_104;
  undefined auStack_f2 [2];
  int aiStack_f0 [2];
  undefined1 auStack_e8 [4];
  char *pcStack_e4;
  uint uStack_e0;
  int iStack_dc;
  undefined4 uStack_d8;
  void *pvStack_d4;
  undefined4 uStack_d0;
  int aiStack_cc [2];
  void *pvStack_c4;
  int aiStack_bc [3];
  undefined **ppuStack_b0;
  uint uStack_ac;
  byte abStack_a8 [24];
  undefined **appuStack_90 [2];
  byte abStack_88 [24];
  undefined4 auStack_70 [2];
  undefined4 auStack_68 [26];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))();
  if (pWVar3 == (LPCWSTR)0x0) {
    return 0;
  }
  if (((uint)unaff_retaddr & 0xff000000) == 0x35000000) {
    piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pvVar5 = (void *)(**(code **)(*piVar4 + 0xcc))(unaff_retaddr);
    if (pvVar5 != (void *)0x0) {
      DesignPreset_InitializeEmpty(auStack_68);
      FUN_005c0060(auStack_68,pWVar3);
      bVar1 = PresetProperty_ReadWordByName(auStack_68,"Tint Color",&uStack_ac,&uStack_e0);
      if ((bVar1) && (uStack_e0 == in_stack_0000004c)) {
        pcStack_e4 = "CAS/Host";
        FUN_0040b880(aiStack_bc,pWVar3,&pcStack_e4);
        FUN_005ab2a0(abStack_a8,aiStack_bc);
        (**(code **)(*piVar2 + 0x50))(abStack_a8,auStack_f2 + -10);
        ppuStack_b0 = &PTR_FUN_00fba6f4;
        if ((abStack_a8[0] & 4) != 0) {
          FUN_004f5760(&ppuStack_b0,'\0');
        }
        if ((2 < (int)(aiStack_bc[0] - (int)pvStack_c4 & 0xfffffffeU)) &&
           (pvStack_c4 != (void *)0x0)) {
          Memory_FreeIfNonNull(pvStack_c4);
        }
LAB_005ac694:
        FUN_005bfce0(auStack_70);
        return in_stack_00000050;
      }
      uVar6 = FUN_005bf290(auStack_68,(byte *)"Tint Color",2,in_stack_0000004c,0);
      if (((char)uVar6 != '\0') && (uVar7 = FUN_005bef50((int)auStack_68), (char)uVar7 != '\0')) {
        uStack_d8 = param_3;
        iStack_dc = param_2;
        uStack_d0 = param_1;
        pvStack_d4 = unaff_retaddr;
        uVar7 = FUN_005bef60(auStack_68,pvVar5,&iStack_dc);
        if ((char)uVar7 != '\0') {
          aiStack_f0[0] = 0;
          bVar1 = ComplateNative_BuildPrograms(auStack_68,auStack_f2 + -6,0,false);
          if (bVar1) {
            FUN_004088f0(aiStack_cc,(undefined4 *)(auStack_f2 + -10));
            FUN_005bfd20(auStack_68,aiStack_cc);
            FUN_005ab2a0(abStack_88,aiStack_cc);
            (**(code **)(*piVar2 + 0x50))(abStack_88,auStack_e8);
            appuStack_90[0] = &PTR_FUN_00fba6f4;
            if ((abStack_88[0] & 4) != 0) {
              FUN_004f5760(appuStack_90,'\0');
            }
            if ((2 < (int)(aiStack_cc[0] - (int)pvStack_d4 & 0xfffffffeU)) &&
               (pvStack_d4 != (void *)0x0)) {
              Memory_FreeIfNonNull(pvStack_d4);
            }
            FUN_005ab2d0((int *)(auStack_f2 + -0xe));
            in_stack_00000050 = aiStack_f0[0];
            goto LAB_005ac694;
          }
          FUN_005ab2d0((int *)(auStack_f2 + -6));
        }
      }
      FUN_005bfce0(auStack_68);
    }
  }
  return 0;
}


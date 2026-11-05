/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x005ac5d3) */
/* Verified PC 1.67 registration table at 0x01156748 (original PC 1.67 TS3W.exe).
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
  int *piVar1;
  LPCWSTR pWVar2;
  int *piVar3;
  void *pvVar4;
  uint uVar5;
  undefined4 uVar6;
  uint unaff_retaddr;
  int in_stack_0000004c;
  undefined4 in_stack_00000050;
  undefined1 auStack_e8 [4];
  char *pcStack_e4;
  int iStack_e0;
  int iStack_dc;
  undefined4 uStack_d8;
  uint uStack_d4;
  undefined4 uStack_d0;
  int aiStack_cc [2];
  int iStack_c4;
  int aiStack_bc [3];
  undefined **ppuStack_b0;
  uint uStack_ac;
  byte abStack_a8 [24];
  undefined **appuStack_90 [2];
  byte abStack_88 [24];
  undefined4 auStack_70 [2];
  undefined4 auStack_68 [26];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  if ((unaff_retaddr & 0xff000000) == 0x35000000) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pvVar4 = (void *)(**(code **)(*piVar3 + 0xcc))(unaff_retaddr);
    if (pvVar4 != (void *)0x0) {
      FUN_005bfac0(auStack_68);
      FUN_005c0060(auStack_68,pWVar2);
      uVar5 = FUN_005bf470(auStack_68,(byte *)"Tint Color",&uStack_ac,&iStack_e0);
      if (((char)uVar5 != '\0') && (iStack_e0 == in_stack_0000004c)) {
        pcStack_e4 = "CAS/Host";
        FUN_0040b880(aiStack_bc,pWVar2,&pcStack_e4);
        FUN_005ab2a0(abStack_a8,aiStack_bc);
        (**(code **)(*piVar1 + 0x50))(abStack_a8,&stack0xffffff04);
        ppuStack_b0 = &PTR_FUN_00fba6f4;
        if ((abStack_a8[0] & 4) != 0) {
          FUN_004f5760(&ppuStack_b0,'\0');
        }
        if ((2 < (int)(aiStack_bc[0] - iStack_c4 & 0xfffffffeU)) && (iStack_c4 != 0)) {
          FUN_004e44e0(iStack_c4);
        }
LAB_005ac694:
        FUN_005bfce0(auStack_70);
        return in_stack_00000050;
      }
      uVar6 = FUN_005bf290(auStack_68,(byte *)"Tint Color",2,in_stack_0000004c,0);
      if (((char)uVar6 != '\0') && (uVar5 = FUN_005bef50((int)auStack_68), (char)uVar5 != '\0')) {
        uStack_d8 = param_3;
        iStack_dc = param_2;
        uStack_d0 = param_1;
        uStack_d4 = unaff_retaddr;
        uVar5 = FUN_005bef60(auStack_68,pvVar4,&iStack_dc);
        if ((char)uVar5 != '\0') {
          uVar6 = FUN_005c0310(auStack_68,(int *)&stack0xffffff08,0,'\0');
          if ((char)uVar6 != '\0') {
            FUN_004088f0(aiStack_cc,(undefined4 *)&stack0xffffff04);
            FUN_005bfd20(auStack_68,aiStack_cc);
            FUN_005ab2a0(abStack_88,aiStack_cc);
            (**(code **)(*piVar1 + 0x50))(abStack_88,auStack_e8);
            in_stack_00000050 = 0;
            appuStack_90[0] = &PTR_FUN_00fba6f4;
            if ((abStack_88[0] & 4) != 0) {
              FUN_004f5760(appuStack_90,'\0');
            }
            if ((2 < (int)(aiStack_cc[0] - uStack_d4 & 0xfffffffe)) && (uStack_d4 != 0)) {
              FUN_004e44e0(uStack_d4);
            }
            FUN_005ab2d0((int *)&stack0xffffff00);
            goto LAB_005ac694;
          }
          FUN_005ab2d0((int *)&stack0xffffff08);
        }
      }
      FUN_005bfce0(auStack_68);
    }
  }
  return 0;
}


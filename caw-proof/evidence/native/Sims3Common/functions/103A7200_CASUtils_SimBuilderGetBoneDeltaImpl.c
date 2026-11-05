/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderGetBoneDeltaImpl. Export
   ordinal(s): 156. Entry VA: 0x103a7200. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000422. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
CASUtils_SimBuilderGetBoneDeltaImpl
          (uint param_1,int *param_2,undefined4 *param_3,void *param_4,undefined4 *param_5)

{
  int *piVar1;
  int *piVar2;
  void *pvVar3;
  undefined4 *puVar4;
  LPCWSTR unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 auStack_68 [4];
  int iStack_64;
  undefined4 uStack_60;
  undefined **ppuStack_5c;
  undefined4 uStack_58;
  int iStack_54;
  undefined4 uStack_50;
  undefined **ppuStack_4c;
  undefined4 uStack_48;
  int iStack_44;
  undefined4 uStack_40;
  undefined **ppuStack_3c;
  undefined4 uStack_38;
  byte abStack_34 [48];
  
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x35000000)) {
    piVar2 = (int *)FUN_1055b120();
    pvVar3 = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (pvVar3 != (void *)0x0) {
      puVar4 = (undefined4 *)FUN_103dd730(pvVar3,param_2,(undefined4 *)&stack0xffffff94);
      if (puVar4 != (undefined4 *)0x0) {
        FUN_1055dc20(param_3,puVar4);
        FUN_1055dc20(param_5,puVar4 + 8);
        *(undefined4 *)((int)param_4 + 0xc) = puVar4[7];
        iStack_64 = puVar4[4];
        uStack_60 = puVar4[5];
        ppuStack_5c = (undefined **)puVar4[6];
        uStack_58 = puVar4[7];
        iStack_54 = iStack_64;
        uStack_50 = uStack_60;
        ppuStack_4c = ppuStack_5c;
        uStack_48 = uStack_58;
        iStack_44 = iStack_64;
        uStack_40 = uStack_60;
        ppuStack_3c = ppuStack_5c;
        uStack_38 = uStack_58;
        FUN_1055da40(param_4,iStack_64,uStack_60,ppuStack_5c);
        pvVar3 = FUN_10926db0(&iStack_64,unaff_ESI,0xffffffff,(char *)0x0);
        FUN_102c0de0(abStack_34,pvVar3);
        if ((2 < (int)((int)ppuStack_5c - iStack_64 & 0xfffffffeU)) && (iStack_64 != 0)) {
          FUN_10918e90(iStack_64);
        }
        (**(code **)(*piVar1 + 0x50))(abStack_34,auStack_68);
        ppuStack_3c = &PTR_FUN_10aca5b4;
        if ((abStack_34[0] & 4) != 0) {
          FUN_10928a90(&ppuStack_3c,'\0');
        }
        return unaff_EDI;
      }
    }
  }
  return 0;
}


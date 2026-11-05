/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011615a8 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_CheckConnectionURL [assembly=ScriptCore
   token=0x06000634; url: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_OnlineFeatures__OnlineFeaturesHost_CheckConnectionURL(undefined4 param_1)

{
  undefined1 uVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  undefined4 *puVar4;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 uVar5;
  undefined1 *unaff_EBX;
  int iVar6;
  undefined1 *puVar7;
  undefined1 *puVar8;
  char *apcStack_14 [2];
  int iStack_c;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d5068 == 0) {
    iVar6 = 0;
  }
  else {
    iVar6 = DAT_011d5068 + -8;
  }
  if ((piVar2 != (int *)0x0) && (iVar6 != 0)) {
    puVar7 = &DAT_011c8e55;
    apcStack_14[0] = "Services/OnlineFeaturesHost";
    pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_1);
    puVar4 = FUN_004f3cc0(apcStack_14,pWVar3,0xffffffff,(char *)0x0);
    puVar8 = &DAT_011c8e54;
    if (puVar4 != (undefined4 *)&stack0xffffffdc) {
      FUN_00405910(&stack0xffffffdc,(void *)*puVar4,(undefined1 *)puVar4[1]);
      puVar7 = &DAT_011c8e54;
      puVar8 = unaff_EBX;
    }
    if ((1 < iStack_c - (int)apcStack_14[0]) && (apcStack_14[0] != (char *)0x0)) {
      FUN_004e44e0((int)apcStack_14[0]);
    }
    uVar1 = FUN_00887410(iVar6);
    uVar5 = extraout_var;
    if ((1 < (int)puVar7 - (int)puVar8) && (puVar8 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)puVar8);
      uVar5 = extraout_var_00;
    }
    return CONCAT31(uVar5,uVar1);
  }
  return (uint)piVar2 & 0xffffff00;
}


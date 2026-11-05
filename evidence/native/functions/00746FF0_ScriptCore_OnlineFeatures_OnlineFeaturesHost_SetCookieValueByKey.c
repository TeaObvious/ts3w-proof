/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011615f0 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_SetCookieValueByKey [assembly=ScriptCore
   token=0x0600063D; key: Sims3Launcher.S3L_CookieKeys, val: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_OnlineFeatures__OnlineFeaturesHost_SetCookieValueByKey
               (undefined4 param_1,int param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  char *unaff_ESI;
  undefined1 *puVar4;
  char *pcVar5;
  int unaff_retaddr;
  char *apcStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && (param_2 != 0)) {
    puVar4 = &DAT_011c8e55;
    apcStack_14[0] = "Services/OnlineFeaturesHost";
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_2);
    puVar3 = FUN_004f3cc0(apcStack_14,pWVar2,0xffffffff,(char *)0x0);
    pcVar5 = &DAT_011c8e54;
    if (puVar3 != (undefined4 *)&stack0xffffffdc) {
      FUN_00405910(&stack0xffffffdc,(void *)*puVar3,(undefined1 *)puVar3[1]);
      puVar4 = &DAT_011c8e54;
      pcVar5 = unaff_ESI;
    }
    if ((1 < iStack_c - (int)apcStack_14[0]) && (apcStack_14[0] != (char *)0x0)) {
      FUN_004e44e0((int)apcStack_14[0]);
    }
    if ((DAT_011d5068 != 0) && (DAT_011d5068 != 8)) {
      FUN_00746850(*(void **)(DAT_011d5068 + 0x114),unaff_retaddr,pcVar5);
    }
    if ((1 < (int)puVar4 - (int)pcVar5) && (pcVar5 != (char *)0x0)) {
      FUN_004e44e0((int)pcVar5);
    }
  }
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x007474a5) */
/* WARNING: Removing unreachable block (ram,0x007474a9) */
/* Verified PC 1.67 registration table at 0x01161670 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_OverrideInGameBrowserUrl [assembly=ScriptCore
   token=0x0600064D; url: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.OnlineFeatures::OnlineFeaturesHost_OverrideInGameBrowserUrl(int param_1)

{
  int *piVar1;
  short *psVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && (param_1 != 0)) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    FUN_0040b590(&stack0xffffffec,psVar2);
    EnterCriticalSection((LPCRITICAL_SECTION)&DAT_011eb210);
    FUN_00408d60(&PTR_DAT_011828cc,(void *)0x0,(undefined2 *)0x0);
    LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011eb210);
  }
  return;
}


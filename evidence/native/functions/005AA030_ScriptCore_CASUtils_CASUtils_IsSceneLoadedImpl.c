/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x005aa0c6) */
/* Verified PC 1.67 registration table at 0x01156510 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_IsSceneLoadedImpl [assembly=ScriptCore token=0x0600033F; winHandle:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl ScriptCore.CASUtils::CASUtils_IsSceneLoadedImpl(uint param_1)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  bool bVar4;
  
  bVar4 = true;
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if ((piVar1 != (int *)0x0) &&
       (pvVar2 = (void *)(**(code **)(*piVar1 + 0xc))(0x39a436f), pvVar2 != (void *)0x0)) {
      GetGlobalInterfacePointer_11D5BBC();
      pvVar2 = (void *)FUN_007eb3e0(pvVar2,'\x01');
      if (pvVar2 != (void *)0x0) {
        uVar3 = FUN_006f3c50(pvVar2,0xffffffff,'\0',(int *)0x0,0);
        bVar4 = (char)uVar3 == '\0';
      }
    }
  }
  return bVar4;
}


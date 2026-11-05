/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-verified correction to the rendering below: the managed ABI is
   (key, UInt32& value), two distinct stack arguments. EC0FC9 reads key at ESP+4;
   after PUSH ESI, EC0FE2 loads the value-ref pointer at ESP+0C, reads its default,
   calls58AF00(section,key,default), stores EAX and sets AL1 unconditionally.
   Only absent scripting interface/key conversion reaches EC0FF9 AL0.
   The decompiler has conflated key/ref uses as param_1 around an indirect call;
   this prototype and CONCAT31 are not a separate original ABI or full-EAX Boolean.
   A missing configuration property is successful default preservation. */

/* Verified PC 1.67 registration table at 0x011971e0 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_GetConfigValue [assembly=ScriptCore token=0x0600024E; key:
   System.String, value: System.UInt32&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_GetConfigValue(int *param_1)

{
  int *piVar1;
  wchar_t *pwVar2;
  int iVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    pwVar2 = (wchar_t *)(**(code **)(*piVar1 + 0x58))(param_1);
    if (pwVar2 != (wchar_t *)0x0) {
      iVar3 = FUN_0058af00((short *)PTR_u_Config_01150ab0,pwVar2,*param_1);
      *param_1 = iVar3;
      return CONCAT31((int3)((uint)iVar3 >> 8),1);
    }
  }
  return 0;
}


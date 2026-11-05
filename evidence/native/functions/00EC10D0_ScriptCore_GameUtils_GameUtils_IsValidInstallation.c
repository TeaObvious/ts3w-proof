/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197300 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_IsValidInstallation [assembly=ScriptCore token=0x06000272; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_GameUtils__GameUtils_IsValidInstallation(void)

{
  char cVar1;
  LSTATUS LVar2;
  HKEY pHStack_4;
  
  cVar1 = FUN_0058b0c0(L"InstallationRequired",1);
  if (cVar1 == '\0') {
    return true;
  }
  LVar2 = RegOpenKeyExA((HKEY)0x80000002,"SOFTWARE\\Electronic Arts\\Sims\\The Sims 3\\ergc",0,
                        0x20019,&pHStack_4);
  if (LVar2 == 0) {
    RegCloseKey(pHStack_4);
  }
  return LVar2 == 0;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_IsValidInstallation
   at 0x00ec10d0, bytes e9db816cff. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

bool DirectTargetOf_GameUtils_GameUtils_IsValidInstallation(void)

{
  char cVar1;
  LSTATUS LVar2;
  HKEY local_4;
  
  cVar1 = FUN_0058b0c0(L"InstallationRequired",1);
  if (cVar1 == '\0') {
    return true;
  }
  LVar2 = RegOpenKeyExA((HKEY)0x80000002,"SOFTWARE\\Electronic Arts\\Sims\\The Sims 3\\ergc",0,
                        0x20019,&local_4);
  if (LVar2 == 0) {
    RegCloseKey(local_4);
  }
  return LVar2 == 0;
}


/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011639c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetLotSaveFileName [assembly=ScriptCore token=0x0600084E; lotId:
   System.UInt64; return=System.IntPtr]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

wchar_t * ScriptCore_World__World_GetLotSaveFileName(int param_1,int param_2)

{
  wchar_t *_Str;
  int *piVar1;
  wchar_t *pwVar2;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if (piVar1 != (int *)0x0) {
      _Str = (wchar_t *)piVar1[0x18];
      pwVar2 = wcsrchr(_Str,L'\\');
      if (pwVar2 == (wchar_t *)0x0) {
        return _Str;
      }
      return pwVar2 + 1;
    }
  }
  return (wchar_t *)0x0;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_WriteCharUTF8. Export ordinal(s):
   2465. Entry VA: 0x105676e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F33. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl StreamHost_WriteCharUTF8(uint param_1)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  WCHAR local_8 [4];
  
                    /* 0x5676e0  2465  StreamHost_WriteCharUTF8 */
  piVar2 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)FUN_1055b120();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
      if (piVar2 != (int *)0x0) {
        DAT_10c7b0a4 = param_1;
        DAT_10c7b0a8 = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  if (piVar2 != (int *)0x0) {
    iVar3 = FUN_109278a0(local_8,8,(LPCWSTR)&stack0x00000008,1);
    cVar1 = (**(code **)(*piVar2 + 0x38))(local_8,iVar3);
    return (-(uint)(cVar1 != '\0') & 3) - 3;
  }
  return -2;
}


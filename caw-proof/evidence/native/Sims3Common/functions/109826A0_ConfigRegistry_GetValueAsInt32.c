/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ConfigRegistry_GetValueAsInt32. Export
   ordinal(s): 1765. Entry VA: 0x109826a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060005CE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

long __cdecl ConfigRegistry_GetValueAsInt32(short *param_1,short *param_2,long param_3)

{
  undefined4 uVar1;
  long lVar2;
  wchar_t *local_4;
  
                    /* 0x9826a0  1765  ConfigRegistry_GetValueAsInt32 */
  if (DAT_10cb7f30 != (void *)0x0) {
    uVar1 = FUN_1038a530(DAT_10cb7f30,param_1,param_2,&local_4);
    if ((char)uVar1 != '\0') {
      lVar2 = _wtol(local_4);
      return lVar2;
    }
  }
  return param_3;
}


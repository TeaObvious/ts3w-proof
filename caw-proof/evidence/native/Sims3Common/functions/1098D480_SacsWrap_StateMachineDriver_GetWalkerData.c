/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachineDriver_GetWalkerData. Export
   ordinal(s): 2197. Entry VA: 0x1098d480. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000D97. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SacsWrap_StateMachineDriver_GetWalkerData(void *param_1,wint_t *param_2,undefined4 *param_3)

{
  int iVar1;
  int iVar2;
  
                    /* 0x98d480  2197  SacsWrap_StateMachineDriver_GetWalkerData */
  *param_3 = 0;
  param_3[1] = 0;
  param_3[2] = 0;
  param_3[5] = 0;
  param_3[3] = 0;
  param_3[4] = 0;
  param_3[6] = 0;
  if ((param_1 != (void *)0x0) && (iVar1 = FUN_105f6160(param_1,param_2), iVar1 != 0)) {
    if ((*(void **)(iVar1 + 8) != (void *)0x0) &&
       (iVar2 = FUN_1037f2c0(*(void **)(iVar1 + 8),'\0'), iVar2 != 0)) {
      *param_3 = *(undefined4 *)(iVar2 + 8);
      param_3[1] = *(undefined4 *)(iVar2 + 0xc);
    }
    param_3[2] = *(undefined4 *)(iVar1 + 0x10);
    param_3[5] = *(undefined4 *)(iVar1 + 0x24);
    param_3[3] = *(undefined4 *)(iVar1 + 0x18);
    param_3[4] = *(undefined4 *)(iVar1 + 0x1c);
    param_3[6] = *(undefined4 *)(iVar1 + 0x28);
  }
  return;
}


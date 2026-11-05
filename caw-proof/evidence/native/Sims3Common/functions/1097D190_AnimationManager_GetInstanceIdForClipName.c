/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationManager_GetInstanceIdForClipName. Export
   ordinal(s): 1658. Entry VA: 0x1097d190. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060002FC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

ulonglong __cdecl AnimationManager_GetInstanceIdForClipName(char *param_1,uint *param_2)

{
  ulonglong uVar1;
  char *pcStack_10;
  undefined4 uStack_c;
  int iStack_8;
  char *pcStack_4;
  
  uVar1 = 0;
  if (param_1 != (char *)0x0) {
    pcStack_10 = (char *)0x0;
    uStack_c = 0;
    iStack_8 = 0;
    pcStack_4 = "Animation/ClipObject";
    FUN_1006f780(&pcStack_10,param_1);
    uVar1 = FUN_103768e0(&pcStack_10,param_2);
    if ((1 < iStack_8 - (int)pcStack_10) && (pcStack_10 != (char *)0x0)) {
      FUN_10918e90((int)pcStack_10);
    }
  }
  return uVar1;
}


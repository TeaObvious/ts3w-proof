/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetGridRotationAngle. Export
   ordinal(s): 2632. Entry VA: 0x10999060. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004F3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetGridRotationAngle(int param_1)

{
  undefined4 uVar1;
  
                    /* 0x999060  2632  WorldWrap_GetGridRotationAngle */
  uVar1 = 0;
  if (*(int *)(param_1 + 0x6c) != 0) {
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x6c) + 8);
  }
  return uVar1;
}


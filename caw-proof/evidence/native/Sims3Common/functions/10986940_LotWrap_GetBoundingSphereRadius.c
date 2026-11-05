/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetBoundingSphereRadius. Export
   ordinal(s): 1905. Entry VA: 0x10986940. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A8F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl LotWrap_GetBoundingSphereRadius(int param_1)

{
  float10 fVar1;
  float local_44;
  float local_40 [4];
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x986940  1905  LotWrap_GetBoundingSphereRadius */
  fVar1 = (float10)0;
  if (param_1 != 0) {
    local_30 = *(undefined4 *)(param_1 + 0x230);
    uStack_2c = *(undefined4 *)(param_1 + 0x234);
    uStack_28 = *(undefined4 *)(param_1 + 0x238);
    uStack_24 = *(undefined4 *)(param_1 + 0x23c);
    local_44 = (float)fVar1;
    local_20 = *(undefined4 *)(param_1 + 0x240);
    uStack_1c = *(undefined4 *)(param_1 + 0x244);
    uStack_18 = *(undefined4 *)(param_1 + 0x248);
    uStack_14 = *(undefined4 *)(param_1 + 0x24c);
    FUN_10482cd0(&local_30,local_40,&local_44);
    fVar1 = (float10)local_44;
  }
  return fVar1;
}


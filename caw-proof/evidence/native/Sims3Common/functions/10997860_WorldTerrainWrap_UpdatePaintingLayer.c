/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_UpdatePaintingLayer. Export
   ordinal(s): 2599. Entry VA: 0x10997860. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B17. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_UpdatePaintingLayer(int param_1,byte param_2)

{
  void *this;
  undefined4 *puVar1;
  int iVar2;
  short *in_stack_0000001c;
  undefined4 in_stack_00000020;
  short *in_stack_00000024;
  int *piVar3;
  int *piVar4;
  int local_30 [3];
  char *local_24;
  int local_20 [3];
  char *local_14;
  undefined4 local_10 [4];
  
                    /* 0x997860  2599  WorldTerrainWrap_UpdatePaintingLayer */
  if ((param_1 != 0) && (this = *(void **)(param_1 + 100), this != (void *)0x0)) {
    local_20[0] = 0;
    local_20[1] = 0;
    local_20[2] = 0;
    local_14 = "WorldTerrainWrap/UpdatePaintingLayer/layerName";
    FUN_1006a620(local_20,in_stack_00000024);
    local_30[0] = 0;
    local_30[1] = 0;
    local_30[2] = 0;
    local_24 = "WorldTerrainWrap/UpdatePaintingLayer/textureName";
    FUN_1006a620(local_30,in_stack_0000001c);
    piVar4 = local_20;
    piVar3 = local_30;
    puVar1 = (undefined4 *)FUN_1055daa0(local_10,(undefined4 *)&stack0x0000000c);
    FUN_101fb440(this,(uint)param_2,puVar1,piVar3,in_stack_00000020,piVar4);
    if ((2 < (int)(local_30[2] - local_30[0] & 0xfffffffeU)) && (local_30[0] != 0)) {
      FUN_10918e90(local_30[0]);
    }
    if ((2 < (int)(local_20[2] - local_20[0] & 0xfffffffeU)) && (local_20[0] != 0)) {
      FUN_10918e90(local_20[0]);
    }
    iVar2 = FUN_106b6a50((int)this);
    if (iVar2 != 0) {
      FUN_101f0530(iVar2);
      return;
    }
  }
  return;
}


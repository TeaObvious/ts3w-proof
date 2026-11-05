/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_AddPaintingLayer. Export
   ordinal(s): 2550. Entry VA: 0x10997680. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B14. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

byte __cdecl WorldTerrainWrap_AddPaintingLayer(char *param_1)

{
  void *this;
  byte bVar1;
  void *this_00;
  uint uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  short *in_stack_00000018;
  undefined4 in_stack_0000001c;
  short *in_stack_00000020;
  byte local_35;
  char *local_34;
  int local_30 [2];
  int local_28;
  int local_20 [2];
  int local_18;
  undefined4 local_10 [4];
  
                    /* 0x997680  2550  WorldTerrainWrap_AddPaintingLayer */
  local_35 = 0;
  bVar1 = 0;
  if ((((param_1 != (char *)0x0) && (this = *(void **)(param_1 + 100), this != (void *)0x0)) &&
      (this_00 = (void *)FUN_106b6a50((int)this), bVar1 = local_35, this_00 != (void *)0x0)) &&
     (uVar2 = FUN_101f2900(this_00,&local_35), bVar1 = local_35, (char)uVar2 != '\0')) {
    param_1 = "WorldTerrainWrap/AddPaintingLayer/layerName";
    local_34 = "WorldTerrainWrap/AddPaintingLayer/textureName";
    puVar3 = FUN_1006aaa0(local_20,in_stack_00000020,&param_1);
    puVar4 = FUN_1006aaa0(local_30,in_stack_00000018,&local_34);
    puVar5 = (undefined4 *)FUN_1055daa0(local_10,(undefined4 *)&stack0x00000008);
    FUN_101fcaf0(this,puVar5,puVar4,in_stack_0000001c,puVar3);
    if ((2 < (int)(local_28 - local_30[0] & 0xfffffffeU)) && (local_30[0] != 0)) {
      FUN_10918e90(local_30[0]);
    }
    if ((2 < (int)(local_18 - local_20[0] & 0xfffffffeU)) && (local_20[0] != 0)) {
      FUN_10918e90(local_20[0]);
    }
    FUN_101f0530((int)this_00);
    bVar1 = local_35;
  }
  return bVar1;
}


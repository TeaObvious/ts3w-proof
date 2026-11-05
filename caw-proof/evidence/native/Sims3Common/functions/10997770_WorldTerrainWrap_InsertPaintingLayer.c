/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_InsertPaintingLayer. Export
   ordinal(s): 2581. Entry VA: 0x10997770. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B15. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_InsertPaintingLayer(char *param_1,uint param_2)

{
  void *this;
  uint uVar1;
  void *this_00;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  short *in_stack_0000001c;
  undefined4 in_stack_00000020;
  short *in_stack_00000024;
  char *local_34;
  int local_30 [2];
  int local_28;
  int local_20 [2];
  int local_18;
  undefined4 local_10 [4];
  
                    /* 0x997770  2581  WorldTerrainWrap_InsertPaintingLayer */
  if ((((param_1 != (char *)0x0) && (this = *(void **)(param_1 + 100), this != (void *)0x0)) &&
      (this_00 = (void *)FUN_106b6a50((int)this), uVar1 = param_2, this_00 != (void *)0x0)) &&
     (uVar2 = FUN_101f29d0(this_00,(byte)param_2), (char)uVar2 != '\0')) {
    param_1 = "WorldTerrainWrap/InsertPaintingLayer/layerName";
    local_34 = "WorldTerrainWrap/InsertPaintingLayer/textureName";
    puVar3 = FUN_1006aaa0(local_20,in_stack_00000024,&param_1);
    puVar4 = FUN_1006aaa0(local_30,in_stack_0000001c,&local_34);
    puVar5 = (undefined4 *)FUN_1055daa0(local_10,(undefined4 *)&stack0x0000000c);
    FUN_101fcc00(this,uVar1 & 0xff,puVar5,puVar4,in_stack_00000020,puVar3);
    if ((2 < (int)(local_28 - local_30[0] & 0xfffffffeU)) && (local_30[0] != 0)) {
      FUN_10918e90(local_30[0]);
    }
    if ((2 < (int)(local_18 - local_20[0] & 0xfffffffeU)) && (local_20[0] != 0)) {
      FUN_10918e90(local_20[0]);
    }
    FUN_101f0530((int)this_00);
    return;
  }
  return;
}


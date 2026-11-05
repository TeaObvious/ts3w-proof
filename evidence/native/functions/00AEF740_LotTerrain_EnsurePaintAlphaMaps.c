/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXterrain+UInt32 layer index RET4. Ensure pointer vector60/64 has index+1 entries.
   Construct each missing44hex-byte alpha map, initialize dimensions from terrain1C/20
   throughAEE740, descriptors8000, uniform backing zeros, empty expanded-block end, flag40zero.
   Dynamic vector/map growth, not a fixed16/32 layer limit; maximum policy is separateE8. Native
   allocation null handling unsafe and not a managed success fallback. */

void __thiscall LotTerrain_EnsurePaintAlphaMaps(void *this,int param_1)

{
  undefined2 *puVar1;
  undefined4 *this_00;
  undefined2 *puVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = param_1 + 1;
  uVar4 = *(int *)((int)this + 100) - *(int *)((int)this + 0x60) >> 2;
  if (uVar4 < uVar3) {
    FUN_00c221f0((int *)((int)this + 0x60),uVar3);
    do {
      this_00 = (undefined4 *)FUN_004e4500(0x44,"Lot/LotTerrain/AlphaMap",0);
      if (this_00 == (undefined4 *)0x0) {
        this_00 = (undefined4 *)0x0;
      }
      else {
        *this_00 = 0;
        this_00[1] = 0;
        this_00[2] = 0;
        this_00[3] = 0;
        this_00[4] = 0;
        this_00[5] = 0;
        this_00[6] = 0;
        this_00[7] = "Lot/LotTerrain/AlphaMap";
        this_00[8] = 0;
        this_00[9] = 0;
        this_00[10] = 0;
        this_00[0xb] = "Lot/LotTerrain/AlphaMap";
        this_00[0xc] = 0;
        this_00[0xd] = 0;
        this_00[0xe] = 0;
        this_00[0xf] = "Lot/LotTerrain/AlphaMap";
        *(undefined1 *)(this_00 + 0x10) = 0;
      }
      ByteBlockGrid_SetDimensions(this_00,*(int *)((int)this + 0x1c),*(int *)((int)this + 0x20));
      puVar1 = (undefined2 *)this_00[0xd];
      for (puVar2 = (undefined2 *)this_00[0xc]; puVar2 != puVar1; puVar2 = puVar2 + 1) {
        *puVar2 = 0x8000;
      }
      memset((void *)this_00[4],0,this_00[5] - (int)this_00[4]);
      this_00[9] = this_00[8];
      *(undefined1 *)(this_00 + 0x10) = 0;
      *(undefined4 **)(*(int *)((int)this + 0x60) + uVar4 * 4) = this_00;
      uVar4 = uVar4 + 1;
    } while (uVar4 < uVar3);
  }
  return;
}


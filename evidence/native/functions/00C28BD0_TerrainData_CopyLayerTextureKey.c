/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX terrain source; unsigned index,output key; RET0x08; ALBoolean.
   Arithmetic shift(end-begin,5), unsigned index comparison, copy first four DWORDs of
   selected32-byte layer record. False leaves output untouched. Caller owns zero
   initialization/fallback; no new negative/bounds repair. Role name is descriptive, not a recovered
   original symbol. */

uint __thiscall TerrainData_CopyLayerTextureKey(void *this,uint param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  if (param_1 < (uint)(*(int *)((int)this + 0x48) - *(int *)((int)this + 0x44) >> 5)) {
    puVar2 = (undefined4 *)(param_1 * 0x20 + *(int *)((int)this + 0x44));
    *param_2 = *puVar2;
    param_2[1] = puVar2[1];
    param_2[2] = puVar2[2];
    uVar1 = puVar2[3];
    param_2[3] = uVar1;
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  return param_1 & 0xffffff00;
}


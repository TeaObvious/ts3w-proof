/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 ECX owner plus six stack DWORD slots, RET24. Unsigned X/Z bounds select an optional
   physical tile. Convert incoming packed A/R/G/B bytes to float lanes, compute weighted RGB grey
   and mix it into all four lanes including alpha, then pass B/G/R/A to6A3F90. The seven actual
   scalar bit patterns are a separate original-data receipt; no guessed values or catalog lookup is
   inferred here. For a present tile write selector9 through6A9800 with actual signed low-byte part
   input, obtain current room and call6B5BC0. Full catalog reader, tile setter and callback
   semantics remain separate. */

void __thiscall
FloorLighting_PrepareAndStoreTilePartColor
          (void *this,uint param_1,uint param_2,uint param_3,uint param_4,undefined4 param_5,
          undefined4 param_6)

{
  byte bVar1;
  void *this_00;
  float fVar2;
  float fVar3;
  float fVar4;
  float local_10;
  float local_c;
  float local_8;
  float local_4;
  
  if (param_1 < *(uint *)((int)this + 0x264)) {
    if (param_2 < *(uint *)((int)this + 0x268)) {
      this_00 = *(void **)(*(int *)((int)this + 0x260) +
                          (*(uint *)((int)this + 0x264) * param_2 + param_1) * 4);
    }
    else {
      this_00 = (void *)0x0;
    }
  }
  else {
    this_00 = (void *)0x0;
  }
  fVar2 = (float)(param_4 >> 0x10 & 0xff) * DAT_00fae564;
  fVar4 = (float)(param_4 >> 8 & 0xff) * DAT_00fae564;
  fVar3 = (float)(param_4 & 0xff) * DAT_00fae564;
  local_10 = (fVar2 * _DAT_00fe6040 + fVar4 * _DAT_00ff460c + fVar3 * DAT_00ff4608) * DAT_00f9e504;
  local_4 = local_10 + (float)(param_4 >> 0x18) * DAT_00fae564 * DAT_00fbb838;
  local_8 = local_10 + fVar2 * DAT_00fbb838;
  local_c = local_10 + fVar4 * DAT_00fbb838;
  local_10 = local_10 + fVar3 * DAT_00fbb838;
  PackedColor_WriteScaledTruncatedBytes(&param_1,local_10,local_c,local_8,local_4);
  if (this_00 != (void *)0x0) {
    bVar1 = (byte)param_3;
    FUN_006a9800(this_00,9,param_1,(int)(char)(byte)param_3,(char)param_5,(char)param_6);
    param_1 = FUN_006a9900(this_00,bVar1);
    param_3 = param_3 & 0xffffff00;
    FUN_006b5bc0((void *)((int)this + 0x14),&local_10,&param_1);
  }
  return;
}


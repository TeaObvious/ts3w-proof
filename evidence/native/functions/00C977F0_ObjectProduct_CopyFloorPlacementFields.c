/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX product
   and six output pointers, RET18. Copies32-bit level+F0, float
   length+158,width+15C,offsets+160/+164, then16-byte resource key+148 to sixth output. No
   level/domain/finite-size validation here; reader C98660 establishes versioned source fields.
   
   PC1.67 original static instructions. ECXproduct+6outputpointers RET18hex. Copies32bitlevel+F0,
   floatlength+158,width+15C,offsets+160/+164, then16bytekey+148..154. No
   finite/positive-size/domain validation here; originalC98660 versioneddecoder ownsproducer.
   SharedhostDTO haskey/level/length/width/offsets; do not infer native keywire order from CLR
   recordfieldorder. */

void __thiscall
ObjectProduct_CopyFloorPlacementFields
          (void *this,undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,
          undefined4 *param_4,undefined4 *param_5,undefined4 *param_6)

{
  *param_1 = *(undefined4 *)((int)this + 0xf0);
  *param_2 = *(undefined4 *)((int)this + 0x158);
  *param_3 = *(undefined4 *)((int)this + 0x15c);
  *param_4 = *(undefined4 *)((int)this + 0x160);
  *param_5 = *(undefined4 *)((int)this + 0x164);
  *param_6 = *(undefined4 *)((int)this + 0x148);
  param_6[1] = *(undefined4 *)((int)this + 0x14c);
  param_6[2] = *(undefined4 *)((int)this + 0x150);
  param_6[3] = *(undefined4 *)((int)this + 0x154);
  return;
}


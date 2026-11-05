/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 packed shader-parameter descriptor. Physical ECX destination plus four DWORD stack
   arguments, RET10; EAX is incidental, no declared result. Copies parameter hash to+C; stores
   word+4=(packedA>>11)&7 and word+2=packedA&1FF. Original SHR/AND/OR sequence packs
   flags/count/register descriptor at+18; do not substitute a guessed source enum. Clears
   +8/+10/+14, stores word+6=packedB&FFF, optionally +14=base+4*(packedB&FFF), and
   word+0=(packedB>>12)&FFF. All shifts logical UInt32, stored fields are truncated UInt16. PASS
   reader79F410 supplies hash/two packed words and buffer base. Selected original StandingWater PARM
   NormalMapScale3C45E334 words01034001/80001000 decode descriptor00480D01, component count1 and
   offset0; the normal-scale producer/value is not established by this decoder. No shader tokens,
   original bytes, prototype, parameter/local types, body or flow changes. */

void __thiscall
ShaderParameter_DecodePackedBinding
          (void *this,undefined4 param_1,uint param_2,uint param_3,int param_4)

{
  *(undefined4 *)((int)this + 0xc) = param_1;
  *(ushort *)((int)this + 4) = (ushort)(param_2 >> 0xb) & 7;
  *(ushort *)((int)this + 2) = (ushort)param_2 & 0x1ff;
  *(uint *)((int)this + 0x18) =
       (((param_3 & 0x800001ff | param_2 >> 0xf) >> 2 | param_3 & 0x40000000) >> 1 |
       param_2 & 0xffc000) >> 6 | ((param_2 & 0x600) + 0x200) * 0x400;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(short *)((int)this + 6) = (short)(param_3 & 0xfff);
  *(undefined4 *)((int)this + 0x14) = 0;
  if (param_4 != 0) {
    *(uint *)((int)this + 0x14) = param_4 + (param_3 & 0xfff) * 4;
  }
  *(ushort *)this = (ushort)(param_3 >> 0xc) & 0xfff;
  return;
}


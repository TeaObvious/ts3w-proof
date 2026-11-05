/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. thiscall ECX destination plus THIRTEEN 4-byte
   stack words; RET 0x34 cleans 52 bytes. Returns original this. Calls triangle base with first nine
   stack words. Copies LOWBYTE of input word 11 to mirror+0x44, input word 10 to+0x48, sets
   index+0x40=60, zeroes selected property fields and optionally copies SIX DWORDs from input word
   12 to+0x4C..+0x60. Stores word 13 at+0x64. Thus mirror is caller-provided, not forcibly false.
   Derived constructors can replace vtable; all producer arguments and mutation/retirement are not
   established by this selected initializer. */

void * __thiscall
RoofPolygon_ConstructThreeProperties
          (void *this,uint normalIndex,void *meshBuilder,uint field0C,uint gridStride,uint field14,
          int cellX,int cellZ,uint field20,void *heightOwner,uint field48,uint mirrorWord,
          void *properties6,uint field64)

{
  RoofPolygon_ConstructTriangleBase
            (this,normalIndex,meshBuilder,field0C,gridStride,field14,cellX,cellZ,field20,heightOwner
            );
  *(undefined1 *)((int)this + 0x44) = (undefined1)mirrorWord;
  *(uint *)((int)this + 0x48) = field48;
  *(undefined ***)this = &PTR_FUN_010736a8;
  *(undefined4 *)((int)this + 0x40) = 0x3c;
  *(undefined1 *)((int)this + 0x45) = 0;
  *(undefined1 *)((int)this + 0x46) = 0;
  *(undefined1 *)((int)this + 0x47) = 0;
  *(undefined1 *)((int)this + 0x50) = 0;
  *(undefined1 *)((int)this + 0x51) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined1 *)((int)this + 0x58) = 0;
  *(undefined1 *)((int)this + 0x59) = 0;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined1 *)((int)this + 0x60) = 0;
  *(undefined1 *)((int)this + 0x61) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(uint *)((int)this + 100) = field64;
  if (properties6 != (void *)0x0) {
    *(undefined4 *)((int)this + 0x4c) = *(undefined4 *)properties6;
    *(undefined4 *)((int)this + 0x50) = *(undefined4 *)((int)properties6 + 4);
    *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)properties6 + 8);
    *(undefined4 *)((int)this + 0x58) = *(undefined4 *)((int)properties6 + 0xc);
    *(undefined4 *)((int)this + 0x5c) = *(undefined4 *)((int)properties6 + 0x10);
    *(undefined4 *)((int)this + 0x60) = *(undefined4 *)((int)properties6 + 0x14);
  }
  return this;
}


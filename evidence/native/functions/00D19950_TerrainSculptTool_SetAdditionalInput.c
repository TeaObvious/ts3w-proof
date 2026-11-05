/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Recovered complete215byte original thiscall5wordsRET14hex,ALBoolean. Input4B6E3B1 softness:
   saveFloat32static118E4A4; scale=softness*.1(SSE),factor=(1-scale)*12+1
   withseparateSUBSS/MULSS/ADDSS,storesB0. Width input4B6E377 changeswidth product andcursor
   butdoesnotchangethatfactor. OtherIDs forwardbase504FB0 preservingfivephysicalwords;
   completebaseinputpolicy notclaimed. Native constants at104487C=.1,FAAD94=12,F998F8=1;
   verifyoriginalbits. No clampsorinferrangeintroduced. */

bool __thiscall
TerrainSculptTool_SetAdditionalInput
          (void *this,uint inputId,float value,undefined4 word3,undefined4 word4,undefined4 word5)

{
  undefined1 uVar1;
  
  if (inputId == 0x4b6e377) {
    _DAT_0118e4a0 = value;
    if (*(int *)((int)this + 0xac) != 0) {
      *(float *)((int)this + 0xa0) = *(float *)(*(int *)((int)this + 0xac) + 0x1c) * value;
    }
  }
  else {
    if (inputId != 0x4b6e3b1) {
      uVar1 = FUN_00504fb0();
      return (bool)uVar1;
    }
    DAT_0118e4a4 = value;
    *(float *)((int)this + 0xb0) = (1.0 - value * 0.1) * 12.0 + 1.0;
  }
  FUN_00cedb30(this,*(float *)((int)this + 0xa0),DAT_0118e4a4 * 0.1);
  return true;
}


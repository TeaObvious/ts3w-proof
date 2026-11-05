/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete265-byte thiscall five physical words RET14hex, ALBoolean. Sets *ok=true before
   CB0710, forms signed BYTE tileX/Z from low bytes of full input words plus raw level0, uses live
   global1190794 OR800 (image default1F9FF7). Rule refusal returnsfalse with ok stilltrue. If not
   free14, actual ToolWorld CanCharge(0) then ApplyCharge(0); callback refusal sets okfalse. Success
   captures first vertex D39060, writes target Float32 bits to entry+C, calls D223F0 with
   live1190790 (image default1F97B7), and adds coordinate to edited list110 only if entry14 bit0 was
   clear. ReturnsAL1 regardless of equal old/target and regardless of downstream D223F0 return, not
   a bytewise geometry-change predicate. OriginalC int cast of target entry is rawFloat32
   reinterpretation. Full free/zero-charge callback/recovery and snapshot adapters remain separate
   original contracts. */

bool __thiscall
WaterUndoable_ChangeGroundElevation
          (void *this,int sampleX,int sampleZ,float targetHeight,bool *ok,undefined *errors)

{
  bool *pbVar1;
  char cVar2;
  bool bVar3;
  int *piVar4;
  int local_8;
  int local_4;
  
  pbVar1 = ok;
  *ok = true;
  ok._3_1_ = SUB41(pbVar1,3);
  ok._0_3_ = (uint3)CONCAT11((undefined1)sampleZ,(undefined1)sampleX);
  cVar2 = FUN_00cb0710(*(void **)((int)this + 0xb0),(char *)&ok,targetHeight,DAT_01190794 | 0x800,
                       errors,0,0);
  if (cVar2 != '\0') {
    bVar3 = true;
    if (*(char *)((int)this + 0x14) == '\0') {
      bVar3 = ToolUndoable_CanCharge(this,0.0);
      if (bVar3) {
        ToolUndoable_ApplyCharge(this,0.0);
      }
    }
    *pbVar1 = bVar3;
    if (bVar3 != false) {
      piVar4 = (int *)FUN_00d39060(this,sampleX,sampleZ,(void *)0x1);
      piVar4[3] = (int)targetHeight;
      FUN_00d223f0(this,piVar4,targetHeight,0.0,0.0,(uint *)&DAT_01190790,0,0,1);
      if ((*(byte *)(piVar4 + 5) & 1) == 0) {
        *(byte *)(piVar4 + 5) = *(byte *)(piVar4 + 5) | 1;
        local_8 = sampleX;
        local_4 = sampleZ;
        FUN_007def20((void *)((int)this + 0x110),&local_8);
      }
      return true;
    }
  }
  return false;
}


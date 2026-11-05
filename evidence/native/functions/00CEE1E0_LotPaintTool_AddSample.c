/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Selected actual add-call join: after original exposed-terrain/texel/strength admission, CEE1E0
   callsD244B0 with selected layer, raw samplex/z, bounded add alpha BYTE and literal
   otherDecrease1. The original sample/coordinate and floating strength operations here remain their
   own contracts; this annotation does not authorize a guessed port of
   pointer-shaped/packed-coordinate decompiler expressions.
   
   PC1.67 actual typed callback sample0/4
   signedquarter-gridindices,8texelbyte,4Cbrushpointer(strength20),50softnessFloat32,54fadeFloat32.
   MOVSS/MULSSs REINTERPRETfloat fields, notnumericcastsfromuintfields. Transferordered
   fade*softness*strength*texel; >=255sat; negative rejects; NaNunordered
   goesCVTTSS2SIindefinite80000000 thenLOWBYTE0 andstillcallsundoable.
   OriginalmaskedFPprofileassumed; no exceptionflagsemulation. Floor location clamps
   quarter-index*.25 to0..W/D, rounds/correctsremainder tofloor, stores SIGNEDBYTEtileX/Z,level0.
   BordervertexW/D isNOTclampedtolastinteriortile: boundsfails so no floorrefusal.
   ForboundedtileA8E090(maskF,checkFlags1) requiresALLnonzerorawpatternIDs ANDALLflagbits. It is not
   semanticresource-keyfloorclassification.
   Missinghostflaginputcannotbesilentlycalledoriginalcomplete. AftergatesD244B0 gets
   selectedlayer,x,z,alphaBYTE,literalotherDecrease1 andokoutF0.
   
   DECOMPILER LIMIT: genuine C renders COMISS/JC as ordinary f<255 and can hide that unorderedNaN
   ALSO takes conversion branch. Actual CF/PF branch behavior, not that C predicate's NaN semantics,
   establishes byte0. In recovered remove C, sample._0_1_ reuses the parameter STACK SLOT for alpha
   after its pointer is retained in EAX; it does not modify the sample object's first coordinate
   byte. Do not port that local/stack alias as an original object write. */

bool __thiscall LotPaintTool_AddSample(void *this,TerrainPaintSampleInput *sample)

{
  int iVar1;
  void *this_00;
  bool bVar2;
  float fVar3;
  char local_70;
  char local_6f;
  undefined1 local_6e;
  int local_6c;
  float local_68;
  float local_64;
  int local_60;
  float local_5c;
  float local_58;
  int local_54;
  float local_50 [19];
  
  if ((*(char *)((int)this + 0xf0) == '\0') || (sample->texel == 0)) {
    return false;
  }
  iVar1 = *(int *)((int)this + 0x34);
  local_5c = (float)sample->sampleX * 0.25;
  local_58 = (float)sample->sampleZ * 0.25;
  local_54 = 0;
  if (local_5c < 0.0) {
    local_5c = 0.0;
  }
  if ((float)*(int *)(iVar1 + 0x174) < local_5c) {
    local_5c = (float)*(int *)(iVar1 + 0x174);
  }
  if (local_58 < 0.0) {
    local_58 = 0.0;
  }
  if ((float)*(int *)(iVar1 + 0x178) < local_58) {
    local_58 = (float)*(int *)(iVar1 + 0x178);
  }
  if (0 < *(int *)(iVar1 + 0x17c)) {
    local_54 = *(int *)(iVar1 + 0x17c);
  }
  if (*(int *)(iVar1 + 0x180) < local_54) {
    local_54 = *(int *)(iVar1 + 0x180);
  }
  local_6c = (int)ROUND(local_58);
  local_68 = local_58 - (float)local_6c;
  local_6f = (char)local_6c + -1 + ((uint)local_68 < 0x80000001);
  local_60 = (int)ROUND(local_5c);
  local_64 = local_5c - (float)local_60;
  local_70 = (char)local_60 + -1 + ((uint)local_64 < 0x80000001);
  this_00 = *(void **)((int)this + 0x34);
  local_6e = 0;
  bVar2 = Lot_IsSignedTileInBounds(this_00,&local_70);
  if ((bVar2) &&
     (bVar2 = FloorManager_AllPatternParts(*(void **)((int)this_00 + 0x290),&local_70,0xf,true),
     bVar2)) {
    FUN_00ad6960(local_50,0xd7,*(int *)((int)this + 0x34),(undefined2 *)&local_70);
    FUN_00ad8570((void *)((int)this + 0x124),local_50);
    FUN_00ad70d0((int)local_50);
    return false;
  }
  fVar3 = sample->fade * sample->softness * sample->brush->strength * (float)sample->texel;
  if (fVar3 < 255.0) {
    if (fVar3 < 0.0) {
      return false;
    }
    local_60 = CONCAT31(local_60._1_3_,(char)(int)fVar3);
  }
  else {
    local_60 = CONCAT31(local_60._1_3_,0xff);
  }
  bVar2 = PaintUndoable_AddPaintAtSample
                    (*(void **)((int)this + 0x1b0),*(undefined **)((int)this + 0x34),
                     *(uint *)((int)this + 0x90),sample->sampleX,sample->sampleZ,(byte)local_60,1,
                     (bool *)((int)this + 0xf0));
  return bVar2;
}


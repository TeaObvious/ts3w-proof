/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall typed samplepointer RET4void. Imagewidth18/height1C unsigned. ComputesFloat32
   metresPerTexel=stampWidth/imageW;texelsPerCell=cell/metresPerTexel; profilehalfW/H;
   rotatedrectangle andspanquery. Profilevirtual10 supplies a borrowed data/rowPitch view; no
   acquisition/lock lifetime is established by its name. Perrow initialu/v orderedFloat32 then
   INCREMENT eachsample (u+=texelsPerCell*cos;v+=-texelsPerCell*sin); doNOTrecompute
   independentlyeachsample ifrequiringnativeaccumulation. Bothtexelconversions
   explicitlysaveCW/OR0C00/FISTP64/restoreCW,choptowardzero; low32coordinates
   comparedUNSIGNEDtoimageW/H beforeBYTEread. Actualoperationfunction pointer returnsAL;
   updateboundingboxONLYwhenALtrue. OrderedZrowsandXincreasing; no bilinearhere.
   CAWbilinearhostextensionmustbedistinctfromthisoriginalGamepath.
   ActualoriginalFSIN/FCOSandSSEorderedcorners preservedinfullListing;
   currentportablehosttrig/MathFprecision isprofile,separatenumericalacceptanceneeded.
   
   PHYSICAL CALL CLOSURE: D1924A ECX=profile, PUSH one outView pointer, callee cleans4 (no caller
   ADD). View0=data (D19258 read then54 cached; D19521 read),view4=rowPitch (D1951A read64
   thenIMULv). D19532 ECX=genericbrush,PUSH typedSample,calleecleans4; actual CEE1E0/CEE3D0
   bothRET4/ALBool. Localthiscall overrides close decompiler stack alias drift;
   originalinstructionsunchanged. The prior genuine C mixed old stacktemporaries and nonsensically
   multiplied imageW*imageH in halfextents; actual D1928D..CB computes
   H*metresPerTexel*resolution*.5 and resolution*width*.5. Use Listing where remaining localreuse
   obscures C,not literal localvariable guesses.
   
   FINAL ARITHMETIC: halfWidth=(Float32resolution*stampWidth)*.5;
   halfHeight=((Float32imageHeight*metresPerTexel)*resolution)*.5.
   Cornersordered(-hx,-hz),(-hx,+hz),(+hx,+hz),(+hx,-hz); x=u*cos-sin*v+gridX,z=u*sin+cos*v+gridZ
   using separateFloat32stages. Perrow dx=(from-gridX)*texelsPerCell,dz=(row-gridZ)*texelsPerCell;
   u=dz*sin+dx*cos+halfImageW;v=dz*cos-dx*sin+halfImageH,then incrementu/v evenwhenoutofimage
   orcallbackfalse. Getterview isborrowed; no lock acquisition/release inference.
   ActualnativeFPATAN/FSIN/FCOS versusportableMathFlibrarybitparity remainsoutside staticproof.
   Profiledecode/colorconversionC88D60 notclosedbythisrasterwork. */

void __thiscall TerrainBrush_RasterProfileRectangle(void *this,BrushRasterSample *sample)

{
  BrushRasterProfileImage *this_00;
  uint uVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  float10 fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  longlong lStack_880;
  float local_874;
  float local_870;
  float local_86c;
  uint local_868;
  float local_864;
  float local_860;
  float local_85c;
  float local_858;
  uint local_854;
  float fStack_850;
  float fStack_84c;
  uint local_848;
  float local_844;
  BrushRasterGrid *local_840;
  undefined *puStack_83c;
  float local_838;
  code *pcStack_834;
  BrushProfileReadView local_830;
  float fStack_828;
  float fStack_824;
  float fStack_820;
  float fStack_81c;
  float fStack_818;
  float fStack_814;
  float fStack_810;
  float fStack_80c;
  int aiStack_808 [256];
  int aiStack_408 [257];
  
  this_00 = sample->profile;
  local_854 = this_00->width;
  local_868 = this_00->height;
  local_874 = (float)(int)local_854;
  if ((int)local_854 < 0) {
    local_874 = local_874 + 4.2949673e+09;
  }
  local_838 = local_874 * 0.5;
  local_870 = (float)(int)local_868;
  if ((int)local_868 < 0) {
    local_870 = local_870 + 4.2949673e+09;
  }
  local_864 = sample->stampWidth;
  local_844 = local_870 * 0.5;
  local_86c = local_864 / local_874;
  fVar5 = (float10)fcos((float10)sample->angle);
  local_860 = *(float *)((int)this + 8) / local_86c;
  local_85c = (float)fVar5;
  fVar5 = (float10)fsin((float10)sample->angle);
  local_858 = (float)fVar5;
  local_848 = local_868;
  local_840 = this;
  (**(code **)(*(int *)this_00 + 0x10))(this_00,&local_830);
  fVar5 = (float10)fcos((float10)sample->angle);
  puStack_83c = local_830.data;
  fVar9 = (float)fVar5;
  fVar5 = (float10)fsin((float10)sample->angle);
  fVar12 = (float)fVar5;
  local_874 = (float)*(int *)((int)this + 0xc);
  if (*(int *)((int)this + 0xc) < 0) {
    local_874 = local_874 + 4.2949673e+09;
  }
  fVar6 = local_870 * local_86c * local_874 * 0.5;
  fVar11 = -0.0 - fVar6;
  fVar8 = local_874 * local_864 * 0.5;
  fVar10 = -0.0 - fVar8;
  fStack_810 = sample->gridX;
  fStack_80c = sample->gridZ;
  fStack_824 = fVar10 * fVar12 + fVar9 * fVar11 + fStack_80c;
  fStack_828 = (fVar10 * fVar9 - fVar12 * fVar11) + fStack_810;
  fVar7 = fVar6 * fVar12;
  fStack_820 = (fVar10 * fVar9 - fVar7) + fStack_810;
  fStack_81c = fVar10 * fVar12 + fVar6 * fVar9 + fStack_80c;
  fStack_814 = fVar6 * fVar9 + fVar8 * fVar12 + fStack_80c;
  lStack_880 = CONCAT44(lStack_880._4_4_,fVar7);
  fStack_818 = (fVar8 * fVar9 - fVar7) + fStack_810;
  fStack_810 = (fVar8 * fVar9 - fVar11 * fVar12) + fStack_810;
  fStack_80c = fVar11 * fVar9 + fVar8 * fVar12 + fStack_80c;
  TerrainBrush_ComputeRectangleSpans
            (this,&fStack_828,aiStack_808,aiStack_408,(int *)&lStack_880,(int *)&local_874);
  pcStack_834 = (code *)sample->operation;
  fStack_850 = local_85c * local_860;
  sample->minChangedZ = 0x7fffffff;
  sample->minChangedX = 0x7fffffff;
  fStack_84c = -0.0 - local_858 * local_860;
  sample->maxChangedZ = -0x80000000;
  sample->maxChangedX = -0x80000000;
  if ((int)(uint)lStack_880 <= (int)local_874) {
    local_864 = 0.0;
    iVar2 = (uint)lStack_880;
    fVar9 = local_860;
    fVar12 = local_85c;
    fVar6 = local_858;
    do {
      local_868 = *(int *)((int)aiStack_408 + (int)local_864);
      iVar3 = *(int *)((int)aiStack_808 + (int)local_864);
      if (iVar3 <= (int)local_868) {
        fVar7 = ((float)iVar2 - sample->gridZ) * fVar9;
        fVar9 = ((float)iVar3 - sample->gridX) * fVar9;
        local_870 = (fVar7 * fVar12 - fVar9 * fVar6) + local_844;
        local_86c = fVar7 * fVar6 + fVar9 * fVar12 + local_838;
        sample->sampleZ = iVar2;
        do {
          sample->sampleX = iVar3;
          lStack_880._0_4_ = (uint)(longlong)ROUND(local_86c);
          uVar1 = (uint)lStack_880;
          bVar4 = (uint)lStack_880 < local_854;
          lStack_880 = (longlong)ROUND(local_870);
          if ((bVar4) && ((uint)lStack_880 < local_848)) {
            sample->texel = puStack_83c[local_830.rowPitch * (uint)lStack_880 + uVar1];
            bVar4 = (*pcStack_834)(local_840,sample);
            if (bVar4) {
              if (iVar3 < sample->minChangedX) {
                sample->minChangedX = iVar3;
              }
              if (sample->maxChangedX < iVar3) {
                sample->maxChangedX = iVar3;
              }
              if (iVar2 < sample->minChangedZ) {
                sample->minChangedZ = iVar2;
              }
              if (sample->maxChangedZ < iVar2) {
                sample->maxChangedZ = iVar2;
              }
            }
          }
          local_86c = local_86c + fStack_850;
          local_870 = local_870 + fStack_84c;
          iVar3 = iVar3 + 1;
          fVar9 = local_860;
          fVar12 = local_85c;
          fVar6 = local_858;
        } while (iVar3 <= (int)local_868);
      }
      iVar2 = iVar2 + 1;
      local_864 = (float)((int)local_864 + 4);
    } while (iVar2 <= (int)local_874);
  }
  return;
}


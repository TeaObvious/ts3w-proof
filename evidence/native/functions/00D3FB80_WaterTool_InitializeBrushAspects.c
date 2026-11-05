/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 water-tool actual shared numericproducer closure: ECX,no stack/plainRETvoid. Width
   productaspect+1C*118A00 is scalarMULSS with NOpaint.25..20clamp. Softness118A14 uses EXACTsame
   orderedSSEresponse asCEE040 (5equality1,belowdelta*.2*3+1,above/unordered1-delta*.2*.75),
   storedtoolD8. Then loadsprofilethroughC88FF0, choosesoperation7D19070 andcursor shapeD190E0. This
   proves sharedsoftness butNOTsharedpaintwidthclamping or the imagecodecconversion.
   Profileconversion C88D60 and full raster path remain independent scopes. */

void __thiscall WaterTool_InitializeBrushAspects(void *this)

{
  int iVar1;
  undefined1 *puVar2;
  float fVar3;
  
  iVar1 = *(int *)((int)this + 400);
  *(int *)((int)this + 0xd4) = iVar1 + 0x90;
  *(float *)((int)this + 200) = *(float *)(iVar1 + 0xac) * _DAT_01192a00;
  if (DAT_01192a14 == 5.0) {
    fVar3 = 1.0;
  }
  else if (5.0 <= DAT_01192a14) {
    fVar3 = 1.0 - (DAT_01192a14 - 5.0) * 0.2 * 0.75;
  }
  else {
    fVar3 = (5.0 - DAT_01192a14) * 0.2 * 3.0 + 1.0;
  }
  *(float *)((int)this + 0xd8) = fVar3;
  ImageResource_LoadProfileSurface
            ((undefined *)(iVar1 + 0x98),true,(undefined *)((int)this + 0xd0),true);
  puVar2 = FUN_00d19070(7);
  *(undefined1 **)((int)this + 0xcc) = puVar2;
  TerrainBrush_SelectSquareCursorFromProfileKey(this,(undefined *)(*(int *)((int)this + 0xd4) + 8));
  return;
}


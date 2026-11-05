/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall lotpointer+pointpointerRET8void. StoreslotatC0;
   queriesactualLotLevelHeight_SampleLocalPosition,storesC4; angleAC0; copiespointFloat32XZinto
   A4/A8and9C/A0previouscurrent. Genericraster samplebase=this+88,soC0=sample38,AC=sample24.
   HostgenericBeginEpisode(point)owns onlyprevious/current/angle,not
   fullnativeToolWorldheight/context workflow; doNOTclaimwholeInitializeEpisodeAspects equivalent.
    */

void __thiscall
TerrainBrush_InitializeEpisodeAspects(void *this,undefined *lot,LotPaintPoint *point)

{
  float fVar1;
  float10 fVar2;
  
  *(undefined **)((int)this + 0xc0) = lot;
  fVar2 = LotLevelHeight_SampleLocalPosition(*(void **)(lot + 0x290),(LotXZLevel *)point);
  *(float *)((int)this + 0xc4) = (float)fVar2;
  *(undefined4 *)((int)this + 0xac) = 0;
  fVar1 = point->z;
  *(float *)((int)this + 0xa4) = point->x;
  *(float *)((int)this + 0xa8) = fVar1;
  *(undefined4 *)((int)this + 0x9c) = *(undefined4 *)((int)this + 0xa4);
  *(undefined4 *)((int)this + 0xa0) = *(undefined4 *)((int)this + 0xa8);
  return;
}


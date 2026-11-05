/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Selected actual erase consumer: first asksAEA6F0 across all maps; no paint returns success to
   caller without charge/mutation. Otherwise affordability gatesAF0290 and lot dirty notification.
   This scopes the mixing predicate; full native undo/price policy remains separate.
   
   No-paint branch returnsAL1 andsetsok1 WITHOUTcharge/capture/mutation. Withanyrawpaint,
   callsD23EC0 conditionalcharge, thenfirsttouchcapture/mix/lotdirtyonlyifsuccess. ResultALonly
   despite formeruintdecompiler. AnyPaintincludescliffrawmaps as separatelyverified. Noexposedfloor
   check in callerremove. */

bool __thiscall
PaintUndoable_DiminishPaintAtSample
          (void *this,undefined *lot,uint sampleX,uint sampleZ,byte decrease,bool *ok)

{
  bool bVar1;
  undefined1 uVar2;
  
  bVar1 = LotTerrain_HasAnyPaintAtSample(*(void **)((int)this + 0x54),sampleX,sampleZ);
  if (bVar1) {
    bVar1 = PaintUndoable_TryChargeSample(this);
    *ok = bVar1;
    uVar2 = 0;
    if (bVar1) {
      PaintUndoable_CaptureSampleBefore(this,sampleX,sampleZ);
      LotTerrain_DiminishPaintAtSample(*(void **)((int)this + 0x54),sampleX,sampleZ,decrease);
      FUN_00ab0940(lot,'\x01','\x01');
      uVar2 = *ok;
    }
    return (bool)uVar2;
  }
  *ok = true;
  return *ok;
}


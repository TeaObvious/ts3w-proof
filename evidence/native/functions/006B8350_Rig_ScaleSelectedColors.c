/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 local light rig contract. ECXrig+selection+stackfloat RET8.
   ScalesALLfourcolorlanes inprimaryslotsselection.first..3, thenALLfoursecondaryslots0..3
   irrespectivefirst; directionsunchanged. No clamping/admissionhere.
   ThisdiffersfromresponsewhichskipsfirstslotsinBOTHbanks. */

void __thiscall Rig_ScaleSelectedColors(void *this,Analyst_RigBankSelection *selection,float scale)

{
  uint uVar1;
  float *pfVar2;
  int iVar3;
  
  uVar1 = selection->firstPrimarySlot;
  if (uVar1 < 4) {
    pfVar2 = (float *)((uVar1 + 5) * 0x10 + (int)this);
    iVar3 = 4 - uVar1;
    do {
      *pfVar2 = scale * *pfVar2;
      pfVar2[1] = scale * pfVar2[1];
      pfVar2[2] = scale * pfVar2[2];
      pfVar2[3] = scale * pfVar2[3];
      pfVar2 = pfVar2 + 4;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  pfVar2 = (float *)((int)this + 0xd0);
  iVar3 = 4;
  do {
    *pfVar2 = *pfVar2 * scale;
    pfVar2[1] = pfVar2[1] * scale;
    pfVar2[2] = pfVar2[2] * scale;
    pfVar2[3] = pfVar2[3] * scale;
    pfVar2 = pfVar2 + 4;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  return;
}


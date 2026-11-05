/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static original. Physical ECX single room argument, ordinary RET, EAX UInt32 result;
   inferred fastcall does not introduce an EDX parameter. Reads signed Int32 owner+88 and owner+284
   plus room byte18. Nonzero owner classification or owner byte288!=1 yields0. Only admitted
   equality classification returns shared01159B00 (constructor initializes1or2). Field semantics
   beyond these exact inputs are not recovered. This is desired-state selection, not proof of a
   universal per-room fixedquality2. */

undefined4 __fastcall RoomLighting_GetDesiredQualityForOwnerState(int *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *param_1;
  iVar2 = *(int *)(iVar1 + 0x88);
  if (*(int *)(iVar1 + 0x284) < iVar2) {
    iVar2 = 2;
  }
  else if (((char)param_1[6] == '\0') || (-1 < iVar2)) {
    if ((iVar2 < *(int *)(iVar1 + 0x284)) && ((char)param_1[6] == '\0')) {
      iVar2 = 1;
    }
    else {
      iVar2 = 0;
    }
  }
  else {
    iVar2 = 2;
  }
  if ((*(char *)(iVar1 + 0x288) == '\x01') && (iVar2 == 0)) {
    return DAT_01159b00;
  }
  return 0;
}


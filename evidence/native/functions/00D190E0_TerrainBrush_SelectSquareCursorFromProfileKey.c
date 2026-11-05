/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscallECXbrush,one key16pointerRET4void; full16byte equality against five
   staticprofilekeys11EE970/980/990/9A0/9B0. Key isresource identity,NOTGUID meaning despite
   previous auto type. Setsbrushbyte20 to0/1,only cursor shape classification. Does NOT resample
   source or make ellipse/squaretexelgeometry. */

void __thiscall TerrainBrush_SelectSquareCursorFromProfileKey(void *this,undefined *profileKey)

{
  int iVar1;
  
  iVar1 = *(int *)profileKey;
  if ((((((iVar1 != DAT_011ee970) || (*(int *)(profileKey + 8) != DAT_011ee978)) ||
        (*(int *)(profileKey + 0xc) != DAT_011ee97c)) || (*(int *)(profileKey + 4) != DAT_011ee974))
      && (((iVar1 != DAT_011ee980 || (*(int *)(profileKey + 8) != DAT_011ee988)) ||
          ((*(int *)(profileKey + 0xc) != DAT_011ee98c || (*(int *)(profileKey + 4) != DAT_011ee984)
           ))))) &&
     (((iVar1 != DAT_011ee990 || (*(int *)(profileKey + 8) != DAT_011ee998)) ||
      ((*(int *)(profileKey + 0xc) != DAT_011ee99c || (*(int *)(profileKey + 4) != DAT_011ee994)))))
     ) {
    iVar1 = _AfxIsEqualGUID((_GUID *)profileKey,(_GUID *)&DAT_011ee9a0);
    if ((char)iVar1 == '\0') {
      iVar1 = _AfxIsEqualGUID((_GUID *)profileKey,(_GUID *)&DAT_011ee9b0);
      if ((char)iVar1 == '\0') {
        *(undefined1 *)((int)this + 0x20) = 0;
        return;
      }
    }
  }
  *(undefined1 *)((int)this + 0x20) = 1;
  return;
}


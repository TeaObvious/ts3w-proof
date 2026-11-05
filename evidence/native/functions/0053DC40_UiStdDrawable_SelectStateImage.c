/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; analyst-assigned name. Physical leaf reads two stack inputs, flags
   and eight-pointer array, RET8; ECX is unused. Low flags&7 select0 normal,1 disabled,2 hover,3
   active; other values return base array0. Selected bit8: normal uses4 if present; disabled uses5
   then unselected disabled1 then base0 (does NOT fall back to selected normal4). Hover uses6 then4
   then unselected hover2 then base0. Active uses7 then4 then unselected active3 then base0. No
   hover-to-active or final nonnormal fallback when base0 is null. Pointer presence alone decides,
   no allocation/retain/cache mutation. */

void * UiStdDrawable_SelectStateImage(uint stateBits,void **images)

{
  switch(stateBits & 7) {
  case 0:
    if (((stateBits & 8) != 0) && (images[4] != (void *)0x0)) {
      return images[4];
    }
    break;
  case 1:
    if (((stateBits & 8) != 0) && (images[5] != (void *)0x0)) {
      return images[5];
    }
    if (images[1] != (void *)0x0) {
      return images[1];
    }
    break;
  case 2:
    if ((stateBits & 8) != 0) {
      if (images[6] != (void *)0x0) {
        return images[6];
      }
      if (images[4] != (void *)0x0) {
        return images[4];
      }
    }
    if (images[2] != (void *)0x0) {
      return images[2];
    }
    break;
  case 3:
    if ((stateBits & 8) != 0) {
      if (images[7] != (void *)0x0) {
        return images[7];
      }
      if (images[4] != (void *)0x0) {
        return images[4];
      }
    }
    if (images[3] != (void *)0x0) {
      return images[3];
    }
  }
  return *images;
}


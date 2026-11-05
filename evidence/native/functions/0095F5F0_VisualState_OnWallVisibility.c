/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Registered at 0095FCF1 for object
   event13. cdecl(object,32-bit visibilityValue); full second DWORD!=0 becomes bool. Finds
   VisualState via dynamic component mask011EA2A8, then sets mask0x8 (bit3). Null object/missing
   component is accepted no-op; only AL=1 is defined at return. No mesh substitution occurs in this
   callback. */

bool __cdecl VisualState_OnWallVisibility(void *object,uint visibilityValue)

{
  void *this;
  
  if (object != (void *)0x0) {
    this = Object_GetComponentByMask(object,DAT_011ea2a8);
    if (this != (void *)0x0) {
      VisualState_SetOneBitFlag(this,8,visibilityValue != 0);
    }
  }
  return true;
}


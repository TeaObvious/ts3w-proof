/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 held footprint gate. ECX location, no stack args RET with x87 ST0. If byte2C bit10
   set, callsC89450 first (same ECX), then FLD FLOAT32 field28. No pointer-to-float numeric
   conversion, Atan2, matrix conversion or angle normalization in this body. Derived refresh
   producer/calculation and yaw range remain open. Scoped stack-only override for refresh omits
   actual ECX receiver, not a recovered stdcall source declaration. */

float __thiscall PlacementLocation_ReadYawWithRefresh(void *this)

{
  if ((*(byte *)((int)this + 0x2c) & 0x10) != 0) {
    FUN_00c89450();
  }
                    /* FLD DWORD retains stored yaw as floating value in ST0. ECX is a pointer, not
                       numeric float input. */
  return *(float *)((int)this + 0x28);
}


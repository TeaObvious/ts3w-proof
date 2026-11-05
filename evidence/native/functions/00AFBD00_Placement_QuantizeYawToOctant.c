/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placed footprint selector. cdecl FLOAT32 yaw stack word, RET caller cleanup; FULL
   EAX final0..7. DIVSS by original FLOAT32 bits3F490FDA (0.7853981256484985) at11845D4; store
   quotient to FLOAT32, FLD then FISTP signed32 USING INHERITED x87 rounding/exceptions. No local
   FLDCW or fixed nearest/ties policy. Signed remainder adjustment then final AND7; returned low3
   bits equal converted DWORD low3. Decompiled ROUND does not establish
   Math.Round/floor/ties-away-from-zero behavior. Global FPU setup, nonfinite/out-of-range exception
   configuration and caller yaw range remain open. */

uint __cdecl Placement_QuantizeYawToOctant(float yaw)

{
                    /* FISTP uses current x87 rounding-control/exception state; ROUND pseudocode is
                       not a recovered fixed rounding mode. */
  return (int)ROUND(yaw / DAT_011845d4) & 7;
}


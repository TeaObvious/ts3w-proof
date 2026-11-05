/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl AL. Requires
   equal nonzero vertex counts. Finds first vertex of A within squared-distance threshold from
   0x00f998e8 of a B vertex, then checks remaining vertices in matching cyclic forward order. Does
   not test reversed winding. Uses squared distances strictly below threshold. Lazy global cache at
   0x011d98d0. Pointer-typed counters are decompiler artifacts.
   
   PC1.67 original static instructions. cdecl2DWORDargs/RET; AL only. Important FIRST-match rule:
   once first B vertex within squared tolerance of A[0] is found at7CEA27, later cyclic mismatch
   at7CEA77 returnsfalse immediately7CEA8D. It does NOT resume outer search for another near
   starting vertex. Native float scalar sum order differs from arbitrary SIMD DistanceSquared
   reductions. Equal-count empty pair returnsfalse. Plain guarded global tolerance initialization is
   not a proved synchronization primitive. */

bool __cdecl Geometry_PolygonsEqualCyclicTolerance(undefined4 *param_1,undefined4 *param_2)

{
  float *pfVar1;
  float *pfVar2;
  uint uVar3;
  uint uVar4;
  float *pfVar5;
  uint uVar6;
  float fVar7;
  
  pfVar1 = (float *)*param_1;
  pfVar2 = (float *)*param_2;
  uVar6 = param_1[1] - (int)pfVar1 >> 3;
  uVar3 = param_2[1] - (int)pfVar2 >> 3;
  if (uVar6 == uVar3) {
    if ((_DAT_011d98d4 & 1) == 0) {
      _DAT_011d98d4 = _DAT_011d98d4 | 1;
      DAT_011d98d0 = 0.0001;
    }
    uVar4 = 0;
    if (uVar3 != 0) {
      pfVar5 = pfVar2;
      do {
        uVar4 = uVar4 + 1;
        if ((pfVar1[1] - pfVar5[1]) * (pfVar1[1] - pfVar5[1]) +
            (*pfVar1 - *pfVar5) * (*pfVar1 - *pfVar5) < DAT_011d98d0) {
          uVar3 = 1;
          if (1 < uVar6) {
            do {
              fVar7 = pfVar1[2] - pfVar2[(uVar4 % uVar6) * 2];
              if (DAT_011d98d0 <=
                  fVar7 * fVar7 +
                  (pfVar1[3] - pfVar2[(uVar4 % uVar6) * 2 + 1]) *
                  (pfVar1[3] - pfVar2[(uVar4 % uVar6) * 2 + 1])) {
                return false;
              }
              uVar3 = uVar3 + 1;
              uVar4 = uVar4 + 1;
              pfVar1 = pfVar1 + 2;
            } while (uVar3 < uVar6);
          }
          return true;
        }
        pfVar5 = pfVar5 + 2;
      } while (uVar4 < uVar3);
    }
  }
  return false;
}


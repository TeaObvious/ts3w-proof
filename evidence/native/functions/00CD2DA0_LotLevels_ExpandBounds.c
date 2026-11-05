/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. cdecl twoDWORDargs/ordinaryRET, lowAL boolean only. Null
   false. Signed candidate min/max with requested level; unchanged false. Lower expansion limited by
   opaque lot byte4BC: zero allows -4, nonzero -1. Upper expansion allows <=5; existing higher range
   is not reduced. Calls ACE0E0(min,max), then AL1 regardless of inferred child return. It neither
   adds1 itself nor infers highest wall; caller supplies requested level.
   
   PC 1.67, two cdecl stack words, plain RET, return Boolean in AL (upper EAX is not a full-width
   status). Null lot returns false. Signed requestedLevel expands current minimum at +17C or maximum
   at +180. Unchanged or rejected range returns false. A newly decreased minimum must be >= (lot
   byte +4BC != 0 ? -1 : -4); a newly increased maximum must be <=5. Bounds are conditional on
   actual expansion, not clamping of existing authored levels. Admitted path calls ACE0E0 using
   ECX=retained lot, then sets AL=1. No immutable revision objects or weak identity cache exist in
   this native path.
   
   Growth source closure: candidate bounds include existingmin/max before signed lower/upper tests;
   no-op returnsAL0. New lower branch alone reads4BC, newupper<=5. Retained lotowner thenACE0E0.
   Host immutable revision return/failure checks remain an adapter, not this Boolean ABI. */

bool __cdecl LotLevels_ExpandBounds(undefined *lot,int requestedLevel)

{
  int iVar1;
  int iVar2;
  int minimumLevel;
  
  if (lot == (undefined *)0x0) {
    return false;
  }
  iVar1 = *(int *)(lot + 0x17c);
  iVar2 = *(int *)(lot + 0x180);
  minimumLevel = requestedLevel;
  if (iVar1 <= requestedLevel) {
    minimumLevel = iVar1;
  }
  if (requestedLevel <= iVar2) {
    requestedLevel = iVar2;
  }
  if ((((minimumLevel != iVar1) || (iVar2 != requestedLevel)) &&
      ((iVar1 <= minimumLevel || ((int)((-(uint)(lot[0x4bc] != '\0') & 3) - 4) <= minimumLevel))))
     && ((requestedLevel <= iVar2 || (requestedLevel < 6)))) {
    LotLevels_ApplyRangeAndNotify(lot,minimumLevel,requestedLevel);
    return true;
  }
  return false;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. ECX=optimizer owner. If owner+68 nonnull, forwards to
   TerrainOptimizer_ReleaseVertices. It does not delete the optimizer owner or reset its
   budget/configuration fields. */

void __thiscall TerrainOptimizerOwner_ReleaseVertices(void *this)

{
  if (*(void **)((int)this + 0x68) != (void *)0x0) {
    TerrainOptimizer_ReleaseVertices(*(void **)((int)this + 0x68));
    return;
  }
  return;
}


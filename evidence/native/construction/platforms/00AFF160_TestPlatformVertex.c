/* Tests the four table-selected regions around a packed grid vertex, in iterator order. Each region
   uses strict mode 0; the first true AL ends the search. Analyst-assigned name; not an original EA
   symbol. */

int __cdecl TestPlatformVertex(void *param_1,undefined2 *param_2)

{
  uint3 uVar1;
  bool bVar2;
  uint3 extraout_var;
  char *pcVar3;
  undefined4 uVar4;
  uint3 extraout_var_00;
  int local_c [3];

  /* 00AFF169: The 12-byte invocation-local iterator holds the vertex and one borrowed scratch cell; no pointer escapes this traversal. */
  InitializeVertexRegionIterator(local_c,param_2);
  ResetVertexRegionIterator(local_c);
  bVar2 = IsVertexRegionIteratorAtEnd(local_c);
  uVar1 = extraout_var;
  while( true ) {
    /* 00AFF17F/00AFF1B6 call the end helper, whose XOR EAX,EAX / SETZ AL
       makes full EAX 0/1. The extraout_var projections below are decompiler
       uncertainty; the exhausted physical return clears AL and is EAX=0. */
    if (bVar2) {
      return (uint)uVar1 << 8;
    }
    pcVar3 = GetVertexRegionIteratorCell(local_c);
    /* 00AFF199: Strict mode 0: both selected quarters of this vertex-adjacent cell must produce a compatible product before the kind-5 platform check. */
    uVar4 = TestPlatformRegion(param_1,pcVar3,'\0');
    /* 00AFF1A5: Only AL is consumed from the region predicate. Upper EAX bits are not a general Boolean result. */
    if ((char)uVar4 != '\0') break;
    AdvanceVertexRegionIterator(local_c);
    bVar2 = IsVertexRegionIteratorAtEnd(local_c);
    uVar1 = extraout_var_00;
  }
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

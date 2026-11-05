/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX graph, stack+4 six-byte locator, RET4, EAX wall pointer or0. Signextends
   locator X/Z/level bytes into two Float32XZ+Int32level tuples; C41860 resolves each vertex. Walks
   first vertex+8 adjacency until null or back at first; C36010 opposite vertex equal second vertex
   returns current node+0C wall value immediately. No nearest/epsilon, same-pair union or global
   uniqueness count. Identical endpoint vertices are not rejected by this body; graph insertion
   validity/order remains separate. */

undefined4 __thiscall WallGraph_FindWallForPackedLocator(void *this,char *param_1)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  byte *pbVar4;
  float local_18;
  float local_14;
  int local_10;
  float local_c;
  float local_8;
  int local_4;
  
  local_18 = (float)(int)*param_1;
  local_10 = (int)param_1[2];
  local_14 = (float)(int)param_1[1];
  local_c = (float)(int)param_1[3];
  local_4 = (int)param_1[5];
  local_8 = (float)(int)param_1[4];
  iVar2 = WallGraph_FindVertexForCompactLocation(this,&local_18);
  if (iVar2 == 0) {
    return 0;
  }
  iVar3 = WallGraph_FindVertexForCompactLocation(this,&local_c);
  if ((iVar3 != 0) && (pbVar1 = *(byte **)(iVar2 + 8), pbVar4 = pbVar1, pbVar1 != (byte *)0x0)) {
    do {
      iVar2 = WallHalfEdge_ReadOppositeVertex(pbVar4);
      if (iVar2 == iVar3) {
        return *(undefined4 *)(pbVar4 + 0xc);
      }
      pbVar4 = *(byte **)(pbVar4 + 4);
    } while ((pbVar4 != (byte *)0x0) && (pbVar4 != pbVar1));
  }
  return 0;
}


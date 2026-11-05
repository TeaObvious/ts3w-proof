/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Adjusts16-byte comparator heap then calls push-heap
   helper00c5fb00. Signed priorities and indices; distanceSquared payload is copied, not compared.
    */

void __cdecl LotDetailScores_AdjustHeap(void *first,int top,int count,int hole,void *value)

{
  float *pfVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  int iVar8;
  
  do {
    iVar6 = hole * 2;
    iVar8 = iVar6 + 2;
    if (count <= iVar8) {
      if (iVar8 == count) {
        puVar7 = (undefined4 *)(iVar8 * 0x10 + -0x10 + (int)first);
        iVar8 = hole * 0x10;
        *(undefined4 *)(iVar8 + (int)first) = *puVar7;
        *(undefined4 *)((int)first + iVar8 + 4) = puVar7[1];
        *(undefined4 *)((int)first + iVar8 + 8) = puVar7[2];
        *(undefined4 *)((int)first + iVar8 + 0xc) = puVar7[3];
        hole = iVar6 + 1;
      }
      LotDetailScores_PushHeap(first,top,hole,value);
      return;
    }
    iVar5 = iVar8 * 0x10;
    iVar3 = *(int *)(iVar5 + 8 + (int)first);
    iVar4 = *(int *)(iVar5 + -8 + (int)first);
    if (iVar3 == iVar4) {
      fVar2 = *(float *)((int)first + iVar5 + -4);
      pfVar1 = (float *)((int)first + iVar5 + 0xc);
      if (*pfVar1 <= fVar2 && fVar2 != *pfVar1) goto LAB_00c61b4a;
    }
    else if (iVar4 < iVar3) {
LAB_00c61b4a:
      iVar8 = iVar6 + 1;
    }
    iVar6 = iVar8 * 0x10;
    puVar7 = (undefined4 *)(hole * 0x10 + (int)first);
    *puVar7 = *(undefined4 *)(iVar6 + (int)first);
    puVar7[1] = *(undefined4 *)((int)first + iVar6 + 4);
    puVar7[2] = *(undefined4 *)((int)first + iVar6 + 8);
    puVar7[3] = *(undefined4 *)((int)first + iVar6 + 0xc);
    hole = iVar8;
  } while( true );
}


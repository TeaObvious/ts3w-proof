/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 STATIC ORIGINAL ABI. ECX owns ordered set; three stack DWORDs are result pointer,
   descriptor pointer and ignored word, RET0C. Both callers push all3; previous
   two-explicit-argument decompilation omitted ignored third. Result receives node pointer plus
   insertion byte at+4. Signed packed endpoint/level byte ordering precedes descriptor level/float
   terms; B3D3D0 supplies final comparison before reuse versus B3F4A0 insertion. Retains native
   descriptor identity, not maximal collinear union. Float comparisons and allocation/tree balancing
   child behavior are not simplified here. */

void __thiscall
WallEdgeSet_InsertUnique(void *this,dword *insertResult,void *edgeDescriptor,dword ignored)

{
  char cVar1;
  char cVar2;
  char cVar3;
  int *piVar4;
  void *pvVar5;
  int *piVar6;
  undefined4 uVar7;
  bool bVar8;
  bool bVar9;
  
  pvVar5 = edgeDescriptor;
  bVar8 = true;
  piVar6 = *(int **)((int)this + 0xc);
  piVar4 = (int *)((int)this + 4);
  while (piVar6 != (int *)0x0) {
    cVar1 = *(char *)((int)piVar6 + 0x12);
    cVar2 = *(char *)((int)edgeDescriptor + 2);
    bVar9 = SBORROW1(cVar2,cVar1);
    bVar8 = (char)(cVar2 - cVar1) < '\0';
    if (cVar2 == cVar1) {
      if ((*(char *)edgeDescriptor == (char)piVar6[4]) &&
         (*(char *)((int)edgeDescriptor + 1) == *(char *)((int)piVar6 + 0x11))) {
        cVar2 = *(char *)((int)edgeDescriptor + 5);
        cVar3 = *(char *)((int)piVar6 + 0x15);
        bVar9 = SBORROW1(cVar2,cVar3);
        bVar8 = (char)(cVar2 - cVar3) < '\0';
        if (cVar2 == cVar3) {
          cVar2 = *(char *)((int)edgeDescriptor + 3);
          cVar3 = *(char *)((int)piVar6 + 0x13);
          bVar9 = SBORROW1(cVar2,cVar3);
          bVar8 = (char)(cVar2 - cVar3) < '\0';
          if (cVar2 == cVar3) {
            bVar9 = SBORROW1(*(char *)((int)edgeDescriptor + 4),(char)piVar6[5]);
            bVar8 = (char)(*(char *)((int)edgeDescriptor + 4) - (char)piVar6[5]) < '\0';
          }
        }
      }
      else {
        bVar9 = SBORROW1(cVar2,cVar1);
        bVar8 = (char)(cVar2 - cVar1) < '\0';
        if (cVar2 == cVar1) {
          cVar2 = *(char *)edgeDescriptor;
          cVar3 = (char)piVar6[4];
          bVar9 = SBORROW1(cVar2,cVar3);
          bVar8 = (char)(cVar2 - cVar3) < '\0';
          if (cVar2 == cVar3) {
            bVar9 = SBORROW1(*(char *)((int)edgeDescriptor + 1),*(char *)((int)piVar6 + 0x11));
            bVar8 = (char)(*(char *)((int)edgeDescriptor + 1) - *(char *)((int)piVar6 + 0x11)) <
                    '\0';
          }
        }
      }
    }
    if (bVar9 != bVar8) goto LAB_00b3f828;
    cVar2 = *(char *)((int)edgeDescriptor + 2);
    bVar9 = SBORROW1(cVar1,cVar2);
    bVar8 = (char)(cVar1 - cVar2) < '\0';
    if (cVar1 == cVar2) {
      if (((char)piVar6[4] == *(char *)edgeDescriptor) &&
         (*(char *)((int)piVar6 + 0x11) == *(char *)((int)edgeDescriptor + 1))) {
        cVar1 = *(char *)((int)piVar6 + 0x15);
        cVar2 = *(char *)((int)edgeDescriptor + 5);
        bVar9 = SBORROW1(cVar1,cVar2);
        bVar8 = (char)(cVar1 - cVar2) < '\0';
        if (cVar1 == cVar2) {
          cVar1 = *(char *)((int)piVar6 + 0x13);
          cVar2 = *(char *)((int)edgeDescriptor + 3);
          bVar9 = SBORROW1(cVar1,cVar2);
          bVar8 = (char)(cVar1 - cVar2) < '\0';
          if (cVar1 == cVar2) {
            bVar9 = SBORROW1((char)piVar6[5],*(char *)((int)edgeDescriptor + 4));
            bVar8 = (char)((char)piVar6[5] - *(char *)((int)edgeDescriptor + 4)) < '\0';
          }
        }
      }
      else {
        bVar9 = SBORROW1(cVar1,cVar2);
        bVar8 = (char)(cVar1 - cVar2) < '\0';
        if (cVar1 == cVar2) {
          cVar1 = (char)piVar6[4];
          cVar2 = *(char *)edgeDescriptor;
          bVar9 = SBORROW1(cVar1,cVar2);
          bVar8 = (char)(cVar1 - cVar2) < '\0';
          if (cVar1 == cVar2) {
            bVar9 = SBORROW1(*(char *)((int)piVar6 + 0x11),*(char *)((int)edgeDescriptor + 1));
            bVar8 = (char)(*(char *)((int)piVar6 + 0x11) - *(char *)((int)edgeDescriptor + 1)) <
                    '\0';
          }
        }
      }
    }
    if (bVar9 == bVar8) {
      if (*(int *)((int)edgeDescriptor + 0x10) == piVar6[8]) {
        if (*(float *)((int)edgeDescriptor + 8) == (float)piVar6[6]) {
          if ((float)piVar6[7] < *(float *)((int)edgeDescriptor + 0xc) ||
              (float)piVar6[7] == *(float *)((int)edgeDescriptor + 0xc)) {
            bVar8 = false;
            goto LAB_00b3f82a;
          }
        }
        else if ((float)piVar6[6] <= *(float *)((int)edgeDescriptor + 8)) goto LAB_00b3f80c;
      }
      else if (piVar6[8] <= *(int *)((int)edgeDescriptor + 0x10)) goto LAB_00b3f80c;
LAB_00b3f828:
      bVar8 = true;
    }
    else {
LAB_00b3f80c:
      bVar8 = false;
    }
LAB_00b3f82a:
    piVar4 = piVar6;
    if (bVar8) {
      piVar6 = (int *)piVar6[1];
    }
    else {
      piVar6 = (int *)*piVar6;
    }
  }
  piVar6 = piVar4;
  if (bVar8) {
    if (piVar4 == *(int **)((int)this + 8)) goto LAB_00b3f883;
    piVar6 = FUN_004e1070(piVar4);
  }
  uVar7 = FUN_00b3d3d0((char *)(piVar6 + 4),pvVar5);
  if ((char)uVar7 == '\0') {
    *insertResult = (dword)piVar6;
    *(undefined1 *)(insertResult + 1) = 0;
    return;
  }
LAB_00b3f883:
  FUN_00b3f4a0(this,&edgeDescriptor,piVar4,pvVar5,'\0');
  *insertResult = (dword)edgeDescriptor;
  *(undefined1 *)(insertResult + 1) = 1;
  return;
}


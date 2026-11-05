/* Inserts a signed three-byte X/Z/level location into the sorted location container only if absent.
   Ordering is level, X, Z; the quarter mask is not part of the key. ECX container, output result
   pointer, input location; RET 8. Analyst-assigned name. */

int * __thiscall InsertUniqueCellLocation(void *this,int *param_1,char *param_2)

{
  char cVar1;
  char cVar2;
  char *pcVar3;
  char *pcVar4;
  int iVar5;
  bool bVar6;
  bool bVar7;

  pcVar3 = *(char **)((int)this + 4);
  /* 00AD1936: Lower bound compares signed bytes in level/X/Z order. The extra comparator byte supplied by the caller is not consumed by AD0DB0. */
  pcVar4 = FUN_00ad0db0(*(char **)this,(int)pcVar3,param_2);
  if (pcVar4 != pcVar3) {
    /* 00AD1942: Lower bound reverse signed comparison distinguishes absence from equality. An equal location reports the existing entry pointer via output+0 and inserted=false via output+4; EAX returns the caller-owned result buffer; no duplicate append. */
    cVar1 = param_2[2];
    cVar2 = pcVar4[2];
    bVar7 = SBORROW1(cVar1,cVar2);
    bVar6 = (char)(cVar1 - cVar2) < '\0';
    if (cVar1 == cVar2) {
      cVar1 = *param_2;
      cVar2 = *pcVar4;
      bVar7 = SBORROW1(cVar1,cVar2);
      bVar6 = (char)(cVar1 - cVar2) < '\0';
      if (cVar1 == cVar2) {
        bVar7 = SBORROW1(param_2[1],pcVar4[1]);
        bVar6 = (char)(param_2[1] - pcVar4[1]) < '\0';
      }
    }
    if (bVar7 == bVar6) {
      *param_1 = (int)pcVar4;
      *(undefined1 *)(param_1 + 1) = 0;
      return param_1;
    }
  }
  /* 00AD1973: Missing key calls A90280 to insert at lower_bound, then writes the resulting borrowed entry pointer to output+0 and inserted=true to output+4. EAX returns the caller-owned output buffer, not the entry; capacity/reallocation/failure policy belongs to A90280. */
  iVar5 = FUN_00a90280(this,(undefined2 *)pcVar4,(undefined2 *)param_2);
  *param_1 = iVar5;
  *(undefined1 *)(param_1 + 1) = 1;
  return param_1;
}

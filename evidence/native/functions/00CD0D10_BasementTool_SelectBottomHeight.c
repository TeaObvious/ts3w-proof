/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: ECX tool, one position pointer stack input, RET4; ST0 result.
   Modes0/1 try the prior negative layer via A76B50/ACFD90/77D7E0, otherwise sampled height minus
   exact3.0. Other modes retain current height. Decompiled pointer/int overlays are
   compact-coordinate temporaries, not semantic pointer arithmetic. */

float10 __thiscall BasementTool_SelectBottomHeight(void *param_1,float *param_2)

{
  void *this;
  float *pfVar1;
  undefined4 uVar2;
  float10 fVar3;
  undefined1 local_c;
  
  pfVar1 = param_2;
  fVar3 = LotLevelHeight_SampleLocalPosition
                    (*(void **)(*(int *)((int)param_1 + 0xc) + 0x290),(LotXZLevel *)param_2);
  if ((*(int *)((int)param_1 + 0x60) == 0) || (*(int *)((int)param_1 + 0x60) == 1)) {
    if (*(int *)(*(int *)((int)param_1 + 0xc) + 0x17c) < (int)pfVar1[2]) {
      local_c = (undefined1)(int)ROUND(*pfVar1);
      this = *(void **)((int)param_1 + 0xc);
      param_2._3_1_ = (undefined1)((uint)(float)fVar3 >> 0x18);
      param_2._0_3_ =
           CONCAT12(*(char *)(pfVar1 + 2) + -1,CONCAT11((char)(int)ROUND(pfVar1[1]),local_c));
      uVar2 = FUN_00a76b50(this,(char *)&param_2);
      if ((char)uVar2 != '\0') {
        uVar2 = FUN_00acfd90(this,(undefined2 *)&param_2);
        if ((char)uVar2 != '\0') {
          fVar3 = FUN_0077d7e0(*(void **)((int)param_1 + 0xc),(char *)&param_2);
          return fVar3;
        }
      }
    }
    fVar3 = (float10)((float)fVar3 - 3.0);
  }
  return fVar3;
}


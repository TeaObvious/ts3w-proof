/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ShaderSet_GetParameterInfo. Export ordinal(s):
   2309. Entry VA: 0x1098f990. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060003C2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl ShaderSet_GetParameterInfo(void *param_1,int *param_2,int param_3)

{
  int iVar1;
  undefined2 *puVar2;
  float10 fVar3;
  
                    /* 0x98f990  2309  ShaderSet_GetParameterInfo */
  iVar1 = FUN_105932c0(param_1,param_3);
  param_2[1] = iVar1;
  iVar1 = FUN_105932e0(param_1,param_3);
  *param_2 = iVar1;
  fVar3 = FUN_10593340((int)param_1,param_3);
  param_2[5] = (int)(float)fVar3;
  fVar3 = FUN_10593380((int)param_1,param_3);
  param_2[6] = (int)(float)fVar3;
  fVar3 = FUN_105933c0((int)param_1,param_3);
  param_2[7] = (int)(float)fVar3;
  puVar2 = FUN_10593430(param_1,param_3);
  param_2[2] = (int)puVar2;
  puVar2 = FUN_10593460(param_1,param_3);
  param_2[3] = (int)puVar2;
  iVar1 = FUN_10593400(param_1,param_3);
  param_2[4] = iVar1;
  return;
}


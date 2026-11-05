/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationClip_GetIkNamespace. Export ordinal(s):
   1629. Entry VA: 0x10980670. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000335. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

char * __cdecl AnimationClip_GetIkNamespace(undefined4 *param_1)

{
  char cVar1;
  int *piVar2;
  char *pcVar3;
  int *unaff_ESI;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x980670  1629  AnimationClip_GetIkNamespace */
  local_10 = param_1[2];
  local_c = param_1[3];
  local_4 = param_1[1];
  local_8 = *param_1;
  param_1 = (undefined4 *)0x0;
  piVar2 = (int *)FUN_108e50d0();
  cVar1 = (**(code **)(*piVar2 + 0xc))(&local_10,&param_1,0,0,0,0);
  if (cVar1 != '\0') {
    pcVar3 = (char *)FUN_10376ff0(unaff_ESI,local_10);
    (**(code **)(*unaff_ESI + 4))();
    return pcVar3;
  }
  return "invalid";
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_LoadXMLStr. Export ordinal(s): 2034.
   Entry VA: 0x1098a190. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008AA;
   Sims3Metadata:0x06000480. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

char * __cdecl
ResourceMgr_LoadXMLStr(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  char cVar2;
  int *piVar3;
  uint uVar4;
  char *_Dst;
  int *piVar5;
  undefined1 *puStack_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98a190  2034  ResourceMgr_LoadXMLStr */
  local_8 = param_1;
  local_4 = param_2;
  local_10 = param_3;
  local_c = param_4;
  puStack_14 = (undefined1 *)0x1098a1b7;
  piVar3 = (int *)FUN_108e50d0();
  puStack_14 = (undefined1 *)&local_10;
  piVar3 = (int *)(**(code **)(*piVar3 + 0x44))();
  if (piVar3 != (int *)0x0) {
    piVar5 = (int *)&DAT_00000006;
    cVar2 = (**(code **)(*piVar3 + 0x34))(&puStack_14,&stack0x00000000,1,6,1);
    if (cVar2 != '\0') {
      piVar3 = (int *)(**(code **)(_DAT_00000000 + 0x18))();
      uVar4 = (**(code **)(*piVar3 + 0x1c))();
      if (uVar4 == 0) {
        return (char *)0x0;
      }
      _Dst = LocalAlloc(0,uVar4 + 1);
      (**(code **)(*piVar3 + 0x30))(_Dst,uVar4);
      _Dst[uVar4] = '\0';
      if ((((3 < uVar4) && (*_Dst == -0x11)) && (_Dst[1] == -0x45)) && (_Dst[2] == -0x41)) {
        memmove(_Dst,_Dst + 3,uVar4 - 3);
        pcVar1 = _Dst + (uVar4 - 3);
        pcVar1[0] = '\0';
        pcVar1[1] = '\0';
        pcVar1[2] = '\0';
      }
      (**(code **)(*piVar5 + 0x20))();
      (**(code **)(*piVar5 + 8))();
      return _Dst;
    }
  }
  return (char *)0x0;
}


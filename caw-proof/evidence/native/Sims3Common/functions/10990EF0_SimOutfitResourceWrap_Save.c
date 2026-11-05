/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimOutfitResourceWrap_Save. Export ordinal(s):
   2384. Entry VA: 0x10990ef0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000384. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl SimOutfitResourceWrap_Save(int *param_1,uint param_2,char *param_3,wchar_t *param_4)

{
  bool bVar1;
  undefined4 *****pppppuVar2;
  int iVar3;
  
                    /* 0x990ef0  2384  SimOutfitResourceWrap_Save */
  pppppuVar2 = ResourceMgr_OpenDirectory(param_2,param_3,3);
  if (pppppuVar2 == (undefined4 *****)0xffffffff) {
    return false;
  }
  if (param_1 == (int *)0x0) {
    iVar3 = 0;
  }
  else {
    iVar3 = (**(code **)(*param_1 + 0xc))(0x2269ed1);
  }
  bVar1 = FUN_1098a900(iVar3,pppppuVar2,param_4,0x25ed6f4,0);
  return bVar1;
}


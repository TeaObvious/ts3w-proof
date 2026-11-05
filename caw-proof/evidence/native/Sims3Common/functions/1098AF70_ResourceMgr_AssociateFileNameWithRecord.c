/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_AssociateFileNameWithRecord. Export
   ordinal(s): 2013. Entry VA: 0x1098af70. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060008A3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl ResourceMgr_AssociateFileNameWithRecord(undefined4 param_1,ushort *param_2)

{
  int *this;
  void *pvVar1;
  undefined1 uVar2;
  int iVar3;
  int local_8 [2];
  
                    /* 0x98af70  2013  ResourceMgr_AssociateFileNameWithRecord */
  pvVar1 = DAT_10cb8078;
  FUN_106a8410(DAT_10cb8078,local_8,&param_1);
  if (local_8[0] != *(int *)(*(int *)((int)pvVar1 + 4) + *(int *)((int)pvVar1 + 8) * 4)) {
    this = *(int **)(local_8[0] + 4);
    iVar3 = (**(code **)(*this + 0xc))();
    if (iVar3 == 0x34728492) {
      uVar2 = FUN_108dc310(this,param_2,(uint *)0x0);
      return uVar2;
    }
  }
  return 0;
}


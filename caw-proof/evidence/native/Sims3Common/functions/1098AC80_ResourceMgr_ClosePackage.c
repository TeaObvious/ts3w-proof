/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_ClosePackage. Export ordinal(s):
   2015. Entry VA: 0x1098ac80. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000894. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: Original CSHostWrap ResourceMgr.ClosePackage calls this
   with one uint database ID; DatabaseHandle.Dispose invokes that managed wrapper. EAX is normalized
   to0/1 from the manager operation; the apparent void-parameter/bool decompiler signature does not
   describe the original managed declaration. Looks up the owned ID, holds a temporary database
   reference while erasing the ID map, flushes writable DBPF type2A43BD44 via108DFB50, removes that
   database through manager vtable+34, and releases the held reference. Missing manager/ID returns0.
   Closure is database-scoped, not a global cache clear. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

uint __cdecl ResourceMgr_ClosePackage(uint databaseId)

{
  int *piVar1;
  void *pvVar2;
  char cVar3;
  int *piVar4;
  int iVar5;
  uint uVar6;
  int local_8;
  int *local_4;
  
                    /* 0x98ac80  2015  ResourceMgr_ClosePackage */
  piVar4 = (int *)FUN_108e50d0();
  pvVar2 = DAT_10cb8078;
  if (piVar4 != (int *)0x0) {
    FUN_106a8410(DAT_10cb8078,&local_8,&databaseId);
    if (local_8 != *(int *)(*(int *)((int)pvVar2 + 4) + *(int *)((int)pvVar2 + 8) * 4)) {
      piVar1 = *(int **)(local_8 + 4);
      if (piVar1 != (int *)0x0) {
        (**(code **)piVar1[1])();
      }
      FUN_1005db40(DAT_10cb8078,&local_8,local_8,local_4);
      iVar5 = (**(code **)(*piVar1 + 0xc))();
      if (iVar5 == 0x2a43bd44) {
        uVar6 = (**(code **)(*piVar1 + 0x20))();
        if ((uVar6 & 2) != 0) {
          FUN_108dfb50(piVar1);
        }
      }
      (**(code **)(piVar1[1] + 4))();
      cVar3 = (**(code **)(*piVar4 + 0x34))(0,piVar1,0);
      (**(code **)(piVar1[1] + 4))();
      return (uint)(cVar3 != '\0');
    }
  }
  return 0;
}


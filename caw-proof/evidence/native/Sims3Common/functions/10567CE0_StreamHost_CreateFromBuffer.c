/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_CreateFromBuffer. Export ordinal(s):
   2448. Entry VA: 0x10567ce0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F40. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl StreamHost_CreateFromBuffer(void *param_1)

{
  char cVar1;
  int *piVar2;
  void *pvVar3;
  int iVar4;
  undefined4 unaff_ESI;
  void *_Src;
  undefined1 local_4 [4];
  
                    /* 0x567ce0  2448  StreamHost_CreateFromBuffer */
  _Src = param_1;
  if (param_1 != (void *)0x0) {
    piVar2 = (int *)FUN_1055b120();
    (**(code **)(*piVar2 + 0x70))(_Src,local_4);
    pvVar3 = (void *)FUN_10918eb0(0x2c,"Scripting/MemoryStream",0);
    if (pvVar3 != (void *)0x0) {
      piVar2 = FUN_10914090(pvVar3,0,0,0);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
        FUN_10913a70(piVar2,1,1.0);
        cVar1 = (**(code **)(*piVar2 + 0x20))(unaff_ESI);
        if (cVar1 != '\0') {
          if (piVar2[1] == 0) {
            pvVar3 = (void *)0x0;
          }
          else {
            pvVar3 = *(void **)(piVar2[1] + 8);
          }
          memcpy(pvVar3,_Src,(size_t)&param_1);
          FUN_10913a70(piVar2,1,0.0);
          iVar4 = FUN_105672b0(piVar2);
          (**(code **)(*piVar2 + 8))();
          return iVar4;
        }
        (**(code **)(*piVar2 + 8))();
      }
    }
  }
  return 0;
}


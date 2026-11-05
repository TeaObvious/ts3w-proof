/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_Flush. Export ordinal(s): 1676. Entry VA:
   0x1097d7f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009BE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void App3D_Flush(void)

{
  char cVar1;
  void *this;
  undefined4 uVar2;
  
                    /* 0x97d7f0  1676  App3D_Flush */
  this = (void *)FUN_104de3a0();
  if (this != (void *)0x0) {
    uVar2 = FUN_104e9780(this,0xffffffff,'\0',(int *)0x0,0);
    cVar1 = (char)uVar2;
    while (cVar1 != '\0') {
      FUN_10386aa0(0,0);
      FUN_1038e3e0(&DAT_10c72638);
      uVar2 = FUN_104e9780(this,0xffffffff,'\0',(int *)0x0,0);
      cVar1 = (char)uVar2;
    }
  }
  return;
}


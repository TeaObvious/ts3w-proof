/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Opens a reader for the first database resource of the
   requested type through 0x105CC150, preserving reader success at +14 and obtaining its stream
   through resource virtual +18. This overload does not supply a fixed instance/group key.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

undefined1 __thiscall CAW_ResourceReaderOpenFirstOfType(void *this,uint param_1)

{
  byte *pbVar1;
  bool bVar2;
  int *piVar3;
  uint uVar4;
  undefined4 uVar5;
  
  bVar2 = CAW_DatabaseOpenFirstResourceOfType(*(int **)this,param_1,(void **)((int)this + 4));
  pbVar1 = (byte *)((int)this + 0x14);
  *pbVar1 = *pbVar1 & bVar2;
  if (*pbVar1 != 0) {
    piVar3 = (int *)(**(code **)(*(int *)*(void **)((int)this + 4) + 0x18))();
    *(int **)((int)this + 8) = piVar3;
    if (piVar3 != (int *)0x0) {
      uVar4 = (**(code **)(*piVar3 + 0x10))();
      if ((uVar4 & 2) == 0) {
        uVar5 = (**(code **)(**(int **)((int)this + 8) + 0x1c))();
        *(undefined4 *)((int)this + 0xc) = uVar5;
        *(undefined1 *)((int)this + 0x15) = 1;
      }
    }
  }
  return *(undefined1 *)((int)this + 0x14);
}


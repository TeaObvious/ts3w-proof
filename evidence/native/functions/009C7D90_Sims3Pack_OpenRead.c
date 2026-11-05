/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. ECX container, RET4 wide path, AL Boolean. Actual
   entry009C7D90;009C7DD0 is interior. Require mode bit1 and existing path, create file stream,
   open(1,3,1,0), create manifest memory stream and invoke header-copy in manifest-only mode. Store
   current source position as payload base+118, parse manifest, then set open byte+114. Selected
   failures close/release source; full teardown and allocation failure policy unresolved. */

bool __thiscall Sims3Pack_OpenRead(void *this,void *widePath)

{
  int *this_00;
  undefined4 *this_01;
  char cVar1;
  bool bVar2;
  uint uVar3;
  void *pvVar4;
  int *piVar5;
  undefined4 uVar6;
  
  if ((*(byte *)((int)this + 0xb4) & 1) == 0) {
    return false;
  }
  if (widePath != (void *)0x0) {
    uVar3 = FUN_004dbd70(widePath);
    if ((char)uVar3 != '\0') {
      pvVar4 = (void *)FUN_004e4500(0x228,"Scratch/DownloadContent/Sims3PackFile/ReadStream",0);
      if (pvVar4 == (void *)0x0) {
        piVar5 = (int *)0x0;
      }
      else {
        piVar5 = FileReadStream_Construct(pvVar4,widePath);
      }
      this_00 = (int *)((int)this + 0x110);
      FUN_007c8ed0(this_00,piVar5);
      if ((int *)*this_00 != (int *)0x0) {
        cVar1 = (**(code **)(*(int *)*this_00 + 0x4c))(1,3,1,0);
        if (cVar1 != '\0') {
          pvVar4 = (void *)FUN_004e4500(0x2c,"Scratch/DownloadContent/Sims3Pack/mpManifestStream",0)
          ;
          if (pvVar4 == (void *)0x0) {
            piVar5 = (int *)0x0;
          }
          else {
            piVar5 = FUN_004df460(pvVar4,0,0,0);
          }
          this_01 = (undefined4 *)((int)this + 0x11c);
          FUN_007c8ed0(this_01,piVar5);
          FUN_004dee40((void *)*this_01,1,1.0);
          bVar2 = Sims3Pack_CopyHeaderAndManifest((void *)*this_00,(void *)*this_01,1);
          if (!bVar2) {
            (**(code **)(*(int *)*this_00 + 0x18))();
            piVar5 = (int *)*this_00;
            if (piVar5 != (int *)0x0) {
              *this_00 = 0;
              (**(code **)(*piVar5 + 8))();
            }
            return false;
          }
          uVar6 = (**(code **)(*(int *)*this_00 + 0x24))(0);
          *(undefined4 *)((int)this + 0x118) = uVar6;
          cVar1 = Sims3Pack_ParseManifestXml((int)this);
          if (cVar1 == '\0') {
            (**(code **)(*(int *)*this_00 + 0x18))();
            return false;
          }
          *(undefined1 *)((int)this + 0x114) = 1;
          return true;
        }
        piVar5 = (int *)*this_00;
        if (piVar5 != (int *)0x0) {
          *this_00 = 0;
          (**(code **)(*piVar5 + 8))();
        }
      }
    }
  }
  return false;
}


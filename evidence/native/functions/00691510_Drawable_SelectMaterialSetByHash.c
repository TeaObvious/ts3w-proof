/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX drawable; UInt32 hash and parameter-context pointer, RET8,
   void. Queries current material resource+2C virtual+C for interface0202F7D5 and retains/stores it
   atdrawable+34. Interface virtual+28 selects hash; false releases temporary result then virtual+14
   supplies default. Acquires selected MATD material using6CAEC0 and current selector6CAF60; only
   ALsuccess rebinds via691400 then68FE00. Missing interface/result/acquire failure leaves previous
   effective material. No vertex/index range or geometry-state lookup. */

void __thiscall
Drawable_SelectMaterialSetByHash(void *this,uint materialHash,void *parameterContext)

{
  int *piVar1;
  int *this_00;
  bool bVar2;
  undefined4 *this_01;
  uint selector;
  int *local_4;
  
  piVar1 = *(int **)((int)this + 0x2c);
  if (piVar1 != (int *)0x0) {
    local_4 = this;
    this_01 = (**(code **)(*piVar1 + 0xc))(piVar1,0x202f7d5);
    if (this_01 != (undefined4 *)0x0) {
      (**(code **)*this_01)(this_01);
      piVar1 = *(int **)((int)this + 0x34);
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))(piVar1);
      }
      *(undefined4 **)((int)this + 0x34) = this_01;
    }
  }
  piVar1 = *(int **)((int)this + 0x34);
  if (piVar1 != (int *)0x0) {
    local_4 = (int *)0x0;
    bVar2 = (**(code **)(*piVar1 + 0x28))(piVar1,materialHash,&local_4);
    this_00 = local_4;
    if (!bVar2) {
      if (local_4 != (int *)0x0) {
        local_4 = (int *)0x0;
        (**(code **)(*this_00 + 4))(this_00);
      }
      (**(code **)(*piVar1 + 0x14))(piVar1,&local_4);
    }
    piVar1 = local_4;
    if (local_4 != (int *)0x0) {
      materialHash = 0;
      selector = FUN_006caf60();
      bVar2 = MaterialDef_AcquireMaterial(piVar1,(void **)&materialHash,selector);
      if (bVar2) {
        Drawable_RebindEffectiveMaterial(this,(void *)materialHash,'\0',parameterContext);
        FUN_0068fe00(this,0);
      }
      if (materialHash != 0) {
        (**(code **)(*(int *)materialHash + 4))((void *)materialHash);
      }
      if (local_4 != (int *)0x0) {
        (**(code **)(*local_4 + 4))(local_4);
      }
    }
  }
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 COMPLETE80-byte thiscall FIVE stackwords RET0x14. Incoming ECX is destination record,
   savedESI; incoming EAX is NOT receiver. Stack+4errorCode is storedrecord+0. Stack+8lot pointer
   contributes its48/4C identifier words torecord20/24, orzero ifnull. Stack+Cpoint pointer is
   forwarded UNCHANGED to ADC750; stack+10/+14 rawwords store atrecord28/30; record2C is zeroed.
   Calls ADC750cdecl(lot,point,record+10), caller ADDESP,C. Last MOVEAX,ESI returns
   destinationpointer as constructorlike result; this does NOT make EAX the incoming this register.
   WaterD400F0/D402E0 call sites push raw point plus twozero auxiliarywords; no unsupported
   blockingobject/flags meaning is assigned to these generic wordfields. Null lot only zeroes
   idwords, then is still passed to ADC750: no claim that full null-lot path is safe. Full higher
   errorlist/event/world conversion owners are separate. */

undefined * __thiscall
BuildEditErrorRecord_InitializeAtLotPoint
          (void *this,uint errorCode,undefined *lot,LotPaintPoint *point,uint rawWord28,
          uint rawWord30)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  *(uint *)this = errorCode;
  if (lot == (undefined *)0x0) {
    uVar1 = 0;
    uVar2 = 0;
  }
  else {
    uVar1 = *(undefined4 *)(lot + 0x48);
    uVar2 = *(undefined4 *)(lot + 0x4c);
  }
  *(undefined4 *)((int)this + 0x20) = uVar1;
  *(undefined4 *)((int)this + 0x24) = uVar2;
  *(uint *)((int)this + 0x28) = rawWord28;
  *(uint *)((int)this + 0x30) = rawWord30;
  *(undefined4 *)((int)this + 0x2c) = 0;
  LotPoint_ResolveLevelPosition(lot,point,(float *)((int)this + 0x10));
  return this;
}


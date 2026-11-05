/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 outside sampling and occlusion instruction contract. ECX receiver, no explicit
   stack arguments; RET, boolean AL. Main vtable0102ADC8+10 binds this loader. Resource lookup via
   service8AFE00 virtual+1C has FOUR stack words:
   instanceLowCD2F3090,instanceHighA5E415DF,resourceOut,type001407EC. Failure releases optional
   resource virtual+4 and returns false. Success reads propertyCB3F671D via virtual+28 into signed
   cadence/divisor field+28, property2E65B70F via virtual+30 into radius+2C (both status ignored);
   successful property03593710 read is squared with one MULSS then stored binary32+30. Thus this
   field is distance-squared, NOT raw MaxDistance. Calls common loader8A61F0, preserves its AL,
   releases resource and returns. Underlying property-reader grammar, common-loader failures and
   admission/scheduling callers remain unexpanded static paths. */

bool __thiscall AudioOutside_LoadTuning(void *this)

{
  bool bVar1;
  int *arg0;
  int *local_8;
  float fStack_4;
  
  arg0 = (int *)FUN_008afe00();
  local_8 = (int *)0x0;
  bVar1 = (**(code **)(*arg0 + 0x1c))(arg0,0xcd2f3090,0xa5e415df,&local_8,0x1407ec);
  if (!bVar1) {
    if (local_8 != (int *)0x0) {
      (**(code **)(*local_8 + 4))(local_8);
    }
    return false;
  }
  (**(code **)(*local_8 + 0x28))(local_8,0xcb3f671d,(uint *)((int)this + 0x28));
  (**(code **)(*local_8 + 0x30))(local_8,0x2e65b70f,(float *)((int)this + 0x2c));
  bVar1 = (**(code **)(*local_8 + 0x30))(local_8,0x3593710,&fStack_4);
  if (bVar1) {
                    /* One binary32 MULSS squares the authored distance; result is stored at
                       receiver+30. No source radius positivity/count clamp is proved by this
                       caller. */
    *(float *)((int)this + 0x30) = fStack_4 * fStack_4;
  }
  bVar1 = FUN_008a61f0(this);
  if (local_8 != (int *)0x0) {
    (**(code **)(*local_8 + 4))(local_8);
  }
  return bVar1;
}


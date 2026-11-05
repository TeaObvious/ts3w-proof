/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 static instructions/callers: Physical ECX tunables, NO stack input, RET. Loads
   LotSettings.ini, ToolCosts key CostPerBasementTile via4EF7F0 into context+10; initialization flag
   set even when source absent. Generic INI parser child semantics are a separate unresolved static
   boundary; do not infer numeric clamping from this wrapper. */

void __thiscall LotSettings_LoadToolTunables(void *this)

{
  undefined4 uVar1;
  int local_494 [293];
  
  FUN_007d0120(local_494);
  uVar1 = FUN_007d0370(local_494,L"LotSettings.ini",0);
  if ((char)uVar1 != '\0') {
    Ini_ReadSectionFormattedValueOnNonzeroLookup(local_494,L"LotWorth",0x1065f30);
    Ini_ReadSectionFormattedValueOnNonzeroLookup(local_494,L"AutoRoof",0x1065ef0);
    Ini_ReadSectionFormattedValueOnNonzeroLookup(local_494,L"WorldObjectPlacement",0x1065eac);
    Ini_ReadSectionFormattedValue
              ((undefined *)local_494,(ushort *)L"ToolCosts",(ushort *)L"CostPerBasementTile",
               (ushort *)&DAT_00fa2610,(int)this + 0x10);
    Ini_ReadSectionFormattedValue
              ((undefined *)local_494,(ushort *)L"UserToolObjectTunables",
               (ushort *)L"UpDownIncrement",(ushort *)&DAT_00fa2610,(int)this + 0x14);
    Ini_ReadSectionFormattedValue
              ((undefined *)local_494,(ushort *)L"UserToolObjectTunables",
               (ushort *)L"UpDownDeadZoneThreshold",(ushort *)&DAT_00fc056c,(int)this + 0x18);
  }
  *(undefined1 *)this = 1;
  FUN_007d0250(local_494);
  return;
}


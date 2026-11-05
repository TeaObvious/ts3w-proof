/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cdecl THREE words: UTF16 input, UTF16 format, cursor to DWORD output pointers. No
   callee stack purge, full EAX result. Calls pointer at114F330 to find percent format markers;
   copies the counted pointers to local storage, then dispatches argument counts0..10 through
   pointer114F334 (initial target4FD860). Unsupported count returns0; loop cap20 is not supported
   conversion count. Two owned ranges exclude six nonowned bytes4FDB7A..7F. This is dispatch, not
   proof of the lower scanner's numeric range/locale/failure policy. */

int __cdecl
Utf16Scan_DispatchArgumentList(ushort *inputUtf16,ushort *formatUtf16,undefined *argumentPointers)

{
  undefined4 *puVar1;
  short *psVar2;
  int iVar3;
  undefined *puVar4;
  int iVar5;
  undefined4 auStack_50 [4];
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  
  puVar4 = PTR_thunk_FUN_004fe380_0114f330;
  iVar5 = 0;
  psVar2 = (short *)(*(code *)PTR_thunk_FUN_004fe380_0114f330)(formatUtf16,0x25);
  do {
    if (((psVar2 == (short *)0x0) || (*psVar2 != 0x25)) || (0x13 < iVar5)) {
      iVar3 = 0;
      if (0 < iVar5) {
        puVar4 = argumentPointers + -4;
        do {
          puVar1 = (undefined4 *)(puVar4 + 4);
          puVar4 = puVar4 + 4;
          auStack_50[iVar3] = *puVar1;
          iVar3 = iVar3 + 1;
        } while (iVar3 < iVar5);
      }
      switch(iVar5) {
      case 0:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)(inputUtf16,formatUtf16);
        return iVar5;
      case 1:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0]);
        return iVar5;
      case 2:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1]);
        return iVar5;
      case 3:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1],auStack_50[2]);
        return iVar5;
      case 4:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1],auStack_50[2],
                           auStack_50[3]);
        return iVar5;
      case 5:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1],auStack_50[2],
                           auStack_50[3],uStack_40);
        return iVar5;
      case 6:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1],auStack_50[2],
                           auStack_50[3],uStack_40,uStack_3c);
        return iVar5;
      case 7:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1],auStack_50[2],
                           auStack_50[3],uStack_40,uStack_3c,uStack_38);
        return iVar5;
      case 8:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1],auStack_50[2],
                           auStack_50[3],uStack_40,uStack_3c,uStack_38,uStack_34);
        return iVar5;
      case 9:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1],auStack_50[2],
                           auStack_50[3],uStack_40,uStack_3c,uStack_38,uStack_34,uStack_30);
        return iVar5;
      case 10:
        iVar5 = (*(code *)PTR_Utf16Scan_ConvertFormattedFields_0114f334)
                          (inputUtf16,formatUtf16,auStack_50[0],auStack_50[1],auStack_50[2],
                           auStack_50[3],uStack_40,uStack_3c,uStack_38,uStack_34,uStack_30,uStack_2c
                          );
        return iVar5;
      default:
        return 0;
      }
    }
    switch(psVar2[1]) {
    case 0x20:
    case 0x23:
    case 0x2b:
    case 0x2d:
      if ((psVar2[2] == 0) || (psVar2[2] != 0x2a)) goto switchD_004fdb3e_caseD_21;
      break;
    default:
switchD_004fdb3e_caseD_21:
      iVar5 = iVar5 + 1;
      break;
    case 0x25:
      psVar2 = psVar2 + 1;
      break;
    case 0x2a:
      break;
    }
    psVar2 = (short *)(*(code *)puVar4)(psVar2 + 1,0x25);
  } while( true );
}


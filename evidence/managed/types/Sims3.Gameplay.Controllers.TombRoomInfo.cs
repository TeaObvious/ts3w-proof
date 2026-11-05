/* Analyst: PC1.67 original managed evidence. Persistable visited dictionary/completion list keyed by stable SimDescriptionId. Portable ExportContent writes room settings only; it does not export visit/completion history.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Objects;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.Controllers;

[Persistable]
public class TombRoomInfo
{
	private const uint kFogStatus = 143118011u;

	private const uint kName = 144199948u;

	private const uint kTombType = 144960091u;

	private const uint kIsFinalRoom = 144960092u;

	private const uint kTnsText = 144960093u;

	public FogStatus FogStatus = FogStatus.EnabledAndDrawing;

	private Dictionary<ulong, bool> mSimsThatHaveBeenToThisRoom = new Dictionary<ulong, bool>();

	private string mName;

	[Persistable(false)]
	private TombRoomMarker mOwner;

	public TombType TombType;

	private bool mIsFinalRoom;

	private List<ulong> mSimsWhoHaveCompletedThisTomb = new List<ulong>();

	private string mTnsText;

	public string Name => mName;

	public TombRoomMarker Owner => mOwner;

	public bool IsFinalRoom => mIsFinalRoom;

	public string TnsText => mTnsText;

	public void SetName(string name)
	{
		mName = name;
	}

	public void SetOwner(TombRoomMarker owner)
	{
		mOwner = owner;
	}

	public TombRoomInfo()
	{
	}

	public TombRoomInfo(TombRoomMarker owner)
	{
		mOwner = owner;
	}

	public void SetWhetherOrNotHouseholdHasBeenToThisRoom(List<ulong> householdMembers, bool hasBeenToRoom)
	{
		if (householdMembers == null)
		{
			return;
		}
		foreach (ulong householdMember in householdMembers)
		{
			if (hasBeenToRoom)
			{
				mSimsThatHaveBeenToThisRoom[householdMember] = true;
			}
			else
			{
				mSimsThatHaveBeenToThisRoom.Remove(householdMember);
			}
		}
	}

	public bool HasHouseholdBeenToThisRoom(List<ulong> householdMembers)
	{
		if (householdMembers == null)
		{
			return false;
		}
		foreach (ulong householdMember in householdMembers)
		{
			if (mSimsThatHaveBeenToThisRoom.ContainsKey(householdMember))
			{
				return true;
			}
		}
		return false;
	}

	public void SetFinalRoom(bool isFinalRoom)
	{
		SetFinalRoom(isFinalRoom, mTnsText);
	}

	public void SetFinalRoom(bool isFinalRoom, string tnsText)
	{
		mIsFinalRoom = isFinalRoom;
		mTnsText = tnsText;
	}

	public bool GiveCompletionCredit(Sim s)
	{
		if (!mSimsWhoHaveCompletedThisTomb.Contains(s.SimDescription.SimDescriptionId))
		{
			mSimsWhoHaveCompletedThisTomb.Add(s.SimDescription.SimDescriptionId);
			return true;
		}
		return false;
	}

	public bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteUint32(143118011u, (uint)FogStatus);
		writer.WriteString(144199948u, mName);
		writer.WriteUint32(144960091u, (uint)TombType);
		writer.WriteBool(144960092u, mIsFinalRoom);
		writer.WriteString(144960093u, mTnsText);
		return true;
	}

	public bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadUint32(143118011u, out var value, 0u);
		if (Enum.IsDefined(typeof(FogStatus), value))
		{
			FogStatus = (FogStatus)value;
		}
		else
		{
			FogStatus = FogStatus.NeverOn;
		}
		reader.ReadString(144199948u, out mName, string.Empty);
		reader.ReadUint32(144960091u, out var value2, 0u);
		if (Enum.IsDefined(typeof(TombType), value2))
		{
			TombType = (TombType)value2;
		}
		else
		{
			TombType = TombType.Normal;
		}
		reader.ReadBool(144960092u, out mIsFinalRoom, defaultValue: false);
		reader.ReadString(144960093u, out mTnsText, string.Empty);
		return true;
	}
}

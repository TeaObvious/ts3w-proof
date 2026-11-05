/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.Miscellaneous;

public class UnderwaterCaveSurfaceDestinationMarker : GameObject, IHasWorldBuilderData, GameObject.IDoNotDuplicateOnClone, IUnderwaterCaveDestination, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IBuildBuyListener
{
	private sealed class SetName : ImmediateInteraction<Sim, UnderwaterCaveSurfaceDestinationMarker>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, UnderwaterCaveSurfaceDestinationMarker, SetName>
		{
			protected override bool Test(Sim actor, UnderwaterCaveSurfaceDestinationMarker target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, UnderwaterCaveSurfaceDestinationMarker target, InteractionObjectPair iop)
			{
				string text = target.mName ?? string.Empty;
				return LocalizeString("InteractionName", text);
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/Miscellaneous/UnderwaterCaveSurfaceDestinationMarker/SetName";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/Miscellaneous/UnderwaterCaveSurfaceDestinationMarker/SetName:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.NameMe();
			return true;
		}
	}

	private const string sLocalizationKey = "Gameplay/Objects/Miscellaneous/UnderwaterCaveSurfaceDestinationMarker";

	private const uint kName = 246446549u;

	private const string kWorldBuilderDataName = "UnderwaterCaveSurfaceDestinationMarker";

	private string mName;

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[2]
	{
		246446549u.ToString(),
		"Name"
	};

	public bool IsCave => false;

	public string Name => mName;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/Miscellaneous/UnderwaterCaveSurfaceDestinationMarker:" + name, parameters);
	}

	public override void OnStartup()
	{
		base.OnStartup();
		if (GameStates.IsBuildBuyLikeState)
		{
			SetHiddenFlags(HiddenFlags.Footprint);
		}
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetName.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	public override void OnHandToolPlacement()
	{
		if (LotCurrent.IsWorldLot)
		{
			UpdateVisualState();
			Simulator.AddObject(new OneShotFunctionTask(NameMe));
		}
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteString(246446549u, mName);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadString(246446549u, out mName, null);
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("UnderwaterCaveSurfaceDestinationMarker", ObjectId, "Name", mName, null);
		WorldBuilderData.Set("UnderwaterCaveSurfaceDestinationMarker", ObjectId, "Version", 1, 0);
	}

	public void LoadWorldBuilderData()
	{
		int value = 0;
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("UnderwaterCaveSurfaceDestinationMarker", ObjectId, "Version", ref value);
		WorldBuilderData.Get("UnderwaterCaveSurfaceDestinationMarker", ObjectId, "Name", ref mName);
	}

	public void OnEnterBuildBuyMode()
	{
		UpdateVisualState();
	}

	public void OnExitBuildBuyMode()
	{
		UpdateVisualState();
	}

	private void UpdateVisualState()
	{
		if (GameStates.NextInWorldStateId == InWorldState.SubState.BuildMode || GameStates.NextInWorldStateId == InWorldState.SubState.BuyMode)
		{
			if (Commands.sRestrictBuildBuyInBuildings && !BuyController.IsBuyDebugEnabled())
			{
				SetHiddenFlags(HiddenFlags.Everything);
			}
			else
			{
				SetHiddenFlags(HiddenFlags.Footprint);
			}
		}
		else
		{
			SetHiddenFlags(HiddenFlags.Everything);
		}
	}

	private void NameMe()
	{
		bool flag = true;
		string defaultEntryText = mName ?? string.Empty;
		string text = null;
		do
		{
			flag = true;
			text = StringInputDialog.Show(LocalizeString("SetNameTitleText"), LocalizeString("SetNamePromptText"), defaultEntryText, numbersOnly: false, 50);
			if (!string.IsNullOrEmpty(text))
			{
				IUnderwaterCaveDestination[] objects = Queries.GetObjects<IUnderwaterCaveDestination>();
				foreach (IUnderwaterCaveDestination underwaterCaveDestination in objects)
				{
					if (underwaterCaveDestination != this && text == underwaterCaveDestination.Name)
					{
						SimpleMessageDialog.Show(null, LocalizeString("MustBeUnique"));
						flag = false;
					}
				}
			}
			else
			{
				SimpleMessageDialog.Show(null, LocalizeString("MustBeUnique"));
				flag = false;
			}
		}
		while (!flag);
		if (text != string.Empty)
		{
			mName = text;
		}
	}

	virtual bool IUnderwaterCaveDestination.DisableFootprint(uint P_0)
	{
		return DisableFootprint(P_0);
	}
}

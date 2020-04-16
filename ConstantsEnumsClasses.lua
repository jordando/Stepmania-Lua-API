ASPECT_SCALE_FACTOR = 854
NUM_PLAYERS = 2
SAFE_HEIGHT = 36
SAFE_WIDTH = 64
SCREEN_BOTTOM = 480
SCREEN_CENTER_X = 427
SCREEN_CENTER_Y = 240
SCREEN_HEIGHT = 480
SCREEN_LEFT = 0
SCREEN_RIGHT = 854
SCREEN_TOP = 0
SCREEN_WIDTH = 854
PLAYER_1 = 'PlayerNumber_P1'
PLAYER_2 = 'PlayerNumber_P2'
_VERSION = 'Lua 5.1'
bottom = 'VertAlign_Bottom'
center = 'HorizAlign_Center'
left = 'HorizAlign_Left'
middle = 'VertAlign_Middle'
right = 'HorizAlign_Right'
top = 'VertAlign_Top'

SONGMAN = SongManager
STATSMAN = StatsManager
THEME = ThemeManager
UNLOCKMAN = UnlockManager
ANNOUNCER = AnnouncerManager
SCREENMAN = ScreenManager
INPUTMAN = RageInput
FILEMAN = RageFileManager
DISPLAY = RageDisplay
PROFILEMAN = ProfileManager
PREFSMAN = PrefsManager
NOTESKIN = NoteSkinManager
MESSAGEMAN = MessageManager
MEMCARDMAN = MemoryCardManager
INPUTFILTER = InputFilter
GAMESTATE = GameState
SOUND = GameSoundManager
GAMEMAN = GameManager
CRYPTMAN = CryptManager
CHARMAN = CharacterManager
HOOKS = ArchHooks

		AllowW1 = {
			AllowW1_Never ='0' ,
			AllowW1_CoursesOnly ='1' ,
			AllowW1_Everywhere ='2' ,
		}
		AttractSoundFrequency = {
			AttractSoundFrequency_Never ='0' ,
			AttractSoundFrequency_EveryTime ='1' ,
			AttractSoundFrequency_Every2Times ='2' ,
			AttractSoundFrequency_Every3Times ='3' ,
			AttractSoundFrequency_Every4Times ='4' ,
			AttractSoundFrequency_Every5Times ='5' ,
		}
		AutosyncType = {
			AutosyncType_Off ='0' ,
			AutosyncType_Song ='1' ,
			AutosyncType_Machine ='2' ,
			AutosyncType_Tempo ='3' ,
		}
		BannerCacheMode = {
			BannerCacheMode_Off ='0' ,
			BannerCacheMode_LowResPreload ='1' ,
			BannerCacheMode_LowResLoadOnDemand ='2' ,
			BannerCacheMode_Full ='3' ,
		}
		BlendMode = {
			BlendMode_Normal ='0' ,
			BlendMode_Add ='1' ,
			BlendMode_Subtract ='2' ,
			BlendMode_Modulate ='3' ,
			BlendMode_CopySrc ='4' ,
			BlendMode_AlphaMask ='5' ,
			BlendMode_AlphaKnockOut ='6' ,
			BlendMode_AlphaMultiply ='7' ,
			BlendMode_WeightedMultiply ='8' ,
			BlendMode_InvertDest ='9' ,
			BlendMode_NoEffect ='10' ,
		}
		CoinMode = {
			CoinMode_Home ='0' ,
			CoinMode_Pay ='1' ,
			CoinMode_Free ='2' ,
		}
		Color = {
			Black = {},
			White = {},
			Blue = {},
			Green = {},
			Red = {}
		}
		CourseSortOrders = {
			CourseSortOrders_Preferred ='0' ,
			CourseSortOrders_Songs ='1' ,
			CourseSortOrders_Meter ='2' ,
			CourseSortOrders_MeterSum ='3' ,
			CourseSortOrders_MeterRank ='4' ,
		}
		CourseType = {
			CourseType_Nonstop ='0' ,
			CourseType_Oni ='1' ,
			CourseType_Endless ='2' ,
			CourseType_Survival ='3' ,
		}
		CullMode = {
			CullMode_Back ='0' ,
			CullMode_Front ='1' ,
			CullMode_None ='2' ,
		}
		Difficulty = {
			Difficulty_Beginner ='0' ,
			Difficulty_Easy ='1' ,
			Difficulty_Medium ='2' ,
			Difficulty_Hard ='3' ,
			Difficulty_Challenge ='4' ,
			Difficulty_Edit ='5' ,
		}
		DisplayBPM = {
			DisplayBPM_Actual ='0' ,
			DisplayBPM_Specified ='1' ,
			DisplayBPM_Random ='2' ,
		}
		DrainType = {
			DrainType_Normal ='0' ,
			DrainType_NoRecover ='1' ,
			DrainType_SuddenDeath ='2' ,
		}
		DrawMode = {
			DrawMode_Quads ='0' ,
			DrawMode_QuadStrip ='1' ,
			DrawMode_Fan ='2' ,
			DrawMode_Strip ='3' ,
			DrawMode_Triangles ='4' ,
			DrawMode_LineStrip ='5' ,
			DrawMode_SymmetricQuadStrip ='6' ,
		}
		EarnedExtraStage = {
			EarnedExtraStage_No ='0' ,
			EarnedExtraStage_Extra1 ='1' ,
			EarnedExtraStage_Extra2 ='2' ,
		}
		EditMode = {
			EditMode_Practice ='0' ,
			EditMode_CourseMods ='1' ,
			EditMode_Home ='2' ,
			EditMode_Full ='3' ,
		}
		EditState = {
			EditState_Edit ='0' ,
			EditState_Record ='1' ,
			EditState_RecordPaused ='2' ,
			EditState_Playing ='3' ,
		}
		FailType = {
			FailType_Immediate ='0' ,
			FailType_ImmediateContinue ='1' ,
			FailType_EndOfSong ='2' ,
			FailType_Off ='3' ,
		}
		FileType = {
			FileType_Bitmap ='0' ,
			FileType_Sprite ='1' ,
			FileType_Sound ='2' ,
			FileType_Movie ='3' ,
			FileType_Directory ='4' ,
			FileType_Xml ='5' ,
			FileType_Model ='6' ,
			FileType_Lua ='7' ,
		}
		GameController = {
			GameController_1 ='0' ,
			GameController_2 ='1' ,
		}
		GetRankingName = {
			GetRankingName_Off ='0' ,
			GetRankingName_On ='1' ,
			GetRankingName_List ='2' ,
		}
		GoalType = {
			GoalType_Calories ='0' ,
			GoalType_Time ='1' ,
			GoalType_None ='2' ,
		}
		Grade = {
			Grade_Tier01 ='0' ,
			Grade_Tier02 ='1' ,
			Grade_Tier03 ='2' ,
			Grade_Tier04 ='3' ,
			Grade_Tier05 ='4' ,
			Grade_Tier06 ='5' ,
			Grade_Tier07 ='6' ,
			Grade_Tier08 ='7' ,
			Grade_Tier09 ='8' ,
			Grade_Tier10 ='9' ,
			Grade_Tier11 ='10' ,
			Grade_Tier12 ='11' ,
			Grade_Tier13 ='12' ,
			Grade_Tier14 ='13' ,
			Grade_Tier15 ='14' ,
			Grade_Tier16 ='15' ,
			Grade_Tier17 ='16' ,
			Grade_Tier18 ='17' ,
			Grade_Tier19 ='18' ,
			Grade_Tier20 ='19' ,
			Grade_Failed ='20' ,
		}
		HealthState = {
			HealthState_Hot ='0' ,
			HealthState_Alive ='1' ,
			HealthState_Danger ='2' ,
			HealthState_Dead ='3' ,
		}
		HighResolutionTextures = {
			HighResolutionTextures_Auto ='0' ,
			HighResolutionTextures_ForceOff ='1' ,
			HighResolutionTextures_ForceOn ='2' ,
		}
		HighScoresType = {
			HighScoresType_AllSteps ='0' ,
			HighScoresType_NonstopCourses ='1' ,
			HighScoresType_OniCourses ='2' ,
			HighScoresType_SurvivalCourses ='3' ,
			HighScoresType_AllCourses ='4' ,
		}
		HoldNoteScore = {
			HoldNoteScore_None ='0' ,
			HoldNoteScore_LetGo ='1' ,
			HoldNoteScore_Held ='2' ,
			HoldNoteScore_MissedHold ='3' ,
		}
		HorizAlign = {
			HorizAlign_Left ='0' ,
			HorizAlign_Center ='1' ,
			HorizAlign_Right ='2' ,
		}
		InputEventType = {
			InputEventType_FirstPress = '0' ,
			InputEventType_Repeat = '1' ,
			InputEventType_Release = '2' ,
		}
		JudgmentLine = {
			JudgmentLine_W1 ='0' ,
			JudgmentLine_W2 ='1' ,
			JudgmentLine_W3 ='2' ,
			JudgmentLine_W4 ='3' ,
			JudgmentLine_W5 ='4' ,
			JudgmentLine_Miss ='5' ,
			JudgmentLine_Held ='6' ,
			JudgmentLine_MaxCombo ='7' ,
		}
		LayoutType = {
			LayoutType_ShowAllInRow ='0' ,
			LayoutType_ShowOneInRow ='1' ,
		}
		LifeType = {
			LifeType_Bar ='0' ,
			LifeType_Battery ='1' ,
			LifeType_Time ='2' ,
		}
		LightsMode = {
			LightsMode_Attract ='0' ,
			LightsMode_Joining ='1' ,
			LightsMode_MenuStartOnly ='2' ,
			LightsMode_MenuStartAndDirections ='3' ,
			LightsMode_Demonstration ='4' ,
			LightsMode_Gameplay ='5' ,
			LightsMode_Stage ='6' ,
			LightsMode_Cleared ='7' ,
			LightsMode_TestAutoCycle ='8' ,
			LightsMode_TestManualCycle ='9' ,
		}
		Maybe = {
			Maybe_Ask ='0' ,
			Maybe_No ='1' ,
			Maybe_Yes ='2' ,
		}
		MemoryCardState = {
			MemoryCardState_ready ='0' ,
			MemoryCardState_checking ='1' ,
			MemoryCardState_late ='2' ,
			MemoryCardState_error ='3' ,
			MemoryCardState_removed ='4' ,
			MemoryCardState_none ='5' ,
		}
		ModsLevel = {
			ModsLevel_Preferred ='0' ,
			ModsLevel_Stage ='1' ,
			ModsLevel_Song ='2' ,
			ModsLevel_Current ='3' ,
		}
		Month = {
			Month_January ='0' ,
			Month_February ='1' ,
			Month_March ='2' ,
			Month_April ='3' ,
			Month_May ='4' ,
			Month_June ='5' ,
			Month_July ='6' ,
			Month_August ='7' ,
			Month_September ='8' ,
			Month_October ='9' ,
			Month_November ='10' ,
			Month_December ='11' ,
		}
		MultiPlayer = {
			MultiPlayer_P1 ='0' ,
			MultiPlayer_P2 ='1' ,
			MultiPlayer_P3 ='2' ,
			MultiPlayer_P4 ='3' ,
			MultiPlayer_P5 ='4' ,
			MultiPlayer_P6 ='5' ,
			MultiPlayer_P7 ='6' ,
			MultiPlayer_P8 ='7' ,
			MultiPlayer_P9 ='8' ,
			MultiPlayer_P10 ='9' ,
			MultiPlayer_P11 ='10' ,
			MultiPlayer_P12 ='11' ,
			MultiPlayer_P13 ='12' ,
			MultiPlayer_P14 ='13' ,
			MultiPlayer_P15 ='14' ,
			MultiPlayer_P16 ='15' ,
			MultiPlayer_P17 ='16' ,
			MultiPlayer_P18 ='17' ,
			MultiPlayer_P19 ='18' ,
			MultiPlayer_P20 ='19' ,
			MultiPlayer_P21 ='20' ,
			MultiPlayer_P22 ='21' ,
			MultiPlayer_P23 ='22' ,
			MultiPlayer_P24 ='23' ,
			MultiPlayer_P25 ='24' ,
			MultiPlayer_P26 ='25' ,
			MultiPlayer_P27 ='26' ,
			MultiPlayer_P28 ='27' ,
			MultiPlayer_P29 ='28' ,
			MultiPlayer_P30 ='29' ,
			MultiPlayer_P31 ='30' ,
			MultiPlayer_P32 ='31' ,
		}
		MusicWheelUsesSections = {
			MusicWheelUsesSections_Never ='0' ,
			MusicWheelUsesSections_Always ='1' ,
			MusicWheelUsesSections_ABCOnly ='2' ,
		}
		NoteColumnSplineMode = {
			NoteColumnSplineMode_Disabled ='0' ,
			NoteColumnSplineMode_Offset ='1' ,
			NoteColumnSplineMode_Position ='2' ,
		}
		NotePart = {
			NotePart_TapNote ='0' ,
			NotePart_TapMine ='1' ,
			NotePart_TapLift ='2' ,
			NotePart_TapFake ='3' ,
			NotePart_HoldHead ='4' ,
			NotePart_HoldTail ='5' ,
			NotePart_HoldTopCap ='6' ,
			NotePart_HoldBody ='7' ,
			NotePart_HoldBottomCap ='8' ,
		}
		NoteType = {
			NoteType_4th ='0' ,
			NoteType_8th ='1' ,
			NoteType_12th ='2' ,
			NoteType_16th ='3' ,
			NoteType_24th ='4' ,
			NoteType_32nd ='5' ,
			NoteType_48th ='6' ,
			NoteType_64th ='7' ,
			NoteType_192nd ='8' ,
		}
		PaneCategory = {
			PaneCategory_NumSteps ='0' ,
			PaneCategory_Jumps ='1' ,
			PaneCategory_Holds ='2' ,
			PaneCategory_Rolls ='3' ,
			PaneCategory_Mines ='4' ,
			PaneCategory_Hands ='5' ,
			PaneCategory_Lifts ='6' ,
			PaneCategory_Fakes ='7' ,
			PaneCategory_MachineHighScore ='8' ,
			PaneCategory_MachineHighName ='9' ,
			PaneCategory_ProfileHighScore ='10' ,
		}
		PeakComboAward = {
			PeakComboAward_1000 ='0' ,
			PeakComboAward_2000 ='1' ,
			PeakComboAward_3000 ='2' ,
			PeakComboAward_4000 ='3' ,
			PeakComboAward_5000 ='4' ,
			PeakComboAward_6000 ='5' ,
			PeakComboAward_7000 ='6' ,
			PeakComboAward_8000 ='7' ,
			PeakComboAward_9000 ='8' ,
			PeakComboAward_10000 ='9' ,
		}
		PlayMode = {
			PlayMode_Regular ='0' ,
			PlayMode_Nonstop ='1' ,
			PlayMode_Oni ='2' ,
			PlayMode_Endless ='3' ,
			PlayMode_Battle ='4' ,
			PlayMode_Rave ='5' ,
		}
		PlayerController = {
			PlayerController_Human ='0' ,
			PlayerController_Autoplay ='1' ,
			PlayerController_Cpu ='2' ,
		}
		PlayerNumber = {
			PlayerNumber_P1 ='0' ,
			PlayerNumber_P2 ='1' ,
		}
		Premium = {
			Premium_Off ='0' ,
			Premium_DoubleFor1Credit ='1' ,
			Premium_2PlayersFor1Credit ='2' ,
		}
		ProfileSlot = {
			ProfileSlot_Player1 ='0' ,
			ProfileSlot_Player2 ='1' ,
			ProfileSlot_Machine ='2' ,
		}
		ProfileType = {
			ProfileType_Guest ='0' ,
			ProfileType_Normal ='1' ,
			ProfileType_Test ='2' ,
		}
		RadarCategory = {
			RadarCategory_Stream ='0' ,
			RadarCategory_Voltage ='1' ,
			RadarCategory_Air ='2' ,
			RadarCategory_Freeze ='3' ,
			RadarCategory_Chaos ='4' ,
			RadarCategory_TapsAndHolds ='5' ,
			RadarCategory_Jumps ='6' ,
			RadarCategory_Holds ='7' ,
			RadarCategory_Mines ='8' ,
			RadarCategory_Hands ='9' ,
			RadarCategory_Rolls ='10' ,
			RadarCategory_Lifts ='11' ,
			RadarCategory_Fakes ='12' ,
		}
		RandomBackgroundMode = {
			RandomBackgroundMode_Off ='0' ,
			RandomBackgroundMode_Animations ='1' ,
			RandomBackgroundMode_RandomMovies ='2' ,
		}
		RankingCategory = {
			RankingCategory_a ='0' ,
			RankingCategory_b ='1' ,
			RankingCategory_c ='2' ,
			RankingCategory_d ='3' ,
		}
		RankingType = {
			RankingType_Category ='0' ,
			RankingType_Course ='1' ,
		}
		SampleMusicPreviewMode = {
			SampleMusicPreviewMode_Normal ='0' ,
			SampleMusicPreviewMode_StartToPreview ='1' ,
			SampleMusicPreviewMode_ScreenMusic ='2' ,
			SampleMusicPreviewMode_LastSong ='3' ,
		}
		ScreenType = {
			ScreenType_Attract ='0' ,
			ScreenType_GameMenu ='1' ,
			ScreenType_Gameplay ='2' ,
			ScreenType_SystemMenu ='3' ,
		}
		SelectType = {
			SelectType_SelectOne ='0' ,
			SelectType_SelectMultiple ='1' ,
			SelectType_SelectNone ='2' ,
		}
		ShowDancingCharacters = {
			ShowDancingCharacters_Off ='0' ,
			ShowDancingCharacters_Random ='1' ,
			ShowDancingCharacters_Select ='2' ,
		}
		SortOrder = {
			SortOrder_Preferred ='0' ,
			SortOrder_Group ='1' ,
			SortOrder_Title ='2' ,
			SortOrder_BPM ='3' ,
			SortOrder_Popularity ='4' ,
			SortOrder_TopGrades ='5' ,
			SortOrder_Artist ='6' ,
			SortOrder_Genre ='7' ,
			SortOrder_BeginnerMeter ='8' ,
			SortOrder_EasyMeter ='9' ,
			SortOrder_MediumMeter ='10' ,
			SortOrder_HardMeter ='11' ,
			SortOrder_ChallengeMeter ='12' ,
			SortOrder_DoubleEasyMeter ='13' ,
			SortOrder_DoubleMediumMeter ='14' ,
			SortOrder_DoubleHardMeter ='15' ,
			SortOrder_DoubleChallengeMeter ='16' ,
			SortOrder_ModeMenu ='17' ,
			SortOrder_AllCourses ='18' ,
			SortOrder_Nonstop ='19' ,
			SortOrder_Oni ='20' ,
			SortOrder_Endless ='21' ,
			SortOrder_Length ='22' ,
			SortOrder_Roulette ='23' ,
			SortOrder_Recent ='24' ,
		}
		SoundEffectType = {
			SoundEffectType_Off ='0' ,
			SoundEffectType_Speed ='1' ,
			SoundEffectType_Pitch ='2' ,
		}
		Stage = {
			Stage_1st ='0' ,
			Stage_2nd ='1' ,
			Stage_3rd ='2' ,
			Stage_4th ='3' ,
			Stage_5th ='4' ,
			Stage_6th ='5' ,
			Stage_Next ='6' ,
			Stage_Final ='7' ,
			Stage_Extra1 ='8' ,
			Stage_Extra2 ='9' ,
			Stage_Nonstop ='10' ,
			Stage_Oni ='11' ,
			Stage_Endless ='12' ,
			Stage_Event ='13' ,
			Stage_Demo ='14' ,
		}
		StageAward = {
			StageAward_FullComboW3 ='0' ,
			StageAward_SingleDigitW3 ='1' ,
			StageAward_OneW3 ='2' ,
			StageAward_FullComboW2 ='3' ,
			StageAward_SingleDigitW2 ='4' ,
			StageAward_OneW2 ='5' ,
			StageAward_FullComboW1 ='6' ,
			StageAward_80PercentW3 ='7' ,
			StageAward_90PercentW3 ='8' ,
			StageAward_100PercentW3 ='9' ,
		}
		StageResult = {
			StageResult_Win ='0' ,
			StageResult_Lose ='1' ,
			StageResult_Draw ='2' ,
		}
		StepsType = {
			StepsType_Dance_Single ='0' ,
			StepsType_Dance_Double ='1' ,
			StepsType_Dance_Couple ='2' ,
			StepsType_Dance_Solo ='3' ,
			StepsType_Dance_Threepanel ='4' ,
			StepsType_Dance_Routine ='5' ,
			StepsType_Pump_Single ='6' ,
			StepsType_Pump_Halfdouble ='7' ,
			StepsType_Pump_Double ='8' ,
			StepsType_Pump_Couple ='9' ,
			StepsType_Pump_Routine ='10' ,
			StepsType_Kb7_Single ='11' ,
			StepsType_Ez2_Single ='12' ,
			StepsType_Ez2_Double ='13' ,
			StepsType_Ez2_Real ='14' ,
			StepsType_Para_Single ='15' ,
			StepsType_Ds3ddx_Single ='16' ,
			StepsType_Bm_Single5 ='17' ,
			StepsType_Bm_Versus5 ='18' ,
			StepsType_Bm_Double5 ='19' ,
			StepsType_Bm_Single7 ='20' ,
			StepsType_Bm_Versus7 ='21' ,
			StepsType_Bm_Double7 ='22' ,
			StepsType_Maniax_Single ='23' ,
			StepsType_Maniax_Double ='24' ,
			StepsType_Techno_Single4 ='25' ,
			StepsType_Techno_Single5 ='26' ,
			StepsType_Techno_Single8 ='27' ,
			StepsType_Techno_Double4 ='28' ,
			StepsType_Techno_Double5 ='29' ,
			StepsType_Techno_Double8 ='30' ,
			StepsType_Pnm_Five ='31' ,
			StepsType_Pnm_Nine ='32' ,
			StepsType_Lights_Cabinet ='33' ,
		}
		StyleType = {
			StyleType_OnePlayerOneSide ='0' ,
			StyleType_TwoPlayersTwoSides ='1' ,
			StyleType_OnePlayerTwoSides ='2' ,
			StyleType_TwoPlayersSharedSides ='3' ,
		}
		TapNoteScore = {
			TapNoteScore_None ='0' ,
			TapNoteScore_HitMine ='1' ,
			TapNoteScore_AvoidMine ='2' ,
			TapNoteScore_CheckpointMiss ='3' ,
			TapNoteScore_Miss ='4' ,
			TapNoteScore_W5 ='5' ,
			TapNoteScore_W4 ='6' ,
			TapNoteScore_W3 ='7' ,
			TapNoteScore_W2 ='8' ,
			TapNoteScore_W1 ='9' ,
			TapNoteScore_CheckpointHit ='10' ,
		}
		TapNoteScoreJudgeType = {
			TapNoteScoreJudgeType_MinimumScore ='0' ,
			TapNoteScoreJudgeType_LastScore ='1' ,
		}
		TapNoteType = {
			TapNoteType_Empty ='0' ,
			TapNoteType_Tap ='1' ,
			TapNoteType_HoldHead ='2' ,
			TapNoteType_HoldTail ='3' ,
			TapNoteType_Mine ='4' ,
			TapNoteType_Lift ='5' ,
			TapNoteType_Attack ='6' ,
			TapNoteType_AutoKeysound ='7' ,
			TapNoteType_Fake ='8' ,
		}
		TapNoteSubType = {
			TapNoteSubType_Hold ='0' ,
			TapNoteSubType_Roll ='1' ,
		}
		TapNoteSource = {
			TapNoteSource_Original ='0' ,
			TapNoteSource_Addition ='1' ,
		}
		TextGlowMode = {
			TextGlowMode_Inner ='0' ,
			TextGlowMode_Stroke ='1' ,
			TextGlowMode_Both ='2' ,
		}
		TextureMode = {
			TextureMode_Modulate ='0' ,
			TextureMode_Glow ='1' ,
			TextureMode_Add ='2' ,
		}
		TweenType = {
			TweenType_Linear ='0' ,
			TweenType_Accelerate ='1' ,
			TweenType_Decelerate ='2' ,
			TweenType_Spring ='3' ,
			TweenType_Bezier ='4' ,
		}
		UnlockRequirement = {
			UnlockRequirement_ArcadePoints ='0' ,
			UnlockRequirement_DancePoints ='1' ,
			UnlockRequirement_SongPoints ='2' ,
			UnlockRequirement_ExtraCleared ='3' ,
			UnlockRequirement_ExtraFailed ='4' ,
			UnlockRequirement_Toasties ='5' ,
			UnlockRequirement_StagesCleared ='6' ,
			UnlockRequirement_NumberUnlocked ='7' ,
		}
		UnlockRewardType = {
			UnlockRewardType_Song ='0' ,
			UnlockRewardType_Steps ='1' ,
			UnlockRewardType_StepsType ='2' ,
			UnlockRewardType_Course ='3' ,
			UnlockRewardType_Modifier ='4' ,
		}
		VertAlign = {
			VertAlign_Top ='0' ,
			VertAlign_Middle ='1' ,
			VertAlign_Bottom ='2' ,
		}
		WheelItemDataType = {
			WheelItemDataType_Generic ='0' ,
			WheelItemDataType_Section ='1' ,
			WheelItemDataType_Song ='2' ,
			WheelItemDataType_Roulette ='3' ,
			WheelItemDataType_Random ='4' ,
			WheelItemDataType_Portal ='5' ,
			WheelItemDataType_Course ='6' ,
			WheelItemDataType_Sort ='7' ,
			WheelItemDataType_Custom ='8' ,
		}
		WheelState = {
			WheelState_Selecting ='0' ,
			WheelState_FlyingOffBeforeNextSort ='1' ,
			WheelState_FlyingOnAfterNextSort ='2' ,
			WheelState_RouletteSpinning ='3' ,
			WheelState_RouletteSlowingDown ='4' ,
			WheelState_RandomSpinning ='5' ,
			WheelState_Locked ='6' ,
		}
		ZTestMode = {
			ZTestMode_Off ='0' ,
			ZTestMode_WriteOnPass ='1' ,
			ZTestMode_WriteOnFail ='2' ,
		}

---@class color
---@class FileType
---@class Trail
---@class Song
---@class StepsType
---@class Steps
---@class float
---@class PlayerNumber
---@class RageFile
---@class void
---@class various
---@class LuaThreadVariable
---@class Enum
---@class LuaOptionRow
---@class ActorFrame
---@class ThreadVariable
---@class Actor
---@class Stage
---@class Difficulty
---@class Month
---@class ActorDef
---@class chunk
---@class JudgmentLine
---@class Sprite
---@class RadarValues
---@class Profile
---@class Grade
---@class CourseType
---@class RageBezier2D
---@class CubicSplineN
---@class BlendMode
---@class CullMode
---@class ActorCommand
---@class LuaReference
---@class RageTexture
---@class EffectMode
---@class RageSound
---@class UnlockEntry
---@class Character
---@class Course
---@class SortOrder
---@class StageStats
---@class PlayerStageStats
---@class CourseEntry
---@class Style
---@class Game
---@class SongOptions
---@class SongPosition
---@class StageResult
---@class DateTime
---@class HighScore
---@class NCSplineHandler
---@class TimingData
---@class LifeMeter
---@class PlayerOptions
---@class HighScoreList
---@class RageQuadratic
---@class PlayerInfo
---@class Screen
---@class PlayerState
---@class OptionRow
---@class MusicWheel
---@class TextEntrySettings
---@class HoldNoteResult
---@class TrailEntry
---@class WheelItemBase
--- [02 Colors.lua] Returns a color with the specified alpha.
---@return color
---@param c color
---@param percent float
function Alpha(c,percent) end

--- Use this to make a current value approach a goal value at the given speed.  Speed must not be negative.  The value will not overshoot the goal.
--- Note:  When you see the error "approach: speed 1 is negative." it means that the speed value passed was negative.  The 1 is there because approach and multiapproach use the same internal function and can be ignored when using approach.
---@return float
---@param current float
---@param goal float
---@param speed float
function approach(current,goal,speed) end

--- [03 CustomSpeedMods.lua]
---@return LuaOptionRow
function ArbitrarySpeedMods() end

--- [02 StageMods.lua]
---@return boolean
function AreStagePlayerModsForced() end

--- [02 StageMods.lua]
---@return boolean
function AreStageSongModsForced() end

--- Issues an error when v is false (or nil). Returns all arguments otherwise. sAssertMessage is an optional error message (the default is "assertion failed!").
---@return various
---@param v various
---@param sAssertMessage string
function assert(v,sAssertMessage) end

--- Returns the base name of file path.
---@return string
---@param path string
function Basename(path) end

--- [02 Colors.lua] Boosts the specified color by multiplying its values by fBoost.
---@return color
---@param c color
---@param fBoost float
function BoostColor(c,fBoost) end

--- [02 Colors.lua] Modifies the brightness of the specified color.
---@return color
---@param c color
---@param percent float
function Brightness(c,percent) end

--- [02 Utilities.lua] Returns true if Center 1P is being used.
---@return boolean
function Center1Player() end

--- [03 Gameplay.lua] Returns true if checkpoint judgments and tap judgments
--- are considered separate, or false otherwise.
---@return boolean
function CheckpointsTapsSeparateJudgment() end

--- CLAMP is an all-female Japanese mangaka group that formed in the mid 1980s.
--- Erm, I mean... Clamps fValue between fLow and fHigh.
---@return float
---@param fValue float
---@param fLow float
---@param fHigh float
function clamp(fValue,fLow,fHigh) end

--- [04 KeymapGuard.lua]
---@return void
function ClearEnterMappedKeys() end

--- Closes any connection to an online server.
---@return void
function CloseConnection() end

--- A generic interface to Lua's garbage collector. Performs different functions based on the value of opt.
---@return void
---@param opt string
---@param arg float
function collectgarbage(opt,arg) end

--- Returns a color from a string. color can be in hex ("#FFFFFFFF") or 0..1 values ("1.0,1.0,1.0,1.0"), in RGBA order.
---@return color
---@param color string
function color(color) end

--- [02 Colors.lua] Returns a darker tone of the color. (Specifically c[1]/2, c[2]/2, c[3]/2, c[4])
---@return color
---@param c color
function ColorDarkTone(c) end

--- [02 Colors.lua] Returns a lighter tone of the color. (Specifically c[1]+(c[1]/2), c[2]+(c[2]/2), c[3]+(c[3]/2), c[4])
---@return color
---@param c color
function ColorLightTone(c) end

--- [02 Colors.lua] Returns a midtone of the color. (Specifically c[1]/1.5, c[2]/1.5, c[3]/1.5, c[4])
---@return color
---@param c color
function ColorMidTone(c) end

--- [02 Colors.lua] Returns a hex representation for the specified color.
---@return string
---@param c color
function ColorToHex(c) end

--- [02 Colors.lua] Takes in a color and returns a table with the HSV values.
---@return table
---@param c color
function ColorToHSV(c) end

--- [03 Gameplay.lua] Determines what TapNoteScore allows for continuing the combo.
---@return Enum @TapNoteScore enum
function ComboContinue() end

--- [03 Gameplay.lua] Determines what TapNoteScore allows for maintaining the combo.
---@return Enum @TapNoteScore enum
function ComboMaintain() end

--- [03 Gameplay.lua] Determines if combo should be per row (Jump = 1) or per column (Jump = 2).
---@return boolean
function ComboPerRow() end

--- [02 Other.lua] The combo trasform command.
---@return void
---@param self Actor
---@param p table
function ComboTransformCommand(self,p) end

--- [03 Gameplay.lua] Returns the UserPrefComboUnderField user preference value.
---@return boolean
function ComboUnderField() end

--- This will take the number and insert a comma every three digits, as normal in English for writing large numbers.
--- number can be a string, an integer, or a float.
--- comma is an optional argument that is used instead of a comma.
--- "commify(1234, 'cat')" will result in "1cat234".
--- dot is an optional argument that is used instead of a dot to find the end of the part that should be commified.
--- "commify('1234cat5678', ',', 'cat')" will result in "1,234cat5678", but "commify('1234cat5678')" will result in "12,34c,at5,678".
--- The comma and dot arguments are provided to ease compliance with locales or languages that do not use comma and dot in numbers the way English does.
---@return string
---@param number string
---@param comma string
---@param dot string
function commify(number,comma,dot) end

--- Tries to connect to the server at sAddress.
---@return boolean
---@param sAddress string
function ConnectToServer(sAddress) end

--- Recursively searches dir for xml files of actors and
--- converts them to equivalent lua files.  See Docs/Themerdocs/XmlToLua.txt
--- for details.
---@param dir string
function convert_xml_bgs(dir) end

--- Creates a RageBezier2D for you to use.  Make sure you destroy the RageBezier2D when you're done with it, or you will have a memory leak.
---@return RageBezier2D
function create_bezier() end

--- Creates a CubicSplineN for you to use.  Make sure you destroy the CubicSplineN when you're done with it, or you will have a memory leak.
---@return CubicSplineN
function create_spline() end

--- [02 Colors.lua]
---@return color
---@param cd string
function CustomDifficultyToColor(cd) end

--- [02 Colors.lua]
---@return color
---@param cd string
function CustomDifficultyToDarkColor(cd) end

--- [02 Colors.lua]
---@return color
---@param cd string
function CustomDifficultyToLightColor(cd) end

--- Returns the current day of the month.
---@return integer
function DayOfMonth() end

--- Returns the current day of the year.
---@return integer
function DayOfYear() end

--- [02 Serialize] Recursively deep-copy a table.
---@return table
---@param from table
---@param to table
---@param already_copied table
function DeepCopy(from,to,already_copied) end

--- [01 base.lua] "Override Lua's dofile to use our loadfile."
---@return chunk
---@param sFilePath string
function dofile(sFilePath) end

--- [03 Gameplay.lua]
---@return boolean
function EvalUsesCheckpointsWithJudgments() end

--- [03 Gameplay.lua]
---@return integer
function FailCombo() end

--- [02 Utilities.lua] Old name for approach.
---@return float
---@param val float
---@param other_val float
---@param to_move float
function fapproach(val,other_val,to_move) end

--- This function creates files in the theme's Languages folder listing all the strings that have no translation and all the strings that are unused.
--- Strings that do not have an entry in the master language are considered unused.
--- master_lang_name is the name of the ini file that contains the language with all strings used by the theme.
--- Example:  find_missing_strings_in_theme_translations("my_best_theme", "en.ini")
---@param theme_name string
---@param master_lang_name string
function find_missing_strings_in_theme_translations(theme_name,master_lang_name) end

--- [02 Utilities.lua] Return the index of a true value in list.
---@return integer
---@param list table
function FindSelection(list) end

--- [02 Utilities.lua] Find a key in tab with the given value.
---@return string
---@param tab table
---@param value various
function FindValue(tab,value) end

--- func takes a key and a value.
---@return void
---@param t table
---@param f function
function foreach_ordered(t,f) end

--- Returns the number passed to the function followed by its suffix ("th", "nd", and so on).
---@return string
---@param num integer
function FormatNumberAndSuffix(num) end

--- Returns fPercentDancePoints formatted as a percentage.
---@return string
---@param fPercentDancePoints float
function FormatPercentScore(fPercentDancePoints) end

--- [03 Gameplay.lua] Returns a list of valid styles for the current gametype.
---@return string
function GameCompatibleModes() end

--- [03 Gameplay.lua]
---@return string
function GetCodeForGame() end

--- Returns the corresponding CustomDifficulty string for a StepsType/Difficulty (/optional CourseType) combination.
---@return string
---@param st StepsType
---@param d Difficulty
---@param ct CourseType
function GetCustomDifficulty(st,d,ct) end

--- [04 Scoring.lua] "Get the radar values directly. The individual steps aren't used much."
---@return RadarValues
---@param pn Enum @PlayerNumber enum
function GetDirectRadar(pn) end

--- [02 Other.lua] Returns a string with the Edit Mode SubScreens.
---@return string
function GetEditModeSubScreens() end

--- [03 EnvUtils2.lua] Returns the value of name from the Env table.
---@return various
---@param name string
function getenv(name) end

--- [03 Gameplay.lua] Returns the number at which the Extra color should be used.
---@return integer
function GetExtraColorThreshold() end

--- Returns a corresponding ENUM:Grade for the given percentage.
---@return Grade
---@param fPercent float
---@param bMerciful boolean
function GetGradeFromPercent(fPercent,bMerciful) end

--- Returns the current Life Difficulty.
---@return integer
function GetLifeDifficulty() end

--- Returns the length of the music file found at path.
--- If you are loading the sound into an ActorSound, ActorSound:get to get its RageSound then use RageSound's get_length function instead to avoid loading the file twice.
---@return float
---@param path string
function get_music_file_length(path) end

--- Returns a table of the names of the sound drivers available.  If the SoundDriver preference is set to something that is not in this list, StepMania WILL NOT START UP.  Changes to the SoundDriver preference do not take effect until the next time StepMania starts up.
---@return table
function get_sound_driver_list() end

--- Returns a string representing the name of the operating system being used. (e.g. "Windows", "Linux", "Mac, "Unknown")
---@return string
function GetOSName() end

--- [02 Utilities.lua] "This returns a profile, preferably a player one. If there isn't one, [it falls] back on the machine profile."
---@return Profile
---@param pn Enum @PlayerNumber enum
function GetPlayerOrMachineProfile(pn) end

--- [03 ThemePrefs.lua] Returns true if player pn is using ProTiming.
---@return boolean
---@param pn Enum @PlayerNumber enum
function GetProTiming(pn) end

--- [02 Utilities.lua] Returns a path to a random song background.
---@return string
function GetRandomSongBackground() end

--- [02 Actor.lua]
---@return float
function GetReal() end

--- [02 Actor.lua]
---@return float
function GetRealInverse() end

--- Returns the display aspect ratio.
---@return float
function GetScreenAspectRatio() end

--- Returns the name of the currently connected server.
---@return string
function GetServerName() end

--- [02 Utilities.lua] Returns a path to the current songs background.
---@return string
function GetSongBackground() end

--- [03 Gameplay.lua]
---@return float
function GetTapPosition() end

--- Returns the theme's aspect ratio.
---@return float
function GetThemeAspectRatio() end

--- [03 ThemePrefs.lua] (Alias for ThemePrefs:Get.)
---@return various
---@param pref string
function GetThemePref(pref) end

--- Returns the current Timing difficulty.
---@return integer
function GetTimingDifficulty() end

--- Returns the current time since the program was started.  Includes time that was spent loading songs.
---@return float
function GetTimeSinceStart() end

--- [01 alias.lua]
---@return float
---@param fPercent float
function GetTitleSafeH(fPercent) end

--- [01 alias.lua]
---@return float
---@param fPercent float
function GetTitleSafeV(fPercent) end

--- [04 Scoring.lua] "Retrieve the amount of taps/holds/rolls involved." Used in some scoring formulas.
---@return float
---@param radars RadarValues
function GetTotalItems(radars) end

--- [03 UserPreferences2.lua] Themer-facing function for getting a user preference.
---@return string
---@param name string
function GetUserPref(name) end

--- [03 UserPreferences2.lua] Themer-facing function for getting a user preference as a booleaneanean.
---@return boolean
---@param name string
function GetUserPrefB(name) end

--- [03 UserPreferences2.lua] Themer-facing function for getting a user preference as a color.
---@return color
---@param name string
function GetUserPrefC(name) end

--- [03 UserPreferences2.lua] Themer-facing function for getting a user preference as a number.
---@return float
---@param name string
function GetUserPrefN(name) end

--- [02 Colors.lua] Returns the color's alpha if it has any, otherwise returns 1.
---@return float
---@param c color
function HasAlpha(c) end

--- [03 Gameplay.lua] Returns the value to start showing the combo at.
---@return integer
function HitCombo() end

--- [03 Gameplay.lua] Returns true if you need to step on hold heads to activate them.
---@return boolean
function HoldHeadStep() end

--- [03 Gameplay.lua] Returns 0 in pump mode, TimingWindowSecondsHold preference value in any other game mode.
---@return float
function HoldTiming() end

--- Returns the current hour.
---@return integer
function Hour() end

--- [02 Colors.lua] Converts a color from HSV values to something StepMania can understand.
--- hue is from 0-360, saturation and value are 0..1
---@return color
---@param h float
---@param s float
---@param v float
function HSV(h,s,v) end

--- [02 Colors.lua] Converts a color from HSV values with alpha to something StepMania can understand.
--- hue is from 0-360, saturation, value, and alpha are 0..1
---@return color
---@param h float
---@param s float
---@param v float
---@param a float
function HSVA(h,s,v,a) end

--- [02 Colors.lua] "Converts a set of HSV values to a color."
---@return color
---@param hsv table
function HSVToColor(hsv) end

--- [02 Colors.lua] "Takes in a normal color and returns the hex representation. (Adapted from code in LuaBit)"
---@return string
---@param hsv table
function HSVToHex(hsv) end

--- [02 Colors.lua] Changes the hue of the input color.
---@return color
---@param c color
---@param newHue integer
function Hue(c,newHue) end

--- [03 ThemePrefs.lua] Initializes various user preferences.
---@return void
function InitUserPrefs() end

--- [01 base.lua] "Like ipairs(), but returns only values."
---@return function
---@param t table
function ipairs(t) end

--- [02 Utilities.lua] Returns true if the coin mode is not set to CoinMode_Home.
---@return boolean
function IsArcade() end

--- Returns true if Event Mode is turned on.
---@return boolean
function IsEventMode() end

--- [02 Utilities.lua] Returns true IsArcade and the coin mode is CoinMode_Free.
---@return boolean
function IsFreePlay() end

--- [03 Gameplay.lua] Returns true if the current game is sGame.
---@return boolean
---@param sGame string
function IsGame(sGame) end

--- [02 Utilities.lua] Returns true if the coin mode is set to CoinMode_Home.
---@return boolean
function IsHome() end

--- Returns true if connected to the Internet.
---@return boolean
function IsNetConnected() end

--- Returns true if connected to StepMania Online.
---@return boolean
function IsNetSMOnline() end

--- Returns true if Player pn is logged on to a SMOnline server.
---@return boolean
---@param pn Enum @PlayerNumber enum
function IsSMOnlineLoggedIn(pn) end

--- [04 Scoring.lua] Returns true if W1 is allowed (and tns == 'TapNoteScore_W2')
---@return boolean
---@param tns Enum  @TapNoteScore enum
function IsW1Allowed(tns) end

--- [02 Branches.lua] Returns true if Routine mode is being played.
---@return boolean
function IsRoutine() end

--- [04 WidescreenHelpers.lua] Returns true if the aspect ratio is 16:10 (1.6) or higher.
---@return boolean
function IsUsingWideScreen() end

--- [01 base.lua] "Like ipairs(), but returns only values."
---@return {various}
---@param t table
function ivalues(t) end

--- [02 Utilities.lua] Joins a table, splitting each item with delimiter, returning a string of the results.
---@return string
---@param delimiter string
---@param list table
function join(delimiter,list) end

--- [02 Colors.lua]
---@return color
---@param jl JudgmentLine
function JudgmentLineToColor(jl) end

--- [02 Colors.lua]
---@return color
---@param jl JudgmentLine
function JudgmentLineToStrokeColor(jl) end

--- Returns a number linearly interpolated between start and end by percent.
---@return float
---@param percent float
---@param start float
---@param finish float
function lerp(percent,start,finish) end

--- Same as lerp, but for colors.  All channels will reach the end of the interpolation at the same time.
---@return color
---@param percent float
---@param start color
---@param finish color
function lerp_color(percent,start,finish) end

--- Returns an Actor definition for the actor at sPath. If sPath points to a Lua file, any additional arguments will be passed to that script.
---@return ActorDef
---@param sPath string
---@param various table
function LoadActor(sPath,various) end

--- [02 ActorDef.lua] Loads an actor template. This is the actual core of LoadActor.
---@return ActorDef
---@param path string
---@param level integer
function LoadActorFunc(path,level) end

--- [02 ActorDef.lua] Loads an actor with params.
---@return void
---@param path string
---@param params table
---@param various table
function LoadActorWithParams(path,params,various) end

--- [01 base.lua] "Override Lua's loadfile to use lua.ReadFile."
---@return chunk
---@param sFilePath string
function loadfile(sFilePath) end

--- [02 ActorDef.lua] Load the fallback BGA for the element that is currently being loaded.
---@return ActorDef
function LoadFallbackB() end

--- [02 ActorDef.lua] Loads a font.
---@return ActorDef
---@param a string
---@param b string
function LoadFont(a,b) end

--- [02 Sprite.lua] Returns a Sprite with the current song's background.
---@return Sprite
function LoadSongBackground() end

--- Returns the length of the multi-byte character string sString.
---@return integer
---@param sString string
function mbstrlen(sString) end

--- Returns the current Minute.
---@return integer
function Minute() end

--- [03 Gameplay.lua] Returns the value to start showing the miss combo at.
---@return integer
function MissCombo() end

--- Creates a module. See the Lua manual for more details.
---@return void
---@param name string
---@param various various
function module(name,various) end

--- Returns the current month of the year (0-11).
---@return integer
function MonthOfYear() end

--- Returns Month m as a localized string.
---@return string
---@param m Month
function MonthToLocalizedString(m) end

--- Returns Month m as a string.
---@return string
---@param m Month
function MonthToString(m) end

--- Similar to approach, but operates on tables of values instead of single values.  This will modify the contents of currents in place, as well as returning currents.
--- currents, goals, and speeds must all be the same size and contain only numbers.
--- multiplier is optional.  The speeds in the speeds table will be multiplied by multiplier.  This makes it more convenient to use multiapproach in a per-frame update: pass in the frame delta and the speeds will be scaled to the time that passed.
--- Note:  When you see the error "approach: speed 1 is negative." it means that a speed value passed was negative.  The 1 tells you which entry in the table was invalid.
---@return table
---@param currents table
---@param goals table
---@param speeds table
---@param multiplier float
function multiapproach(currents,goals,speeds,multiplier) end

--- "Allows a program to traverse all fields of a table. Its first argument is a
--- table and its second argument is an index in this table.
--- next returns the next index of the table and its associated value."
--- See the Lua manual for more details.
---@return void
---@param t table
---@param index integer
function next(t,index) end

--- Converts a string such as 'oni' or 'expert' or 'trick' to the appropriate difficulty.
---@return Difficulty
---@param dc string
function OldStyleStringToDifficulty(dc) end

--- [03 ThemePrefs.lua] Returns a Lua option row for ProTiming.
---@return LuaOptionRow
function OptionRowProTiming() end

--- "Returns three values: the GLOBAL:next function, the table t, and nil,
--- so that the construction for k,v in pairs(t) do body end
--- will iterate over all key–value pairs of table t."
---@return function
---@param t table
function pairs(t) end

--- [02 Colors.lua]
---@return color
---@param pn Enum @PlayerNumber enum
function PlayerColor(pn) end

--- [02 Colors.lua]
---@return color
---@param pn Enum @PlayerNumber enum
function PlayerScoreColor(pn) end

--- [02 Utilities.lua] Converts a PlayerNumber into a short string (e.g. "P1", "P2").
---@return string
---@param pn Enum @PlayerNumber enum
function pname(pn) end

--- [02 Actor.lua] Returns either p1val or p2val depending on pn.
---@return float
---@param pn Enum @PlayerNumber enum
---@param p1val float
---@param p2val float
function PositionPerPlayer(pn,p1val,p2val) end

--- Returns a formatted percent with the specified numerator and denominator.
---@return string
---@param num float
---@param den float
function PrettyPercent(num,den) end

--- [00 init.lua]
---@return void
---@param s string
function print(s) end

--- [03 ThemePrefs.lua] Prints a table's contents to the log.
---@return void
---@param t table
function PrintTable(t) end

--- Returns the product family. (e.g. "StepMania")
---@return string
function ProductFamily() end

--- Returns the product ID. (e.g. "StepMania 5")
---@return string
function ProductID() end

--- Returns the product version.
---@return string
function ProductVersion() end

--- "Checks whether v1 is equal to v2, without invoking any metamethod."
---@return boolean
---@param v1 various
---@param v2 various
function rawequal(v1,v2) end

--- "Gets the real value of t[index], without invoking any metamethod."
---@return various
---@param t table
---@param index various
function rawget(t,index) end

--- "Sets the real value of t[index] to value, without invoking any metamethod."
--- The modified t is then returned.
---@return table
---@param t table
---@param index integer
---@param value various
function rawset(t,index,value) end

--- [02 ActorDef.lua] Used internally by LoadActor to resolve a path.  If optional is true, then a nil path is returned instead of emitting an error if no file is found.
---@return string
---@param path string
---@param level integer
---@param optional boolean
function ResolveRelativePath(path,level,optional) end

--- [04 FileUtils.lua] Reads the file at path and returns its contents.
---@return string
---@param path string
function ReadFile(path) end

--- [03 UserPreferences2.lua] (internal) Reads the specified user preference from its config file.
---@return string
---@param prefName string
function ReadPrefFromFile(prefName) end

--- Recursively prints all the children of the actor frame to the log file.  This can be useful for finding out what actors are on a screen or just seeing what the structure of the actor tree looks like.
--- indent is an optional argument that will be prepended to every line.
---@param a ActorFrame
---@param indent string
function rec_print_children(a,indent) end

--- Recursively prints all values in the table to the log file in the form "(key_type) key: (value_type) value" so that you know the type of the key and the value.  Useful if you're not sure exactly what is in a table passed as a parameter.
--- indent is an optional argument that will be prepended to every line.
---@param t table
---@param indent string
function rec_print_table(t,indent) end

--- Sends the current style to the server.
---@return void
function ReportStyle() end

--- Loads the specified module. See the Lua manual for more information.
---@return void
---@param modname string
function require(modname) end

--- [02 Utilities.lua] Round a number.
---@return integer
---@param val float
---@param decimal integer
function round(val,decimal) end

--- [03 Gameplay.lua] Returns the routine noteskin for player .
---@return string
function RoutineSkinP1() end

--- [03 Gameplay.lua] Returns the routine noteskin for player 2.
---@return string
function RoutineSkinP2() end

--- [02 Colors.lua] Modifies the saturation of the specified color
---@return color
---@param c color
---@param percent float
function Saturation(c,percent) end

--- Saves a screenshot.  If pn is nil, saves to the machine's Screenshots dir, otherwise saves to the profile's Screenshots dir.  Saves as jpg if compress is true, or png if compress is false.  The screenshot is signed if sign is true.  prefix and suffix are optional strings to add to the beginning and end of the filename.
--- Returns success and full path of the resulting screenshot.
---@return boolean, string
---@param pn Enum @PlayerNumber enum
---@param compress boolean
---@param sign boolean
---@param prefix string
---@param suffix string
function SaveScreenshot(pn,compress,sign,prefix,suffix) end

--- Scales x, originally within low1 and high1, to fall between low2 and high2.
---@return float
---@param x float
---@param low1 float
---@param high1 float
---@param low2 float
---@param high2 float
function scale(x,low1,high1,low2,high2) end

--- [03 Gameplay.lua] Returns the primary ScoreKeeper class to use.
---@return string
function ScoreKeeperClass() end

--- [00 alias.lua, 02 Other.lua] alias for Screen:Metric.
---@return string
---@param s string
function ScreenMetric(s) end

--- [00 alias.lua, 02 Other.lua] alias for Screen:String.
---@return string
---@param s string
function ScreenString(s) end

--- Returns the current second.
---@return integer
function Second() end

--- Converts fSecs to Minutes:Seconds:Milliseconds format using two digits for each section.
---@return string
---@param fSecs float
function SecondsToHHMMSS(fSecs) end

--- Converts fSecs to Minutes:Seconds.Milliseconds format using two digits for each section except Minutes (uses 1).
---@return string
---@param fSecs float
function SecondsToMSS(fSecs) end

--- Converts fSecs to Minutes:Seconds format.
---@return string
---@param fSecs float
function SecondsToMMSS(fSecs) end

--- Converts fSecs to Minutes:Seconds.Milliseconds format.
---@return string
---@param fSecs float
function SecondsToMSSMsMs(fSecs) end

--- Converts fSecs to Minutes:Seconds.Milliseconds format using two digits for each section.
---@return string
---@param fSecs float
function SecondsToMMSSMsMs(fSecs) end

--- Converts fSecs to Minutes:Seconds.Milliseconds format using two digits for each section except Milliseconds (uses 3).
---@return string
---@param fSecs float
function SecondsToMMSSMsMsMs(fSecs) end

--- "If index is a number, returns all arguments after argument
--- number index. Otherwise, index must be the string
--- "#", and [it] returns the total number of extra arguments it received."
---@return various
---@param index various
---@param various various
function select(index,various) end

--- [02 Branches.lua] Determines the correct music/course selection screen to use and returns it.
---@return string
function SelectMusicOrCourse() end

--- [03 Gameplay.lua] (soon to be deprecated) Returns a list of codes to use on ScreenSelectProfile.
---@return string
function SelectProfileKeys() end

--- [02 Serialize.lua] Serialize the table t.
---@return string
---@param t table
function Serialize(t) end

--- [03 EnvUtils2.lua] Sets the value of name to value in the Env table.
---@return various
---@param name string
---@param value various
function setenv(name,value) end

--- [03 UserPreferences2.lua] Themer-facing function for setting a user preference.
---@return boolean
---@param name string
---@param value string
function SetUserPref(name,value) end

--- [03 Gameplay.lua]
---@return boolean
function ShowHoldJudgments() end

--- [02 ActorDef.lua] Returns true if a decoration should be shown on the current screen or not.
---@return boolean
---@param sMetricsName string
function ShowStandardDecoration(sMetricsName) end

--- [03 CustomSpeedMods.lua] Returns a Lua option row with the custom speed mods defined in SpeedMods.txt.
---@return LuaOptionRow
function SpeedMods() end

--- [02 Utilities.lua] Splits a string at every occurence of delimiter, returning a table of the results.
---@return table
---@param delimiter string
---@param text string
function split(delimiter,text) end

--- [02 Colors.lua]
---@return color
---@param s Stage
function StageToColor(s) end

--- [02 Colors.lua]
---@return color
---@param s Stage
function StageToStrokeColor(s) end

--- [02 ActorDef.lua]
---@return Actor
---@param sMetricsName string
---@param t table
function StandardDecorationFromTable(sMetricsName,t) end

--- [02 ActorDef.lua]
---@return Actor
---@param sMetricsName string
---@param sFileName string
function StandardDecorationFromFile(sMetricsName,sFileName) end

--- [02 ActorDef.lua]
---@return Actor
---@param sMetricsName string
---@param sFileName string
function StandardDecorationFromFileOptional(sMetricsName,sFileName) end

--- [02 Utilities.lua] Returns a shuffled version of t.
---@return table
---@param t table
function tableshuffle(t) end

--- [02 Utilities.lua] Returns a slice of the specified table of size num.
---@return table
---@param t table
---@param num integer
function tableslice(t,num) end

--- [02 Utilities.lua] Look up each value in a table, returning a table with the resulting strings.
---@return table
---@param t table
---@param group string
function TableStringLookup(t,group) end

--- [02 TextBanner.lua] This function defines how the TextBanner is laid out.
---@return void
function TextBannerAfterSet() end

--- [02 Utilities.lua] Converts a string or number to a boolean.
---@return boolean
---@param v various
function tobooleanean(v) end

--- Tries to convert e to a number. Returns nil if
--- it can't convert the input to a number. (base is optional.)
---@return float
---@param e various
---@param base integer
function tonumber(e,base) end

--- Converts e to a string.
---@return string
---@param e various
function tostring(e) end

--- [02 Enum.lua] Returns a string representing an enum starting from '_'. For example, passing PlayerNumber_P1 to this function will return P1.
---@return string
---@param e Enum
function ToEnumShortString(e) end

--- [00 init.lua] Alias for lua:Trace.
---@return void
---@param sString string
function Trace(sString) end

--- Returns the type of the object as a string. See the Lua manual for valid return values.
---@return string
---@param v various
function type(v) end

--- "Returns the elements from the given table.
--- This function is equivalent to return list[i], list[i+1], ···, list[j]"
--- (i and j are optional; "by default, i is 1 and j is the length of the list.")
---@return various
---@param list table
---@param i integer
---@param j integer
function unpack(list,i,j) end

--- Returns a string with characters escaped for URLs. (e.g. a space becomes '%20')
---@return string
---@param sInput string
function URLEncode(sInput) end

--- This tells Stepmania to update the screen position for any changes to these preferences: CenterImageAddWidth, CenterImageAddHeight, CenterImageTranslateX, CenterImageTranslateY.
--- This way, a theme can implement a custom interactive screen for adjusting those preferences.
function update_centering() end

--- [01 base.lua] Alias for lua.GetThreadVariable.
---@return ThreadVariable
function Var() end

--- Returns the current version's build date.
---@return string
function VersionDate() end

--- Returns the current version's build time.
---@return string
function VersionTime() end

--- [00 init.lua] Alias for lua:Warn.
---@return void
---@param sString string
function Warn(sString) end

--- [04 WidescreenHelpers.lua] Depending on the screen width, scales between ar43 (4:3; 640px) and ar169 (16:9; 854px).
---@return float
---@param ar43 float
---@param ar169 float
function WideScale(ar43,ar169) end

--- [02 Utilities.lua]
---@return float
---@param val float
---@param n float
function wrap(val,n) end

--- [02 ActorDef.lua] Wraps the children in an ActorFrame.
---@return ActorFrame
---@param children table
function WrapInActorFrame(children) end

--- [04 FileUtils.lua] Writes buf to the file at path.
---@return boolean
---@param path string
---@param buf string
function WriteFile(path,buf) end

--- [03 GamePreferences.lua]
---@return boolean
---@param name string
function WriteGamePrefToFile(name) end

--- [03 UserPreferences2.lua] (internal) Writes user preference prefName to its config file with value being tostring'd.
---@return boolean
---@param prefName string
---@param value various
function WritePrefToFile(prefName,value) end

--- Returns the current year.
---@return integer
function Year() end

--- [03 ThemePrefs.lua] Returns a Lua option row for toggling AutoSetStyle.
---@return LuaOptionRow
function UserPrefAutoSetStyle() end

--- [03 ThemePrefs.lua] Returns a Lua option row for displaying the score on ScreenGameplay.
---@return LuaOptionRow
function UserPrefGameplayShowScore() end

--- [03 ThemePrefs.lua] Returns a Lua option row for displaying the StepsDisplay on ScreenGameplay.
---@return LuaOptionRow
function UserPrefGameplayShowStepsDisplay() end

--- [03 ThemePrefs.lua] Returns a Lua option row for determining the fail length.
---@return LuaOptionRow
function UserPrefGameplayLongFail() end

--- [03 ThemePrefs.lua] Returns a Lua option row for determining the receptor arrow position.
---@return LuaOptionRow
function UserPrefNotePosition() end

--- [03 ThemePrefs.lua] Returns a Lua option row determining how deep the player options menu should go.
---@return LuaOptionRow
function UserPrefShowLotsaOptions() end


Def = {}

ThemePrefs = {}

IniFile = {}

ActorUtil = {}

_screen = {}

--- Returns the ENUM:FileType for the file at sPath.
---@return FileType
---@param sPath string
ActorUtil.GetFileType = function(sPath) end

--- Returns true if sClassName is a registered Class.
---@return boolean
---@param sClassName string
ActorUtil.IsRegisteredClass = function(sClassName) end

--- Loads all commands and sets X and Y for the specified Actor.
---@return void
---@param a Actor
ActorUtil.LoadAllCommandsAndSetXY = function(a) end

--- Used internally by LoadActor to resolve a path.  If optional is true, then a nil path is returned instead of emitting an error if no file is found.
---@return string
---@param sPath string
---@param iLevel integer
---@param optional boolean
ActorUtil.ResolvePath = function(sPath,iLevel,optional) end

ArrowEffects = {}
--- Updates ArrowEffects, which sets current values for Tornado, Invert, and Beat.
---@return void
ArrowEffects.Update = function() end

--- Returns the Y Offset of a note in column iCol at beat fNoteBeat for the provided PlayerState. Y Offset is affected by Speed mods and Accel mods, and impacts most other arrow effects.
---@return float
---@param ps PlayerState
---@param iCol integer
---@param fNoteBeat float
ArrowEffects.GetYOffset = function(ps,iCol,fNoteBeat) end

--- Returns the Y position of a note in column iCol with a Y offset of fYOffset for the provided PlayerState.
--- fYReverseOffsetPixels is the separation between targets with and without reverse. This argument is optional and will pull defaults from the metrics for [Player]
---@return float
---@param ps PlayerState
---@param iCol integer
---@param fYOffset float
---@param fYReverseOffsetPixels float
ArrowEffects.GetYPos = function(ps,iCol,fYOffset,fYReverseOffsetPixels) end

--- Returns the Y offset of a note in column iCol with a Y position of fYPos for the provided PlayerState.
--- fYReverseOffsetPixels is the separation between targets with and without reverse. This argument is optional and will pull defaults from the metrics for [Player]
---@return float
---@param ps PlayerState
---@param iCol integer
---@param fYPos float
---@param fYReverseOffsetPixels float
ArrowEffects.GetYOffsetFromYPos = function(ps,iCol,fYPos,fYReverseOffsetPixels) end

--- Returns the X position of a note in column iCol with a Y offset of fYOffset for the provided PlayerState.
---@return float
---@param ps PlayerState
---@param iCol integer
---@param fYOffset float
ArrowEffects.GetXPos = function(ps,iCol,fYOffset) end

--- Returns the Z position of a note in column iCol with a Y offset of fYOffset for the provided PlayerState.
---@return float
---@param ps PlayerState
---@param iCol integer
---@param fYOffset float
ArrowEffects.GetZPos = function(ps,iCol,fYOffset) end

--- Returns the X rotation of a note with a Y offset of fYOffset for the provided PlayerState.
---@return float
---@param ps PlayerState
---@param fYOffset float
ArrowEffects.GetRotationX = function(ps,fYOffset) end

--- Returns the Y rotation of a note with a Y offset of fYOffset for the provided PlayerState.
---@return float
---@param ps PlayerState
---@param fYOffset float
ArrowEffects.GetRotationY = function(ps,fYOffset) end

--- Returns the Z rotation of a note at beat fNoteBeat for the provided PlayerState.
--- bIsHoldHead is an optional argument which defaults to false. If true, this function will return 0 if the [ArrowEffects] metric DizzyHoldHeads is false.
---@return float
---@param ps PlayerState
---@param fNoteBeat float
---@param bIsHoldHead boolean
ArrowEffects.GetRotationZ = function(ps,fNoteBeat,bIsHoldHead) end

--- Returns the Z rotation of the receptors for the provided PlayerState.
---@return float
---@param ps PlayerState
ArrowEffects.ReceptorGetRotationZ = function(ps) end

--- Returns the Alpha of a note in column iCol with a Y offset of fYOffset for the provided PlayerState.
--- fPercentFadeToFail is optional and defaults to -1.
--- fYReverseOffsetPixels is the separation between targets with and without reverse. This argument is optional and will pull defaults from the metrics for [Player]
--- fDrawDistanceBeforeTargetsPixels is optional and will pull defaults from the [Player] metric DrawDistanceBeforeTargetsPixels
--- fFadeInPercentOfDrawFar is optional and will pull defaults from the [NoteField] metric FadeBeforeTargetsPercent
---@return float
---@param ps PlayerState
---@param iCol integer
---@param fYOffset float
---@param fPercentFadeToFail float
---@param fYReverseOffsetPixels float
---@param fDrawDistanceBeforeTargetsPixels float
---@param fFadeInPercentOfDrawFar float
ArrowEffects.GetAlpha = function(ps,iCol,fYOffset,fPercentFadeToFail,fYReverseOffsetPixels,fDrawDistanceBeforeTargetsPixels,fFadeInPercentOfDrawFar) end

--- Returns the Glow of a note in column iCol with a Y offset of fYOffset for the provided PlayerState. The arguments are the same as for GetAlpha.
---@return float
---@param ps PlayerState
---@param iCol integer
---@param fYOffset float
---@param fPercentFadeToFail float
---@param fYReverseOffsetPixels float
---@param fDrawDistanceBeforeTargetsPixels float
---@param fFadeInPercentOfDrawFar float
ArrowEffects.GetGlow = function(ps,iCol,fYOffset,fPercentFadeToFail,fYReverseOffsetPixels,fDrawDistanceBeforeTargetsPixels,fFadeInPercentOfDrawFar) end

--- Returns the brightness of a note at beat fNoteBeat for the provided PlayerState.
---@return float
---@param ps PlayerState
---@param fNoteBeat float
ArrowEffects.GetBrightness = function(ps,fNoteBeat) end

--- Returns true if any arrow effects for the provided PlayerState require the z buffer.
---@return boolean
---@param ps PlayerState
ArrowEffects.NeedZBuffer = function(ps) end

--- Returns the zoom of a note for the provided PlayerState.
---@return float
---@param ps PlayerState
ArrowEffects.GetZoom = function(ps) end

--- Returns the FrameWidthScale of a hold part with a Y offset of fYOffset for the provided PlayerState.
--- fOverlappedTime is optional and will default to 0.
---@return float
---@param ps PlayerState
---@param fYOffset float
---@param fOverlappedTime float
ArrowEffects.GetFrameWidthScale = function(ps,fYOffset,fOverlappedTime) end

Enum = {}
--- Both x and y need to be elements of the enumerated
--- type e. Returns a value less than/greater than/equal to
--- 0 corresponding to the numerical value of x being
--- less than/greater than/equal to the numerical value of y as
--- determined by
--- Reverse( e ).
---@return integer
---@param e Enum
---@param x string
---@param y string
Enum.Compare = function(e,x,y) end

--- Returns the type of e. For example,
--- Enum.GetName( ENUM:PlayerNumber )
--- will return the string 'PlayerNumber'.
---@return string
---@param e Enum
Enum.GetName = function(e) end

--- Returns a reverse lookup table for the enumerated type e.  For
--- example:
--- local r =
--- Enum.Reverse( ENUM:PlayerNumber );
--- local n = r['PlayerNumber_P2'];
--- The value of n in this case would be 1 corresponding
--- to the 0-based indexing using in C++ and not 2 as might be
--- expected for the 1-based indexing used in Lua.
---@return {integer}
---@param e Enum
Enum.Reverse = function(e) end

lua = {}
--- Returns true if the type of v is sType.
---@return boolean
---@param sType string
---@param v various
lua.CheckType = function(sType,v) end

--- Flushes log files to disk.
---@return void
lua.Flush = function() end

---@return LuaThreadVariable
---@param s string
lua.GetThreadVariable = function(s) end

--- Tries to read the file at sPath. If successful, it returns the file's contents.
--- If unsuccessful, it returns two values: nil and "error".
---@return string
---@param sPath string
lua.ReadFile = function(sPath) end

--- Reports the error through the error reporting system.  error_type is the type used for the dialog that is presented, a dialog will not appear for a type the user has chosen to ignore.
--- error is optional an defaults to "Script error occurred.".  error_type is optional and defaults to "LUA_ERROR".
---@return void
---@param error string
---@param error_type string
lua.ReportScriptError = function(error,error_type) end

--- Calls func(...) with two LuaThreadVariables set, and returns the return values of func().
---@return integer
---@param func function
---@param t table
---@param various various
lua.RunWithThreadVariables = function(func,t,various) end

--- Writes sString to log.txt. Aliased by
--- GLOBAL:Trace.
---@return void
---@param sString string
lua.Trace = function(sString) end

--- Writes sString to info.txt and log.txt as
--- a warning. Aliased by GLOBAL:Warn.
---@return void
---@param sString string
lua.Warn = function(sString) end

MersenneTwister = {}
--- Returns a random number. Without arguments, the number is in the range 0..1. With a single argument (n), the number is in the range of 1..n. With two arguments (lower, upper), the number is in the range of l..u.
---@return float
---@param various various
MersenneTwister.Random = function(various) end

--- Sets the seed of the random number generator to seed.
---@return void
---@param seed integer
MersenneTwister.Seed = function(seed) end

RageFileUtil = {}

--- Creates a RageFile handle with which one can use the commands in RageFile.
---@return RageFile
RageFileUtil.CreateRageFile = function() end

ScreenSystemLayerHelpers = {}
--- Gets the credits message for Player pn.
---@return string
---@param pn Enum @PlayerNumber enum
ScreenSystemLayerHelpers.GetCreditsMessage = function(pn) end

SongUtil = {}
--- Returns a table with the playable Steps for the present Song based on the present Game.
---@return {Steps}
---@param so Song
SongUtil.GetPlayableSteps = function(so) end

--- Returns true if the song's steps (st) are playable.
---@return boolean
---@param so Song
---@param st Steps
SongUtil.IsStepsPlayable = function(so,st) end

--- Returns true if the song's StepsType (st) are playable.
---@return boolean
---@param so Song
---@param st StepsType
SongUtil.IsStepsTypePlayable = function(so,st) end

TrailUtil = {}
--- Returns the number of songs in a Trail.
---@return float
---@param pTrail Trail
TrailUtil.GetNumSongs = function(pTrail) end

--- Returns the Trail's total length in seconds.
---@return integer
---@param pTrail Trail
TrailUtil.GetTotalSeconds = function(pTrail) end


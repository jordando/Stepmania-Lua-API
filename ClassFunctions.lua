Actor = {}

--- This adds a wrapper state around the Actor, which is like wrapping the Actor in an ActorFrame, except that you can use it on any actor, and add or remove wrapper states in response to things that happen while the screen is being used. (wrapping an Actor in an ActorFrame normally requires setting it up before the screen starts)
--- The ActorFrame that is returned is the wrapper state, for convenience.
--- An Actor can have any number of wrapper states.  Use GetWrapperState to access wrapper states for the actor.
---@return ActorFrame
function Actor:AddWrapperState() end

--- Returns the number of wrapper states the actor has.
---@return ActorFrame
function Actor:GetNumWrapperStates() end

--- Returns the wrapper state at index i.  Think of wrapper states with a higher index as being "further out".  Actor is inside Wrapper 1, Wrapper 1 is inside Wrapper 2, Wrapper 2 is inside Wrapper 3, and so on.
---@return ActorFrame
---@param i integer
function Actor:GetWrapperState(i) end

--- Removes the wrapper state at index i.
---@param i integer
function Actor:RemoveWrapperState(i) end

--- Returns the Actor's parent, or nil if it doesn't have one.
---@return Actor
function Actor:GetParent() end

--- Returns the Actor's fake parent, or nil if it doesn't have one.
---@return Actor
function Actor:GetFakeParent() end

--- Sets the Actor's fake parent to p, or clears it if p is nil.
---@param p Actor
function Actor:SetFakeParent(p) end

--- Returns the Actor's visibility.
---@return boolean
function Actor:GetVisible() end

--- Returns the Actor's x position.
---@return float
function Actor:GetX() end

--- Returns the Actor's y position.
---@return float
function Actor:GetY() end

--- Returns the Actor's z position.
---@return float
function Actor:GetZ() end

--- Returns what the Actor's x position will be when it reaches its destination tween state.
---@return float
function Actor:GetDestX() end

--- Returns what the Actor's y position will be when it reaches its destination tween state.
---@return float
function Actor:GetDestY() end

--- Returns what the Actor's z position will be when it reaches its destination tween state.
---@return float
function Actor:GetDestZ() end

--- Returns the Actor's zoom.
---@return float
function Actor:GetZoom() end

--- Returns the Actor's X zoom.
---@return float
function Actor:GetZoomX() end

--- Returns the Actor's Y zoom.
---@return float
function Actor:GetZoomY() end

--- Returns the Actor's Z zoom.
---@return float
function Actor:GetZoomZ() end

--- Sets Texture Filtering for an Actor to b.
---@return void
---@param b boolean
function Actor:SetTextureFiltering(b) end

--- Plays the commands that follow at an accelerated rate (fRate * fRate), where fRate is in seconds.
---@return void
---@param fRate float
function Actor:accelerate(fRate) end

--- Adds a command to the Actor.
---@return void
---@param sName string
---@param cmd ActorCommand
function Actor:addcommand(sName,cmd) end

--- Adds rot to the Actor's current x rotation.
---@return void
---@param rot float
function Actor:addrotationx(rot) end

--- Adds rot to the Actor's current y rotation.
---@return void
---@param rot float
function Actor:addrotationy(rot) end

--- Adds rot to the Actor's current z rotation.
---@return void
---@param rot float
function Actor:addrotationz(rot) end

--- Adds xPos to the Actor's current x position.
---@return void
---@param xPos float
function Actor:addx(xPos) end

--- Adds yPos to the Actor's current y position.
---@return void
---@param yPos float
function Actor:addy(yPos) end

--- Adds zPos to the Actor's current z position.
---@return void
---@param zPos float
function Actor:addz(zPos) end

--- [02 Actor.lua] Sets the alignment of an Actor, where h and v are in the range 0..1.
---@return void
---@param h float
---@param v float
function Actor:align(h,v) end

--- Sets whether or not the Actor should animate.
---@return void
---@param b boolean
function Actor:animate(b) end

--- Sets the Actor's aux value. (This can be a solution for coupling data with an Actor.)
---@return void
---@param fAux float
function Actor:aux(fAux) end

--- If true, cull the Actor's back faces. See also: Actor:cullmode.
---@return void
---@param b boolean
function Actor:backfacecull(b) end

--- Sets the Actor's base alpha to fAlpha, where fAlpha is in the range 0..1.
---@return void
---@param fAlpha float
function Actor:basealpha(fAlpha) end

--- Sets the Actor's base X rotation to rot.
---@return void
---@param rot float
function Actor:baserotationx(rot) end

--- Sets the Actor's base Y rotation to rot.
---@return void
---@param rot float
function Actor:baserotationy(rot) end

--- Sets the Actor's base Z rotation to rot.
---@return void
---@param rot float
function Actor:baserotationz(rot) end

--- Sets the Actor's base zoom to zoom.
---@return void
---@param zoom float
function Actor:basezoom(zoom) end

--- Sets the Actor's base X zoom to zoom.
---@return void
---@param zoom float
function Actor:basezoomx(zoom) end

--- Sets the Actor's base Y zoom to zoom.
---@return void
---@param zoom float
function Actor:basezoomy(zoom) end

--- Sets the Actor's base Z zoom to zoom.
---@return void
---@param zoom float
function Actor:basezoomz(zoom) end

--- Sets the Actor to use the specified blend mode.
---@return void
---@param mode BlendMode
function Actor:blend(mode) end

--- Makes the Actor bob up and down. Can use effectmagnitude to define different bobbing behavior.
---@return void
function Actor:bob() end

--- Makes the Actor bounce, similar to bob but with one point acting as the ground. Can use effectmagnitude to define different bouncing behavior (with effectmagnitude values relating to x, y, and z movement).
---@return void
function Actor:bounce() end

--- [02 Actor.lua]
---@return void
---@param time float
function Actor:bouncebegin(time) end

--- [02 Actor.lua]
---@return void
---@param time float
function Actor:bounceend(time) end

--- [02 Actor.lua] Centers an Actor on the screen. (equivalent to x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y)
---@return void
function Actor:Center() end

--- [02 Actor.lua] Centers an Actor on the X axis. (equivalent to x,SCREEN_CENTER_X)
---@return void
function Actor:CenterX() end

--- [02 Actor.lua] Centers an Actor on the y axis. (equivalent to y,SCREEN_CENTER_Y)
---@return void
function Actor:CenterY() end

--- Determines if the z-buffer should be cleared or not.
---@return void
---@param bClear boolean
function Actor:clearzbuffer(bClear) end

--- [02 Actor.lua] Combines multiple interpolators for complex tweens. tweens
---	can either be a string like "linear,0.25,accelerate,0.75" or
---	a table with tween information { {Type="linear", Percent=0.25, Bezier=nil}, {Type="accelerate", Percent=0.75, Bezier=nil} }
---@return void
---@param length float
---@param tweens string
function Actor:compound(length,tweens) end

--- Crops percent of the Actor from the bottom, where percent is in the range 0..1.
---@return void
---@param percent float
function Actor:cropbottom(percent) end

--- Crops percent of the Actor from the left, where percent is in the range 0..1.
---@return void
---@param percent float
function Actor:cropleft(percent) end

--- Crops percent of the Actor from the right, where percent is in the range 0..1.
---@return void
---@param percent float
function Actor:cropright(percent) end

--- Crops percent of the Actor from the top, where percent is in the range 0..1.
---@return void
---@param percent float
function Actor:croptop(percent) end

--- Sets the Actor's cull mode to mode.
---@return void
---@param mode CullMode
function Actor:cullmode(mode) end

--- Plays the commands that follow at an decelerated rate (1 - (1-fRate) * (1-fRate)), where fRate is in seconds.
---@return void
---@param fRate float
function Actor:decelerate(fRate) end

--- Set the Actor's diffuse color to c.
---@return void
---@param c color
function Actor:diffuse(c) end

--- Sets the Actor's alpha level to fAlpha, where fAlpha is in the range 0..1.
---@return void
---@param fAlpha float
function Actor:diffusealpha(fAlpha) end

--- Makes the Actor switch between two colors immediately.  See Themerdocs/effect_colors.txt for an example.
---@return void
function Actor:diffuseblink() end

--- Sets the Actor's bottom edge color to c.
---@return void
function Actor:diffusebottomedge() end

--- Set the Actor's diffuse color to c, ignoring any alpha value in c.
---@return void
---@param c color
function Actor:diffusecolor(c) end

--- Sets the Actor's left edge color to c.
---@return void
---@param c color
function Actor:diffuseleftedge(c) end

--- Sets the Actor's lower left corner color to c.
---@return void
---@param c color
function Actor:diffuselowerleft(c) end

--- Sets the Actor's lower right corner color to c.
---@return void
---@param c color
function Actor:diffuselowerright(c) end

--- Makes the Actor switch between two colors, jumping back to the first after reaching the second.  See Themerdocs/effect_colors.txt for an example.
---@return void
function Actor:diffuseramp() end

--- Sets the Actor's right edge color to c.
---@return void
---@param c color
function Actor:diffuserightedge(c) end

--- Makes the Actor shift between two colors smoothly.  See Themerdocs/effect_colors.txt for an example.
---@return void
function Actor:diffuseshift() end

--- Sets the Actor's top edge color to c.
---@return void
---@param c color
function Actor:diffusetopedge(c) end

--- Sets the Actor's upper left corner color to c.
---@return void
---@param c color
function Actor:diffuseupperleft(c) end

--- Sets the Actor's upper right corner color to c.
---@return void
---@param c color
function Actor:diffuseupperright(c) end

--- Tells the Actor to draw itself.
---@return void
function Actor:Draw() end

--- Sets the Actor's draworder to iOrder, where larger values display first.
---@return void
---@param iOrder integer
function Actor:draworder(iOrder) end

--- [02 Actor.lua] (Added in sm-ssc)
---@return void
---@param time float
function Actor:drop(time) end

--- [02 Actor.lua]
---@return void
---@param time float
---@param fEase float
function Actor:ease(time,fEase) end

--- Set the Actor's effect clock to s.
---@return void
---@param s string
function Actor:effectclock(s) end

--- Sets the first effect color to c.
---@return void
---@param c color
function Actor:effectcolor1(c) end

--- Sets the second effect color to c.
---@return void
---@param c color
function Actor:effectcolor2(c) end

--- Set the Actor's effect magnitude in each direction to the given values.
---@return void
---@param fX float
---@param fY float
---@param fZ float
function Actor:effectmagnitude(fX,fY,fZ) end

--- Set the Actor's effect offset to fTime.  The offset is added to the time into the effect before calculating percent_through_effect.
---@return void
---@param fTime float
function Actor:effectoffset(fTime) end

--- Set the Actor's effect period to fTime.
---@return void
---@param fTime float
function Actor:effectperiod(fTime) end

--- Set the Actor's effect timing.
--- hold_at_zero is before hold_at_full in the argument list for compatibility.  A future version will probably swap them because it makes more sense to have hold_at_full come before hold_at_zero.
--- All effect timings must be greater than or equal to zero, at least one of them must be greater than zero.
--- The effect timing controls how long it takes an effect to cycle and how long it spends in each phase.
--- Depending on the effect clock, the actor's time into effect is updated every frame.  That time is then translated into a percent_through_effect using the parameters to this function.
--- ramp_to_half is the amount of time for percent_through_effect to reach 0.5.
--- hold_at_half is the amount of time percent_through_effect will stay at 0.5.
--- ramp_to_full is the amount of time percent_through_effect will take to go from 0.5 to 1.0.
--- hold_at_full is the amount of time percent_through_effect will stay at 1.0.
--- After reaching the end of hold_at_full, percent_through_effect stays at 0 until hold_at_zero is over.
--- The different effects use percent_through_effect in different ways.  Some use it to calculate percent_between_colors with this sine wave:  sin((percent_through_effect + 0.25f) * 2 * PI ) / 2 + 0.5f
--- Some effects check the internal boolean blink_on.  blink_on is true if percent_through_effect is greater than 0.5 and false if percent_through_effect is less than or equal to 0.5.
--- Check the effect functions for individual explanations:  diffuseblink, diffuseshift, glowblink, glowshift, glowramp, rainbow, wag, bounce, bob, pulse, spin, vibrate.
---@return void
---@param ramp_to_half float
---@param hold_at_half float
---@param ramp_to_full float
---@param hold_at_zero float
---@param hold_at_full float
function Actor:effecttiming(ramp_to_half,hold_at_half,ramp_to_full,hold_at_zero,hold_at_full) end

--- Set the hold_at_full part of the effect timing while leaving the others unchanged.
---@return void
---@param hold_at_full float
function Actor:effect_hold_at_full(hold_at_full) end

--- Fades percent of the Actor from the bottom where percent is in the range 0..1.
---@return void
---@param percent float
function Actor:fadebottom(percent) end

--- Fades percent of the Actor from the left where percent is in the range 0..1.
---@return void
---@param percent float
function Actor:fadeleft(percent) end

--- Fades percent of the Actor from the right where percent is in the range 0..1.
---@return void
---@param percent float
function Actor:faderight(percent) end

--- Fades percent of the Actor from the top where percent is in the range 0..1.
---@return void
---@param percent float
function Actor:fadetop(percent) end

--- Finishes up an Actor's tween immediately.
---@return void
function Actor:finishtweening() end

--- [02 Actor.lua] Stretches an Actor to fill the entire screen.
---@return void
function Actor:FullScreen() end

--- Returns the Actor's aux value.
---@return float
function Actor:getaux() end

--- Returns the Actor's base X zoom value.
---@return float
function Actor:GetBaseZoomX() end

--- Returns the Actor's base Y zoom value.
---@return float
function Actor:GetBaseZoomY() end

--- Returns the Actor's base Z zoom value.
---@return float
function Actor:GetBaseZoomZ() end

--- Returns true if the Actor has a command named sCmdName.
---@return boolean
---@param sCmdName string
function Actor:GetCommand(sCmdName) end

--- Returns the Actor's current diffuse color.
---@return color
function Actor:GetDiffuse() end

--- Returns the Actor's current diffusealpha.
---@return float
function Actor:GetDiffuseAlpha() end

--- Returns the Actor's current effect delta.
---@return float
function Actor:GetEffectDelta() end

--- Returns the Actor's current effect magnitude as three floats (not one; I hate Lua.xsd).
---@return float
function Actor:geteffectmagnitude() end

--- Returns the Actor's current glow color.
---@return color
function Actor:GetGlow() end

--- Returns the Actor's horizontal alignment as a number in the range 0..1.
---@return float
function Actor:GetHAlign() end

--- Returns the Actor's name.
---@return string
function Actor:GetName() end

--- Returns the number of states the Actor has.
---@return integer
function Actor:GetNumStates() end

--- Returns the Actor's current height.
---@return float
function Actor:GetHeight() end

--- Returns the Actor's current X rotation.
---@return float
function Actor:GetRotationX() end

--- Returns the Actor's current Y rotation.
---@return float
function Actor:GetRotationY() end

--- Returns the Actor's current Z rotation.
---@return float
function Actor:GetRotationZ() end

--- Returns the number of seconds into the currently running effect (e.g. diffuseshift, bob).
---@return float
function Actor:GetSecsIntoEffect() end

--- Returns how much time is remaining for the current tween.
---@return float
function Actor:GetTweenTimeLeft() end

--- Returns the Actor's vertical alignment as a number in the range 0..1.
---@return float
function Actor:GetVAlign() end

--- Returns the Actor's current width.
---@return float
function Actor:GetWidth() end

--- Returns the zoomed height of an Actor.
---@return float
function Actor:GetZoomedHeight() end

--- Returns the zoomed width of an Actor.
---@return float
function Actor:GetZoomedWidth() end

--- Returns true if this actor is currently set to use the effect delta for tweening.
---@return boolean
function Actor:get_tween_uses_effect_delta() end

--- Sets the Actor's glow color.
---@return void
---@param c color
function Actor:glow(c) end

--- Makes the Actor glow between two colors immediately.  See Themerdocs/effect_colors.txt for an example.
---@return void
function Actor:glowblink() end

--- Makes the Actor glow between two colors smoothly, jumping back to the first at the end.  See Themerdocs/effect_colors.txt for an example.
---@return void
function Actor:glowramp() end

--- Makes the Actor glow between two colors smoothly.  See Themerdocs/effect_colors.txt for an example.
---@return void
function Actor:glowshift() end

--- Set the fractional horizontal alignment of the Actor according to fAlign which should be a float in the range 0..1. An alignment of 0 is left aligned while an alignment of 1 is right aligned. See horizalign for the common case.
---@return void
---@param fAlign float
function Actor:halign(fAlign) end

--- Sets the heading of this Actor to fHeading.
---@return void
---@param fHeading float
function Actor:heading(fHeading) end

--- Hides the Actor for the specified amount of time.
---@return void
---@param fTime float
function Actor:hibernate(fTime) end

--- [Deprecated] Compatibility alias for the hidden command, which was removed in sm-ssc. Use visible instead.
---@return void
---@param b boolean
function Actor:hidden(b) end

--- [02 Actor.lua] "Hide if b is true, but don't unhide if b is false."
---@return void
---@param b boolean
function Actor:hide_if(b) end

--- Set the horizontal alignment of the Actor according to align. See halign for fractional alignment.
---@return void
---@param align Enum @Horizalign Enum
function Actor:horizalign(align) end

--- Hurries up an Actor's tweening by factor.
---@return void
---@param factor float
function Actor:hurrytweening(factor) end

--- Plays the commands that follow at a normal rate, where fRate is in seconds.
---@return void
---@param fRate float
function Actor:linear(fRate) end

--- [02 Lyrics.lua] Plays the lyric command for the specified side ("Back" or "Front").
---@return void
---@param side string
function Actor:LyricCommand(side) end

--- Sets the Actor's name to sName.
---@return void
---@param sName string
function Actor:name(sName) end

--- Stops the Actor's movement. (Usually used for Sprites or Models.)
---@return void
function Actor:pause() end

--- Sets the pitch of this Actor to fPitch.
---@return void
---@param fPitch float
function Actor:pitch(fPitch) end

--- Starts the Actor's movement. (Usually used for Sprites or Models.)
---@return void
function Actor:play() end

--- Plays a command named sCommandName.  params is passed to the command as an argument if it is a table.
---@return void
---@param sCommandName string
---@param params table
function Actor:playcommand(sCommandName,params) end

--- [02 Actor.lua] Sets the visibility of the Actor based on p being a human player.
---@return void
---@param p PlayerNumber
function Actor:player(p) end

--- Makes the Actor grow and shrink. Can use effectmagnitude to define different pulsing behavior.
---@return void
function Actor:pulse() end

--- Queues a command named sCommandName to be played.
---@return void
---@param sCommandName string
function Actor:queuecommand(sCommandName) end

--- Basically creates a command named !sMessageName (Note the ! at the beginning. The source code says this: "Hack: use "!" as a marker to broadcast a command, instead of playing a command, so we don't have to add yet another element to every tween state for this rarely-used command.")
---@return void
---@param sMessageName string
function Actor:queuemessage(sMessageName) end

--- Makes the Actor change colors continually using colors of the rainbow.  Each channel follows a cosine wave, red starts at 0, green starts at 2pi/3, and blue starts at 4pi/3.
---@return void
function Actor:rainbow() end

--- Sets the roll of this Actor to fRoll.
---@return void
---@param fRoll float
function Actor:roll(fRoll) end

--- Set the Actor's rotation on the X axis to fAlign.
---@return void
---@param fRotation float
function Actor:rotationx(fRotation) end

--- Set the Actor's rotation on the Y axis to fAlign.
---@return void
---@param fRotation float
function Actor:rotationy(fRotation) end

--- Set the Actor's rotation on the Z axis to fAlign.
---@return void
---@param fRotation float
function Actor:rotationz(fRotation) end

--- [02 Actor.lua] An alternative version of scale_or_crop_background.
---@return void
function Actor:scale_or_crop_alternative() end

--- [02 Actor.lua]
---@return void
function Actor:scale_or_crop_background() end

--- Scales the Actor to cover a rectangle defined by the four float arguments.
---@return void
---@param fLeft float
---@param fTop float
---@param fRight float
---@param fBottom float
function Actor:scaletocover(fLeft,fTop,fRight,fBottom) end

--- Scales the Actor to fit inside a rectangle defined by the four float arguments.
---@return void
---@param fLeft float
---@param fTop float
---@param fRight float
---@param fBottom float
function Actor:scaletofit(fLeft,fTop,fRight,fBottom) end

--- Sets the height of the Actor.
---@return void
---@param height float
function Actor:SetHeight(height) end

--- Sets the size of the Actor.
---@return void
---@param width float
---@param height float
function Actor:setsize(width,height) end

--- [01 alias.lua] Alias for setsize.
---@return void
---@param width float
---@param height float
function Actor:SetSize(width,height) end

--- Sets a multi-framed Actor's state to iNewState.
---@return void
---@param iNewState integer
function Actor:setstate(iNewState) end

--- Sets the width of the Actor.
---@return void
---@param width float
function Actor:SetWidth(width) end

--- Use this to make the actor use the effect clock to tween instead of using the global frame delta.
---@param bool boolean
function Actor:set_tween_uses_effect_delta(bool) end

--- Sets the shadow's color to c.
---@return void
---@param c color
function Actor:shadowcolor(c) end

--- Sets the Actor's shadow length to fLength.
---@return void
---@param fLength float
function Actor:shadowlength(fLength) end

--- Sets the Actor's horizontal shadow length to fLength.
---@return void
---@param fLength float
function Actor:shadowlengthx(fLength) end

--- Sets the Actor's vertical shadow length to fLength.
---@return void
---@param fLength float
function Actor:shadowlengthy(fLength) end

--- Skews the Actor on the x axis by fAmount.
---@return void
---@param fAmount float
function Actor:skewx(fAmount) end

--- Skews the Actor on the y axis by fAmount.
---@return void
---@param fAmount float
function Actor:skewy(fAmount) end

--- Waits fSeconds before executing the next command.
---@return void
---@param fSeconds float
function Actor:sleep(fSeconds) end

--- [02 Actor.lua]
---@return void
---@param time float
function Actor:smooth(time) end

--- Tells the Actor to spin. Can use effectmagnitude to define different spinning behavior.
---@return void
function Actor:spin() end

--- Stops any effect the Actor has.
---@return void
function Actor:stopeffect() end

--- Stops any tweening.
---@return void
function Actor:stoptweening() end

--- Stretches the Actor to a rectangle of a specific size.
---@return void
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
function Actor:stretchto(x1,y1,x2,y2) end

--- Translates the texture of the actor by x and y.
---@return void
---@param x float
---@param y float
function Actor:texturetranslate(x,y) end

--- Determines if the Actor should use texture wrapping or not.
---@return void
---@param bWrap boolean
function Actor:texturewrapping(bWrap) end

--- Uses type to determine the tween to use.  The type must be one of the TweenType enum values.  If the type is note TweenType_Bezier, the params table is ignored.  If the type is TweenType_Bezier, then the params table must have 4 or 8 numbers.  4 numbers in the params creates a 1 dimensional bezier curve, 8 numbers creates a 2 dimensional bezier curve.
--- It's usually more convenient to use Actor:linear, Actor:accelerate, and so on, rather than using Actor:tween directly.
---@param time float
---@param type Enum @TweenType Enum
---@param params table
function Actor:tween(time,type,params) end

--- Set the fractional vertical alignment of the Actor according to fAlign which should be a float in the range 0..1. An alignment of 0 is top aligned while an alignment of 1 is bottom aligned. See vertalign for the common case.
---@return void
---@param fAlign float
function Actor:valign(fAlign) end

--- Set the vertical alignment of the Actor according to align. See valign for fractional alignment.
---@return void
---@param align Enum @VertAlign Enum
function Actor:vertalign(align) end

--- Makes the Actor vibrate violently. Can use effectmagnitude to define different vibration behavior.
---@return void
function Actor:vibrate() end

--- Sets an Actor's visibility to b.
---@return void
---@param b boolean
function Actor:visible(b) end

--- Makes the Actor wag. Use effectmagnitude to define different wag behavior.
---@return void
function Actor:wag() end

--- Set the x position of the Actor to xPos.
---@return void
---@param xPos float
function Actor:x(xPos) end

--- Set the y position of the Actor to yPos.
---@return void
---@param yPos float
function Actor:y(yPos) end

--- Set the z position of the Actor to zPos.
---@return void
---@param zPos float
function Actor:z(zPos) end

--- Sets the z bias to fBias.
---@return void
---@param fBias float
function Actor:zbias(fBias) end

--- Enables/disables z-buffer depending on bUse.
---@return void
---@param bUse boolean
function Actor:zbuffer(bUse) end

--- Zooms the Actor to zoom scale.
---@return void
---@param zoom float
function Actor:zoom(zoom) end

--- Zooms the Actor on both the X and Y axis using zoomX and zoomY.
---@return void
---@param zoomX float
---@param zoomY float
function Actor:zoomto(zoomX,zoomY) end

--- Zooms the Actor to zoom height. See also: zoomy.
---@return void
---@param zoom float
function Actor:zoomtoheight(zoom) end

--- Zooms the Actor to zoom width. See also: zoomx.
---@return void
---@param zoom float
function Actor:zoomtowidth(zoom) end

--- Zooms the Actor to zoom scale on the X axis.
---@return void
---@param zoom float
function Actor:zoomx(zoom) end

--- Zooms the Actor to zoom scale on the Y axis.
---@return void
---@param zoom float
function Actor:zoomy(zoom) end

--- Zooms the Actor to zoom scale on the Z axis.
---@return void
---@param zoom float
function Actor:zoomz(zoom) end

--- Sets the z testing mode to write on pass if true, turns it off if false
---@return void
---@param bTest boolean
function Actor:ztest(bTest) end

--- Sets the z testing mode to testMode.
---@return void
---@param testMode Enum @ZTestMode enum
function Actor:ztestmode(testMode) end

--- Sets z writing to true or false based on bWrite.
---@return void
---@param bWrite boolean
function Actor:zwrite(bWrite) end

--- [02 Actor.lua] Plays the commands that follow using a bezier curve to determine the rate.  The curve must have 4 or 8 elements.  This is a convenience wrapper around calling Actor:tween with TweenType_Bezier.
---@param time float
---@param curve table
function Actor:bezier(time,curve) end

--- [02 Actor.lua] Stretches an Actor to cover the screen. (equivalent to stretchto,0,0,SCREEN_WIDTH,SCREEN_HEIGHT)
---@return void
function Actor:FullScreen() end

--- [02 Actor.lua] A customized version of pulse that is more appealing for on-beat effects.
---@return void
---@param fEffectPeriod float
function Actor:heartbeat(fEffectPeriod) end

--- [02 Actor.lua] Sets and Actor as a mask destination.
---@return void
function Actor:MaskDest() end

--- [02 Actor.lua] Sets an Actor as a mask source. (Also clears zbuffer; other mask sources need to not clear the zbuffer)
---@return void
function Actor:MaskSource() end

--- [02 Actor.lua] Make graphics their true size at any resolution.
---@return void
---@param f float
function Actor:Real(f) end

--- [02 Actor.lua] Scale things back up after they have already been scaled down.
---@return void
---@param f float
function Actor:RealInverse(f) end

--- [02 Actor.lua] A customized version of pulse that is more appealing for on-beat effects.
---@return void
---@param fEffectPeriod float
function Actor:thump(fEffectPeriod) end

--- Sets the x and y location of the Actor in one command.
---@return void
---@param actorX float
---@param actorY float
function Actor:xy(actorX,actorY) end

ActorFrame = {}

--- Adds a child to the ActorFrame from the specified path.
---@return boolean
---@param sPath string
function ActorFrame:AddChildFromPath(sPath) end

--- Sets the field of view for the ActorFrame.
---@return void
---@param fFOV float
function ActorFrame:fov(fFOV) end

--- Returns the child with a name of sName.
--- If there are multiple children with that name, returns an array of those children.
--- The table also acts as a pass through layer, function calls pass through to the last child of that name.
---@return Actor
---@param sName string
function ActorFrame:GetChild(sName) end

--- Returns a table of all the children in the ActorFrame.
--- The table is indexed by the names of the children.
--- If there are multiple children with the same name, the entry for that name is an array of those children.
--- The table also acts as a pass through layer, function calls pass through to the last child of that name.
---@return {Actor}
function ActorFrame:GetChildren() end

--- Gets the ActorFrame's Draw function.
---@return LuaReference
function ActorFrame:GetDrawFunction() end

--- Returns the number of children in the ActorFrame.
---@return integer
function ActorFrame:GetNumChildren() end

--- Gets the update function's rate.
---@return float
function ActorFrame:GetUpdateRate() end

--- Plays the sCommandName command on the ActorFrame's children.
---@return void
---@param sCommandName string
function ActorFrame:playcommandonchildren(sCommandName) end

--- Plays the sCommandName command on the ActorFrame's leaves.
---@return void
---@param sCommandName string
function ActorFrame:playcommandonleaves(sCommandName) end

--- Sets if the Actorframe should propagate commands to its children.
---@return void
---@param bPropagate boolean
function ActorFrame:propagate(bPropagate) end

--- [02 Actor.lua] Propagates a command to the ActorFrame's children.
---@return void
---@param cmd LuaReference
function ActorFrame:propagatecommand(cmd) end

--- Removes all the children from the ActorFrame.
---@return void
function ActorFrame:RemoveAllChildren() end

--- Removes the specified child from the ActorFrame.
---@return void
---@param sChild string
function ActorFrame:RemoveChild(sChild) end

--- Runs the commands in cmds on the ActorFrame's children.
---@return void
---@param cmds LuaReference
function ActorFrame:RunCommandsOnChildren(cmds) end

--- Runs the commands in cmds on the ActorFrame's leaves.
---@return void
---@param cmds LuaReference
function ActorFrame:runcommandsonleaves(cmds) end

--- Sets the ActorFrame's ambient light color to c.
---@return void
---@param c color
function ActorFrame:SetAmbientLightColor(c) end

--- Sets the ActorFrame's diffuse light color to c.
---@return void
---@param c color
function ActorFrame:SetDiffuseLightColor(c) end

--- Sets if the ActorFrame should draw by Z position.
---@return void
---@param b boolean
function ActorFrame:SetDrawByZPosition(b) end

--- Sets the ActorFrame's Draw function to the specified Lua function.
---@return void
---@param DrawFunction LuaReference
function ActorFrame:SetDrawFunction(DrawFunction) end

--- Sets the field of view for the ActorFrame.
---@return void
---@param fFOV float
function ActorFrame:SetFOV(fFOV) end

--- Currently unimplemented since it does not handle errors correctly. Arguments must be passed in as a table.
---@return void
---@param x float
---@param y float
---@param z float
function ActorFrame:SetLightDirection(x,y,z) end

--- Sets the ActorFrame's specular light color to c.
---@return void
---@param c color
function ActorFrame:SetSpecularLightColor(c) end

--- Sets the ActorFrame's update function to the specified Lua function.
---@return void
---@param UpdateFunction LuaReference
function ActorFrame:SetUpdateFunction(UpdateFunction) end

--- Sets the update function's rate to fRate.
---@return void
---@param fRate float
function ActorFrame:SetUpdateRate(fRate) end

--- Tells the ActorFrame to sort by draw order.
---@return void
function ActorFrame:SortByDrawOrder() end

--- Sets the vanishing point for the ActorFrame.
---@return void
---@param fX float
---@param fY float
function ActorFrame:vanishpoint(fX,fY) end

ActorFrameTexture = {}

--- Creates the ActorFrameTexture.
---@return void
function ActorFrameTexture:Create() end

--- Enables/disables the Alpha Buffer.
---@return void
---@param bEnable boolean
function ActorFrameTexture:EnableAlphaBuffer(bEnable) end

--- Enables/disables the Depth Buffer.
---@return void
---@param bEnable boolean
function ActorFrameTexture:EnableDepthBuffer(bEnable) end

--- Enables/disables
---@return void
---@param bEnable boolean
function ActorFrameTexture:EnableFloat(bEnable) end

--- Enables/disables the Preserve Texture option.
---@return void
---@param bEnable boolean
function ActorFrameTexture:EnablePreserveTexture(bEnable) end

--- Returns the texture.
---@return RageTexture
function ActorFrameTexture:GetTexture() end

--- Sets the Texture's name to sName.
---@return void
---@param sName string
function ActorFrameTexture:SetTextureName(sName) end

ActorMultiTexture = {}

--- Adds a texture to the ActorMultiTexture. Returns the number of texture units.
---@return integer
---@param tex RageTexture
function ActorMultiTexture:AddTexture(tex) end

--- Clears all the textures from the ActorMultiTexture.
---@return void
function ActorMultiTexture:ClearTextures() end

--- Sets the EffectMode on the ActorMultiTexture.
---@return void
---@param em EffectMode
function ActorMultiTexture:SetEffectMode(em) end

--- Sets the size of the ActorMultiTexture from the specified texture.
---@return void
---@param tex RageTexture
function ActorMultiTexture:SetSizeFromTexture(tex) end

--- Sets the coordinates of the ActorMultiTexture.
---@return void
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
function ActorMultiTexture:SetTextureCoords(x1,y1,x2,y2) end

--- Sets a TextureMode on the specified index.
---@return void
---@param iIndex integer
---@param tm Enum @TextureMode enum
function ActorMultiTexture:SetTextureMode(iIndex,tm) end

ActorMultiVertex = {}

--- The list of quad states is used to determine which animation state is used for each quad.  The offset is added to the AMV's current state, and the resulting state is used.
---@param offset integer
function ActorMultiVertex:AddQuadState(offset) end

--- Adds an animation state to the ActorMultiVertex.  The state_data table must be like this:
--- {{left, top, right, bottom}, delay}
--- left, top, right, and bottom are pixel coordinates, starting at 0.  If delay is 0 or negative, the state will last forever.
---@param state_data table
function ActorMultiVertex:AddState(state_data) end

--- Forces the AMV to update the texture coordinates on all its quads, even if the current state has not changed.
function ActorMultiVertex:ForceStateUpdate() end

--- Returns whether the AMV uses the animation state.
---@return boolean
function ActorMultiVertex:GetUseAnimationState() end

--- Sets whether the AMV uses the animation state.
--- This works best when using DrawMode_Quads.
--- AMV's can have animated textures like sprites.  Each state tells the AMV what part of the texture to use, and how long the state lasts.
--- Use AddState to add a state onto the end, or SetStateProperties to set all the states at once, or SetState to set a single state.
--- Each quad has its own offset that is added to the current state.  Use AddQuadState to add to the list of quad states, or SetQuadState to set an existing quad state.
---@param use boolean
function ActorMultiVertex:SetUseAnimationState(use) end

--- Returns the number of states the AMV has.
---@return integer
function ActorMultiVertex:GetNumStates() end

--- Returns the number of quad states in the destination tween state for the AMV.
---@return integer
function ActorMultiVertex:GetNumQuadStates() end

--- Returns the id of the current state.
---@return integer
function ActorMultiVertex:GetState() end

--- Gets whether the AMV should call the decode function for its texture during updates.
---@return boolean
function ActorMultiVertex:GetDecodeMovie() end

--- Sets whether the AMV should call the decode function for its texture during updates.
---@param decode boolean
function ActorMultiVertex:SetDecodeMovie(decode) end

--- Sets the current state.
---@param id integer
function ActorMultiVertex:SetState(id) end

--- Returns the offset of the requested quad state.
---@return integer
---@param id integer
function ActorMultiVertex:GetQuadState(id) end

--- Sets the offset of the requested quad state.
---@param id integer
---@param offset integer
function ActorMultiVertex:SetQuadState(id,offset) end

--- Returns a table containing the data for the requested state.
---@return table
---@param id integer
function ActorMultiVertex:GetStateData(id) end

--- Sets the requested state to the data in state_data.  Similar to AddState, but SetStateData only works on states that have already been added.
---@param id integer
---@param state_data table
function ActorMultiVertex:SetStateData(id,state_data) end

--- Each element of the table must be a state_data table, and is used to construct one state.  The table as a whole is the entire list of all states for the AMV.
---@param state_data table @ {state_data, ...}
function ActorMultiVertex:SetStateProperties(state_data) end

--- Removes the requested state from the state list.
---@param id integer
function ActorMultiVertex:RemoveState(id) end

--- Removes the requested quad state from the quad state list.
---@param id integer
function ActorMultiVertex:RemoveQuadState(id) end

--- Sets the delay for every state to delay.
---@param delay float
function ActorMultiVertex:SetAllStateDelays(delay) end

--- Sets how far into its animation the AMV is.
---@param seconds float
function ActorMultiVertex:SetSecondsIntoAnimation(seconds) end

--- Sets vertex number index with the properties provided. The tables of properties are each optional and can be provided in any order.
---@return void
---@param index integer
---@param table table @{ table pos, table color, table textcoords}

function ActorMultiVertex:SetVertex(index,table) end

--- Sets multiple vertices at once. The elements of vertices should themselves be tables, of the form provided to SetVertex. If vertices is the first argument it will start from vertex 1. If an integer is provided before vertices it will start from that vertex. It will add vertices as necessary.
--- Example: self:SetVertices( { { { x1, y1, z1 } , { r1,g1,b1,a1 } , { tcx1,tcy1 } }; { { x2, y2, z2 } , { r2,g2,b2,a2 } , { tcx2,tcy2 } } } )
---@return void
---@param first integer
---@param vertices table
function ActorMultiVertex:SetVertices(first,vertices) end

--- Sets all the drawn verts of the ActorMultiVertex by evaluating the splines.
--- ("all the drawn verts" means all the verts between FirstToDraw and NumToDraw, the verts that are set to draw in the current tween state.)
--- The parts of the ActorMultiVertex are evenly spaced along the spline in terms of t value.
--- The exact behavior depends on the draw mode.
--- DrawMode_Quads uses all 4 splines, one for each corner.
--- DrawMode_QuadStrip and DrawMode_Strip use 2 splines, one for each edge of the strip.
--- DrawMode_Fan uses one spline, for the edge verts of the fan.  The first vert is not touched because it is the center.
--- DrawMode_Triangles uses 3 splines, one for each corner.
--- DrawMode_SymmetricQuadStrip uses 3 splines, one on each edge and one in the center.
--- DrawMode_LineStrip uses 1 spline.
function ActorMultiVertex:SetVertsFromSplines() end

--- Returns the requested spline.  Spline indices range from 1 to 4.
--- ActorMultiVertex splines are not inside the tween state, and will not change the verts until you call SetVertsFromSplines.
---@return CubicSplineN
---@param i integer
function ActorMultiVertex:GetSpline(i) end

--- Sets the number of vertices.
---@return void
---@param num integer
function ActorMultiVertex:SetNumVertices(num) end

--- Returns the number of vertices
---@return void
function ActorMultiVertex:GetNumVertices() end

--- Sets the draw state variables to the values in the table.
--- Mode must be a DrawMode.
--- First is the index of the first vertex to draw.
--- Num is the number of vertices to draw.  -1 for Num means draw all verts after First.
--- Any value not in the table defaults to the already set value.
--- Examples:
--- -- Sets all three parts of the draw state.
--- self:SetDrawState{Mode="DrawMode_Quads", First= 1, Num= -1}
--- -- Set only the draw mode.  First and Num remain unchanged from previous.
--- self:SetDrawState{Mode="DrawMode_Quads"}
--- -- Set the first and number to draw.  Draw mode remains unchanged.
--- self:SetDrawState{First= 3, Num= 4}
---@return void
---@param draw_state_table table @{ Mode= mode, First= first, Num= num }
function ActorMultiVertex:SetDrawState(draw_state_table) end

--- Get the DrawMode of the destination tween state.
---@return Enum @DrawMode enum
function ActorMultiVertex:GetDestDrawMode() end

--- Get the FirstToDraw of the destination tween state.
---@return integer
function ActorMultiVertex:GetDestFirstToDraw() end

--- Get the NumToDraw of the destination tween state.
---@return integer
function ActorMultiVertex:GetDestNumToDraw() end

--- Get the DrawMode of the current tween state.
---@return Enum @DrawMode enum
function ActorMultiVertex:GetCurrDrawMode() end

--- Get the FirstToDraw of the current tween state.
---@return integer
function ActorMultiVertex:GetCurrFirstToDraw() end

--- Get the NumToDraw of the current tween state.
---@return integer
function ActorMultiVertex:GetCurrNumToDraw() end

--- Returns the ActorMultiVertex's texture.
---@return RageTexture
function ActorMultiVertex:GetTexture() end

--- Sets the EffectMode of the ActorMultiVertex.
---@return void
---@param em EffectMode
function ActorMultiVertex:SetEffectMode(em) end

--- Sets the TextureMode of the ActorMultiVertex.
---@return void
---@param tm Enum @TextureMode enum
function ActorMultiVertex:SetTextureMode(tm) end

--- Sets the width of the line for DrawMode_LineStrip.
---@return void
---@param width float
function ActorMultiVertex:SetLineWidth(width) end

--- Sets the texture to texture
---@return void
---@param texture RageTexture
function ActorMultiVertex:SetTexture(texture) end

--- Sets the texture at from the file path path.
---@return void
---@param path string
function ActorMultiVertex:LoadTexture(path) end

ActorProxy = {}

--- Returns the target of the ActorProxy.
---@return Actor
function ActorProxy:GetTarget() end

--- Sets the ActorProxy target to a.
---@return void
---@param a Actor
function ActorProxy:SetTarget(a) end

ActorScroller = {}

--- Returns the scroller's current item.
---@return float
function ActorScroller:GetCurrentItem() end

--- Returns the item the scroller's going to.
---@return float
function ActorScroller:GetDestinationItem() end

--- Returns how long it will take for the scroller to completely scroll through all its items.
---@return float
function ActorScroller:GetFullScrollLengthSeconds() end

--- Returns the number of items in the ActorScroller.
---@return integer
function ActorScroller:GetNumItems() end

--- Returns the number of seconds the scroller pauses between items.
---@return float
function ActorScroller:GetSecondsPauseBetweenItems() end

--- Returns the number of seconds until the scroller reaches its destination.
---@return float
function ActorScroller:GetSecondsToDestination() end

--- Compatibility alias for GetSecondsToDestination.
---@return float
function ActorScroller:getsecondtodestination() end

--- Positions the scroller items.
---@return void
function ActorScroller:PositionItems() end

--- Scrolls through all the items in the scroller.
---@return void
function ActorScroller:ScrollThroughAllItems() end

--- Compatibility alias for ScrollThroughAllItems.
---@return void
function ActorScroller:scrollthroughallitems() end

--- Scrolls through all the items in the scroller with padding at the beginning and end.
---@return void
---@param fItemPaddingStart float
---@param fItemPaddingEnd float
function ActorScroller:ScrollWithPadding(fItemPaddingStart,fItemPaddingEnd) end

--- Compatibility alias for ScrollWithPadding.
---@return void
---@param fItemPaddingStart float
---@param fItemPaddingEnd float
function ActorScroller:scrollwithpadding(fItemPaddingStart,fItemPaddingEnd) end

--- Sets the item the scroller should scroll to next and makes it the current item.
---@return void
---@param fItemIndex float
function ActorScroller:SetCurrentAndDestinationItem(fItemIndex) end

--- Sets the item the scroller should scroll to next.
---@return void
---@param fItemIndex float
function ActorScroller:SetDestinationItem(fItemIndex) end

--- Sets if the scroller should catch up fast.
---@return void
---@param bOn boolean
function ActorScroller:SetFastCatchup(bOn) end

--- Compatibility alias for SetFastCatchup.
---@return void
---@param bOn boolean
function ActorScroller:setfastcatchup(bOn) end

--- Specifies if the scroller should loop or not.
---@return void
---@param bLoop boolean
function ActorScroller:SetLoop(bLoop) end

--- Sets the scroller's mask to a Quad that is fWidth by fHeight pixels.
---@return void
---@param fWidth float
---@param fHeight float
function ActorScroller:SetMask(fWidth,fHeight) end

--- Sets the scroller to draw fNumItems items.
---@return void
---@param fNumItems float
function ActorScroller:SetNumItemsToDraw(fNumItems) end

--- Sets the number of subdivisions in the scroller.
---@return void
---@param iNumSubdivisions integer
function ActorScroller:SetNumSubdivisions(iNumSubdivisions) end

--- Compatibility alias for SetNumSubdivisions.
---@return void
---@param iNumSubdivisions integer
function ActorScroller:setnumsubdivisions(iNumSubdivisions) end

--- Sets the scroller's pause countdown to fSecs.
---@return void
---@param fSecs float
function ActorScroller:SetPauseCountdownSeconds(fSecs) end

--- Sets the scroller's pause between items to fSeconds.
---@return void
---@param fSeconds float
function ActorScroller:SetSecondsPauseBetweenItems(fSeconds) end

--- Sets how many seconds the scroller should spend on each item.
--- A value of 0 means the scroller will not scroll.
---@return void
---@param fSeconds float
function ActorScroller:SetSecondsPerItem(fSeconds) end

--- Compatibility alias for SetSecondsPerItem.
---@return void
---@param fSeconds float
function ActorScroller:setsecondsperitem(fSeconds) end

--- Sets the scroller's transform function to the specified Lua function.
---@return void
---@param ScrollerFunction LuaReference
function ActorScroller:SetTransformFromFunction(ScrollerFunction) end

--- Sets the scroller's transform function from fItemHeight.
---@return void
---@param fItemHeight float
function ActorScroller:SetTransformFromHeight(fItemHeight) end

--- Sets the scroller's transform function from fItemWidth.
---@return void
---@param fItemWidth float
function ActorScroller:SetTransformFromWidth(fItemWidth) end

ActorSound = {}

--- Returns the RageSound that can be played by this Actor.
---@return RageSound
function ActorSound:get() end

--- Returns whether the sound is an action.
---@return boolean
function ActorSound:get_is_action() end

--- Loads the sound at sPath.
---@return void
---@param sPath string
function ActorSound:load(sPath) end

--- Pauses or unpauses the sound based on bPause.
---@return void
---@param bPause boolean
function ActorSound:pause(bPause) end

--- Plays the sound.
---@return void
function ActorSound:play() end

--- [02 Sound.lua] Plays the sound on the given player's side. You must set SupportPan = true on load.
---@return void
---@param pn Enum @PlayerNumber enum
function ActorSound:playforplayer(pn) end

--- Sets whether the sound is an action.
---@param is_action boolean
function ActorSound:set_is_action(is_action) end

--- Stops the sound.
---@return void
function ActorSound:stop() end

AnnouncerManager = {}

--- Returns true if Announcer sAnnouncer exists.
---@return boolean
---@param sAnnonucer string
function AnnouncerManager:DoesAnnouncerExist(sAnnonucer) end

--- Returns a table of installed announcers.
---@return {string}
function AnnouncerManager:GetAnnouncerNames() end

--- Returns the current announcer's name.
---@return string
function AnnouncerManager:GetCurrentAnnouncer() end

--- Sets the announcer to sNewAnnouncer.
---@return void
---@param sNewAnnouncer string
function AnnouncerManager:SetCurrentAnnouncer(sNewAnnouncer) end

ArchHooks = {}

--- Returns true if the application presently has focus.
---@return boolean
function ArchHooks:AppHasFocus() end

--- Returns the name of the architecture in use.
---@return {string}
function ArchHooks:GetArchName() end

Banner = {}

--- Returns true if the Banner is currently scrolling.
---@return boolean
function Banner:GetScrolling() end

---@return float
function Banner:GetPercentScrolling() end

--- Loads the background from an UnlockEntry.
---@return void
---@param pUE UnlockEntry
function Banner:LoadBackgroundFromUnlockEntry(pUE) end

--- Loads the banner from an UnlockEntry.
---@return void
---@param pUE UnlockEntry
function Banner:LoadBannerFromUnlockEntry(pUE) end

--- Loads the card image from the specified Character.
---@return void
---@param pCharacter Character
function Banner:LoadCardFromCharacter(pCharacter) end

--- Loads the banner from the cache based on sPath (typically Song:GetBannerPath or Course:GetBannerPath).
---@return void
---@param sPath string
function Banner:LoadFromCachedBanner(sPath) end

--- Loads a Banner from a specified Course.
---@return void
---@param c Course
function Banner:LoadFromCourse(c) end

--- Loads a Banner from a specified Song.
---@return void
---@param s Song
function Banner:LoadFromSong(s) end

--- Loads a Banner from a specified Song Group.
---@return void
---@param s string
function Banner:LoadFromSongGroup(s) end

--- Loads a Banner from a specified SortOrder.
---@return void
---@param so Enum @SortOrder enum
function Banner:LoadFromSortOrder(so) end

--- Loads an icon from the specified Character.
---@return void
---@param pCharacter Character
function Banner:LoadIconFromCharacter(pCharacter) end

--- See Sprite:scaletoclipped.
---@return void
---@param fWidth float
---@param fHeight float
function Banner:scaletoclipped(fWidth,fHeight) end

--- See Sprite:scaletoclipped.
---@return void
---@param fWidth float
---@param fHeight float
function Banner:ScaleToClipped(fWidth,fHeight) end

---@return void
---@param bScroll boolean
function Banner:SetScrolling(bScroll) end

BitmapText = {}

--- Add the attribute attr to the string at position
--- iPos.
--- The attribute is a table that must contain Length
--- which specifies how many (multi-byte) characters the attribute
--- is to apply. If Length=-1, then the attribute applies
--- until another attribute overrides it.
--- If the table contains Diffuse, then the color value
--- is applied to the range of text.
--- If the table contains Diffuses, then it should be
--- an array of 4 colors which specify the diffuse color for the
--- top left, top right, bottom left, and bottom right.
--- If the table contains Glow, then the color value
--- is applied as a glow to the range of text.
--- Example:
--- attr = { Length = 10; Diffuse = color("#AABBCC"); }
---@return void
---@param iPos integer
---@param attr table
function BitmapText:AddAttribute(iPos,attr) end

--- Clear all attributes associated with the BitmapText.
---@return void
function BitmapText:ClearAttributes() end

--- [02 Actor.lua] Sets the diffuse and stroke color of text in one command.
---@return void
---@param diffuseColor color
---@param strokeColor color
function BitmapText:DiffuseAndStroke(diffuseColor,strokeColor) end

--- Returns the text that is currently set.
---@return string
function BitmapText:GetText() end

--- Causes each character of text to be randomly distorted by
--- distortion_percentage of its size when the text is set.  The distortion
--- only changes when the text changes.
---@return void
---@param distortion_percentage float
function BitmapText:distort(distortion_percentage) end

--- Turns off distortion.
---@return void
function BitmapText:undistort() end

--- Returns whether the diffuse colors in the attributes are multiplied by the general diffuse colors of the BitmapText.
---@return boolean
function BitmapText:get_mult_attrs_with_diffuse() end

--- If mult_attrs_with_diffuse is set to true, then the diffuse colors in the attributes are multiplied by the general diffuse colors of the BitmapText.
---@param mult boolean
function BitmapText:set_mult_attrs_with_diffuse(mult) end

--- If bJitter is true, move each character of the string around by a small random amount.
---@return void
---@param bJitter boolean
function BitmapText:jitter(bJitter) end

--- If use_zoom is true, this BitmapText will use the zoom that has been applied to it when calculating to change its base zoom from maxheight or maxwidth.
---@return void
---@param use_zoom boolean
function BitmapText:max_dimension_use_zoom(use_zoom) end

--- Set the maximum height of the unzoomed text to fHeight. If fHeight is 0, then there is no maximum height.
---@return void
---@param fHeight float
function BitmapText:maxheight(fHeight) end

--- Set the maximum width of the unzoomed text to fWidth. If fWidth is 0, then there is no maximum width.
---@return void
---@param hWidth float
function BitmapText:maxwidth(hWidth) end

--- [02 Actor.lua] Remove any stroke color.
---@return void
function BitmapText:NoStroke() end

--- [02 Actor.lua] Alias for setting Actor:SetTextureFiltering to false.
---@return void
function BitmapText:PixelFont() end

--- If true, set each character of the text in turn to the rainbow colors in the metrics BitmapText::RainbowColor#.
---@return void
---@param bRainbowScroll boolean
function BitmapText:rainbowscroll(bRainbowScroll) end

--- Set the text to sText. This clears all attributes.
---@return void
---@param sText string
function BitmapText:settext(sText) end

--- [02 Actor.lua] Sets text using string.format(sFormat, ...).
---@return void
---@param sFormat string
---@param various table
function BitmapText:settextf(sFormat,various) end

--- [02 Actor.lua] Alias for strokecolor.
---@return void
---@param c color
function BitmapText:Stroke(c) end

--- Sets the stroke color to c.
---@return void
---@param c color
function BitmapText:strokecolor(c) end

--- If the text is glowing, specify if just the stroke layer, just the inner layer, or both are affected by the glow.
---@return void
---@param tgm Enum @TextGlowMode enum
function BitmapText:textglowmode(tgm) end

--- If true, make all text uppercase.
---@return void
---@param b boolean
function BitmapText:uppercase(b) end

--- Add iSpacing pixels of padding between lines of text.
---@return void
---@param iSpacing integer
function BitmapText:vertspacing(iSpacing) end

--- Wrap the unzoomed text at iWidth pixels. If you Actor:zoom or Actor:zoomx by x and you want the text wrapped at width, then you should use wrapwidthpixels(width/x).
---@return void
---@param iWidth integer
function BitmapText:wrapwidthpixels(iWidth) end

BPMDisplay = {}

--- Returns the text that is currently set at the exact moment you call it. This is likely only going to be useful in an Update command.
---@return string
function BPMDisplay:GetText() end

--- Sets the BPMDisplay from the specified Course.
---@return void
---@param c Course
function BPMDisplay:SetFromCourse(c) end

--- Sets the BPMDisplay from the GameState.
---@return void
function BPMDisplay:SetFromGameState() end

--- Sets the BPMDisplay from the specified Song.
---@return void
---@param s Song
function BPMDisplay:SetFromSong(s) end

--- Sets the BPMDisplay from the specified Steps.
---@return void
---@param s Steps
function BPMDisplay:SetFromSteps(s) end

Character = {}

--- Returns the path to the character's card graphic.
---@return string
function Character:GetCardPath() end

--- Returns this character's directory.
---@return string
function Character:GetCharacterDir() end

--- Returns this character's ID.
---@return string
function Character:GetCharacterID() end

--- Returns the path of the dancing animation of this character.
---@return string
function Character:GetDanceAnimationPath() end

--- Returns the character's display name.
---@return string
function Character:GetDisplayName() end

--- Returns the path to the character's icon.
---@return string
function Character:GetIconPath() end

--- Returns the path of the model of this character.
---@return string
function Character:GetModelPath() end

--- Returns the path of the rest animation of this character.
---@return string
function Character:GetRestAnimationPath() end

--- Returns the path to the character's ScreenSelectMode icon.
---@return string
function Character:GetSongSelectIconPath() end

--- Returns the path to the character's ScreenStage icon.
---@return string
function Character:GetStageIconPath() end

--- Returns the path of the warm-up animation of this character.
---@return string
function Character:GetWarmUpAnimationPath() end


CharacterManager = {}

--- Returns a table of all characters installed.
---@return {Character}
function CharacterManager:GetAllCharacters() end

--- Return the Character corresponding to sID.
---@return Character
---@param sID string
function CharacterManager:GetCharacter(sID) end

--- Returns a random character.
---@return Character
function CharacterManager:GetRandomCharacter() end

--- Returns the number of characters available.
---@return integer
function CharacterManager:GetCharacterCount() end

ComboGraph = {}

--- Loads the ComboGraph commands from the Metrics in group sMetricsGroup.
---@return void
---@param sMetricsGroup string
function ComboGraph:Load(sMetricsGroup) end

--- Sets the values of the ComboGraph using the specified StageStats and PlayerStageStats.
---@return void
---@param s StageStats
---@param pss PlayerStageStats
function ComboGraph:Set(s,pss) end

ControllerStateDisplay = {}

--- Loads the ControllerStateDisplay from the specified GameController.
---@return void
---@param sType string
---@param gc Enum @GameController enum
function ControllerStateDisplay:LoadGameController(sType,gc) end

--- Loads the ControllerStateDisplay from the specified MultiPlayer.
---@return void
---@param sType string
---@param mp Enum @MultiPlayer enum
function ControllerStateDisplay:LoadMultiPlayer(sType,mp) end

Course = {}

--- Returns true if all of the songs in the course have been defined (as opposed to random songs).
---@return boolean
function Course:AllSongsAreFixed() end

--- Returns a table of all the Trails in the Course.
---@return {Trail}
function Course:GetAllTrails() end

--- Returns the path to the Course's background.
---@return string
function Course:GetBackgroundPath() end

--- Returns the path to the Course's banner.
---@return string
function Course:GetBannerPath() end

--- Returns the Course's directory.
---@return string
function Course:GetCourseDir() end

--- Returns a table of CourseEntry items.
---@return {CourseEntry}
function Course:GetCourseEntries() end

--- Gets the CourseEntry at iIndex from the Course.
---@return CourseEntry
---@param iIndex integer
function Course:GetCourseEntry(iIndex) end

--- Returns the Course's ENUM:CourseType. (Returns CourseType in SM5; integer in SM4)
---@return CourseType
function Course:GetCourseType() end

--- Returns the description for this Course.
---@return string
function Course:GetDescription() end

--- Returns the full display title of the Course.
---@return string
function Course:GetDisplayFullTitle() end

--- Returns the estimated number of stages for the Course.
---@return integer
function Course:GetEstimatedNumStages() end

--- Returns the goal seconds for the Course.
---@return float
function Course:GetGoalSeconds() end

--- Returns the Course's group name.
---@return string
function Course:GetGroupName() end

--- Returns the Course's ENUM:PlayMode. (Returns PlayMode in SM5; integer in SM4)
---@return Enum @PlayMode enum
function Course:GetPlayMode() end

--- Returns the name of the person who scripted the Course.
---@return string
function Course:GetScripter() end

--- Returns the total length of the Course in seconds.
---@return float
---@param st StepsType
function Course:GetTotalSeconds(st) end

--- Returns the full transliterated title of the Course.
---@return string
function Course:GetTranslitFullTitle() end

--- Returns true if the Course has a background.
---@return boolean
function Course:HasBackground() end

--- Returns true if the Course has a banner.
---@return boolean
function Course:HasBanner() end

--- Returns true if the Course has modifiers.
---@return boolean
function Course:HasMods() end

--- Returns true if the Course has timed modifiers.
---@return boolean
function Course:HasTimedMods() end

--- Returns true if the Course is an edit.
---@return boolean
function Course:IsAnEdit() end

--- Returns true if the Course was automatically generated.
---@return boolean
function Course:IsAutogen() end

--- Returns true if the Course is Endless.
---@return boolean
function Course:IsEndless() end

--- Returns true if the Course is Nonstop.
---@return boolean
function Course:IsNonstop() end

--- Returns true if the Course is Oni.
---@return boolean
function Course:IsOni() end

--- Returns true if the Course is playable in StepsType st.
---@return boolean
---@param st StepsType
function Course:IsPlayableIn(st) end

--- Returns true if the Course is a ranking course.
---@return boolean
function Course:IsRanking() end

CourseContentsList = {}

--- Sets the CourseContentsList from the GameState.
---@return void
function CourseContentsList:SetFromGameState() end

CourseEntry = {}

--- Returns the Song that this CourseEntry corresponds to.
---@return Song
function CourseEntry:GetSong() end

--- Returns the number of lives gained after completing the song.
---@return integer
function CourseEntry:GetGainLives() end

--- Returns the number of seconds gained after completing the song.
---@return float
function CourseEntry:GetGainSeconds() end

--- Returns any stage (non-timed) modifiers.
---@return string
function CourseEntry:GetNormalModifiers() end

--- Returns the number of modifier changes in this CourseEntry.
---@return integer
function CourseEntry:GetNumModChanges() end

--- Returns a comma-delimited string representing various facts about the CourseEntry.
---@return string
function CourseEntry:GetTextDescription() end

--- Returns true if this CourseEntry is a fixed song.
---@return boolean
function CourseEntry:IsFixedSong() end

--- Returns true if this CourseEntry is secret.
---@return boolean
function CourseEntry:IsSecret() end

CryptManager = {}

--- Generates a random UUID (version 4).
---@return string
function CryptManager:GenerateRandomUUID() end

--- Returns the MD5 hash for the file at sPath.
---@return string
---@param sPath string
function CryptManager:MD5File(sPath) end

--- Returns the MD5 hash for s.
---@return string
---@param s string
function CryptManager:MD5String(s) end

--- Returns the SHA-1 hash for the file at sPath.
---@return string
---@param sPath string
function CryptManager:SHA1File(sPath) end

--- Returns the SHA-1 hash for s.
---@return string
---@param s string
function CryptManager:SHA1String(s) end

CubicSplineN = {}

--- Solves the spline, setting the coefficients.
function CubicSplineN:solve() end

--- Evaluates the spline at the given t value, returning a table of the results for each dimension of the spline.
--- t can range from 0 to the value returned by get_max_t().
--- A normal spline will return its starting point for any t value less than 0 and its end point for any t value greater than the max.
--- A looped spline adjust the t value to be within the its range by adding or subtracting the max t as needed. (so if the max t is 4 and you evaluate at 5, it will return the same as if you evaluated at 1.)
---@return {float}
---@param t float
function CubicSplineN:evaluate(t) end

--- Evaluates the derivative at t.
---@return {float}
---@param t float
function CubicSplineN:evaluate_derivative(t) end

--- Evaluates the second derivative at t.
---@return {float}
---@param t float
function CubicSplineN:evaluate_second_derivative(t) end

--- Evaluates the third derivative at t.
--- Second and third derivative functions exist because they're possible, not because they're expected to be useful.  The fourth derivative would be 0 because the equation for evaluating the spline is "a + (b*t) + (c*t^2) + (d*t^3)".
---@return {float}
---@param t float
function CubicSplineN:evaluate_third_derivative(t) end

--- Sets point i of the spline to the position specified by the table p.
---@param i integer
---@param p table @{float}
function CubicSplineN:set_point(i,p) end

--- Sets the coefficients of the spline at point i.
--- Each table must contain a value for each dimension of the spline.
--- Solving the spline normally should cover all normal usage, this is for people that want a spline with an abnormal behavior, so if you set the coefficients  directly, expect to end up with an unsmooth shape.
---@param i integer
---@param b table @{float}
---@param c table @{{float}
---@param d table @{{float}
function CubicSplineN:set_coefficients(i,b,c,d) end

--- Returns a table containing the tables of coefficients for the point i.
---@return {{float}, {float}, {float}}
---@param i integer
function CubicSplineN:get_coefficients(i) end

--- Sets the spatial extent of dimension d of the spline to e.
--- The spatial extent exists to handle numbers that exist in a finite looped space, instead of the flat infinite space.
--- To put it more concretely, spatial extent exists to allow a spline to control rotation with wrapping behavior at 0.0 and 2pi, instead of suddenly jerking from 2pi to 0.0.
---@param d integer
---@param e float
function CubicSplineN:set_spatial_extent(d,e) end

--- Returns the spatial extent of dimension d of the spline.
---@return float
---@param d integer
function CubicSplineN:get_spatial_extent(d) end

--- Returns the max t value the spline extends to.  For a normal spline, this will be size()-1.  For a looped spline, this will be size().
---@return float
function CubicSplineN:get_max_t() end

--- Sets the number of points in the spline.  You must set the number of points before trying to set the position of any point.
---@param s integer
function CubicSplineN:set_size(s) end

--- Returns the number of points in the spline.
---@return integer s
function CubicSplineN:get_size() end

--- Sets the number of dimensions the spline has.
--- Splines that are owned by actors (the ones inside ActorMultiVertex and NCSplineHandler) cannot have their number of dimensions changed because the actors require them to have 3 dimensions.
---@param d integer
function CubicSplineN:set_dimension(d) end

--- Returns the number of dimensions the spline has.
---@return integer
function CubicSplineN:get_dimension() end

--- Returns true of the spline has zero points, or false if it has more than zero points.
---@return boolean
function CubicSplineN:empty() end

--- Sets whether the spline is looped.  A looped spline is one where the end point is connected to the start point.
---@param bool boolean
function CubicSplineN:set_loop(bool) end

--- Returns whether the spline is looped.
---@return boolean
function CubicSplineN:get_loop() end

--- Sets whether the spline is polygonal.  If the spline is polygonal, then it will have straight lines between the points instead of curves.
---@param bool boolean
function CubicSplineN:set_polygonal(bool) end

--- Returns whether the spline is polygonal.
---@return boolean
function CubicSplineN:get_polygonal() end

--- Sets whether the spline is dirty.  A dirty spline is one that has been changed in some way that affects its shape.  When solve() is called, the spline will only be solved if it is dirty.  The dirty flag is automatically set by everything, so you should never have to call this function.
---@param bool boolean
function CubicSplineN:set_dirty(bool) end

--- Returns whether the spline is currently dirty.
---@return boolean
function CubicSplineN:get_dirty() end

--- Destroys the spline, freeing the memory allocated for it.  This can only be called on splines created with create_spline().
function CubicSplineN:destroy() end

DifficultyIcon = {}

--- Sets the DifficultyIcon's state from the difficulty passed in.
---@return void
---@param dc Difficulty
function DifficultyIcon:SetFromDifficulty(dc) end

--- Sets the DifficultyIcon's Player to pn,
--- then sets the DifficultyIcon's state from the difficulty of Steps pSteps
---@return void
---@param pSteps Steps
function DifficultyIcon:SetFromSteps(pSteps) end

--- Sets the DifficultyIcon's Player to pn,
--- then sets the DifficultyIcon's state from the difficulty of Trail pTrail
---@return void
---@param pn Enum @PlayerNumber enum
---@param pTrail Trail
function DifficultyIcon:SetFromTrail(pn,pTrail) end

--- Sets the DifficultyIcon's Player to pn.
---@return void
---@param pn Enum @PlayerNumber enum
function DifficultyIcon:SetPlayer(pn) end

--- Blanks the DifficultyIcon.
---@return void
function DifficultyIcon:Unset() end

FadingBanner = {}

--- Returns the index of the last banner loaded.
---@return integer
function FadingBanner:GetLatestIndex() end

--- Loads the fallback course banner.
---@return void
function FadingBanner:LoadCourseFallback() end

--- Loads the fallback banner.
---@return void
function FadingBanner:LoadFallback() end

--- Loads the card image from the specified Character.
---@return void
---@param pCharacter Character
function FadingBanner:LoadCardFromCharacter(pCharacter) end

--- Loads a Banner from a specified Course.
---@return void
---@param c Course
function FadingBanner:LoadFromCourse(c) end

--- Loads a Banner from a specified Song.
---@return void
---@param s Song
function FadingBanner:LoadFromSong(s) end

--- Loads a Banner from a specified Song Group.
---@return void
---@param s string
function FadingBanner:LoadFromSongGroup(s) end

--- Loads a Banner from a specified SortOrder.
---@return void
---@param so SortOrder
function FadingBanner:LoadFromSortOrder(so) end

--- Loads an icon from the specified Character.
---@return void
---@param pCharacter Character
function FadingBanner:LoadIconFromCharacter(pCharacter) end

--- Loads the Random banner.
---@return void
function FadingBanner:LoadRandom() end

--- Loads the Roulette banner.
---@return void
function FadingBanner:LoadRoulette() end

--- See Sprite:scaletoclipped.
---@return void
---@param fWidth float
---@param fHeight float
function FadingBanner:scaletoclipped(fWidth,fHeight) end

--- See Sprite:scaletoclipped.
---@return void
---@param fWidth float
---@param fHeight float
function FadingBanner:ScaleToClipped(fWidth,fHeight) end

StepsDisplayList = {}

--- Sets the StepsDisplayList from the GameState.
---@return void
function StepsDisplayList:setfromgamestate() end

Game = {}

--- Returns true if notes are counted separately in this game.
---@return boolean
function Game:CountNotesSeparately() end

--- Returns the mapped judgment for tns.
---@return Enum @TapNoteScore enum
---@param tns Enum  @TapNoteScore enum
function Game:GetMapJudgmentTo(tns) end

--- Returns the name of the game such as "dance" or "pump".
---@return string
function Game:GetName() end

--- Returns whether this game allows the players to have separate styles.
---@return boolean
function Game:GetSeparateStyles() end

GameCommand = {}

--- Returns any announcer that may have been set.
---@return string
function GameCommand:GetAnnouncer() end

--- Returns any Character associated with this item (or nil if there isn't one).
---@return Character
function GameCommand:GetCharacter() end

--- Returns any Course that may have been set.
---@return Course
function GameCommand:GetCourse() end

--- Returns a course difficulty, if one is set in the GameCommand.
---@return Difficulty
function GameCommand:GetCourseDifficulty() end

--- Returns a difficulty, if one is set in the GameCommand.
---@return Difficulty
function GameCommand:GetDifficulty() end

--- Returns the index of this item.
---@return integer
function GameCommand:GetIndex() end

--- Returns any MultiPlayer that may have been set.
---@return Enum @MultiPlayer enum
function GameCommand:GetMultiPlayer() end

--- Returns the choice name.
---@return string
function GameCommand:GetName() end

--- Returns the PlayMode associated with this GameCommand.
---@return Enum @PlayMode enum
function GameCommand:GetPlayMode() end

--- Returns any preferred modifiers that may have been set.
---@return string
function GameCommand:GetPreferredModifiers() end

--- Returns any Profile ID that may have been set.
---@return string
function GameCommand:GetProfileID() end

--- Returns any screen that may have been set as a string.
---@return string
function GameCommand:GetScreen() end

--- Returns any Song that may have been set.
---@return Song
function GameCommand:GetSong() end

--- Returns the name of any song group that may have been set.
---@return string
function GameCommand:GetSongGroup() end

--- Returns the sort order, if the GameCommand has set one.
---@return SortOrder
function GameCommand:GetSortOrder() end

--- Returns any stage modifiers that may have been set.
---@return string
function GameCommand:GetStageModifiers() end

--- Returns any Steps that may have been set.
---@return Steps
function GameCommand:GetSteps() end

--- Returns any Style that may have been set.
---@return Style
function GameCommand:GetStyle() end

--- Returns the display text.
---@return string
function GameCommand:GetText() end

--- Returns any Trail that may have been set.
---@return Trail
function GameCommand:GetTrail() end

--- Returns any Url that may have been set.
---@return string
function GameCommand:GetUrl() end

GameManager = {}

--- Return the first StepsType for the specified game.
---@return StepsType
---@param game Game
function GameManager:GetFirstStepsTypeForGame(game) end

--- Returns true if any noteskins exist for the specified Game s.
---@return boolean
---@param s string
function GameManager:IsGameEnabled(s) end

--- Return the localized string representation of st.
---@return string
---@param st StepsType
function GameManager:StepsTypeToLocalizedString(st) end

--- Returns a table of all selectable games.
---@return {string}
function GameManager:GetEnabledGames() end

--- Returns a table of all the styles for the that exist for game.
---@return {style}
---@param game string
function GameManager:GetStylesForGame(game) end

--- Sets the current game to Game. The second argument is optional, and if provided will determine which theme is loaded when the game changes.  If the second argument is not provided, the default theme from the preferences for the new game type will be loaded.
--- If only the game changes, the screen specified by the Common::AfterGameChangeScreen metric will be loaded.
--- If the game and the theme both change, the screen specified by the Common::AfterGameAndThemeChangeScreen metric will be loaded.
--- The Common::InitialScreen metric will be used if the appropriate metric for the change is blank or invalid.
---@return void
---@param Game string
---@param Theme string
function GameManager:SetGame(Game,Theme) end

GameSoundManager = {}

--- Set the music volume to fVolume for fDuration seconds.
---@return void
---@param fVolume float
---@param fDuration float
function GameSoundManager:DimMusic(fVolume,fDuration) end

--- Return the sound balance for pn.
---@return float
---@param pn Enum @PlayerNumber enum
function GameSoundManager:GetPlayerBalance(pn) end

--- Plays a sound from the current announcer.
---@return void
---@param sPath string
function GameSoundManager:PlayAnnouncer(sPath) end

--- Play the sound at musicPath starting from musicStart for
 --- musicLength seconds one time. Both fadeIn and
--- fadeOut can be customized as required.  loop
--- tells the sound manager to loop the music part.  applyRate
--- tells the sound manager to apply the current music rate. If alignBeat 
--- is true or nil, the length is automatically adjusted to cover an integer number of beats.
---@return void
---@param musicPath string
---@param musicStart float
---@param musicLength float
---@param fadeIn float
---@param fadeOut float
---@param loop boolean
---@param applyRate boolean
---@param alignBeat boolean
function GameSoundManager:PlayMusicPart(musicPath,musicStart,musicLength,fadeIn,fadeOut,loop,applyRate,alignBeat) end

--- Play the sound at sPath one time.  is_action is optional, if it is true, the sound is an action sound, and will be muted if the MuteActions preference is turned on.
---@return void
---@param sPath string
---@param is_action boolean
function GameSoundManager:PlayOnce(sPath,is_action) end

--- Stops the music.
---@return void
function GameSoundManager:StopMusic() end

--- When music is requested to change, the new music does not start immediately due to latency and buffering. This will return true if the newest music has not yet actually begun.
---@return void
function GameSoundManager:IsTimingDelayed() end

GameState = {}

--- Adds another stage to the specifed player.
---@return void
---@param pn Enum @PlayerNumber enum
function GameState:AddStageToPlayer(pn) end

--- Applies the specified modifiers for the specified player's preferred modifier set.
---@return void
---@param pn Enum @PlayerNumber enum
---@param mods string
function GameState:ApplyPreferredModifiers(pn,mods) end

--- Applies the song options of ModsLevel_Preferred to the other ModsLevels.
---@return void
function GameState:ApplyPreferredSongOptionsToOtherLevels() end

--- Applies the specified modifiers for the specified player for the current stage.
---@return void
---@param pn Enum @PlayerNumber enum
---@param mods string
function GameState:ApplyStageModifiers(pn,mods) end

--- Returns true if any player has performed a feat worthy of ranking.
---@return boolean
function GameState:AnyPlayerHasRankingFeats() end

--- The second argument is optional. Apply the GameCommand represented by sCommand
--- for pn, if given. See GameCommand.
---@return void
---@param sCommand string
---@param pn Enum @PlayerNumber enum
function GameState:ApplyGameCommand(sCommand,pn) end

--- Checks various things to determine whether the game will crash when gameplay starts.  Returns false and a string if gameplay cannot be entered safely.
--- Might not work in all cases, but will catch things like a player not having
--- steps set or no current song or style.  Mainly exists for people with a custom ScreenSelectMusic replacement.
--- Example:
--- local can, reason= GAMESTATE:CanSafelyEnterGameplay()
--- if not can then
--- lua.ReportScriptError("Cannot safely enter gameplay: " .. tostring(reason))
--- end
---@return boolean,string
function GameState:CanSafelyEnterGameplay() end

--- Removes any stage modifiers that are illegal for course play.
---@return void
function GameState:ClearStageModifiersIllegalForCourse() end

--- Returns true if pn's options will disqualify them for ranking.
---@return boolean
---@param pn Enum @PlayerNumber enum
function GameState:CurrentOptionsDisqualifyPlayer(pn) end

--- Returns true if enough credits have been inserted to join.
---@return boolean
function GameState:EnoughCreditsToJoin() end

--- fishpolk.mid; See also: Rise of the Triad
---@return boolean
function GameState:Dopefish() end

--- Returns the environment table. See GameCommand.
---@return table
function GameState:Env() end

--- Returns the current Character for the specified ENUM:PlayerNumber.
---@return Character
---@param pn Enum @PlayerNumber enum
function GameState:GetCharacter(pn) end

--- Returns the current ENUM:CoinMode.
---@return Enum @CoinMode enum
function GameState:GetCoinMode() end

--- Return the number of inserted but unused coins. This number is
--- decremented when players join.
---@return integer
function GameState:GetCoins() end

--- Return the number of coins needed to join based on the current coin and premium modes
--- as well as the number of people joined, if that matters for the premium mode. See
--- GetCoinMode and GetPremium.
---@return integer
function GameState:GetCoinsNeededToJoin() end

--- The Songs in a Course are numbered sequentially
--- starting from 0. Return the number of the current Song.
---@return integer
function GameState:GetCourseSongIndex() end

--- Return the current number of seconds that have passed in the current song. This value can be negative.
---@return float
function GameState:GetCurMusicSeconds() end

--- Return the current Course.
---@return Course
function GameState:GetCurrentCourse() end

--- Return the current Game.
---@return Game
function GameState:GetCurrentGame() end

--- Return the current Song.
---@return Song
function GameState:GetCurrentSong() end

--- Return the current Stage.
---@return Stage
function GameState:GetCurrentStage() end

--- Returns the current stage index (starts at 0).
---@return integer
function GameState:GetCurrentStageIndex() end

--- Return the current Steps for the specified Player.
---@return Steps
---@param pn Enum @PlayerNumber enum
function GameState:GetCurrentSteps(pn) end

--- Return a variable number of arguments based on the Steps being
--- played by all players. For each distinct Steps being played by
--- the players, in increasing ENUM:PlayerNumber order,
--- the difficulty and description of the Steps is returned as strings.
--- For example,
--- local credits = {GAMESTATE:GetCurrentStepsCredits()};
--- will make a table of the difficulties and descriptions.
---@return various
function GameState:GetCurrentStepsCredits() end

--- Return the current Style.
---@return Style
function GameState:GetCurrentStyle() end

--- Return the current Trail for the specified player.
---@return Trail
---@param pn Enum @PlayerNumber enum
function GameState:GetCurrentTrail(pn) end

--- Return a string representation of the default song options.
---@return string
function GameState:GetDefaultSongOptions() end

--- Returns the ENUM:EarnedExtraStage value.
---@return Enum @EarnedExtraStage enum
function GameState:GetEarnedExtraStage() end

--- Return the easiest ENUM:Difficulty of the
--- currently selected steps by all players. For example, if player 1 has
--- selected Hard steps and player 2 has selected Medium steps, Medium will
--- be returned.
---@return Difficulty
function GameState:GetEasiestStepsDifficulty() end

---@return integer
function GameState:GetEditCourseEntryIndex() end

--- Return the Edit Local Profile (during Profile editing)
--- or nil if it does not exist.
---@return Profile
function GameState:GetEditLocalProfile() end

--- Returns the ID of the Edit Local Profile (during Profile editing).
---@return string
function GameState:GetEditLocalProfileID() end

--- Return the source Steps for the editor or nil
--- if it does not exist.
---@return Steps
function GameState:GetEditSourceSteps() end

--- Returns a table of enabled players.
---@return {PlayerNumber}
function GameState:GetEnabledPlayers() end

--- Returns the name of the currently expanded section.
---@return string
function GameState:GetExpandedSectionName() end

--- Return the random seed for the game.
---@return integer
function GameState:GetGameSeed() end

--- Return true if the gameplay lead in is enabled. If
--- false, gameplay begins immediately.
---@return boolean
function GameState:GetGameplayLeadIn() end

--- Return the hardest ENUM:Difficulty of the
--- currently selected steps by all players. For example, if player 1 has
--- selected Hard steps and player 2 has selected Medium steps, Hard will
--- be returned.
---@return Difficulty
function GameState:GetHardestStepsDifficulty() end

--- Returns an array of PlayerNumbers corresponding to Human players.
---@return {PlayerNumber}
function GameState:GetHumanPlayers() end

--- Returns the index of the next song in the course.
---@return integer
function GameState:GetLoadingCourseSongIndex() end

--- Returns the master player number.
---@return PlayerNumber
function GameState:GetMasterPlayerNumber() end

--- Returns true if the game is Multiplayer.
---@return boolean
function GameState:GetMultiplayer() end

--- Returns the PlayerState for the specified MultiPlayer.
---@return PlayerState
---@param mp Enum @MultiPlayer enum
function GameState:GetMultiPlayerState(mp) end

--- Returns the number of active multiplayer NoteFields.
---@return integer
function GameState:GetNumMultiplayerNoteFields() end

--- Returns the number of players enabled.
---@return integer
function GameState:GetNumPlayersEnabled() end

--- Returns the number of sides joined.
---@return integer
function GameState:GetNumSidesJoined() end

--- Returns the number of stages for the current Song and its Steps or the current Course.
---@return integer
function GameState:GetNumStagesForCurrentSongAndStepsOrCourse() end

--- Returns the number of stages left for player pn.
---@return integer
---@param pn Enum @PlayerNumber enum
function GameState:GetNumStagesLeft(pn) end

--- Returns the display name for player pn.
---@return string
---@param pn Enum @PlayerNumber enum
function GameState:GetPlayerDisplayName(pn) end

--- Returns the PlayerState for player pn.
---@return PlayerState
---@param pn Enum @PlayerNumber enum
function GameState:GetPlayerState(pn) end

--- Returns the current PlayMode.
---@return Enum @PlayMode enum
function GameState:GetPlayMode() end

--- Returns the preferred difficulty.
---@return Difficulty
function GameState:GetPreferredDifficulty() end

--- Returns the preferred song.
---@return Song
function GameState:GetPreferredSong() end

--- Returns the preferred song group.
---@return string
function GameState:GetPreferredSongGroup() end

--- Returns the current Premium.
---@return Enum @Premium enum
function GameState:GetPremium() end

--- Returns the smallest number of stages left for any human player.
---@return integer
function GameState:GetSmallestNumStagesLeftForAnyHumanPlayer() end

--- [01 alias.lua] Returns the current beat of the song.
---@return float
function GameState:GetSongBeat() end

--- [01 alias.lua] Returns the current beat of the song without an offset.
---@return float
function GameState:GetSongBeatNoOffset() end

--- Returns the current visible beat of the song.
---@return float
function GameState:GetSongBeatVisible() end

--- [01 alias.lua] Returns the song's current beats per second.
---@return float
function GameState:GetSongBPS() end

--- [01 alias.lua] Returns true if a delay is active in the song.
---@return boolean
function GameState:GetSongDelay() end

--- [01 alias.lua] Returns true if the song is currently in a freeze.
---@return boolean
function GameState:GetSongFreeze() end

--- Returns the song options for the specified ModsLevel as a string.
---@return string
---@param ml Enum @ModsLevel enum
function GameState:GetSongOptions(ml) end

--- Returns the song options as a string.
---@return string
function GameState:GetSongOptionsString() end

--- Returns the song options for the specified ModsLevel as an object.
---@return SongOptions
---@param ml Enum @ModsLevel enum
function GameState:GetSongOptionsObject(ml) end

--- Returns how much of the song is through at beat fBeat.
---@return float
---@param fBeat float
function GameState:GetSongPercent(fBeat) end

--- Returns the current SongPosition.
---@return SongPosition
function GameState:GetSongPosition() end

--- Returns the current SortOrder.
---@return SortOrder
function GameState:GetSortOrder() end

--- Returns the StageResult for player pn.
---@return StageResult
---@param pn Enum @PlayerNumber enum
function GameState:GetStageResult(pn) end

--- Returns the current stage index.
---@return integer
function GameState:GetStageIndex() end

--- Returns the current StepsSeconds, which is the time value used to set the samples in a player's life record.
---@return float
function GameState:GetStepsSeconds() end

--- Return the random seed for the current stage.
---@return integer
function GameState:GetStageSeed() end

--- Returns true if the workout goal is complete.
---@return boolean
function GameState:GetWorkoutGoalComplete() end

--- Returns true if an extra stage was earned.
---@return boolean
function GameState:HasEarnedExtraStage() end

--- Returns true if either player does not have a profile loaded, and there is a loadable profile.
---@return boolean
function GameState:HaveProfileToLoad() end

--- Returns true if either player has a profile loaded.
---@return boolean
function GameState:HaveProfileToSave() end

--- Returns true if we are specifically in the Step Editor's
--- editing portion. If in recording or playing mode, this will return
--- false.
---@return boolean
function GameState:InStepEditor() end

--- Inserts iCoins number of coins.  iCoins can be negative or positive.
---@return void
---@param iCoins integer
function GameState:InsertCoin(iCoins) end

--- Inserts one credit.  To deduct a credit, pass a negative integer representing the number
--- of coins per credit to InsertCoin.
---@return void
function GameState:InsertCredit() end

--- Returns true if this is an extra stage.
---@return boolean
function GameState:IsAnExtraStage() end

--- Returns true if any human player is using a memory card.
---@return boolean
function GameState:IsAnyHumanPlayerUsingMemoryCard() end

--- Returns true if playing in Battle mode.
---@return boolean
function GameState:IsBattleMode() end

--- Returns true if playing in a Course mode.
---@return boolean
function GameState:IsCourseMode() end

--- Returns true if in Demonstration mode.
---@return boolean
function GameState:IsDemonstration() end

--- Returns true if the match was a draw.
---@return boolean
function GameState:IsDraw() end

--- Returns true if Event Mode is on, temporary or otherwise.
---@return boolean
function GameState:IsEventMode() end

--- Returns true if this is the first extra stage.
---@return boolean
function GameState:IsExtraStage() end

--- Returns true if this is the second extra stage.
---@return boolean
function GameState:IsExtraStage2() end

--- Returns true if player pn has completed the current Goal.
---@return boolean
---@param pn Enum @PlayerNumber enum
function GameState:IsGoalComplete(pn) end

--- Returns true if player pn is human.
---@return boolean
---@param pn Enum @PlayerNumber enum
function GameState:IsHumanPlayer(pn) end

--- Returns true if player pn is enabled.
---@return boolean
---@param pn Enum @PlayerNumber enum
function GameState:IsPlayerEnabled(pn) end

--- Returns true if player pn has joined the game.
---@return boolean
---@param pn Enum @PlayerNumber enum
function GameState:IsSideJoined(pn) end

--- Returns true if player pn is the winner.
---@return boolean
---@param pn Enum @PlayerNumber enum
function GameState:IsWinner(pn) end

--- Joins player pn.  Does not deduct coins.
---@return void
---@param pn Enum @PlayerNumber enum
function GameState:JoinPlayer(pn) end

--- Similar to JoinPlayer, but checks whether the player is allowed to join and returns false if the player is not allowed to join.  Also deducts coins for joining.  A player can't join if PlayersCanJoin() returns false, or that side is already joined (is true for both sides when in a style that is OnePlayerTwoSides), or there are not enough coins.
---@return boolean
---@param pn Enum @PlayerNumber enum
function GameState:JoinInput(pn) end

--- If profiles are not loaded, this will load the profiles for each player. It will load from memory cards if they are present, and local profiles otherwise. It will load edits if LoadEdits is true, or by default if the argument is omitted.
---@return void
---@param LoadEdits boolean
function GameState:LoadProfiles(LoadEdits) end

--- Returns true if player pn is using modifier sModifier.
---@return boolean
---@param pn Enum @PlayerNumber enum
---@param sModifier string
function GameState:PlayerIsUsingModifier(pn,sModifier) end

--- Returns true if players can join the game.
---@return boolean
function GameState:PlayersCanJoin() end

--- Refreshes the NoteSkin data for the current game.
---@return void
function GameState:RefreshNoteSkinData() end

--- Resets the GameState.
---@return void
function GameState:Reset() end

--- Resets the specific Player's mods to the default settings.
---@return void
---@param pn Enum @PlayerNumber enum
function GameState:ResetPlayerOptions(pn) end

--- Saves the bookkeeping and machine profile data.
---@return void
function GameState:SaveLocalData() end

--- Save profiles.
---@return void
function GameState:SaveProfiles() end

--- Sets the current Character for the specified ENUM:PlayerNumber.
---@return void
---@param pn Enum @PlayerNumber enum
---@param sCharID string
function GameState:SetCharacter(pn,sCharID) end

--- Sets the current Course to course.
---@return void
---@param course Course
function GameState:SetCurrentCourse(course) end

--- Sets the current PlayMode to pm.
---@return void
---@param pm Enum @PlayMode enum
function GameState:SetCurrentPlayMode(pm) end

--- Sets the current Song to song.
---@return void
---@param song Song
function GameState:SetCurrentSong(song) end

--- Sets Player pn's current Steps to steps.
---@return void
---@param pn Enum @PlayerNumber enum
---@param steps Steps
function GameState:SetCurrentSteps(pn,steps) end

--- Sets current Style to the provided style. Either a style object or a style string can be provided. If current steps for either player are not valid in the new style, they will be cleared.
---@return void
---@param style Style
function GameState:SetCurrentStyle(style) end

--- Sets the current Trail to trail.
---@return void
---@param trail Trail
function GameState:SetCurrentTrail(trail) end

--- Tells the engine that the theme explicitly set the fail type for the players so that it won't override it with the easier settings for beginner or easy.
---@return void
function GameState:SetFailTypeExplicitlySet() end

--- Sets if the Jukebox should use modifiers.
---@return void
---@param bUseMods boolean
function GameState:SetJukeboxUsesModifiers(bUseMods) end

---@return void
---@param b boolean
function GameState:SetMultiplayer(b) end

--- Sets the number of multiplayer notefields to iFields
---@return void
---@param iFields integer
function GameState:SetNumMultiplayerNoteFields(iFields) end

--- Sets the preferred difficulty of Player pn to Difficulty dc.
---@return void
---@param pn Enum @PlayerNumber enum
---@param dc Difficulty
function GameState:SetPreferredDifficulty(pn,dc) end

--- Sets the preferred Song to song.
---@return void
---@param song Song
function GameState:SetPreferredSong(song) end

--- Sets the preferred song group to sGroup.
---@return void
---@param sGroup string
function GameState:SetPreferredSongGroup(sGroup) end

--- Sets the Song Options from so using ModsLevel m.
---@return void
---@param m Enum @ModsLevel enum
---@param so string
function GameState:SetSongOptions(m,so) end

--- Turns temporary Event Mode on or off, depending on bOn.
---@return void
---@param bOn boolean
function GameState:SetTemporaryEventMode(bOn) end

--- Stores the ranking name for the player.  Use this at the end of a round, on a name entry screen or similar, to set the name for the high scores the player has earned.
---@return void
---@param pn Enum @PlayerNumber enum
---@param name string
function GameState:StoreRankingName(pn,name) end

--- Determines if Judgment W1 should be shown based on bOn.
---@return void
---@param bOn boolean
function GameState:ShowW1(bOn) end

--- Unjoins player pn.
---@return void
---@param pn Enum @PlayerNumber enum
function GameState:UnjoinPlayer(pn) end

GradeDisplay = {}

--- Loads the GradeDisplay commands from the Metrics in group sMetricsGroup.
---@return void
---@param sMetricsGroup string
function GradeDisplay:Load(sMetricsGroup) end

--- Sets the GradeDisplay to show Grade g.
---@return void
---@param g Grade
function GradeDisplay:SetGrade(g) end

GraphDisplay = {}

--- Loads the GraphDisplay commands from the Metrics in group sMetricsGroup.
---@return void
---@param sMetricsGroup string
function GraphDisplay:Load(sMetricsGroup) end

--- Sets the values of the GraphDisplay using the specified StageStats and PlayerStageStats.
---@return void
---@param s StageStats
---@param pss PlayerStageStats
function GraphDisplay:Set(s,pss) end

GrooveRadar = {}

--- Sets the GrooveRadar values for Player pn to empty.
---@return void
---@param pn Enum @PlayerNumber enum
function GrooveRadar:SetEmpty(pn) end

--- Sets the GrooveRadar values for Player pn from RadarValues rv
---@return void
---@param pn Enum @PlayerNumber enum
---@param rv RadarValues
function GrooveRadar:SetFromRadarValues(pn,rv) end

--- Sets the GrooveRadar values for Player pn to the specified (floating point) values in the table.
---@return void
---@param pn Enum @PlayerNumber enum
---@param vals table
function GrooveRadar:SetFromValues(pn,vals) end

HelpDisplay = {}

--- Returns two tables representing the tips and alternate tips in the HelpDisplay.
---@return {string}
function HelpDisplay:gettips() end

--- [02 HelpDisplay.lua] Sets the tips from a Song or Course.
---@return void
function HelpDisplay:setfromsongorcourse() end

--- Sets the seconds between switches of tips to fSeconds.
---@return void
---@param fSeconds float
function HelpDisplay:SetSecsBetweenSwitches(fSeconds) end

--- Sets the HelpDisplay's tips using tips (and optionally altTips).
---@return void
---@param tips string
---@param altTips string
function HelpDisplay:settips(tips,altTips) end

--- Sets the HelpDisplay's text from sTips using colons to separate new sections.
---@return void
---@param sTips string
function HelpDisplay:SetTipsColonSeparated(sTips) end

HighScore = {}

--- Returns the date and time the high score was achieved.
---@return DateTime
function HighScore:GetDate() end

--- Returns the Grade of this high score.
---@return Grade
function HighScore:GetGrade() end

--- Returns the HighScore for this PlayerStageStats.
---@return HighScore
function HighScore:GetHighScore() end

--- Return the number of HoldNoteScores that match hns.
---@return integer
---@param hns Enum @HoldNoteScore enum
function HighScore:GetHoldNoteScore(hns) end

--- Returns the Max Combo of this high score.
---@return integer
function HighScore:GetMaxCombo() end

--- Returns the modifiers used for this HighScore.
---@return string
function HighScore:GetModifiers() end

--- Returns the name associated with the high score.
---@return string
function HighScore:GetName() end

--- Returns the Peak Combo Award for this high score.
---@return Enum @PeakComboAward enum
function HighScore:GetPeakComboAward() end

--- Returns the percentage of dance points associated with the high score.
---@return float
function HighScore:GetPercentDP() end

--- Returns the RadarValues for this HighScore.
---@return RadarValues
function HighScore:GetRadarValues() end

--- Returns the score associated with the high score.
---@return integer
function HighScore:GetScore() end

--- Retrns the Stage Award for this high score.
---@return Enum @StageAward enum
function HighScore:GetStageAward() end

--- Returns the number of seconds survived associated with the high score.
---@return float
function HighScore:GetSurvivalSeconds() end

--- Return the number of TapNoteScores that match tns.
---@return integer
---@param tns Enum  @TapNoteScore enum
function HighScore:GetTapNoteScore(tns) end

--- Returns true if this high score's name uses a fill-in marker.
---@return boolean
function HighScore:IsFillInMarker() end

HighScoreList = {}

--- Returns a table of the high scores.
---@return {HighScore}
function HighScoreList:GetHighScores() end

--- Returns the highest score for name in the list.  Returns nil if there is no score for name in the list.
---@return HighScore
---@param name string
function HighScoreList:GetHighestScoreOfName(name) end

--- Returns the rank of the highest score for name in the list.  Returns 0 if there is no score for name in the list.  (returns 1 if name has the top score, 2 if name has the second place score, and so on)
---@return integer
---@param name string
function HighScoreList:GetRankOfName(name) end

HoldJudgment = {}

--- Loads the HoldJudgment for the specified MultiPlayer.
---@return void
---@param mp Enum @MultiPlayer enum
function HoldJudgment:LoadFromMultiPlayer(mp) end

InputFilter = {}

--- Returns the mouse wheel value.
---@return float
function InputFilter:GetMouseWheel() end

--- Returns the X position of the mouse.
---@return float
function InputFilter:GetMouseX() end

--- Returns the Y position of the mouse.
---@return float
function InputFilter:GetMouseY() end

LifeMeter = {}

--- Returns the amount of life left in the LifeMeter as a float in the range 0..1.
---@return float
function LifeMeter:GetLife() end

--- Returns true if failing.
---@return boolean
function LifeMeter:IsFailing() end

--- Returns true if the LifeMeter is "hot".
---@return boolean
function LifeMeter:IsHot() end

--- Returns true if in danger.
---@return boolean
function LifeMeter:IsInDanger() end

LifeMeterBattery = {}

--- Changes the player's life by iNumLives. (Negative values subtract lives.)
---@return void
---@param iNumLives integer
function LifeMeterBattery:ChangeLives(iNumLives) end

--- Returns the number of lives remaining.
---@return integer
function LifeMeterBattery:GetLivesLeft() end

--- Returns the number of total lives.
---@return integer
function LifeMeterBattery:GetTotalLives() end

MemoryCardManager = {}

--- Returns true if player pn's card is locked.
---@return boolean
---@param pn Enum @PlayerNumber enum
function MemoryCardManager:GetCardLocked(pn) end

--- Return the state for player pn.
---@return Enum @MemoryCardState enum
---@param pn Enum @PlayerNumber enum
function MemoryCardManager:GetCardState(pn) end

--- Returns the name of the storage device.
---@return string
---@param pn Enum @PlayerNumber enum
function MemoryCardManager:GetName(pn) end

--- Returns true if player pn's name is available.
---@return boolean
---@param pn Enum @PlayerNumber enum
function MemoryCardManager:IsNameAvailable(pn) end

MenuTimer = {}

--- Stops the MenuTimer by setting it to 99.99 and pausing.
---@return void
function MenuTimer:disable() end

--- Returns the current MenuTimer's value.
---@return float
function MenuTimer:GetSeconds() end

--- Pauses the MenuTimer, stopping it from counting down.
---@return void
function MenuTimer:pause() end

--- Compatibility alias for SetSeconds.
---@return void
---@param fSeconds float
function MenuTimer:setseconds(fSeconds) end

--- Sets the MenuTimer's value to fSeconds.
---@return void
---@param fSeconds float
function MenuTimer:SetSeconds(fSeconds) end

--- Sets the MenuTimer's silent setting to bSilent.
---@return void
---@param bSilent boolean
function MenuTimer:silent(bSilent) end

--- Starts up the timer.
---@return void
function MenuTimer:start() end

--- Sets the MenuTimer's stealth setting to bStealth. If
--- true, the timer will be invisible and silent.
---@return void
---@param bStealth boolean
function MenuTimer:stealth(bStealth) end

--- Stops the MenuTimer by setting it to 0 and pausing.
---@return void
function MenuTimer:stop() end

MessageManager = {}

--- Broadcast the message to all listeners subscribed to sMessage. The
--- second argument is an optional table of parameters. It may be omitted or explicitly
--- set to nil.
---@return void
---@param sMessage string
---@param paramTable table
function MessageManager:Broadcast(sMessage,paramTable) end

--- Sets whether logging of messages is enabled.  If log is true, all messages that pass through Broadcast (from the engine for from the theme or from anywhere else), will be logged with Trace.
---@return void
---@param log boolean
function MessageManager:SetLogging(log) end

MeterDisplay = {}

--- Sets the width of the MeterDisplay to fWidth.
---@return void
---@param fWidth float
function MeterDisplay:SetStreamWidth(fWidth) end

Model = {}

--- Returns the model's default animation.
---@return string
function Model:GetDefaultAnimation() end

--- Controls if the model should loop or not.
---@return void
---@param bLoop boolean
function Model:loop(bLoop) end

--- Plays animation sAniName at fPlayRate speed (default 1.0).
---@return void
---@param sAniName string
---@param fPlayRate float
function Model:playanimation(sAniName,fPlayRate) end

--- Sets how far into the animation the model is.
---@return void
---@param fSeconds float
function Model:position(fSeconds) end

--- Sets the current animation's playback rate to fRate.
---@return void
---@param fRate float
function Model:rate(fRate) end

--- Sets the model's default animation to sAnimation at fPlayRate speed (default 1.0).
---@return void
---@param sAnimation string
---@param fPlayRate float
function Model:SetDefaultAnimation(sAnimation,fPlayRate) end

--- Returns the number of states the Model has.
---@return integer
function Model:GetNumStates() end

ModIconRow = {}

--- Loads the ModIconRow of Player pn from the Metrics in group sMetricsGroup.
---@return void
---@param sMetricsGroup string
---@param pn Enum @PlayerNumber enum
function ModIconRow:Load(sMetricsGroup,pn) end

MusicWheel = {}

--- Changes the sort order of the wheel.  Returns true if the order was changed.
---@return boolean
---@param so SortOrder
function MusicWheel:ChangeSort(so) end

--- Returns the name of the currently selected section.
---@return string
function MusicWheel:GetSelectedSection() end

--- Returns true if the MusicWheel is currently handling Roulette selection.
---@return boolean
function MusicWheel:IsRouletting() end

--- Selects a song. Returns false on failure.
---@return boolean
---@param sSong Song
function MusicWheel:SelectSong(sSong) end

--- Selects a course. Returns false on failure.
---@return boolean
---@param cCourse Course
function MusicWheel:SelectCourse(cCourse) end

NoteSkinManager = {}

--- Returns a string from the specified element and value.
---@return string
---@param sElement string
---@param sValue string
function NoteSkinManager:GetMetric(sElement,sValue) end

--- Returns a string from the specified element and value using NoteSkin sNoteSkin.
---@return string
---@param sElement string
---@param sValue string
---@param sNoteSkin string
function NoteSkinManager:GetMetricForNoteSkin(sElement,sValue,sNoteSkin) end

--- Returns a command from the specified element and value.
---@return ActorCommand
---@param sElement string
---@param sValue string
function NoteSkinManager:GetMetricA(sElement,sValue) end

--- Returns a command from the specified element and value using NoteSkin sNoteSkin.
---@return ActorCommand
---@param sElement string
---@param sValue string
---@param sNoteSkin string
function NoteSkinManager:GetMetricAForNoteSkin(sElement,sValue,sNoteSkin) end

--- Returns a boolean from the specified element and value.
---@return boolean
---@param sElement string
---@param sValue string
function NoteSkinManager:GetMetricB(sElement,sValue) end

--- Returns a boolean from the specified element and value using NoteSkin sNoteSkin.
---@return boolean
---@param sElement string
---@param sValue string
---@param sNoteSkin string
function NoteSkinManager:GetMetricBForNoteSkin(sElement,sValue,sNoteSkin) end

--- Returns a float from the specified element and value.
---@return float
---@param sElement string
---@param sValue string
function NoteSkinManager:GetMetricF(sElement,sValue) end

--- Returns a float from the specified element and value using NoteSkin sNoteSkin.
---@return float
---@param sElement string
---@param sValue string
---@param sNoteSkin string
function NoteSkinManager:GetMetricFForNoteSkin(sElement,sValue,sNoteSkin) end

--- Returns a integer from the specified element and value.
---@return integer
---@param sElement string
---@param sValue string
function NoteSkinManager:GetMetricI(sElement,sValue) end

--- Returns a integer from the specified element and value using NoteSkin sNoteSkin.
---@return integer
---@param sElement string
---@param sValue string
---@param sNoteSkin string
function NoteSkinManager:GetMetricIForNoteSkin(sElement,sValue,sNoteSkin) end

--- Returns the path for the specified sButton sElement.
---@return string
---@param sButton string
---@param sElement string
function NoteSkinManager:GetPath(sButton,sElement) end

--- Returns the path for the specified sButton sElement using NoteSkin sNoteSkin.
---@return string
---@param sButton string
---@param sElement string
---@param sNoteSkin string
function NoteSkinManager:GetPathForNoteSkin(sButton,sElement,sNoteSkin) end

--- Returns the actor for the specified sButton sElement.
---@return Actor
---@param sButton string
---@param sElement string
function NoteSkinManager:LoadActor(sButton,sElement) end

--- Returns the actor for the specified sButton sElement using NoteSkin sNoteSkin.
---@return Actor
---@param sButton string
---@param sElement string
---@param sNoteSkin string
function NoteSkinManager:LoadActorForNoteSkin(sButton,sElement,sNoteSkin) end

--- Returns true if the strName noteskin exists in the current gametype.
---@return boolean
---@param strName string
function NoteSkinManager:DoesNoteSkinExist(strName) end

--- Returns a table of noteskin names for the current gametype.
---@return {string}
function NoteSkinManager:GetNoteSkinNames() end

NCSplineHandler = {}

--- Returns the spline for this handler.
---@return CubicSplineN
function NCSplineHandler:get_spline() end

--- Returns the beats per t value of the spline.  If the beats_per_t is 4, then a note must be on screen for 4 beats to traverse from one point on the spline to the next.
---@return float
function NCSplineHandler:get_beats_per_t() end

--- Sets the beats per t value for the spline.
---@param per float
function NCSplineHandler:set_beats_per_t(per) end

--- Returns the t value that receptors are evaluated at.
---@return float
function NCSplineHandler:get_receptor_t() end

--- the t value that receptors are evaluated at.
---@param t float
function NCSplineHandler:set_receptor_t(t) end

--- Returns the mode the spline is set to.
--- "NoteColumnSplineMode_Disabled" means the spline will not affect the notes or receptors at all.
--- "NoteColumnSplineMode_Offset" means the spline will added to the effects from the mods.
--- "NoteColumnSplineMode_Position" means only the spline affect the notes and mods will be ignored. (but only mods that affect the same aspect of the note as the spline will be disabled.  So a rotation spline won't disable Mini or Tiny, but a zoom spline will, and a zoom spline won't disable Dizzy, Twirl, or Roll, but a rotation spline will.)
---@return Enum @NoteColumnSplineMode enum
function NCSplineHandler:get_spline_mode() end

--- Sets the current spline mode for this handler.
---@param mode Enum @NoteColumnSplineMode enum
function NCSplineHandler:set_spline_mode(mode) end

--- Returns whether the current song beat is subtracted from a note's beat when calculating the t value to use on the spline.
---@return boolean
function NCSplineHandler:get_subtract_song_beat() end

--- Sets whether the current song beat is subtracted from a note's beat when calculating the t value to use on the spline.
---@param s boolean
function NCSplineHandler:set_subtract_song_beat(s) end

NoteColumnRenderer = {}

--- Returns the handler for the position spline.
---@return NCSplineHandler
function NoteColumnRenderer:get_pos_handler() end

--- Returns the handler for the rotation spline.
--- The rotation applied by the rotation spline is in radians.
--- For convenience, the spatial extent of the rotation spline defaults to 2pi.
---@return NCSplineHandler
function NoteColumnRenderer:get_rot_handler() end

--- Returns the handler for the zoom spline.
---@return NCSplineHandler
function NoteColumnRenderer:get_zoom_handler() end

NoteField = {}

--- Makes the NoteField act as if a hold note was hit in the column, with the given score and bright setting.
--- The callback for did_hold_note will not be called.
---@param column integer
---@param tns Enum  @TapNoteScore enum
---@param bright boolean
function NoteField:did_hold_note(column,tns,bright) end

--- Makes the NoteField act as if a tap note was hit in the column, with the given score and bright setting.
--- The callback for did_tap_note will not be called.
---@param column integer
---@param tns Enum  @TapNoteScore enum
---@param bright boolean
function NoteField:did_tap_note(column,tns,bright) end

--- Returns a table of the actors for the columns.  This means that each column is an actor, so you can move it around or animate it like an actor.  See the NoteColumnRenderer class for a list of special functions for the column's actor.
---@return {NoteColumnRenderer}
function NoteField:get_column_actors() end

--- Same as SetDidTapNoteCallback, but for hold notes.  Uses HoldNoteScore instead of TapNoteScore.
---@param callback function
function NoteField:set_did_hold_note_callback(callback) end

--- Sets the function that the NoteField will call whenever a tap note is hit.
--- The callback function is passed the column, the TapNoteScore, and whether the explosion will be bright.
--- The callback function can return changed values for the NoteField to use instead of the ones that were passed.
--- Pass nil instead of a function to clear the callback.
---@param callback function
function NoteField:set_did_tap_note_callback(callback) end

--- Makes the NoteField act as if a press occurred in the column.
--- The callback for set_pressed will not be called.
---@param column integer
function NoteField:set_pressed(column) end

--- Sets the function that the NoteField will call whenever a press occurs.
--- The callback function is passed the column for the press.
--- The callback function can return changed values for the NoteField to use instead of the ones that were passed.
--- Pass nil instead of a function to clear the callback.
---@param callback function
function NoteField:set_set_pressed_callback(callback) end

--- Sets the function that the NoteField will call whenever a step occurs.
--- The callback function is passed the column and the TapNoteScore for the step.
--- The callback function can return changed values for the NoteField to use instead of the ones that were passed.
--- Pass nil instead of a function to clear the callback.
---@param callback function
function NoteField:set_step_callback(callback) end

--- Makes the NoteField act as if a step occurred in the column with the given score.
--- The callback for Step will not be called.
---@param column integer
---@param tns Enum  @TapNoteScore enum
function NoteField:step(column,tns) end

OptionRow = {}

--- Returns true if the first item in the row goes down.
---@return boolean
function OptionRow:FirstItemGoesDown() end

--- Returns an index of the choice in the row that player pn is on.
---@return integer
---@param pn Enum @PlayerNumber enum
function OptionRow:GetChoiceInRowWithFocus(pn) end

--- Returns the OptionRow's layout type.
---@return Enum @LayoutType enum
function OptionRow:GetLayoutType() end

--- Returns the name of the OptionRow.
---@return string
function OptionRow:GetName() end

--- Returns the number of choices in this OptionRow.
---@return integer
function OptionRow:GetNumChoices() end

--- Returns the row title string.
---@return string
function OptionRow:GetRowTitle() end

--- Returns the OptionRow's select type.
---@return Enum @SelectType enum
function OptionRow:GetSelectType() end

--- Returns true if this row is focused by player pn.
---@return boolean
---@param pn Enum @PlayerNumber enum
function OptionRow:HasFocus(pn) end

--- Returns true if this row forces one choice on all players.
---@return boolean
function OptionRow:OneChoiceForAllPlayers() end

PaneDisplay = {}
--- Sets the PaneDisplay from the GameState.
---@return void
function PaneDisplay:SetFromGameState() end

PercentageDisplay = {}
--- Sets the PercentageDisplay from the specified PlayerState and PlayerStageStats.
---@return void
---@param pPlayerState PlayerState
---@param pPlayerStageStats PlayerStageStats
function PercentageDisplay:LoadFromStats(pPlayerState,pPlayerStageStats) end

Player = {}

--- Changes the life value by delta.  This will broadcast a LifeChangedMessageCommand, to allow custom life bars to update to the new value.  Do not call ChangeLife from within LifeChangedMessageCommand.
---@param delta float
function Player:ChangeLife(delta) end

--- Sets the life to value.  This will broadcast a LifeChangedMessageCommand, to allow custom life bars to update to the new value.  Do not call SetLife from within LifeChangedMessageCommand.
---@param value float
function Player:SetLife(value) end

--- Returns the current TimingData for this player.
---@return TimingData
function Player:GetPlayerTimingData() end

--- Sets Actor with Combo position.
---@return void
---@param a Actor
function Player:SetActorWithComboPosition(a) end

--- Sets Actor with Judgment position.
---@return void
---@param a Actor
function Player:SetActorWithJudgmentPosition(a) end

PlayerInfo = {}
--- Returns the LifeMeter of player pn.
---@return LifeMeter
---@param pn Enum @PlayerNumber enum
function PlayerInfo:GetLifeMeter(pn) end

--- Returns the Steps located at index in the current steps queue.
---@return Steps
---@param index integer
function PlayerInfo:GetStepsQueueWrapped(index) end

PlayerOptions = {}

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Alternate(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:AttackMines(value) end

---@return integer
---@param num integer
function PlayerOptions:BatteryLives(num) end

---@return boolean
---@param value boolean
function PlayerOptions:Backwards(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Beat(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Big(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Blink(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Blind(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:BMRize(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Boomerang(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Boost(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Brake(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Bumpy(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Centered(value,approach_speed) end

--- If the player has a CMod set, returns the value of that CMod and its associated approach speed.  Returns nil otherwise.
--- If the optional first argument is passed, sets the CMod to the value and disables any XMod or MMod that is set.
--- If the optional second argument is passed, sets the speed at which the transition occurs.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:CMod(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Confusion(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Cover(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Cross(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Dark(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Dizzy(value,approach_speed) end

--- If the player is using Distant (zero skew and positive tilt), returns the value of tilt and its approach_speed.
--- Returns nil otherwise.
--- If the optional first argument is passed, sets tilt to value and skew to zero.
--- If the optional second argument is passed, sets the approach_speed for skew and tilt to it.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Distant(value,approach_speed) end

---@return Enum @DrainType enum
---@param type Enum @DrainType enum
function PlayerOptions:DrainSetting(type) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Drunk(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Echo(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Expand(value,approach_speed) end

--- Sets the ENUM:FailType for the player, if the optional argument is provided.  Returns the ENUM:FailType that was previously set.
---@return Enum @FailType enum
---@param FailType Enum @FailType enum
function PlayerOptions:FailSetting(FailType) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Flip(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Floored(value) end

--- Returns true if step attacks or random attacks are enabled.
---@return boolean
function PlayerOptions:GetStepAttacks() end

--- Returns true if the current PlayerOptions makes the current Course/Trail easier.
---@return boolean
---@param c Course
---@param t Trail
function PlayerOptions:IsEasierForCourseAndTrail(c,t) end

--- Returns true if the current PlayerOptions makes the current Song/Steps easier.
---@return boolean
---@param so Song
---@param st Steps
function PlayerOptions:IsEasierForSongAndSteps(so,st) end

--- If the player is using Hallway (zero skew and negative tilt), returns the value of tilt and its approach_speed.
--- Returns nil otherwise.
--- If the optional first argument is passed, sets tilt to negative value and skew to zero.
--- Pass in a positive value for the familiar meaning of Hallway.
--- If the optional second argument is passed, sets the approach_speed for skew and tilt to it.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Hallway(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Hidden(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:HiddenOffset(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:HoldRolls(value) end

--- If the player is using Incoming ((positive skew and negative tilt) or (negative skew and positive tilt)), returns the value of skew and its approach_speed.
--- Returns nil otherwise.
--- If the optional first argument is passed, sets tilt to negative value and skew to value.
--- Pass in a positive value for the familiar meaning of Incoming.
--- If the optional second argument is passed, sets the approach_speed for skew and tilt to it.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Incoming(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Invert(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Left(value) end

---@return Enum @LifeType enum
---@param type Enum @LifeType enum
function PlayerOptions:LifeSetting(type) end

---@return boolean
---@param value boolean
function PlayerOptions:Little(value) end

--- MaxScrollBPM is one of the variables for controlling the speed mod.
--- Use CMod, XMod, or MMod to set the speed mod unless you have a good reason not to.
--- It is the setting for the MMod.
--- MMods are not tweenable or settable on ScreenGameplay.  Use XMods if you need such an effect.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:MaxScrollBPM(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Mines(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Mini(value,approach_speed) end

--- Sets the min TapNoteScore required for the notes to disappear after being hit.
---@return Enum @TapNoteScore enum
---@param tns Enum  @TapNoteScore enum
function PlayerOptions:MinTNSToHideNotes(tns) end

---@return boolean
---@param value boolean
function PlayerOptions:Mirror(value) end

--- If the player has a MMod set, returns the value of that MMod and its associated approach speed.  Returns nil otherwise.
--- If the optional first argument is passed, sets the MMod to the value and disables any CMod or XMod that is set.
--- If the optional second argument is passed, sets the speed at which the transition occurs.
--- MMods are not tweenable or settable on ScreenGameplay.  Use XMods if you need such an effect.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:MMod(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:MuteOnError(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:NoAttack(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:NoFakes(value) end

---@return boolean
---@param value boolean
function PlayerOptions:NoHolds(value) end

---@return boolean
---@param value boolean
function PlayerOptions:NoJumps(value) end

---@return boolean
---@param value boolean
function PlayerOptions:NoHands(value) end

---@return boolean
---@param value boolean
function PlayerOptions:NoLifts(value) end

---@return boolean
---@param value boolean
function PlayerOptions:NoQuads(value) end

---@return boolean
---@param value boolean
function PlayerOptions:NoStretch(value) end

---@return boolean
---@param value boolean
function PlayerOptions:NoMines(value) end

---@return boolean
---@param value boolean
function PlayerOptions:NoRolls(value) end

--- Sets the NoteSkin to the named noteskin, unless name is nil or the noteskin does not exist.  Returns the name of the previous noteskin and whether the set attempt succeeded.
--- Changing the noteskin during a song is not supported.
--- Example:
--- note_name= options:NoteSkin() -- Sets note_name to the player's current noteskin.
--- prev_note_name, succeeded= options:NoteSkin("cel") -- Sets prev_note_name to the noteskin the player had set, changes the current noteskin to "cel", sets succeeded to true if the "cel" noteskin exists.
---@return string, boolean
---@param name string
function PlayerOptions:NoteSkin(name) end

--- If the player is using Overhead (0 tilt, 0 skew), returns true.
--- If true is passed, sets the tilt and skew to 0.
---@return boolean
---@param bool boolean
function PlayerOptions:Overhead(bool) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Passmark(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Planted(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:PlayerAutoPlay(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Quick(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:RandAttack(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:RandomSpeed(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:RandomVanish(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Reverse(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Right(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Roll(value,approach_speed) end

--- ScrollBPM is one of the variables for controlling the speed mod.
--- Use CMod, XMod, or MMod to set the speed mod unless you have a good reason not to.
--- It is the setting for the CMod.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:ScrollBPM(value,approach_speed) end

--- ScrollSpeed is one of the variables for controlling the speed mod.
--- Use CMod, XMod, or MMod to set the speed mod unless you have a good reason not to.
--- It is the setting for the XMod.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:ScrollSpeed(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Shuffle(value) end

--- Skew is one of the mods for controlling the perspective.  Use Overhead, Distant, Incoming, Space, Distant, or Hallway for controlling the perspective in the old way.
--- Skew moves the vanishing point for the note field away from the center of the screen.
--- Skew has no effect in single mode if Center1Player is true.
--- Skew has no effect in double mode.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Skew(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Skippy(value) end

---@return boolean
---@param value boolean
function PlayerOptions:SoftShuffle(value) end

--- If the player is using Space ((positive skew and positive tilt) or (negative skew and negative tilt)), returns the value of skew and its approach_speed.
--- Returns nil otherwise.
--- If the optional first argument is passed, sets tilt to value and skew to value.
--- If the optional second argument is passed, sets the approach_speed for skew and tilt to it.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Space(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Split(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Stealth(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Stomp(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Sudden(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:SuddenOffset(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:SuperShuffle(value) end

--- TimeSpacing is one of the variables for controlling the speed mod.
--- Use CMod, XMod, or MMod to set the speed mod unless you have a good reason not to.
--- It controls whether the speed mod is in X mode or C mode.  It should only be set to 0 or 1, and is only a float value to allow tweening between the two states.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:TimeSpacing(value,approach_speed) end

--- Tilt is one of the mods for controlling the perspective.  Use Overhead, Distant, Incoming, Space, Distant, or Hallway for controlling the perspective in the old way.
--- Tilt tilts the note field forward and back.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Tilt(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Tiny(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Tipsy(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Tornado(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:TurnNone(value) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Twirl(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Twister(value) end

--- Returns true if the player is using reverse. (equivalent to GetReverse() == 1.0)
---@return boolean
function PlayerOptions:UsingReverse() end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Wave(value,approach_speed) end

---@return boolean
---@param value boolean
function PlayerOptions:Wide(value) end

--- If the player has a XMod set, returns the value of that XMod and its associated approach speed.  Returns nil otherwise.
--- If the optional first argument is passed, sets the XMod to the value and disables any CMod or MMod that is set.
--- If the optional second argument is passed, sets the speed at which the transition occurs.
---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:XMod(value,approach_speed) end

---@return float, float
---@param value float
---@param approach_speed float
function PlayerOptions:Xmode(value,approach_speed) end

PlayerStageStats = {}

--- Fails the player.
---@return boolean
function PlayerStageStats:FailPlayer() end

--- Returns true if a full combo (TNS_W3 and up) was obtained.
---@return boolean
function PlayerStageStats:FullCombo() end

--- Returns true if a full combo (tns and up) was obtained.
---@return boolean
---@param tns Enum  @TapNoteScore enum
function PlayerStageStats:FullComboOfScore(tns) end

--- Returns the number of Dance Points obtained by the player.
---@return integer
function PlayerStageStats:GetActualDancePoints() end

--- Returns how long the player has been alive.
---@return float
function PlayerStageStats:GetAliveSeconds() end

--- Returns the best tap note score for a full combo.
---@return Enum @TapNoteScore enum
function PlayerStageStats:GetBestFullComboTapNoteScore() end

--- Returns the number of calories burned.
---@return float
function PlayerStageStats:GetCaloriesBurned() end

--- Returns a table of all the combos.  Each entry in the table is a table containing the StartSecond, SizeSeconds, Count, Rollover, StageCount, and IsZero information for that combo.
---@return {combo}
function PlayerStageStats:GetComboList() end

--- Returns the current possible maximum score.
---@return integer
function PlayerStageStats:GetCurMaxScore() end

--- Returns the player's current combo.
---@return integer
function PlayerStageStats:GetCurrentCombo() end

--- Returns the player's current life from 0..1.
---@return float
function PlayerStageStats:GetCurrentLife() end

--- Returns the player's current miss combo.
---@return integer
function PlayerStageStats:GetCurrentMissCombo() end

--- Returns the number of Dance Points possible to be obtained by the player.
---@return integer
function PlayerStageStats:GetCurrentPossibleDancePoints() end

--- Returns the player's current score multiplier.
---@return integer
function PlayerStageStats:GetCurrentScoreMultiplier() end

--- Returns true if the player failed.
---@return boolean
function PlayerStageStats:GetFailed() end

--- Returns the player's grade.
---@return Grade
function PlayerStageStats:GetGrade() end

--- Returns the player's HighScore.
---@return HighScore
function PlayerStageStats:GetHighScore() end

--- Returns the number of judgments for a specified HoldNoteScore.
---@return integer
---@param hns Enum @HoldNoteScore enum
function PlayerStageStats:GetHoldNoteScores(hns) end

--- Returns the player's actual score on the lesson.
---@return integer
function PlayerStageStats:GetLessonScoreActual() end

--- Returns the score needed to pass the lesson.
---@return integer
function PlayerStageStats:GetLessonScoreNeeded() end

--- Returns table of samples of the life record from 0 to last_second.
--- 'samples' determines the size of the table.  'samples' defaults to 100
--- if not specified.
---@return {float}
---@param last_second float
---@param samples integer
function PlayerStageStats:GetLifeRecord(last_second,samples) end

--- Returns the player's life remaining seconds.
---@return float
function PlayerStageStats:GetLifeRemainingSeconds() end

--- Returns the machine high score index for this performance.
---@return integer
function PlayerStageStats:GetMachineHighScoreIndex() end

--- Returns the number of controller steps.
---@return integer
function PlayerStageStats:GetNumControllerSteps() end

--- Returns the peak combo award for this performance.
---@return Enum @PeakComboAward enum
function PlayerStageStats:GetPeakComboAward() end

--- Returns the personal high score index for this performance.
---@return integer
function PlayerStageStats:GetPersonalHighScoreIndex() end

--- Returns a table of played steps.
---@return {Steps}
function PlayerStageStats:GetPlayedSteps() end

--- Gets the percentage of taps that were scored as tns.
---@return float
---@param tns Enum  @TapNoteScore enum
function PlayerStageStats:GetPercentageOfTaps(tns) end

--- Returns the player's Dance Point percentage.
---@return float
function PlayerStageStats:GetPercentDancePoints() end

--- Returns the number of possible Dance Points.
---@return integer
function PlayerStageStats:GetPossibleDancePoints() end

--- Returns a table of possible steps.
---@return {Steps}
function PlayerStageStats:GetPossibleSteps() end

--- Returns a RadarValues object representing the player's actual performance.
---@return RadarValues
function PlayerStageStats:GetRadarActual() end

--- Returns a RadarValues object representing the total values for the song.
---@return RadarValues
function PlayerStageStats:GetRadarPossible() end

--- Returns the score.
---@return integer
function PlayerStageStats:GetScore() end

--- Returns the number of songs passed.
---@return integer
function PlayerStageStats:GetSongsPassed() end

--- Returns the number of songs played.
---@return integer
function PlayerStageStats:GetSongsPlayed() end

--- Returns the stage award for this performance.
---@return Enum @StageAward enum
function PlayerStageStats:GetStageAward() end

--- Returns how long the player survived in seconds.
---@return float
function PlayerStageStats:GetSurvivalSeconds() end

--- Returns the number of judgments for a specified TapNoteScore.
---@return integer
---@param tns Enum @TapNoteScore enum
function PlayerStageStats:GetTapNoteScores(tns) end

--- Returns the max combo for this performance.
---@return integer
function PlayerStageStats:MaxCombo() end

--- Returns true if the player was disqualified from ranking.
---@return boolean
function PlayerStageStats:IsDisqualified() end

PlayerState = {}

--- Applies the player options of ModsLevel_Preferred to the other ModsLevels.
---@return void
function PlayerState:ApplyPreferredOptionsToOtherLevels() end

--- Returns the current PlayerOptions for this PlayerState.
---@return PlayerOptions
function PlayerState:GetCurrentPlayerOptions() end

--- Returns the HealthState for this PlayerState.
---@return Enum @HealthState enum
function PlayerState:GetHealthState() end

--- Returns the multiplayer number for this PlayerState.
---@return Enum @MultiPlayer enum
function PlayerState:GetMultiPlayerNumber() end

--- Returns the PlayerController for this PlayerState.
---@return Enum @PlayerController enum
function PlayerState:GetPlayerController() end

--- Returns the player number for this PlayerState.
---@return PlayerNumber
function PlayerState:GetPlayerNumber() end

--- Returns a PlayerOptions object for the specified ModsLevel.
---@return PlayerOptions
---@param ml Enum @ModsLevel enum
function PlayerState:GetPlayerOptions(ml) end

--- Returns a string of player options for the specified ModsLevel. (was GetPlayerOptions before sm-ssc v1.2.3)
---@return string
---@param ml Enum @ModsLevel enum
function PlayerState:GetPlayerOptionsString(ml) end

--- Returns a table of strings, containing the player options for the specified ModsLevel.
---@return {string}
---@param ml Enum @ModsLevel enum
function PlayerState:GetPlayerOptionsArray(ml) end

--- Returns the SongPosition for this PlayerState.
---@return SongPosition
function PlayerState:GetSongPosition() end

--- Returns the current Super Meter level for this PlayerState.
---@return float
function PlayerState:GetSuperMeterLevel() end

--- Sets the player options to sPlayerOptions for the specified ModsLevel.
---@return string
---@param ml Enum @ModsLevel enum
---@param sPlayerOptions string
function PlayerState:SetPlayerOptions(ml,sPlayerOptions) end

PrefsManager = {}

--- Return the value of the preference sPreference.
---@return various
---@param sPreference string
function PrefsManager:GetPreference(sPreference) end

--- Return true if preference sPreference exists.
---@return boolean
---@param sPreference string
function PrefsManager:PreferenceExists(sPreference) end

--- Set the value of the preference sPreference to value.
---@return void
---@param sPreference string
---@param value various
function PrefsManager:SetPreference(sPreference,value) end

--- Reset preference sPreference to the default value.
---@return void
---@param sPreference string
function PrefsManager:SetPreferenceToDefault(sPreference) end

--- Saves preferences to disk.
---@return void
function PrefsManager:SavePreferences() end

Profile = {}

--- Adds cals to the daily total.
---@return void
---@param cals float
function Profile:AddCaloriesToDailyTotal(cals) end

--- Adds a screenshot entry to the profile.  filename must be the full path of the screenshot, as returned by SaveScreenshot.
---@return void
---@param hs HighScore
---@param filename string
function Profile:AddScreenshot(hs,filename) end

--- Calculates the number of calories burned based on the heart rate (in beats per minute), the duration (in seconds), and data in the profile.
---@return float
---@param heart_bpm float
---@param duration float
function Profile:CalculateCaloriesFromHeartRate(heart_bpm,duration) end

--- Returns the age.
---@return integer
function Profile:GetAge() end

--- Returns a table of all high score names that have been used on this profile.
---@return {string}
function Profile:GetAllUsedHighScoreNames() end

--- Returns the birth year.
---@return integer
function Profile:GetBirthYear() end

--- Returns the number of calories burned during the current day.
---@return float
function Profile:GetCaloriesBurnedToday() end

--- Returns the profile's high scores for the specified ranking category.
---@return HighScoreList
---@param st StepsType
---@param rc Enum @RankingCategory enum
function Profile:GetCategoryHighScoreList(st,rc) end

--- Returns the Character being used by this profile.
---@return Character
function Profile:GetCharacter() end

--- Returns a composite of your high scores over courses with the specified StepsType and Difficulty.
---@return float
---@param st StepsType
---@param d Difficulty
function Profile:GetCoursesActual(st,d) end

--- Returns the percentage of courses that you've completed with the specified StepsType and Difficulty.
---@return float
---@param st StepsType
---@param d Difficulty
function Profile:GetCoursesPercentComplete(st,d) end

--- Returns the possible score of courses with the specified StepsType and Difficulty.
---@return float
---@param st StepsType
---@param d Difficulty
function Profile:GetCoursesPossible(st,d) end

--- Returns the profile's display name.
---@return string
function Profile:GetDisplayName() end

--- Return the number of calories burned as a string.
---@return string
function Profile:GetDisplayTotalCaloriesBurned() end

--- Returns the number of calories needed to reach the goal.
---@return integer
function Profile:GetGoalCalories() end

--- Returns the number of seconds needed to reach the goal.
---@return integer
function Profile:GetGoalSeconds() end

--- Returns the current goal type.
---@return Enum @GoalType enum
function Profile:GetGoalType() end

--- Returns the GUID of this Profile.
---@return string
function Profile:GetGUID() end

--- Returns whether this profile ignores the step count based calorie calculation.
---@return boolean
function Profile:GetIgnoreStepCountCalories() end

--- Returns whether this profile uses the male formula when CalculateCaloriesFromHeartRate is used.
---@return boolean
function Profile:GetIsMale() end

--- Gets the profile's HighScoreList for a specified Song and Steps. (Alternate arguments for Courses: Course c, Trail t)
---@return HighScoreList
---@param s Song
---@param st Steps
function Profile:GetHighScoreList(s,st) end

--- Gets the profile's HighScoreList for a specified Song and Steps. (Alternate arguments for Courses: Course c, Trail t)
--- If the profile does not have a HighScoreList for the Song and Steps, returns nil.  Use this to avoid increasing the memory footprint of the profile when checking the score lists for every song and steps.
---@return HighScoreList
---@param s Song
---@param st Steps
function Profile:GetHighScoreListIfExists(s,st) end

--- Returns the last played Course for this profile.
---@return Course
function Profile:GetLastPlayedCourse() end

--- Returns the last played Song for this profile.
---@return Song
function Profile:GetLastPlayedSong() end

--- Returns the last used high score name.
---@return string
function Profile:GetLastUsedHighScoreName() end

--- Returns the number of Toasties gotten using the specified profile.
---@return integer
function Profile:GetNumToasties() end

--- Returns the profile's most popular course.
---@return Course
function Profile:GetMostPopularCourse() end

--- Returns the profile's most popular song.
---@return Song
function Profile:GetMostPopularSong() end

--- Returns the total number of songs played with the profile.
---@return integer
function Profile:GetNumTotalSongsPlayed() end

--- Returns the position the profile should have in its category in the list.
---@return integer
function Profile:GetPriority() end

--- Returns the number of times song s has been played with the profile.
---@return integer
---@param s Song
function Profile:GetSongNumTimesPlayed(s) end

--- Returns a composite of your high scores over songs with the specified StepsType and Difficulty.
---@return float
---@param st StepsType
---@param d Difficulty
function Profile:GetSongsActual(st,d) end

--- Returns the percent complete for all songs and courses for the specified StepsType st.
---@return float
---@param st StepsType
function Profile:GetSongsAndCoursesPercentCompleteAllDifficulties(st) end

--- Returns the percentage of songs that you've completed with the specified StepsType and Difficulty.
---@return float
---@param st StepsType
---@param d Difficulty
function Profile:GetSongsPercentComplete(st,d) end

--- Returns the possible score of songs with the specified StepsType and Difficulty.
---@return float
---@param st StepsType
---@param d Difficulty
function Profile:GetSongsPossible(st,d) end

--- Return the total number of calories burned.
---@return float
function Profile:GetTotalCaloriesBurned() end

--- Returns the number of dance points earned.
---@return integer
function Profile:GetTotalDancePoints() end

--- Returns the number of Hands stepped on.
---@return integer
function Profile:GetTotalHands() end

--- Returns the number of successful Holds.
---@return integer
function Profile:GetTotalHolds() end

--- Returns the number of Jumps stepped on.
---@return integer
function Profile:GetTotalJumps() end

--- Returns the number of successful Lifts.
---@return integer
function Profile:GetTotalLifts() end

--- Returns the number of Mines stepped on.
---@return integer
function Profile:GetTotalMines() end

--- Returns the total number of songs played with the profile.
---@return integer
function Profile:GetTotalNumSongsPlayed() end

--- Returns the number of successful Rolls.
---@return integer
function Profile:GetTotalRolls() end

--- Returns the number of steps with the specified StepsType and Difficulty that you've scored a certain Grade g on.
---@return integer
---@param st StepsType
---@param d Difficulty
---@param g Grade
function Profile:GetTotalStepsWithTopGrade(st,d,g) end

--- Returns the number of Taps and successful Holds.
---@return integer
function Profile:GetTotalTapsAndHolds() end

--- Returns the number of trails with the specified StepsType and Difficulty that you've scored a certain Grade g on.
---@return integer
---@param st StepsType
---@param d Difficulty
---@param g Grade
function Profile:GetTotalTrailsWithTopGrade(st,d,g) end

--- Returns the type of the profile.  The type of the profile is only used to determine where the profile shows up in the list of profiles, and that problem is already handled by ProfileManager, so if you're reading this, this function only exists so you can make your theme color this profile's list entry based on the type or something like that.
---@return Enum @ProfileType enum
function Profile:GetType() end

--- Returns the user table for this Profile.
---@return table
function Profile:GetUserTable() end

--- Returns the VO2 max for this profile.
---@return float
function Profile:GetVoomax() end

--- Returns how much the player weighs.
---@return integer
function Profile:GetWeightPounds() end

--- Returns true if the player has passed any steps in the specified Song s.
---@return boolean
---@param s Song
function Profile:HasPassedAnyStepsInSong(s) end

--- Returns true if the specified code sUnlockEntryID is unlocked.
---@return boolean
---@param sUnlockEntryID string
function Profile:IsCodeUnlocked(sUnlockEntryID) end

--- Sets the birth year of the profile.
---@return void
---@param year integer
function Profile:SetBirthYear(year) end

--- Sets the current Character for the Profile.
---@return void
---@param sCharID string
function Profile:SetCharacter(sCharID) end

--- Sets the display name of the profile to name.
---@return void
---@param name string
function Profile:SetDisplayName(name) end

--- Sets the goal to iCals calories.
---@return void
---@param iCals integer
function Profile:SetGoalCalories(iCals) end

--- Sets the goal to iSecs seconds.
---@return void
---@param iSecs integer
function Profile:SetGoalSeconds(iSecs) end

--- Sets the current goal type to gt.
---@return void
---@param gt Enum @GoalType enum
function Profile:SetGoalType(gt) end

--- Sets whether this profile ignores the step count based calorie counting.
---@return void
---@param ignore boolean
function Profile:SetIgnoreStepCountCalories(ignore) end

--- Sets whether this profile uses the male formula when CalculateCaloriesFromHeartRate is used.
---@return void
---@param male boolean
function Profile:SetIsMale(male) end

--- Sets last used high score name.
---@return void
---@param name string
function Profile:SetLastUsedHighScoreName(name) end

--- Sets the VO2 max for the profile.  0 is treated as unset.
---@return void
---@param voo float
function Profile:SetVoomax(voo) end

--- Sets how much the player weighs (in pounds) to weightPounds.
---@return void
---@param weightPounds integer
function Profile:SetWeightPounds(weightPounds) end

--- Returns the amount of time this profile has spent in gameplay (in seconds).
---@return integer
function Profile:GetTotalGameplaySeconds() end

--- Returns the number of sessions this profile has had.
---@return integer
function Profile:GetTotalSessions() end

--- Returns the total session length (in seconds) of this profile.
---@return integer
function Profile:GetTotalSessionSeconds() end

ProfileManager = {}

--- Returns the Profile for the specified profile ID.
---@return Profile
---@param sProfileID string
function ProfileManager:GetLocalProfile(sProfileID) end

--- Returns a table of the local profile display names.
---@return {string}
function ProfileManager:GetLocalProfileDisplayNames() end

---@return Profile
---@param iIndex integer
function ProfileManager:GetLocalProfileFromIndex(iIndex) end

---@return string
---@param iIndex integer
function ProfileManager:GetLocalProfileIDFromIndex(iIndex) end

--- Returns a table of the local profile IDs.
---@return {string}
function ProfileManager:GetLocalProfileIDs() end

---@return integer
---@param sProfileID string
function ProfileManager:GetLocalProfileIndexFromID(sProfileID) end

--- Retuns the machine profile.
---@return Profile
function ProfileManager:GetMachineProfile() end

--- Retuns the amount of local profiles.
---@return integer
function ProfileManager:GetNumLocalProfiles() end

--- Returns the player name for player pn.
---@return string
---@param pn Enum @PlayerNumber enum
function ProfileManager:GetPlayerName(pn) end

--- Returns the profile for player pn.
---@return Profile
---@param pn Enum @PlayerNumber enum
function ProfileManager:GetProfile(pn) end

--- Returns the profile directory of the specified ProfileSlot.
---@return string
---@param slot Enum @ProfileSlot enum
function ProfileManager:GetProfileDir(slot) end

--- Returns the number of times Song s has been played with the specified ProfileSlot.
---@return integer
---@param s Song
---@param ps Enum @ProfileSlot enum
function ProfileManager:GetSongNumTimesPlayed(s,ps) end

--- Returns the current stats prefix.
---@return string
function ProfileManager:GetStatsPrefix() end

--- Returns true if player pn's profile is persistent.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ProfileManager:IsPersistentProfile(pn) end

--- Returns true if Song s has never been played before (according to the machine profile).
---@return boolean
---@param s Song
function ProfileManager:IsSongNew(s) end

function ProfileManager:LocalProfileIDToDir() end

--- Returns true if the profile from the memory card is new.
---@return boolean
function ProfileManager:ProfileFromMemoryCardIsNew() end

--- Returns true if pn's Profile was loaded from a memory card.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ProfileManager:ProfileWasLoadedFromMemoryCard(pn) end

--- Returns true if the last load of player pn's profile was a LastGood copy of the profile.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ProfileManager:LastLoadWasFromLastGood(pn) end

--- Returns true if the last load of player pn's profile resulted in a tampered or corrupt profile.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ProfileManager:LastLoadWasTamperedOrCorrupt(pn) end

--- Saves the local profile with the specified ID.
---@return boolean
---@param ID string
function ProfileManager:SaveLocalProfile(ID) end

--- Saves the machine profile.
---@return void
function ProfileManager:SaveMachineProfile() end

--- Saves the profile for player pn.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ProfileManager:SaveProfile(pn) end

--- Sets the current stats prefix.  The stats prefix is prepended to the Stats.xml file when loading or saving a profile.  SetStatsPrefix will reload all profiles from the Stats.xml that has the given prefix.  In general, score entries are the only thing not preserved when changing the stats prefix.  Profile::HandleStatsPrefixChange in Profile.cpp lists the fields that are preserved.
---@param prefix string
function ProfileManager:SetStatsPrefix(prefix) end

RadarValues = {}

--- Returns the value of rc from Steps:GetRadarValues.
---@return integer
---@param rc Enum @RadarCategory enum
function RadarValues:GetValue(rc) end

RageBezier2D = {}

--- Destroys the RageBezier2D.  Do not attempt to use it after it has been destroyed.
function RageBezier2D:destroy() end

--- Evaluates the bezier curve at the given t and returns the x and y values.  This is equivalent to using get_x and get_y to fetch the quadratic parts and calling evaluate on them directly.
---@return float,float
---@param t float
function RageBezier2D:evaluate(t) end

--- Takes the x given and converts it to a t value, then evaluates the y quadratic with the t value and returns the result.
---@return float
---@param x float
function RageBezier2D:evaluate_y_from_x(x) end

--- Returns the RageQuadratic used for the x component.
---@return RageQuadratic
function RageBezier2D:get_x() end

--- Returns the RageQuadratic used for the y component.
---@return RageQuadratic
function RageBezier2D:get_y() end

--- Sets the values used by the two quadratics.  This is equivalent to using get_x and get_y to get the quadratics and setting them directly.  Note that the components for the x quadratic and the y quadratic are interleaved.
---@param xa float
---@param ya float
---@param xb float
---@param yb float
---@param xc float
---@param yc float
---@param xd float
---@param yd float
function RageBezier2D:set_from_bezier(xa,ya,xb,yb,xc,yc,xd,yd) end

RageDisplay = {}

--- Return the height of the display.
---@return integer
function RageDisplay:GetDisplayHeight() end

--- Return the width of the display.
---@return integer
function RageDisplay:GetDisplayWidth() end

--- Return the number of frames per second.
---@return integer
function RageDisplay:GetFPS() end

--- Return the VPF.
---@return integer
function RageDisplay:GetVPF() end

--- Return the cumulative FPS.
---@return integer
function RageDisplay:GetCumFPS() end

RageFile = {}

--- Returns true if the current position within the file is the end. (EOF = End of File)
---@return boolean
function RageFile:AtEOF() end

--- Clears the last error message.
---@return void
function RageFile:ClearError() end

--- Closes the file and releases it from memory.
---@return void
function RageFile:Close() end

--- Safely deletes the file handle.
---@return void
function RageFile:destroy() end

--- Flushes the buffer for the file handle, writing any pending output to disk.
function RageFile:Flush() end

--- Gets the last error message and returns it.
---@return string
function RageFile:GetError() end

--- Gets a line and returns it.
---@return string
function RageFile:GetLine() end

--- Opens a file at sPath (relative to the StepMania root directory).
--- iAccessType can be set to read (1), write (2), stream (4) or flush to disk on close (8).
--- These can also be combined with addition. For example, to set up read and write, set iAccessType to 3 (1+2).
---@return boolean
---@param sPath string
---@param iAccessType integer
function RageFile:Open(sPath,iAccessType) end

--- Puts a new line in the file.
---@return integer
---@param s string
function RageFile:PutLine(s) end

--- Returns a string containing the entire contents of the file.
---@return string
function RageFile:Read() end

--- Returns length bytes from the RageFile's current position.
---@return string
---@param length integer
function RageFile:ReadBytes(length) end

--- Seeks to a position in the file and returns the new position.
---@return integer
function RageFile:Seek() end

--- Returns the current position in the file.
---@return integer
function RageFile:Tell() end

--- Writes a file with the contents of str.
---@return integer
---@param str string
function RageFile:Write(str) end

RageFileManager = {}

--- Returns true if a file exists at sPath.
---@return boolean
---@param sPath string
function RageFileManager:DoesFileExist(sPath) end

--- Returns a listing of files from sPath. The last two arguments are optional (and default to false).
---@return {string}
---@param sPath string
---@param bOnlyDirs boolean
---@param bReturnPathToo boolean
function RageFileManager:GetDirListing(sPath,bOnlyDirs,bReturnPathToo) end

--- Returns a file's size in bytes.
---@return integer
---@param sPath string
function RageFileManager:GetFileSizeBytes(sPath) end

--- Returns the hash of the file at sPath.
---@return integer
---@param sPath string
function RageFileManager:GetHashForFile(sPath) end

RageInput = {}

--- Return an array of connected input device descriptions.
---@return {string}
function RageInput:GetDescriptions() end

RageQuadratic = {}

--- Evaluates the quadratic at the given t value and returns the result.
---@return float
---@param t float
function RageQuadratic:evaluate(t) end

--- Returns the four values that form the quadratic equation.  This function returns multiple values, so you must do something like this to get them:
--- a, b, c, d= quadratic:get_bezier()
---@return float,float,float,float
function RageQuadratic:get_bezier() end

--- Equivalent to evaluate(1), but faster.
---@return float
function RageQuadratic:get_bezier_end() end

--- Equivalent to evaluate(0), but faster.
---@return float
function RageQuadratic:get_bezier_start() end

--- Returns the slope of the curve at the given t value.
---@return float
---@param t float
function RageQuadratic:get_slope(t) end

--- Sets the four values that form the quadratic equation.
---@param a float
---@param b float
---@param c float
---@param d float
function RageQuadratic:set_from_bezier(a,b,c,d) end

--- Sets the four values that form the quadratic equation, treating the arguments as from a cubic equation instead of as from a bezier curve.
---@param a float
---@param b float
---@param c float
---@param d float
function RageQuadratic:set_from_cubic(a,b,c,d) end

RageSound = {}

--- Returns the length of the sound loaded into this RageSound.  Returns -1 if no sound is loaded.
---@return float
function RageSound:get_length() end

--- Actually sets the value of sProperty to fVal. The supported properties depend on how the associated ActorSound was loaded.
---@return void
---@param sProperty string
---@param fVal float
function RageSound:SetParam(sProperty,fVal) end

--- Attempts (and typically fails) to set the value of sProperty to fVal. The supported properties depend on how the associated ActorSound was loaded.
---@return void
---@param sProperty string
---@param fVal float
function RageSound:SetProperty(sProperty,fVal) end

--- Sets the pitch to fPitch. The associated ActorSound have SupportsRateChanging = true on load.
---@return void
---@param fPitch float
function RageSound:pitch(fPitch) end

--- Sets the speed (that is, the rate at which the sound plays) to fSpeed. The associated ActorSound must have SupportsRateChanging = true on load.
---@return void
---@param fSpeed float
function RageSound:speed(fSpeed) end

--- Sets the volume to fVolume, which is between 0..1.
---@return void
---@param fVolume float
function RageSound:volume(fVolume) end

RageTexture = {}

--- Returns the source width.
---@return float
function RageTexture:GetSourceWidth() end

--- Returns the source height.
---@return float
function RageTexture:GetSourceHeight() end

--- Returns the texture width.
---@return float
function RageTexture:GetTextureWidth() end

--- Returns the texture height.
---@return float
function RageTexture:GetTextureHeight() end

--- Returns the image width.
---@return float
function RageTexture:GetImageWidth() end

--- Returns the image height.
---@return float
function RageTexture:GetImageHeight() end

--- Returns the number of frames in this texture.
---@return integer
function RageTexture:GetNumFrames() end

--- Returns the path to the texture's file.
---@return string
function RageTexture:GetPath() end

--- Return the texture coordinate rectangle as {left, top, right, bottom}.
---@return {float}
function RageTexture:GetTextureCoordRect() end

--- Sets the animation or movie looping to bLoop.
---@return void
---@param bLoop boolean
function RageTexture:loop(bLoop) end

--- Sets the animation or movie position to fPos.
---@return void
---@param fPos float
function RageTexture:position(fPos) end

--- Sets the animation or movie playback rate to fRate.
---@return void
---@param fRate float
function RageTexture:rate(fRate) end

--- Reloads the texture.
---@return void
function RageTexture:Reload() end

RollingNumbers = {}

--- Loads the metrics for this RollingNumbers from sGroupName.
---@return void
---@param sGroupName string
function RollingNumbers:Load(sGroupName) end

--- Sets the target number to f.
---@return void
---@param f float
function RollingNumbers:targetnumber(f) end

Screen = {}

--- This adds the lua function "callback" to the list of functions the screen will pass input to.  Whenever an input event occurs, callback will be passed a table with the details of the event.  callback must return a boolean to indicate whether the event was handled.  If callback returns true, the event will not be passed any further.
--- This should not be used to provide text input because that would not handle localization or different keyboard layouts.
--- The screen and the callbacks will both be passed input events, so be aware of what input the current screen responds to and consider the effects.
--- Details of the table containing the event data:
--- {
--- DeviceInput= { -- The raw details of the event.
--- device= string, -- The type of device.  The first half of the string will be "Device_", the second half will be from InputDeviceNames in RageInputDevice.cpp.
--- button= string, -- The button that was pressed.  the first half of the string will be "DeviceButton_", the second half will be from InitNames in RageInputDevice.cpp.
--- level= float, -- A floating point value for analog input.
--- z= float, -- Mousewheel input.
--- down= boolean, -- Whether the button is down.  This is level with a threshold and debouncing applied.
--- ago= float, -- How long ago this input occurred, in seconds.
--- is_joystick= boolean, -- True if the device is a joystick.
--- is_mouse= boolean -- True if the device is a mouse.
--- }, -- This ends the list of things inside the DeviceInput part of the table.
--- controller= string, -- The game controller this event was mapped to.  "GameController_1" or "GameController_2", or nil if the event wasn't mapped to either controller.
--- button= string, -- The semi-raw button that was pressed.  This is what the button was mapped to by the keymap settings, but without the conversions that occur when OnlyDedicatedMenuButtons is true.  Will be empty if the button was not mapped.
--- type= string, -- The type of event.  "InputEventType_FirstPress", "InputEventType_Repeat", or "InputEventType_Release".
--- GameButton= string, -- The cooked button that was pressed.  This is button with mapping that occurs when OnlyDedicatedMenuButtons is true applied.  This is nil for unmapped buttons.
--- PlayerNumber= PlayerNumber, -- The player that the controller is mapped to, or nil.
--- MultiPlayer= string, -- Unknown purpose.
--- }
---@return void
---@param callback function
function Screen:AddInputCallback(callback) end

--- Returns the name of the next Screen.
---@return string
function Screen:GetNextScreenName() end

--- Returns the name of the previous Screen.
---@return string
function Screen:GetPrevScreenName() end

--- Returns the ScreenType for this Screen.
---@return Enum @ScreenType enum
function Screen:GetScreenType() end

--- Locks input for f seconds.
---@return void
---@param f float
function Screen:lockinput(f) end

--- [02 Other.lua] Gets a metric from the current Screen.
---@return string
---@param sName string
function Screen:Metric(sName) end

--- Posts a message with the text sScreenMsg to the Screen after fDelay seconds.
---@return void
---@param sScreenMsg string
---@param fDelay float
function Screen:PostScreenMessage(sScreenMsg,fDelay) end

--- This removes the callback from the list.
---@return void
---@param callback function
function Screen:RemoveInputCallback(callback) end

--- Sets the NextScreen value to name.
---@return void
---@param name string
function Screen:SetNextScreenName(name) end

--- Sets the PrevScreen value to name.
---@return void
---@param name string
function Screen:SetPrevScreenName(name) end

--- [02 Other.lua] Gets a string from the current Screen in the current language.
---@return string
---@param sName string
function Screen:String(sName) end

ScreenEdit = {}

--- Returns the current ENUM:EditState.
---@return Enum @EditState enum
function ScreenEdit:GetEditState() end

ScreenEvaluation = {}

--- Returns the current StageStats.
---@return StageStats
function ScreenEvaluation:GetStageStats() end

ScreenGameplay = {}

--- This should behave identically to the normal back button behavior.  This function is for the pause menu to use when the player forfeits or restarts, so that a score isn't saved.
function ScreenGameplay:begin_backing_out() end

--- Returns true if a single Player has its NoteField centered.
---@return boolean
function ScreenGameplay:Center1Player() end

--- Returns a dummy PlayerInfo for the specified index.
---@return PlayerInfo
---@param index integer
function ScreenGameplay:GetDummyPlayerInfo(index) end

--- Returns the current haste rate.  HasteRate * MusicRate is the current total rate the music is multiplied by.
---@return float
function ScreenGameplay:GetHasteRate() end

--- Returns the LifeMeter for the specified ENUM:PlayerNumber pn.
---@return LifeMeter
---@param pn Enum @PlayerNumber enum
function ScreenGameplay:GetLifeMeter(pn) end

--- Returns the next Song in the current Course.
---@return Song
function ScreenGameplay:GetNextCourseSong() end

--- Returns the PlayerInfo for player pn.
---@return PlayerInfo
---@param pn Enum @PlayerNumber enum
function ScreenGameplay:GetPlayerInfo(pn) end

--- Returns the current true beats per second for the specified player.
--- This takes into account the current music rate and the current haste effect.
--- If you are displaying the BPM on ScreenGameplay, this is what you should use to have correct behavior when Haste and/or a music rate mod are in effect.
---@return float
---@param pn Enum @PlayerNumber enum
function ScreenGameplay:GetTrueBPS(pn) end

--- This is part of the system for controlling how haste behaves.
--- Read Docs/Themerdocs/haste.txt.
---@return table @{float}
---@param float_table table @{float}
function ScreenGameplay:HasteAddAmounts(float_table) end

--- This is part of the system for controlling how haste behaves.
--- Read Docs/Themerdocs/haste.txt.
---@return float
---@param float float
function ScreenGameplay:HasteLifeSwitchPoint(float) end

--- This is part of the system for controlling how haste behaves.
--- Read Docs/Themerdocs/haste.txt.
---@return float
---@param float float
function ScreenGameplay:HasteTimeBetweenUpdates(float) end

--- This is part of the system for controlling how haste behaves.
--- Read Docs/Themerdocs/haste.txt.
---@return table @{float}
---@param float_table table @{float}
function ScreenGameplay:HasteTurningPoints(float_table) end

--- Sets the next Screen to be loaded.
---@return void
---@param s string
function ScreenGameplay:SetNewScreen(s) end

--- Returns true if the game is paused.
---@return boolean
function ScreenGameplay:IsPaused() end

--- Pauses or unpauses the game, depending on the value of bPause.
---@return void
---@param bPause boolean
function ScreenGameplay:PauseGame(bPause) end

ScreenHowToPlay = {}

--- Returns the LifeMeter.
---@return LifeMeter
function ScreenHowToPlay:GetLifeMeter() end

ScreenManager = {}

--- Adds a screen at the top of the screen stack. (sMessage is an optional ScreenMessage posted once the new screen is finished.)
---@return void
---@param sScreenName string
---@param sMessage string
function ScreenManager:AddNewScreenToTop(sScreenName,sMessage) end

--- Gets the screen at the top of the screen stack.
---@return Screen
function ScreenManager:GetTopScreen() end

--- Returns whether the input for the player has been redirected away from the normal screen input function.  Input that has been redirected is only sent to lua input callbacks.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ScreenManager:get_input_redirected(pn) end

--- Plays the invalid sound.
function ScreenManager:PlayInvalidSound() end

--- Plays the start sound.
function ScreenManager:PlayStartSound() end

--- Plays the coin sound.
function ScreenManager:PlayCoinSound() end

--- Plays the cancel sound.
function ScreenManager:PlayCancelSound() end

--- Plays the screenshot sound.
function ScreenManager:PlayScreenshotSound() end

--- Reloads any loaded overlay screens.
---@return void
function ScreenManager:ReloadOverlayScreens() end

--- Returns true if screen class s exists.
---@return boolean
---@param s string
function ScreenManager:ScreenClassExists(s) end

--- Returns true if screen s is prepared.
---@return boolean
---@param s string
function ScreenManager:ScreenIsPrepped(s) end

--- Sets the next screen to s.
---@return void
---@param s string
function ScreenManager:SetNewScreen(s) end

--- Sets whether the input for the player has been redirected away from the normal screen input function.  Input that has been redirected is only sent to lua input callbacks.
--- This can be useful when putting a custom menu on a screen, and you want to disable the built in actors while the menu is open.  Then you handle input through an input callback until the player closes the menu.
---@return boolean
---@param pn Enum @PlayerNumber enum
---@param redir boolean
function ScreenManager:set_input_redirected(pn,redir) end

--- Broadcasts a system message.
---@return void
---@param s string
function ScreenManager:SystemMessage(s) end

ScreenNameEntryTraditional = {}

--- Returns true if Player pn backspaced successfully.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ScreenNameEntryTraditional:Backspace(pn) end

--- Returns true if Player pn was able to add sKey to their name.
---@return boolean
---@param pn Enum @PlayerNumber enum
---@param sKey string
function ScreenNameEntryTraditional:EnterKey(pn,sKey) end

--- Attempts to finish Player pn and returns true
--- if successful.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ScreenNameEntryTraditional:Finish(pn) end

--- Returns true if anyone is entering their name.
---@return boolean
function ScreenNameEntryTraditional:GetAnyEntering() end

--- Returns true if anyone is still entering their name.
--- (As opposed to those who are Finalized; see GetFinalized)
---@return boolean
function ScreenNameEntryTraditional:GetAnyStillEntering() end

--- Returns true if Player pn is entering their name.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ScreenNameEntryTraditional:GetEnteringName(pn) end

--- Returns true if Player pn is finished entering their name.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ScreenNameEntryTraditional:GetFinalized(pn) end

--- Gets the currently selected letter of Player pn.
---@return string
---@param pn Enum @PlayerNumber enum
function ScreenNameEntryTraditional:GetSelection(pn) end

ScreenNetEvaluation = {}

--- Returns the number of active players.
---@return integer
function ScreenNetEvaluation:GetNumActivePlayers() end

ScreenOptions = {}
--- Returns true if all active players are on the last options row.
---@return boolean
function ScreenOptions:AllAreOnLastRow() end

--- Returns true if the specified player is on an items that ends the screen.
---@return boolean
---@param pn Enum @PlayerNumber enum
function ScreenOptions:FocusedItemEndsScreen(pn) end

--- Returns the current row that player pn is on. (Was previously GetCurrentRow.)
---@return integer
---@param pn Enum @PlayerNumber enum
function ScreenOptions:GetCurrentRowIndex(pn) end

--- Returns the number of rows on the screen.
---@return integer
function ScreenOptions:GetNumRows() end

--- Returns the specified OptionRow.
---@return OptionRow
---@param iRow integer
function ScreenOptions:GetOptionRow(iRow) end

ScreenPlayerOptions = {}

--- Returns true if we are going to PlayerOptions.
---@return boolean
function ScreenPlayerOptions:GetGoToOptions() end

ScreenProfileLoad = {}

--- Continues to the next screen.
---@return void
function ScreenProfileLoad:Continue() end

--- Returns true if there is a profile that can be loaded.
---@return boolean
function ScreenProfileLoad:HaveProfileToLoad() end

ScreenProfileSave = {}

--- Continues to the next screen.
---@return void
function ScreenProfileSave:Continue() end

--- Returns true if there is a profile that can be saved.
---@return boolean
function ScreenProfileSave:HaveProfileToSave() end

ScreenSelectMaster = {}

--- Returns player pn's current selected item as an integer.
---@return integer
---@param pn Enum @PlayerNumber enum
function ScreenSelectMaster:GetSelectionIndex(pn) end

ScreenSelectMusic = {}

--- Returns false if the options list is already open or the UseOptionsList metric is false.
---@return boolean
function ScreenSelectMusic:CanOpenOptionsList() end

--- Returns true if the player is going to the options screen.
---@return boolean
function ScreenSelectMusic:GetGoToOptions() end

--- Returns the MusicWheel used on this screen.
---@return MusicWheel
function ScreenSelectMusic:GetMusicWheel() end

--- Opens the OptionsList for Player pn
---@return void
---@param pn Enum @PlayerNumber enum
function ScreenSelectMusic:OpenOptionsList(pn) end

--- [02 StageMods.lua] Sets up modifiers for course modes.
---@return void
function ScreenSelectMusic:setupcoursestagemods() end

--- [02 StageMods.lua] Sets up modifiers for non-course modes.
---@return void
function ScreenSelectMusic:setupmusicstagemods() end

ScreenSelectProfile = {}

--- Tells the screen to go to the previous screen.
---@return void
function ScreenSelectProfile:Cancel() end

--- Attempts to finish the screen and returns true
--- if successful.
---@return boolean
function ScreenSelectProfile:Finish() end

--- Returns the profile index of the specified Player.
---@return integer
---@param pn Enum @PlayerNumber enum
function ScreenSelectProfile:GetProfileIndex(pn) end

--- Sets the profile index of Player pn to iProfileIndex.
---@return boolean
---@param pn Enum @PlayerNumber enum
---@param iProfileIndex integer
function ScreenSelectProfile:SetProfileIndex(pn,iProfileIndex) end

ScreenTextEntry = {}

--- Sets up a ScreenTextEntry's values.
---@return void
---@param args TextEntrySettings
function ScreenTextEntry:Load(args) end

ScreenWithMenuElements = {}

--- Tells the screen to go to the previous screen.
---@return void
function ScreenWithMenuElements:Cancel() end

--- Returns true if the screen is currently transitioning.
---@return boolean
function ScreenWithMenuElements:IsTransitioning() end

--- Tells the screen to go to play its Out transition, and then posts the ScreenMessage sScreenMsg. To go to the next screen, use "SM_GoToNextScreen" as the argument.
---@return void
---@param sScreenMsg string
function ScreenWithMenuElements:StartTransitioningScreen(sScreenMsg) end

--- Sets whether the screen allows late joining.  This only works for screens that are just ScreenWithMenuElements, as most derived screens have their own hard coded function for whether late joining is allowed.
---@return void
---@param bool boolean
function ScreenWithMenuElements:SetAllowLateJoin(bool) end

Song = {}

--- Returns an array of all the available Steps objects for a Song.
---@return {Steps}
function Song:GetAllSteps() end

--- Returns the path to the song's background image.
---@return string
function Song:GetBackgroundPath() end

--- Returns the path to the song's banner.
---@return string
function Song:GetBannerPath() end

--- Returns a table with all the data for the song's BGCHANGES line.
--- Each element of the table is one change like this:
--- {start_beat= 1.0, rate= 1.0, transition= "example", effect= "example", file1= "example", file2= "example", color1= "#FFFFFFFF", color2= "#FFFFFFFF"}
---@return table
function Song:GetBGChanges() end

--- Returns the path to the song's CD image.
---@return string
function Song:GetCDImagePath() end

--- Gets the path to the CDTitle.
---@return string
function Song:GetCDTitlePath() end

--- Returns the path to the song's disc image (different from CD, think Pump).
---@return string
function Song:GetDiscPath() end

--- Returns the displayed artist of the song.
---@return string
function Song:GetDisplayArtist() end

--- Returns a table of 2 floats containing the display BPMs.
---@return {float}
function Song:GetDisplayBpms() end

--- Returns the displayed full title of the song, including subtitle.
---@return string
function Song:GetDisplayFullTitle() end

--- Returns the displayed main title of the song.
---@return string
function Song:GetDisplayMainTitle() end

--- Returns the displayed subtitle of the song.
---@return string
function Song:GetDisplaySubTitle() end

--- Returns the first beat of the song.
---@return float
function Song:GetFirstBeat() end

--- Returns the first second of the song.
---@return float
function Song:GetFirstSecond() end

--- Returns the genre of the song.
---@return string
function Song:GetGenre() end

--- Returns the group name that the song is in.
---@return string
function Song:GetGroupName() end

--- Returns the path to the song's jacket image.
---@return string
function Song:GetJacketPath() end

--- Returns the last beat of the song.
---@return float
function Song:GetLastBeat() end

--- Returns the last second of the song.
---@return float
function Song:GetLastSecond() end

--- Gets the path to the lyrics.
---@return string
function Song:GetLyricsPath() end

--- GetDisplayMainTitle checks the ShowNativeLanguage pref and returns the transliterated title is that pref is false.
--- GetMainTitle (this function) does not check that pref.  Instead, it directly returns the title, exactly as it is in the #TITLE field in the simfile.
---@return string
function Song:GetMainTitle() end

--- Gets the path to the music file.
---@return string
function Song:GetMusicPath() end

--- Returns a Step object if the StepType and Difficulty exist.
---@return Steps
---@param st StepsType
---@param d Difficulty
function Song:GetOneSteps(st,d) end

--- Gets the Song's origin.
---@return string
function Song:GetOrigin() end

--- Returns the path to the Song's preview music.  This handles the #PREVIEW tag internally, so it works with songs that use it and songs that don't.
---@return string
function Song:GetPreviewMusicPath() end

--- Returns the path to the Song's preview video, if it exists. (Returns nil otherwise.)
---@return string
function Song:GetPreviewVidPath() end

--- Gets the length of a song's sample time in seconds.
---@return float
function Song:GetSampleLength() end

--- Gets the starting position of a song sample in seconds.
---@return float
function Song:GetSampleStart() end

--- Returns the song's directory.
---@return string
function Song:GetSongDir() end

--- Returns the songfile path.
---@return string
function Song:GetSongFilePath() end

--- [02 Other.lua] Returns the number of stages this song costs.
---@return integer
function Song:GetStageCost() end

--- Returns a table of Steps that have StepsType st.
---@return {Steps}
---@param st StepsType
function Song:GetStepsByStepsType(st) end

--- Returns how long the longest stepchart is in seconds.
---@return float
function Song:GetStepsSeconds() end

--- Returns the song's TimingData.
---@return TimingData
function Song:GetTimingData() end

--- Returns the transliterated artist of the song.
---@return string
function Song:GetTranslitArtist() end

--- Returns the transliterated full title of the song, including subtitle.
---@return string
function Song:GetTranslitFullTitle() end

--- Returns the transliterated main title of the song.
---@return string
function Song:GetTranslitMainTitle() end

--- Returns the transliterated subtitle of the song.
---@return string
function Song:GetTranslitSubTitle() end

--- Returns true if the song has steps for the specified difficulty in st.
---@return boolean
---@param st StepsType
---@param d Difficulty
function Song:HasStepsTypeAndDifficulty(st,d) end

--- Returns true if the song has attacks.
---@return boolean
function Song:HasAttacks() end

--- Returns true if the song has a background.
---@return boolean
function Song:HasBackground() end

--- Returns true if the song has a banner.
---@return boolean
function Song:HasBanner() end

--- Returns true if the song has BGChanges.
---@return boolean
function Song:HasBGChanges() end

--- Returns true if the song has a CD image.
---@return boolean
function Song:HasCDImage() end

--- Returns true if the song has a CDTitle.
---@return boolean
function Song:HasCDTitle() end

--- Returns true if the song has a Disc graphic.
---@return boolean
function Song:HasDisc() end

--- Returns true if the song has edits.
---@return boolean
---@param st StepsType
function Song:HasEdits(st) end

--- Returns true if the song has a jacket graphic.
---@return boolean
function Song:HasJacket() end

--- Returns true if the song has lyrics.
---@return boolean
function Song:HasLyrics() end

--- Returns true if the song has music.
---@return boolean
function Song:HasMusic() end

--- Returns true if the song has a preview video.
---@return boolean
function Song:HasPreviewVid() end

--- Returns true if the song has significant BPM changes or stops.
---@return boolean
function Song:HasSignificantBPMChangesOrStops() end

--- Returns true if the song has the specified StepsType.
---@return boolean
---@param st StepsType
function Song:HasStepsType(st) end

--- Returns true if the song's DisplayBPM is constant.
---@return boolean
function Song:IsDisplayBpmConstant() end

--- Returns true if the song's DisplayBPM is random.
---@return boolean
function Song:IsDisplayBpmRandom() end

--- Returns true if the song's DisplayBPM is secret.
---@return boolean
function Song:IsDisplayBpmSecret() end

--- Returns true if the song is considered easy.
---@return boolean
function Song:IsEasy() end

--- Returns true if the song is enabled.
---@return boolean
function Song:IsEnabled() end

--- Returns true if the song meets the criteria for a "Long Version".
---@return boolean
function Song:IsLong() end

--- Returns true if the song meets the criteria for "Marathon" length.
---@return boolean
function Song:IsMarathon() end

--- Returns true if the song and the specified steps have different timing.
---@return boolean
---@param s Steps
function Song:IsStepsUsingDifferentTiming(s) end

--- Returns true if the song only has Beginner steps.
---@return boolean
function Song:IsTutorial() end

--- Returns the length of the song in seconds.
---@return float
function Song:MusicLengthSeconds() end

--- Returns true if the song is normally displayed.
---@return boolean
function Song:NormallyDisplayed() end

--- Reloads a single song. Use caution - seems hacky
function Song:ReloadFromSongDir() end

--- Returns true if the song is shown in Demonstration and Ranking.
---@return boolean
function Song:ShowInDemonstrationAndRanking() end



SongManager = {}

--- Returns true if the specified course group exists.
---@return boolean
---@param sGroup string
function SongManager:DoesCourseGroupExist(sGroup) end

--- Returns true if the specified song group exists.
---@return boolean
---@param sGroup string
function SongManager:DoesSongGroupExist(sGroup) end

--- Returns a Course if one matching sCourse is found.
---@return Course
---@param sCourse string
function SongManager:FindCourse(sCourse) end

--- Returns a Song if one matching sSong is found.
---@return Song
---@param sSong string
function SongManager:FindSong(sSong) end

--- Returns an array of all the installed courses.
---@return {Course}
---@param bIncludeAutogen boolean
function SongManager:GetAllCourses(bIncludeAutogen) end

--- Returns an array of all the installed songs.
---@return {Song}
function SongManager:GetAllSongs() end

--- Returns the course color of Course c.
---@return color
---@param c Course
function SongManager:GetCourseColor(c) end

--- Returns the path to the specified course group's banner.
---@return string
---@param sGroup string
function SongManager:GetCourseGroupBannerPath(sGroup) end

--- Returns a table containing all of the course group names.
---@return {string}
function SongManager:GetCourseGroupNames() end

--- Returns a table with all of the courses in the specified group.
---@return {Course}
---@param sGroup string
function SongManager:GetCoursesInGroup(sGroup) end

--- Returns the extra stage info (Song, Steps) for the specified Style s. (If bExtra2 is true, it will use the second Extra Stage data instead of the first. Again, Lua.xsd sucks)
---@return various
---@param bExtra2 boolean
---@param s Style
function SongManager:GetExtraStageInfo(bExtra2,s) end

--- Returns the number of courses loaded via Additional folders.
---@return integer
function SongManager:GetNumAdditionalCourses() end

--- Returns the number of songs loaded via Additional folders.
---@return integer
function SongManager:GetNumAdditionalSongs() end

--- Returns the number of course groups.
---@return integer
function SongManager:GetNumCourseGroups() end

--- Returns the number of courses.
---@return integer
function SongManager:GetNumCourses() end

--- Returns the number of selectable and unlocked songs.
---@return integer
function SongManager:GetNumSelectableAndUnlockedSongs() end

--- Returns the number of song groups.
---@return integer
function SongManager:GetNumSongGroups() end

--- Returns the number of songs.
---@return integer
function SongManager:GetNumSongs() end

--- Returns the number of locked songs, regardless of reason for locking.
---@return integer
function SongManager:GetNumLockedSongs() end

--- Returns the number of unlocked songs.
---@return integer
function SongManager:GetNumUnlockedSongs() end

--- Returns a table of popular courses for the specified CourseType.
---@return {Course}
---@param ct CourseType
function SongManager:GetPopularCourses(ct) end

--- Returns a table of popular songs.
---@return {Song}
function SongManager:GetPopularSongs() end

--- Returns a table of courses as they'd appear in preferred sort.
---@return {Course}
---@param ct CourseType
---@param bIncludeAutogen boolean
function SongManager:GetPreferredSortCourses(ct,bIncludeAutogen) end

--- Returns a table of songs as they'd appear in preferred sort.
---@return {Song}
function SongManager:GetPreferredSortSongs() end

--- Returns a random course.
---@return Course
function SongManager:GetRandomCourse() end

--- Returns a random song.
---@return Song
function SongManager:GetRandomSong() end

--- Returns the song color of Song s.
---@return color
---@param s Song
function SongManager:GetSongColor(s) end

--- Returns a Song given a set of Steps st.
---@return Song
---@param st Steps
function SongManager:GetSongFromSteps(st) end

--- Returns the path to the specified song group's banner.
---@return string
---@param sGroup string
function SongManager:GetSongGroupBannerPath(sGroup) end

--- Returns the song group color of sGroupName.
---@return color
---@param sGroupName string
function SongManager:GetSongGroupColor(sGroupName) end

--- Returns a table containing all of the song group names.
---@return {string}
function SongManager:GetSongGroupNames() end

--- Returns the rank (popularity) of Song s.
---@return integer
---@param s Song
function SongManager:GetSongRank(s) end

--- Returns a table containing all of the songs in group sGroupName.
---@return {Song}
---@param sGroupName string
function SongManager:GetSongsInGroup(sGroupName) end

--- Returns the shortened group name (based on entries in Translations.xml).
---@return string
---@param sGroupName string
function SongManager:ShortenGroupName(sGroupName) end

--- Loads preferred courses from {theme}/Other/SongManager sListName.txt.
---@return void
---@param sListName string
function SongManager:SetPreferredCourses(sListName) end

--- Loads preferred songs from {theme}/Other/SongManager sListName.txt.
---@return void
---@param sListName string
function SongManager:SetPreferredSongs(sListName) end

--- Returns the preferred sort section name for the specified Song.
---@return string
---@param s Song
function SongManager:SongToPreferredSortSectionName(s) end

--- Returns true if the specified course was loaded from AdditionalCourses.
---@return boolean
---@param c Course
function SongManager:WasLoadedFromAdditionalCourses(c) end

--- Returns true if the specified song was loaded from AdditionalSongs.
---@return boolean
---@param s Song
function SongManager:WasLoadedFromAdditionalSongs(s) end

SongOptions = {}

---@return Enum @AutosyncType enum
---@param type Enum @AutosyncType enum
function SongOptions:AutosyncSetting(type) end

---@return boolean
---@param b boolean
function SongOptions:AssistClap(b) end

---@return boolean
---@param b boolean
function SongOptions:AssistMetronome(b) end

---@return boolean
---@param b boolean
function SongOptions:StaticBackground(b) end

---@return boolean
---@param b boolean
function SongOptions:RandomBGOnly(b) end

---@return boolean
---@param b boolean
function SongOptions:SaveScore(b) end

---@return boolean
---@param b boolean
function SongOptions:SaveReplay(b) end

--- Limited to the range 0 < rate <= 3 because speeds greater than 3 are likely to crash.
---@return float
---@param rate float
function SongOptions:MusicRate(rate) end

--- A multiplier for the haste system.  Limited to the range -1 to 1.
---@return float
---@param h float
function SongOptions:Haste(h) end

SongPosition = {}

--- Returns the current beats per second.
---@return float
function SongPosition:GetCurBPS() end

--- Returns true if a Delay is active.
---@return boolean
function SongPosition:GetDelay() end

--- Returns true if a Freeze is active.
---@return boolean
function SongPosition:GetFreeze() end

---@return float
function SongPosition:GetMusicSeconds() end

---@return float
function SongPosition:GetMusicSecondsVisible() end

---@return float
function SongPosition:GetSongBeat() end

---@return float
function SongPosition:GetSongBeatNoOffset() end

---@return float
function SongPosition:GetSongBeatVisible() end

--- Returns the row where a warp appears.
---@return integer
function SongPosition:GetWarpBeginRow() end

--- Returns the warp destination length.
---@return float
function SongPosition:GetWarpDestination() end

Sprite = {}

--- Returns the length of the animation in seconds.
---@return float
function Sprite:GetAnimationLengthSeconds() end

--- Gets whether the Sprite should call the decode function for its texture during updates.
---@return boolean
function Sprite:GetDecodeMovie() end

--- Return the number of states this Sprite has.
---@return integer
function Sprite:GetNumStates() end

--- Returns the Sprite's current state (frame number in a multi-frame sprite).
---@return integer
function Sprite:GetState() end

--- Returns the Sprite's texture.
---@return RageTexture
function Sprite:GetTexture() end

--- [02 Sprite.lua] Returns a Frames table consisting of iNumFrames frames lasting for a total of fSeconds seconds. This function is not a member function and should be used as Frames = Sprite.LinearFrames( 5, 2.6 ).
---@return table
---@param iNumFrames integer
---@param fSeconds float
function Sprite:LinearFrames(iNumFrames,fSeconds) end

--- If sPath is nil, then unload the texture. Otherwise, load the texture at path sPath.
---@return void
---@param sPath string
function Sprite:Load(sPath) end

--- Load the song background texture at sPath.
---@return void
---@param sPath string
function Sprite:LoadBackground(sPath) end

--- Load the song banner texture at sPath.
---@return void
---@param sPath string
function Sprite:LoadBanner(sPath) end

--- [02 Sprite.lua] Loads the background from the current Song or the first Trail entry.
---@return void
function Sprite:LoadFromCurrentSongBackground() end

--- [02 Sprite.lua] Load the texture for song's background.
---@return void
---@param song Song
function Sprite:LoadFromSongBackground(song) end

--- [02 Sprite.lua] Load the texture for song's banner.
---@return void
---@param song Song
function Sprite:LoadFromSongBanner(song) end

--- Sets the custom image rectangle. (Works in image pixel space.)
---@return void
---@param fLeft float
---@param fTop float
---@param fRight float
---@param fBottom float
function Sprite:SetCustomImageRect(fLeft,fTop,fRight,fBottom) end

--- Sets custom offsets for the corners of the Sprite.  Coordinates are paired,
--- corner order is upper left, lower left, lower right, upper right.
---@return void
---@param ulx float
---@param uly float
---@param llx float
---@param lly float
---@param lrx float
---@param lry float
---@param urx float
---@param ury float
function Sprite:SetCustomPosCoords(ulx,uly,llx,lly,lrx,lry,urx,ury) end

--- Turns off the custom pos coords for the sprite.
---@return void
function Sprite:StopUsingCustomPosCoords() end

--- Sets whether the Sprite should call the decode function for its texture during updates.
---@param decode boolean
function Sprite:SetDecodeMovie(decode) end

--- Set the ENUM:EffectMode to mode.
---@return void
---@param mode EffectMode
function Sprite:SetEffectMode(mode) end

--- Sets the number of seconds into the animation to fSeconds.
---@return void
---@param fSeconds float
function Sprite:SetSecondsIntoAnimation(fSeconds) end

--- Sets the properties of the states of the sprite.  The properties table is identical to the "Frames" table that can be put in the sprite when calling Def.Sprite.
--- Example:
--- {{Frame= 0, Delay= .016, {0, 0}, {.25, .25}},
--- {Frame= 1, Delay= .016, {0, 0}, {.25, .25}},
--- {Frame= 2, Delay= .016, {0, 0}, {.25, .25}},
--- {Frame= 3, Delay= .016, {0, 0}, {.25, .25}},
--- }
--- Frame is optional, defaulting to 0.
--- Delay is optional, defaulting to 0.
--- The two tables are optional upper left and lower right corners of the fraction of the frame to use.  The example makes the sprite only use the upper left corner of each frame.
--- Simpler example:
--- {{Frame= 0, Delay= .016}, {Frame= 1, Delay= .016}, {Frame= 2, Delay= .016}, {Frame= 3, Delay= .016}}
--- This example makes the sprite use the whole of each frame.
---@param properties table
function Sprite:SetStateProperties(properties) end

--- Set the texture to texture.
---@return void
---@param texture RageTexture
function Sprite:SetTexture(texture) end

---@return void
---@param fX float
---@param fY float
function Sprite:addimagecoords(fX,fY) end

--- Allows the themer to set a custom texture rectangle that effects the way the texture is drawn.
---@return void
---@param fLeft float
---@param fTop float
---@param fRight float
---@param fBottom float
function Sprite:customtexturerect(fLeft,fTop,fRight,fBottom) end

--- Returns true if the sprite is using the effect clock for texcoordvelocity.
---@return boolean
function Sprite:get_use_effect_clock_for_texcoords() end

--- [02 Sprite.lua] Call RageTexture:loop( bLoop ) on the texture.
---@return void
---@param bLoop boolean
function Sprite:loop(bLoop) end

--- [02 Sprite.lua] Call RageTexture:position( fPos ) on the texture.
---@return void
---@param fPos float
function Sprite:position(fPos) end

--- [02 Sprite.lua] Call RageTexture:rate( fRate ) on the texture.
---@return void
---@param fRate float
function Sprite:rate(fRate) end

--- Scale the Sprite to width fWidth and height fHeight clipping if the dimensions do not match.
---@return void
---@param fWidth float
---@param fHeight float
function Sprite:scaletoclipped(fWidth,fHeight) end

--- Set the Sprite's state to iNewState.
---@return void
---@param iNewState integer
function Sprite:setstate(iNewState) end

--- If use is true, then the sprite will use the effect clock for texcoordvelocity.
---@param use boolean
function Sprite:set_use_effect_clock_for_texcoords(use) end

---@return void
---@param fX float
---@param fY float
function Sprite:stretchtexcoords(fX,fY) end

--- Set the texture coordinate velocity which controls how the Sprite changes as it animates.  A velocity of 1 makes the texture scroll all the way once per second.
---@return void
---@param fVelX float
---@param fVelY float
function Sprite:texcoordvelocity(fVelX,fVelY) end

--- Crops the Sprite to fWidthxfHeight.
---@return void
---@param fWidth float
---@param fHeight float
function Sprite:CropTo(fWidth,fHeight) end

--- [01 alias.lua] Alias for CropTo.
---@return void
---@param fWidth float
---@param fHeight float
function Sprite:cropto(fWidth,fHeight) end

--- Sets all the state delays to fRate. Useful for Sprites that need to change by BPM (e.g. Tran from DDR 5th Mix, the cube from DS EuroMix 2).
---@return void
---@param fRate float
function Sprite:SetAllStateDelays(fRate) end

StageStats = {}

--- Returns true if everyone failed.
---@return boolean
function StageStats:AllFailed() end

--- Returns the EarnedExtraStage value.
---@return Enum @EarnedExtraStage enum
function StageStats:GetEarnedExtraStage() end

--- Returns the number of seconds played.
---@return float
function StageStats:GetGameplaySeconds() end

--- Returns the PlayerStageStats of multiplayer mp.
---@return PlayerStageStats
---@param mp Enum @MultiPlayer enum
function StageStats:GetMultiPlayerStageStats(mp) end

---@return {Song}
function StageStats:GetPlayedSongs() end

--- Returns the PlayerStageStats of player pn.
---@return PlayerStageStats
---@param pn Enum @PlayerNumber enum
function StageStats:GetPlayerStageStats(pn) end

---@return {Song}
function StageStats:GetPossibleSongs() end

--- Returns the Stage value.
---@return Stage
function StageStats:GetStage() end

--- Returns the stage index.
---@return integer
function StageStats:GetStageIndex() end

--- Returns true if at least one person passed.
---@return boolean
function StageStats:OnePassed() end

--- Returns true if player pn has a high score.
---@return boolean
---@param pn Enum @PlayerNumber enum
function StageStats:PlayerHasHighScore(pn) end

StatsManager = {}

--- Returns the accumulated played StageStats.
---@return StageStats
function StatsManager:GetAccumPlayedStageStats() end

--- Returns the best final grade.
---@return Grade
function StatsManager:GetBestFinalGrade() end

--- Returns the best grade.
---@return Grade
function StatsManager:GetBestGrade() end

--- Returns the current StageStats.
---@return StageStats
function StatsManager:GetCurStageStats() end

--- Returns player pn's final grade.
---@return Grade
---@param pn Enum @PlayerNumber enum
function StatsManager:GetFinalGrade(pn) end

--- Get the StageStats from iAgo rounds ago.
---@return StageStats
---@param iAgo integer
function StatsManager:GetPlayedStageStats(iAgo) end

--- Returns the number of stages played.
---@return integer
function StatsManager:GetStagesPlayed() end

--- Returns the worst grade.
---@return Grade
function StatsManager:GetWorstGrade() end

--- Resets the stats.
---@return void
function StatsManager:Reset() end

Steps = {}

--- Returns the author that made that particular Steps pattern.
---@return string
function Steps:GetAuthorCredit() end

--- Returns the Steps chart name.
---@return string
function Steps:GetChartName() end

--- Returns the Chart Style for this Steps.
---@return string
function Steps:GetChartStyle() end

--- Returns the Steps description.
---@return string
function Steps:GetDescription() end

--- Returns the Steps difficulty.
---@return Difficulty
function Steps:GetDifficulty() end

--- Returns a table with the minimum and maximum values from the DisplayBPM.
---@return {float}
function Steps:GetDisplayBpms() end

--- Returns the DisplayBPM type.
---@return Enum @DisplayBPM enum
function Steps:GetDisplayBPMType() end

--- Returns the Steps filename from the Cache.
---@return string
function Steps:GetFilename() end

--- Returns a hash of the Steps.
---@return integer
function Steps:GetHash() end

--- Returns the numerical difficulty of the Steps.
---@return integer
function Steps:GetMeter() end

--- Returns true if the Steps has any attacks.
---@return boolean
function Steps:HasAttacks() end

--- Returns true if the Steps pattern has significant timing changes.
---@return boolean
function Steps:HasSignificantTimingChanges() end

--- Returns the complete list of RadarValues for player pn. Use RadarValues:GetValue to grab a specific value.
---@return RadarValues
---@param pn Enum @PlayerNumber enum
function Steps:GetRadarValues(pn) end

--- Returns the Steps type.
---@return StepsType
function Steps:GetStepsType() end

--- Returns the TimingData for the Steps.
---@return TimingData
function Steps:GetTimingData() end

--- Returns true if the Steps are an edit.
---@return boolean
function Steps:IsAnEdit() end

--- Returns true if the Steps are a player edit (loaded from a profile).
---@return boolean
function Steps:IsAPlayerEdit() end

--- Returns true if the steps were automatically generated.
---@return boolean
function Steps:IsAutogen() end

--- Returns true if the DisplayBPM is constant.
---@return boolean
function Steps:IsDisplayBpmConstant() end

--- Returns true if the DisplayBPM is random.
---@return boolean
function Steps:IsDisplayBpmRandom() end

--- Returns true if the DisplayBPM is secret.
---@return boolean
function Steps:IsDisplayBpmSecret() end

--- Returns the predicted meter for this Step.
---@return float
function Steps:PredictMeter() end

--- Returns true if the Steps use different TimingData from the Song.
---@return boolean
function Steps:UsesSplitTiming() end

StepsDisplay = {}

--- Loads the StepsDisplay commands from the Metrics in group sMetricsGroup.
---@return void
---@param sMetricsGroup string
function StepsDisplay:Load(sMetricsGroup) end

--- Sets the StepsDisplay from the GameState using Player pn.
---@return void
---@param pn Enum @PlayerNumber enum
function StepsDisplay:SetFromGameState(pn) end

--- Sets the StepsDisplay based on Steps pSteps.
---@return void
---@param pn Enum @PlayerNumber enum
---@param pSteps Steps
function StepsDisplay:SetFromSteps(pn,pSteps) end

--- Sets the StepsDisplay based on the passed in StepsType, iMeter, and Difficulty.
---@return void
---@param st StepsType
---@param iMeter integer
---@param dc Difficulty
function StepsDisplay:SetFromStepsTypeAndMeterAndDifficulty(st,iMeter,dc) end

--- Sets the StepsDisplay based on Trail pTrail.
---@return void
---@param pTrail Trail
function StepsDisplay:SetFromTrail(pTrail) end

Style = {}

--- Returns the number of total tracks per player this Style contains (e.g. 4 for dance-versus, but 8 for dance-double).
---@return integer
function Style:ColumnsPerPlayer() end

--- Returns the name of the Style.
---@return string
function Style:GetName() end

--- Returns the StepsType for this Style.
---@return StepsType
function Style:GetStepsType() end

--- Returns the StyleType for this Style.
---@return Enum @StyleType enum
function Style:GetStyleType() end

--- Returns a table containing the Track, XOffset, and Name of the column.
---@return {integer, integer, string}
---@param column integer
function Style:GetColumnInfo(column) end

--- Returns the draw order of the column.
---@return integer
---@param column integer
function Style:GetColumnDrawOrder(column) end

--- Returns the width of the notefield for the given player with this style.
---@return float
---@param pn Enum @PlayerNumber enum
function Style:GetWidth(pn) end

--- Returns true if this style locks the difficulty for both players.
---@return boolean
function Style:LockedDifficulty() end

--- Deprecated.  Always returns false.
---@return boolean
function Style:NeedsZoomOutWith2Players() end

TapNote = {}

--- Returns the TapNoteType of the Tap Note.
---@return Enum @TapNoteType enum
function TapNote:GetTapNoteType() end

--- Returns the TapNoteSubType of the Tap Note.
---@return Enum @TapNoteSubType enum
function TapNote:GetTapNoteSubType() end

--- Returns the TapNoteSource of the Tap Note.
---@return Enum @TapNoteSource enum
function TapNote:GetTapNoteSource() end

--- Returns the TapNoteResult of the Tap Note.
---@return Enum @TapNoteResult enum
function TapNote:GetTapNoteResult() end

--- Returns the PlayerNumber of the Tap Note. Relevant for routine steps.
---@return PlayerNumber
function TapNote:GetPlayerNumber() end

--- Returns the Attack Modifiers of the Tap Note.
---@return string
function TapNote:GetAttackModifiers() end

--- Returns the Attack Duration of the Tap Note in seconds.
---@return float
function TapNote:GetAttackDuration() end

--- Returns the Keysound Index of the Tap Note.
---@return integer
function TapNote:GetKeysoundIndex() end

--- Returns the Hold Duration of the Tap Note in beats.
---@return float
function TapNote:GetHoldDuration() end

--- Returns the HoldNoteResult of the Tap Note.
---@return HoldNoteResult
function TapNote:GetHoldNoteResult() end

TapNoteResult = {}

--- Returns the TapNoteScore of the Tap Note.
---@return Enum @TapNoteScore enum
function TapNoteResult:GetTapNoteScore() end

--- Returns the TapNotOffset of the Tap Note.
---@return float
function TapNoteResult:GetTapNoteOffset() end

--- Returns true if the Tap Note was judged with a result that would stop it from drawing.
---@return boolean
function TapNoteResult:GetHidden() end

HoldNoteResult = {}

--- Returns the HoldNoteScore of the Hold Note.
---@return Enum @HoldNoteScore enum
function HoldNoteResult:GetHoldNoteScore() end

--- Returns the life of the Hold Note.
---@return float
function HoldNoteResult:GetLife() end

--- Returns the amount of time the hold has overlapped the target.
---@return float
function HoldNoteResult:GetOverlappedTime() end

--- Returns the last beat the Hold Note was held.
---@return float
function HoldNoteResult:GetLastHeldBeat() end

--- Returns the number of checkpoints hit.
---@return integer
function HoldNoteResult:GetCheckpointsHit() end

--- Returns the number of checkpoints missed.
---@return integer
function HoldNoteResult:GetCheckpointsMissed() end

--- Returns true if the note was initiated and is being held.
---@return boolean
function HoldNoteResult:GetHeld() end

--- Returns true if the note was initiated.
---@return boolean
function HoldNoteResult:GetActive() end

TextBanner = {}

--- Loads the TextBanner from the specified metrics group.
---@return void
---@param sMetricsGroup string
function TextBanner:Load(sMetricsGroup) end

--- Loads the TextBanner's child elements from a Song.
---@return void
---@param s Song
function TextBanner:SetFromSong(s) end

--- Loads the TextBanner's child elements from strings.
---@return void
---@param sDisplayTitle string
---@param sTranslitTitle string
---@param sDisplaySubTitle string
---@param sTranslitSubTitle string
---@param sDisplayArtist string
---@param sTranslitArtist string
function TextBanner:SetFromString(sDisplayTitle,sTranslitTitle,sDisplaySubTitle,sTranslitSubTitle,sDisplayArtist,sTranslitArtist) end

ThemeManager = {}

--- Returns true if the specified language exists in the current theme.
---@return boolean
---@param langName string
function ThemeManager:DoesLanguageExist(langName) end

--- Returns true if the specified theme exists.
---@return boolean
---@param themeName string
function ThemeManager:DoesThemeExist(themeName) end

--- [02 Utilities.lua] Returns the absolute path of a file in the theme.
---@return string
---@param sPath string
function ThemeManager:GetAbsolutePath(sPath) end

--- Returns the current language.
---@return string
function ThemeManager:GetCurLanguage() end

--- Returns the theme's current directory.
---@return string
function ThemeManager:GetCurrentThemeDirectory() end

--- Returns the name of the current theme.
---@return string
function ThemeManager:GetCurThemeName() end

--- Returns the value of Element in Class from metrics.ini.
---@return string
---@param ClassName string
---@param Element string
function ThemeManager:GetMetric(ClassName,Element) end

--- Returns the names of all elements in Class from metrics.ini.
---@return {string}
---@param ClassName string
function ThemeManager:GetMetricNamesInGroup(ClassName) end

--- Returns the number of selectable themes.
---@return integer
function ThemeManager:GetNumSelectableThemes() end

--- Returns the path of ClassName Element in the BGAnimations folder.
---@return string
---@param ClassName string
---@param Element string
function ThemeManager:GetPathB(ClassName,Element) end

--- Returns the path of an element in the Fonts folder.
---@return string
---@param ClassName string
---@param Element string
function ThemeManager:GetPathF(ClassName,Element) end

--- Returns the path of an element in the Graphics folder.
---@return string
---@param ClassName string
---@param Element string
function ThemeManager:GetPathG(ClassName,Element) end

--- returns three strings: BGAnimation ResolvedPath, MatchingMetricsGroup, MatchingElement. Used in LoadFallbackB in themes/_fallback/02 Other.lua. (Lua.xsd sucks)
---@return string
---@param ClassName string
---@param Element string
function ThemeManager:GetPathInfoB(ClassName,Element) end

--- Returns the path of an element in the Other folder.
---@return string
---@param ClassName string
---@param Element string
function ThemeManager:GetPathO(ClassName,Element) end

--- Returns the path of an element in the Sounds folder.
---@return string
---@param ClassName string
---@param Element string
function ThemeManager:GetPathS(ClassName,Element) end

--- Returns a table of selectable theme directories.
---@return {string}
function ThemeManager:GetSelectableThemeNames() end

--- Returns the value of Element in Class for the currently loaded language.
---@return string
---@param ClassName string
---@param Element string
function ThemeManager:GetString(ClassName,Element) end

--- Returns the names of all elements in Class for the currently loaded language.
---@return {string}
---@param ClassName string
function ThemeManager:GetStringNamesInGroup(ClassName) end

--- Returns the author of the current theme or "[unknown author]".
---@return string
function ThemeManager:GetThemeAuthor() end

--- Returns the display name of the current theme.
---@return string
function ThemeManager:GetThemeDisplayName() end

--- Returns true if the theme has the specified metric.
---@return boolean
---@param section string
---@param value string
function ThemeManager:HasMetric(section,value) end

--- Returns true if the theme has the specified string.
---@return boolean
---@param section string
---@param value string
function ThemeManager:HasString(section,value) end

--- Returns true if the specified theme is selectable.
---@return boolean
---@param theme string
function ThemeManager:IsThemeSelectable(theme) end

--- Reloads the current theme's metrics.
---@return void
function ThemeManager:ReloadMetrics() end

---@return void
---@param sMask string
function ThemeManager:RunLuaScripts(sMask) end

--- Changes the current theme.
--- After the theme changes, the screen specified by the Common::AfterThemeChangeScreen metric will be loaded.
--- The Common::InitialScreen metric will be used if Common::AfterThemeChangeScreen is blank or invalid.
---@return void
---@param theme string
function ThemeManager:SetTheme(theme) end

TimingData = {}

--- Returns the minimum and maximum BPM of the song in a table (in that order).
---@return {float}
function TimingData:GetActualBPM() end

--- Returns the beat from fElapsedTime.
---@return float
---@param fElapsedTime float
function TimingData:GetBeatFromElapsedTime(fElapsedTime) end

--- Returns the BPM at fBeat.
---@return float
---@param fBeat float
function TimingData:GetBPMAtBeat(fBeat) end

--- Returns a table of the BPMs as floats.
---@return {float}
function TimingData:GetBPMs() end

--- Returns a table of the BPMs and the times they happen as tables.  The first value is the beat.  The second value is the bpm.
---@return {{float, float}}
function TimingData:GetBPMsAndTimes() end

--- Returns the elapsed time from fBeat.
---@return float
---@param fBeat float
function TimingData:GetElapsedTimeFromBeat(fBeat) end

--- Returns a table of the Stops and the times they happen as tables.  The first value is the beat.  The second value is the length.
---@return {{float, float}}
function TimingData:GetStops() end

--- Returns a table of the Delays and the times they happen as tables.  The first value is the beat.  The second value is the length.
---@return {{float, float}}
function TimingData:GetDelays() end

--- Returns a table of the Labels and the times they happen as tables.  The first value is the beat.  The second value is the label.
---@return {{float, string}}
function TimingData:GetLabels() end

--- Returns a table of the Warps and the times they happen as tables.  The first value is the beat.  The second value is the number of beats to warp over.
---@return {{float, float}}
function TimingData:GetWarps() end

--- Returns a table of the Combos and the times they happen as tables.  The first value is the beat.  The second value is the combo.  The third value is the miss combo.
---@return {{float, float, float}}
function TimingData:GetCombos() end

--- Returns a table of the Time Signatures and the times they happen as tables.  The first value is the beat.  The second value is the numerator.  The third value is the denominator.
---@return {{float, float, float}}
function TimingData:GetTimeSignatures() end

--- Returns a table of the Tickcounts and the times they happen as tables.  The first value is the beat.  The second value is the number of ticks per beat.
---@return {{float, float}}
function TimingData:GetTickcounts() end

--- Returns a table of the Fakes and the times they happen as tables.  The first value is the beat.  The second value is the number of beats to not judge.
---@return {{float, float}}
function TimingData:GetFakes() end

--- Returns a table of the Scrolls and the times they happen as tables.  The first value is the beat.  The second value is the scroll rate ratio.
---@return {{float, float}}
function TimingData:GetScrolls() end

--- Returns a table of the Speeds and the times they happen as tables.  The first value is the beat.  The second value is the scroll rate ratio.  The third value is the length of time to fully activate.  The fourth value is the unit of activation (0 for beats, 1 for seconds).
---@return {{float, float}}
function TimingData:GetSpeeds() end

--- Returns true if the TimingData contains BPM changes.
---@return boolean
function TimingData:HasBPMChanges() end

--- Returns true if the TimingData contains delays.
---@return boolean
function TimingData:HasDelays() end

--- Returns true if the TimingData contains any BPM changes with a negative BPM.
---@return boolean
function TimingData:HasNegativeBPMs() end

--- Returns true if the TimingData contains stops.
---@return boolean
function TimingData:HasStops() end

--- Returns true if the TimingData contains warps.
---@return boolean
function TimingData:HasWarps() end

--- returns true if the TimingData contains fake segments.
---@return boolean
function TimingData:HasFakes() end

--- Returns true if the TimingData contains speed scrolling changes.
---@return boolean
function TimingData:HasSpeedChanges() end

--- Returns true if the TimingData contains general scrolling changes.
---@return boolean
function TimingData:HasScrollChanges() end

Trail = {}

--- Returns true if song s is in the Trail.
---@return boolean
---@param s Song
function Trail:ContainsSong(s) end

--- Returns an array with all the artists in the Trail.
---@return {string}
function Trail:GetArtists() end

--- Returns the Trail's difficulty.
---@return Difficulty
function Trail:GetDifficulty() end

--- Returns the length of this Trail in seconds.
---@return float
function Trail:GetLengthSeconds() end

--- Returns a table of TrailEntry items.
---@return {TrailEntry}
function Trail:GetTrailEntries() end

--- Returns the Trail's difficulty rating.
---@return integer
function Trail:GetMeter() end

--- Returns the Trail's RadarValues.
---@return RadarValues
function Trail:GetRadarValues() end

--- Returns the Trail's StepsType.
---@return StepsType
function Trail:GetStepsType() end

--- Returns the Trail's total meter
---@return integer
function Trail:GetTotalMeter() end

TrailEntry = {}

--- Returns the TrailEntry at index iEntry.
---@return TrailEntry
---@param iEntry integer
function Trail:GetTrailEntry(iEntry) end

--- Returns true if any of the Trail entries are secret.
---@return boolean
function Trail:IsSecret() end

--- Returns a string of modifiers used in this TrailEntry.
---@return string
function TrailEntry:GetNormalModifiers() end

--- Returns the Song used in this TrailEntry.
---@return Song
function TrailEntry:GetSong() end

--- Returns the Steps used in this TrailEntry.
---@return Steps
function TrailEntry:GetSteps() end

--- (why'd I think this was a good idea when we have CourseEntry:IsSecret?)
---@return boolean
function TrailEntry:IsSecret() end

UnlockEntry = {}

--- Sets the UnlockEntry's ID to m_sEntryID.
---@return void
---@param m_sEntryID string
function UnlockEntry:code(m_sEntryID) end

--- Sets the UnlockEntry's course to sCourseName.
--- Example: course,"Driven"
---@return void
---@param sCourseName string
function UnlockEntry:course(sCourseName) end

--- Returns the code for this unlock.
---@return string
function UnlockEntry:GetCode() end

--- Returns the Course for this unlock.
---@return Course
function UnlockEntry:GetCourse() end

--- Returns the unlock description.
---@return string
function UnlockEntry:GetDescription() end

--- Returns the UnlockRequirement.
---@return Enum @UnlockRequirement enum
function UnlockEntry:GetRequirement() end

--- Returns true if the UnlockEntry requires you to pass Hard steps.
---@return boolean
function UnlockEntry:GetRequirePassHardSteps() end

--- Returns true if the UnlockEntry requires you to pass Challenge steps.
---@return boolean
function UnlockEntry:GetRequirePassChallengeSteps() end

--- Returns the Song related to the UnlockEntry.
---@return Song
function UnlockEntry:GetSong() end

--- Get all of the steps locked based on StepsType.
---@return Steps
function UnlockEntry:GetStepByStepsType() end

--- Get all of the steps locked based on difficulty.
---@return {Steps}
function UnlockEntry:GetStepOfAllTypes() end

--- Returns the UnlockRewardType for this entry.
---@return Enum @UnlockRewardType enum
function UnlockEntry:GetUnlockRewardType() end

--- Returns true if the UnlockEntry is locked.
---@return boolean
function UnlockEntry:IsLocked() end

--- Sets the UnlockEntry's modifier to sModifier.
---@return void
---@param sModifier string
function UnlockEntry:mod(sModifier) end

--- Sets the requirement for this unlock to m_fRequirement.
---@return void
---@param ut Enum @UnlockRequirement enum
---@param m_fRequirement float
function UnlockEntry:require(ut,m_fRequirement) end

--- Makes the UnlockEntry require passing Hard steps.
---@return void
function UnlockEntry:requirepasshardsteps() end

--- Makes the UnlockEntry require passing Challenge steps.
---@return void
function UnlockEntry:requirepasschallengesteps() end

--- Makes the UnlockEntry hide in Roulette.
---@return void
function UnlockEntry:roulette() end

--- Sets the UnlockEntry's song to sSongName. sSongName also requires the group.
--- Example: song,"In The Groove/Pandemonium"
---@return void
---@param sSongName string
function UnlockEntry:song(sSongName) end

--- Sets the UnlockEntry to unlock a specified song's steps.
--- Example: steps,"In The Groove/Pandemonium","expert"
---@return void
---@param sSong string
---@param sSteps string
function UnlockEntry:steps(sSong,sSteps) end

--- Sets the UnlockEntry to unlock a specified song's stepstype.
---@return void
---@param sSong string
---@param sSteps string
---@param sStepsType string
function UnlockEntry:steps_type(sSong,sSteps,sStepsType) end

UnlockManager = {}

--- Returns true if there are any unlocks to celebrate.
---@return boolean
function UnlockManager:AnyUnlocksToCelebrate() end

--- Returns the associated EntryID.
---@return string
---@param sName string
function UnlockManager:FindEntryID(sName) end

--- Returns the number of unlocked items.
---@return integer
function UnlockManager:GetNumUnlocked() end

--- Returns the number of all unlock items, regardless of status.
---@return integer
function UnlockManager:GetNumUnlocks() end

--- Returns the number of points for the machine profile based on the specified UnlockRequirement.
---@return float
---@param ur Enum @UnlockRequirement enum
function UnlockManager:GetPoints(ur) end

--- Returns the number of points for the specified profile based on the specified UnlockRequirement.
---@return float
---@param p Profile
---@param ur Enum @UnlockRequirement enum
function UnlockManager:GetPointsForProfile(p,ur) end

--- Returns the number of points until the next unlock.
---@return float
---@param ut Enum @UnlockRequirement enum
function UnlockManager:GetPointsUntilNextUnlock(ut) end

--- Returns a table of songs unlocked by UnlockEntry sEntryID.
---@return {Song}
---@param sEntryID string
function UnlockManager:GetSongsUnlockedByEntryID(sEntryID) end

--- Returns a table of steps unlocked by UnlockEntry sEntryID.
---@return {Steps}
---@param sEntryID string
function UnlockManager:GetStepsUnlockedByEntryID(sEntryID) end

--- Returns the UnlockEntry at iIndex.
---@return UnlockEntry
---@param iIndex integer
function UnlockManager:GetUnlockEntry(iIndex) end

--- Returns the UnlockEntry index to celebrate.
---@return integer
function UnlockManager:GetUnlockEntryIndexToCelebrate() end

--- Sets the preferred Song/Course to the specified sUnlockEntryID
---@return void
---@param sUnlockEntryID string
function UnlockManager:PreferUnlockEntryID(sUnlockEntryID) end

--- Unlocks an entry by ID.
---@return void
---@param sUnlockEntryID string
function UnlockManager:UnlockEntryID(sUnlockEntryID) end

--- Unlocks an entry by index.
---@return void
---@param iUnlockEntryID integer
function UnlockManager:UnlockEntryIndex(iUnlockEntryID) end

--- Determines if a song is locked by any means. The number returned determines
--- how the song is locked.
---@return integer
---@param pSong Song
function UnlockManager:IsSongLocked(pSong) end

WheelBase = {}

--- Returns the wheel's current index.
---@return integer
function WheelBase:GetCurrentIndex() end

--- Returns the total number of items in the wheel.
---@return integer
function WheelBase:GetNumItems() end

--- Returns the WheelItemDataType of the selected item.
---@return Enum @WheelItemDataType enum
function WheelBase:GetSelectedType() end

--- Returns the WheelItem at index iIndex.
---@return WheelItemBase
---@param iIndex integer
function WheelBase:GetWheelItem(iIndex) end

--- Returns true if the wheel is locked.
---@return boolean
function WheelBase:IsLocked() end

--- Returns true if the wheel is settled/stopped moving.
---@return boolean
function WheelBase:IsSettled() end

--- Moves the wheel by n.
---@return void
---@param n integer
function WheelBase:Move(n) end

--- Attempts to set the open section to sSection.
---@return void
---@param sSection string
function WheelBase:SetOpenSection(sSection) end

WheelItemBase = {}

--- Returns the color of this wheel item.
---@return color
function WheelItemBase:GetColor() end

--- Returns the text of this wheel item.
---@return string
function WheelItemBase:GetText() end

--- Returns the type of this wheel item.
---@return Enum @WheelItemDataType enum
function WheelItemBase:GetType() end

--- Returns whether the wheel item has been loaded yet.  If this function returns false, calling any other WheelItemBase function will result in an error.
--- A specific case where this is known to happen is commands that trigger on CurrentSongChanged because the music wheel clears the current song before it finishes loading if the current song is longer than the number of stages remaining.
---@return boolean
function WheelItemBase:IsLoaded() end

WorkoutGraph = {}

--- Sets the WorkoutGraph from the current Workout.
---@return void
function WorkoutGraph:SetFromCurrentWorkout() end

--- Sets the WorkoutGraph from GameState and song index iSongIndex.
---@return void
---@param iSongIndex integer
function WorkoutGraph:SetFromGameStateAndHighlightSong(iSongIndex) end
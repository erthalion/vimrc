import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.FadeInactive
import XMonad.Layout.Spacing
import XMonad.Layout.PerWorkspace
import XMonad.Layout.IM
import XMonad.Layout.Grid
import Data.Ratio ((%))
import XMonad.Hooks.FloatNext
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.Renamed
import qualified XMonad.StackSet as W
import qualified Data.Map as M


spawnToWorkspace :: String -> String -> X ()
spawnToWorkspace program workspace = do
    spawn program     
    windows $ W.greedyView workspace

myModMask = mod4Mask
myTesminal = "sakura"

myFocusFollowsMouse::Bool
myFocusFollowsMouse=True

myBorderWidth = 0

myStartupHook = do
    spawn "/usr/bin/xsetroot -cursor_name left_ptr"
    spawn "feh --bg-scale /home/erthalion/Images/background.jpg"
    spawnToWorkspace "conky &" "4:system"
    {-spawnToWorkspace "sakura -h -e 'tail -f /var/log/messages' &" "4:system"-}
    spawnToWorkspace "sakura &" "4:system"

myWorkspaces = ["1:main","2:coding","3:web","4:system","5:im","6:media"]

myLogHook = fadeInactiveLogHook 0.7

myTrayer="trayer --edge top --align right --SetDockType true --expand true --width 15 --height 12 --transparent true --tint 0x000000"

myXxkbBar = "xxkb"

myXcompmgr = "xcompmgr -c"

myHdParm = "/bin/bash /home/erthalion/bash/hdparm.sh"

myXFlux="xflux -l 55.1959 -g 86.0449"

myManageHook = composeAll [
    resource =? "XXkb" --> doIgnore,
    resource =? "gnome-terminal" --> doFloatAt 0.0 0.71,
    className =? "Pidgin" --> doShift "5:im",
    className =? "Chromium-browser" --> doShift "3:web",
    className =? "dwb" --> doShift "3:web"
    ]

myLayout = onWorkspace "5:im" imLayout $ onWorkspace "3:web" Full $ (
        renamed [Replace "Tall"] tiled                  |||
        renamed [Replace "Split"] split                 |||
        renamed [Replace "Mirror tall"] (Mirror tiled)  |||
        renamed [Replace "Full"] Full
    )
    where
        tiled = Tall nmaster1 delta ratio
        split = Tall nmaster1 delta splitRatio
        nmaster1 = 1
        ratio = 2/3
        splitRatio = 1/2
        delta = 3/100
        gridLayout = Grid
        imLayout = withIM (18/100) (Role "buddy_list") gridLayout

myMouseBinding (XConfig {XMonad.modMask = modMask}) = M.fromList
    [ ((modMask .|. shiftMask, button1), \w -> focus w >> mouseMoveWindow w
                                          >> windows W.shiftMaster)

    , ((modMask .|. shiftMask, button2), windows . (W.shiftMaster .) . W.focusWindow)

    , ((modMask .|. shiftMask, button3), \w -> focus w >> mouseResizeWindow w
                                         >> windows W.shiftMaster)
    ]

defaults = defaultConfig {
    terminal = myTesminal,
    modMask = myModMask,
    borderWidth = myBorderWidth,
    workspaces = myWorkspaces,
    startupHook= myStartupHook,
    manageHook = floatNextHook <+> myManageHook,
    layoutHook = myLayout,
    logHook = myLogHook,
    mouseBindings = myMouseBinding
    } `additionalKeys`
    [((mod4Mask, xK_g), spawn "chromium-browser"),
    ((mod4Mask, xK_e), spawn "exec ck-launch-session dbus-launch pcmanfm"),
    {-((mod4Mask, xK_n), spawn "wicd-client -n"),-}
    ((mod4Mask, xK_n), spawn "touch ~/.pomodoro_session"),
    ((mod4Mask .|. shiftMask, xK_n), spawn "rm ~/.pomodoro_session"),
    ((mod4Mask, xK_t), spawn "sakura"),
    ((mod1Mask, xK_t), spawn "gnome-terminal --geometry=128x10 --hide-menubar -x sh -c \"clear; /home/erthalion/bash/color_ghci.sh\""),
    ((mod4Mask, xK_q), spawn "shutdown -P now"),
    ((mod4Mask, xK_p), spawn "/home/erthalion/bash/rundmenu.sh"),
    ((mod4Mask, xK_Print), spawn "scrot screen_%Y-%m-%d.png -d 1"), -- take screenshot
    ((mod4Mask, xK_F4), kill)
   ]

main = do
    spawn myTrayer
    spawn myXxkbBar
    spawn myXcompmgr
    spawn myXFlux
    xmonad =<< xmobar defaults

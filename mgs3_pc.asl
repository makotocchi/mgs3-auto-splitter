// Metal Gear Solid 3: Snake Eater - MC Version - Autosplitter v0.5
// By apel

state("METAL GEAR SOLID3") 
{
    string7 areaCode : 0xAE49D8, 0x24;
    int igt : 0xAE49D8, 0x4C;
    bool isGameplay : 0xADB0A8;
    short vmStoryFlags : 0xAE49E8, 0x2;
    short seStoryFlags : 0xAE49E8, 0x4;

    // Variables for QoL Mods
    int areaIgt : 0xAE49D8, 0x48;
    short continues : 0xAE49D8, 0x34;
    int splashScreenCheck : 0x143C150;
    short inputs : 0x1D8F6FC;
    int deathFlags : 0x1E36A1C;
    long gameOverPointer : 0x1D4FAF8;
    int gameOverPhase : 0x1D4FAF8, 0x5C;
    int deathTimer : 0x1E36A28;
    byte gameStateFlags : 0x1E369F3;
    byte areaTransition : 0x1E369F5;
}

state("METAL GEAR SOLID3", "v1.2.x") 
{
    string7 areaCode : 0xAE39D8, 0x24;
    int igt : 0xAE39D8, 0x4C;
    bool isGameplay : 0xADA0B0;
    short vmStoryFlags : 0xAE39E8, 0x2;
    short seStoryFlags : 0xAE39E8, 0x4;

    // Variables for QoL Mods
    int areaIgt : 0xAE39D8, 0x48;
    short continues : 0xAE39D8, 0x34;
    int splashScreenCheck : 0x143B160;
    short inputs : 0x1D8E70C;
    int deathFlags : 0x1E35A3C;
    long gameOverPointer : 0x1D4EB08;
    int gameOverPhase : 0x1D4EB08, 0x5C;
    int deathTimer : 0x1E35A48;
    byte gameStateFlags : 0x1E35A13;
    byte areaTransition : 0x1E35A15;
}

startup 
{
    settings.Add("metadata", true, "Metal Gear Solid 3: Snake Eater - MC Version - Autosplitter v0.5");
    settings.SetToolTip("metadata", "This isn't an actual setting. It's just here to show which version you're using so I can tell you to update it if it's outdated.");

    settings.Add("timer_mode", true, "Timer Mode");
    settings.SetToolTip("timer_mode", "The settings below define how the Game Timer in LiveSplit will work. Tick only one of the two options.");
    settings.Add("rta_without_loads", true, "RTA without Loads (speedrun.com timing)", "timer_mode");
    settings.SetToolTip("rta_without_loads", "If you tick this, the Game Timer that LiveSplit offers will be the same as RTA, but stopping whenever the game is loading. This is the timing method used in the leaderboards.");
    settings.Add("igt", false, "IGT", "timer_mode");
    settings.SetToolTip("igt", "If you tick this, the Game Timer that LiveSplit offers will be the same as the IGT.");

    settings.Add("area_splits", true, "Area Splits (Split when you leave the area)");
    settings.SetToolTip("area_splits", "Automatically split whenever you leave the area.");

    settings.Add("v001a", true, "Dremuchij South (VM)", "area_splits");
    settings.Add("v003a", true, "Dremuchij Swampland (VM)", "area_splits");
    settings.Add("v004a", true, "Dremuchij North (VM)", "area_splits");
    settings.Add("v005a", true, "Dolinovodno (VM)", "area_splits");
    settings.Add("v006a", true, "Rassvet (VM)", "area_splits");
    settings.Add("v006b", true, "Rassvet - After Sokolov (VM)", "area_splits");
    settings.Add("v007a", true, "Dolinovodno Riverbank", "area_splits");
    settings.Add("s001a", true, "Dremuchij South", "area_splits");
    settings.Add("s002a", true, "Dremuchij East", "area_splits");
    settings.Add("s003a", true, "Dremuchij Swampland", "area_splits");
    settings.Add("s004a", true, "Dremuchij North", "area_splits");
    settings.Add("s005a", true, "Dolinovodno", "area_splits");
    settings.Add("s006a", true, "Rassvet", "area_splits");
    settings.Add("s006b", true, "Rassvet (after EVA)", "area_splits");
    settings.Add("s012a", true, "Chyornyj Prud", "area_splits");
    settings.Add("s021a", true, "Bolshaya Past South", "area_splits");
    settings.Add("s022a", true, "Bolshaya Past Base", "area_splits");
    // settings.Add("s023a", true, "Bolshaya Past Crevice", "area_splits");
    settings.Add("s031a", true, "Chyornaya Peschera Cave Branch", "area_splits");
    settings.Add("s032a", true, "Chyornaya Peschera Cave", "area_splits");
    // settings.Add("s032b", true, "Chyornaya Peschera Cave (The Pain fight)", "area_splits");
    settings.Add("s033a", true, "Chyornaya Peschera Cave Entrance", "area_splits");
    settings.Add("s041a", true, "Ponizovje South", "area_splits");
    settings.Add("s042a", true, "Ponizovje West", "area_splits");
    settings.Add("s043a", true, "Ponizovje Warehouse: Exterior", "area_splits");
    settings.Add("s044a", true, "Ponizovje Warehouse", "area_splits");
    settings.Add("s045a", true, "Svyatogornyj South", "area_splits");
    settings.Add("s051a", true, "Graniny Gorki South", "area_splits");
    // settings.Add("s051b", true, "Graniny Gorki South (The Fear fight)", "area_splits");
    settings.Add("s052a", true, "Graniny Gorki Lab Exterior: Outside Walls", "area_splits");
    settings.Add("s052b", true, "Graniny Gorki Lab Exterior: Inside Walls", "area_splits");
    settings.Add("s053a", true, "Graniny Gorki Lab 1F", "area_splits");
    settings.Add("s055a", true, "Graniny Gorki Lab B1 East", "area_splits");
    settings.Add("s056a", true, "Graniny Gorki Lab B1 West", "area_splits");
    settings.Add("s061a", true, "Svyatogornyj West", "area_splits");
    settings.Add("s062a", true, "Svyatogornyj East", "area_splits");
    settings.Add("s063a", true, "Sokrovenno South", "area_splits");
    settings.Add("s063b", true, "Sokrovenno South (Ocelot Unit)", "area_splits");
    settings.Add("s064a", true, "Sokrovenno West", "area_splits");
    settings.Add("s064b", true, "Sokrovenno West (Ocelot Unit)", "area_splits");
    settings.Add("s065a", true, "Sokrovenno North", "area_splits");
    settings.Add("s065b", true, "Sokrovenno North (Ocelot Unit)", "area_splits");
    settings.Add("s066a", true, "Krasnogorje Tunnel", "area_splits");
    settings.Add("s071a", true, "Krasnogorje Mountain Base", "area_splits");
    settings.Add("s072a", true, "Krasnogorje Mountainside (Flying Platforms)", "area_splits");
    settings.Add("s072b", true, "Krasnogorje Mountainside (Hind)", "area_splits");
    settings.Add("s073a", true, "Krasnogorje Mountaintop", "area_splits");
    settings.Add("s073b", true, "Krasnogorje Mountaintop (Sunset)", "area_splits");
    settings.Add("s074a", true, "Krasnogorje Mountaintop Ruins", "area_splits");
    settings.Add("s075a", true, "Krasnogorje Mountaintop: Behind Ruins", "area_splits");
    settings.Add("s081a", true, "Groznyj Grad Underground Tunnel", "area_splits");
    settings.Add("s091a", true, "Groznyj Grad Southwest", "area_splits");
    settings.Add("s091b", true, "Groznyj Grad Southwest (After torture)", "area_splits");
    settings.Add("s091c", true, "Groznyj Grad Southwest (After waterfall)", "area_splits");
    settings.Add("s092a", true, "Groznyj Grad Northwest", "area_splits");
    settings.Add("s092b", true, "Groznyj Grad Northwest (After torture)", "area_splits");
    settings.Add("s092c", true, "Groznyj Grad Northwest (After waterfall)", "area_splits");
    settings.Add("s093a", true, "Groznyj Grad Northeast", "area_splits");
    settings.Add("s093b", true, "Groznyj Grad Northeast (After torture)", "area_splits");
    settings.Add("s093c", true, "Groznyj Grad Northeast (After waterfall)", "area_splits");
    settings.Add("s094a", true, "Groznyj Grad Southeast", "area_splits");
    settings.Add("s094b", true, "Groznyj Grad Southeast (After torture)", "area_splits");
    settings.Add("s094c", true, "Groznyj Grad Southeast (After waterfall)", "area_splits");
    settings.Add("s101a", true, "Groznyj Grad Weapons Lab: East Wing", "area_splits");
    settings.Add("s101b", true, "Groznyj Grad Weapons Lab: East Wing (After Raikov)", "area_splits");
    settings.Add("s111a", true, "Groznyj Grad Weapons Lab: West Wing Corridor", "area_splits");
    settings.Add("s112a", true, "Groznyj Grad Torture Room", "area_splits");
    settings.Add("s113a", true, "Groznyj Grad Sewers", "area_splits");
    settings.Add("s121a", true, "Groznyj Grad Weapons Lab: Main Wing", "area_splits");
    // settings.Add("s122a", true, "Groznyj Grad Weapons Lab: Main Wing B1", "area_splits");
    // settings.Add("s141a", true, "??? (The Sorrow fight)", "area_splits");
    settings.Add("s151a", true, "Tikhogornyj", "area_splits");
    settings.Add("s152a", true, "Tikhogornyj: Behind Waterfall", "area_splits");
    settings.Add("s161a", true, "Groznyj Grad", "area_splits");
    settings.Add("s162a", true, "Groznyj Grad Runway South", "area_splits");
    settings.Add("s163a", true, "Groznyj Grad Runway", "area_splits");
    settings.Add("s163b", true, "Groznyj Grad Runway (Shagohod chase)", "area_splits");
    settings.Add("s171a", true, "Groznyj Grad Rail Bridge", "area_splits");
    // settings.Add("s171b", true, "Groznyj Grad Rail Bridge (Shagohod fight)", "area_splits");
    settings.Add("s181a", true, "Groznyj Grad Rail Bridge North", "area_splits");
    settings.Add("s182a", true, "Lazorevo South", "area_splits");
    settings.Add("s183a", true, "Lazorevo North", "area_splits");
    settings.Add("s191a", true, "Zaozyorje West", "area_splits");
    settings.Add("s191b", true, "Zaozyorje West (Pursuit)", "area_splits");
    settings.Add("s192a", true, "Zaozyorje East", "area_splits");
    // settings.Add("s201a", true, "Rokovoj Bereg", "area_splits");
    settings.Add("s211a", true, "WIG: Interior", "area_splits");

    settings.Add("other_splits", true, "Other Splits");
    settings.Add("v001a -> v001a_0", true, "Backpack", "other_splits");
    settings.Add("s004a -> s004a_0", true, "Dremuchij North (Night) Cutscene", "other_splits");
    settings.Add("s006b -> s006a_0", true, "Ocelot Unit", "other_splits");
    settings.Add("s023a -> s023a_0", true, "Ocelot", "other_splits");
    settings.Add("the_pain_phase_1", true, "The Pain (Phase 1)", "other_splits");
    settings.Add("the_pain_phase_2", true, "The Pain (Phase 2)", "other_splits");
    settings.Add("cave_entrance_cutscene", false, "Chyornaya Peschera Cave Entrance Cutscene", "other_splits");
    settings.Add("s051b -> s051b_0", true, "The Fear", "other_splits");
    settings.Add("the_end", true, "The End", "other_splits");
    settings.Add("the_fury", true, "The Fury", "other_splits");
    settings.Add("s101a -> s101a_0", true, "Raikov Capture", "other_splits");
    settings.Add("s112a -> s112a_0", true, "Torture", "other_splits");
    settings.SetToolTip("s112a -> s112a_0", "Split when torture ends.");
    settings.Add("s141a -> s151a_0", true, "The Sorrow", "other_splits");
    settings.Add("volgin_phase_1", true, "Volgin (Phase 1)", "other_splits");
    settings.Add("volgin_phase_2", true, "Volgin (Phase 2)", "other_splits");
    settings.Add("s171b -> s171b_0", true, "Shagohod (Phase 1)", "other_splits");
    settings.Add("s171b -> s171b_1", true, "Shagohod (Phase 2)", "other_splits");
    settings.Add("cure_eva", true, "Cure Eva", "other_splits");
    settings.SetToolTip("cure_eva", "Split after you cure Eva.");
    settings.Add("s201a -> s201a_1", true, "The Boss", "other_splits");
    settings.Add("stats_screen", true, "Stats Screen", "other_splits");
    settings.SetToolTip("stats_screen", "Automatically split when you reach the stats screen.");

    settings.Add("qol_things", false, "Quality of Life Mods");
    settings.Add("skip_splash_screens", false, "Skip Splash Screens", "qol_things");
    settings.SetToolTip("skip_splash_screens", "Skip the splash screens when you start the game for faster resets.");
    settings.Add("area_reset", false, "Experimental: Enable Area Resets", "qol_things");
    settings.SetToolTip("area_reset", "Trigger an area reset by pressing R1 + L1 + Triangle + Circle.");
    settings.Add("quick_dev_menu", false, "Experimental: Enable Quick Dev Menu", "qol_things");
    settings.SetToolTip("quick_dev_menu", "Go to the dev menu by pressing R2 + L2 + R1 + L1 + Triangle + Circle.");
    // settings.Add("area_practice", false, "Experimental: Enable Area Practice", "qol_things");
    // settings.SetToolTip("area_practice", "Enabling this will force the game to repeat the same room once you hit a transition.");

    //
    // ┌────────────────────────────────────────────────────────────────────────────┐
    // │                                                                            │
    // │ Uncomment the lines below if you want to reenable IGT without loads        │
    // │                                                                            │
    // └────────────────────────────────────────────────────────────────────────────┘
    //
    // settings.Add("game_mods", false, "Game Mods");
    // settings.Add("igt_without_loads", false, "IGT without Loads", "game_mods");
    // settings.SetToolTip("igt_without_loads", "The autosplitter will modify the game's memory to change the IGT logic and stop the timer whenever the game is loading. This will affect the stats screen timer.");

    vars.DeathFlagsAddress = null;
    vars.QuickDevMenuModAddress = null;
    vars.ExitToTitleScreenAssemblyCode = null;
    vars.QuickDevMenuAssemblyCode = null;
    vars.AreaResetTriggered = false;
    vars.DevMenuTriggered = false;
    vars.GameOverButtonClicked = false;
    // vars.IgtWhenTransitionStarted = 0;
    // vars.IgtWhenAreaStarted = 0;
    // vars.IgtWhenLoadingStarted = 0;
    // vars.AreaWhenLoadingStarted = "";
    // vars.AreaWhenTransitionStarted = "";
    // vars.TimeSpentInPreviousArea = TimeSpan.FromSeconds(0);
    vars.Igt = TimeSpan.FromSeconds(0).ToString(@"hh\:mm\:ss\.fff");
}

init
{
    var moduleMemorySize = modules.First().ModuleMemorySize;
    var baseAddress = modules.First().BaseAddress;

    // steam or steamless exe
    if (moduleMemorySize == 0x1F2D000 || moduleMemorySize == 0x1EFA000)
    {
        version = "v1.3.x";
        vars.DeathFlagsAddress = 0x1E36A1C;
    }
    else if (moduleMemorySize == 0x1F2C000 || moduleMemorySize == 0x1EF9000)
    {
        version = "v1.2.x";
        vars.DeathFlagsAddress = 0x1E35A3C;
    }
    else
    {
        version = "Unknown - " + moduleMemorySize.ToString("X16");
        vars.DeathFlagsAddress = 0x1E36A1C;
    }

    vars.QuickDevMenuModAddress = null;
    vars.ExitToTitleScreenAssemblyCode = null;
    vars.QuickDevMenuAssemblyCode = null;
    vars.AreaResetTriggered = false;
    vars.DevMenuTriggered = false;
    vars.GameOverButtonClicked = false;
    // vars.IgtWhenTransitionStarted = 0;
    // vars.IgtWhenAreaStarted = 0;
    // vars.IgtWhenLoadingStarted = 0;
    // vars.AreaWhenLoadingStarted = "";
    // vars.AreaWhenTransitionStarted = "";
    // vars.TimeSpentInPreviousArea = TimeSpan.FromSeconds(0);
    vars.Igt = TimeSpan.FromSeconds(0).ToString(@"hh\:mm\:ss\.fff");
}

update
{
    var baseAddress = modules.First().BaseAddress;

    // setting the value in that address to 3 always skips the splash screens
    if (settings["skip_splash_screens"] && (current.splashScreenCheck == 1 || current.splashScreenCheck == 2))
    {
        game.WriteValue<int>(baseAddress + 0x143B160, 3);
    }

    if (settings.ContainsKey("igt_without_loads") && settings["igt_without_loads"])
    {
        game.WriteValue<int>(baseAddress + 0x1D6EC74, current.isGameplay ? 0 : 1);
    }

    if ((current.gameStateFlags & 0x76) == 0 && current.areaCode != "title" && current.areaCode != "select") // is not in the menu, title screen, cutscenes, codec
    {
        if (settings["area_reset"]) 
        {
            if (!vars.AreaResetTriggered && old.inputs != 0x3C00 && current.inputs == 0x3C00 && current.deathTimer == 0 && current.areaIgt > 100) // inputs = R1 + L1 + Triangle + Circle
            {
                print("Triggering area reset - Part 1");
                var value = current.deathFlags | 0x00000005;
                ExtensionMethods.WriteValue<int>(game, baseAddress + vars.DeathFlagsAddress, value);
                vars.AreaResetTriggered = true;
            }

            if (vars.AreaResetTriggered && !vars.GameOverButtonClicked && current.deathTimer < -1 && (current.gameOverPhase >= 2 || current.gameOverPhase < 7))
            {
                print("Triggering area reset - Part 2");
                ExtensionMethods.WriteValue<int>(game, (IntPtr)(current.gameOverPointer + 0x5C), 7);
                vars.GameOverButtonClicked = true;
            }

            if (vars.GameOverButtonClicked && current.continues > old.continues)
            {
                print("Triggering area reset - Part 3");
                vars.GameOverButtonClicked = false;
                vars.AreaResetTriggered = false;
            }
        }

        if (settings["quick_dev_menu"])
        {
            if (!vars.DevMenuTriggered && old.inputs != 0x3F00 && current.inputs == 0x3F00 && current.deathTimer == 0 && current.areaIgt > 100) // inputs = R2 + L2 + R1 + L1 + Triangle + Circle
            {
                if (vars.QuickDevMenuModAddress == null || vars.ExitToTitleScreenAssemblyCode == null || vars.QuickDevMenuAssemblyCode == null)
                {
                    var moduleMemorySize = modules.First().ModuleMemorySize;
                    var scanner = new SignatureScanner(game, baseAddress, moduleMemorySize);
                    var loadTitleCode = scanner.Scan(new SigScanTarget(0, "E8 6E FA FF FF 48 8D"));
                    vars.QuickDevMenuModAddress = loadTitleCode - 4;
                    vars.ExitToTitleScreenAssemblyCode = memory.ReadValue<int>((IntPtr)vars.QuickDevMenuModAddress); // this is going to read an address that points to the string "title"
                    vars.QuickDevMenuAssemblyCode = vars.ExitToTitleScreenAssemblyCode + 0x1C358; // adding 0x1C358 to the "title" address gives us the string "select"
                }

                print("Triggering quick dev menu - Part 1");
                var value = current.deathFlags | 0x00000005;
                ExtensionMethods.WriteValue<int>(game, baseAddress + vars.DeathFlagsAddress, value);
                game.WriteValue<int>((IntPtr)vars.QuickDevMenuModAddress, (int)vars.QuickDevMenuAssemblyCode); // lea rdx, "select"
                vars.DevMenuTriggered = true;
            }

            if (vars.DevMenuTriggered && !vars.GameOverButtonClicked && current.deathTimer < -1 && (current.gameOverPhase >= 2 || current.gameOverPhase < 7))
            {
                print("Triggering quick dev menu - Part 2");
                ExtensionMethods.WriteValue<int>(game, (IntPtr)(current.gameOverPointer + 0x58), 1);
                ExtensionMethods.WriteValue<int>(game, (IntPtr)(current.gameOverPointer + 0x5C), 7);
                vars.GameOverButtonClicked = true;
            }
        }
    }

    if (settings["quick_dev_menu"] && vars.GameOverButtonClicked && current.areaCode == "select" && old.areaCode != "select")
    {
        print("Triggering quick dev menu - Part 3");
        game.WriteValue<int>((IntPtr)vars.QuickDevMenuModAddress, (int)vars.ExitToTitleScreenAssemblyCode); // lea rdx, "title"
        vars.GameOverButtonClicked = false;
        vars.DevMenuTriggered = false;
    }

    vars.Igt = TimeSpan.FromSeconds(current.igt / 60.0).ToString(@"hh\:mm\:ss\.ff");

    // if (settings["area_practice"])
    // {
    //     if (current.areaTransition == 2 && old.areaTransition != 2)
    //     {
    //         vars.IgtWhenTransitionStarted = current.igt;
    //     }

    //     var framesSpentInTransition = current.igt - vars.IgtWhenTransitionStarted;
    //     if (current.areaTransition == 2 && framesSpentInTransition == 118)
    //     {
    //         var value = current.deathFlags | 0x00000005;
    //         ExtensionMethods.WriteValue<int>(game, baseAddress + 0x1E35A3C, value);
    //         vars.AreaResetTriggered = true;
    //     }
    // }

    // if (current.areaTransition == 2 && old.areaTransition != 2)
    // {
    //     vars.TimeSpentInPreviousArea = TimeSpan.FromSeconds((current.igt - vars.IgtWhenAreaStarted + 120) / 60.0).ToString(@"hh\:mm\:ss\.ff");
    //     vars.AreaWhenTransitionStarted = current.areaCode;
    //     print("Time spent in previous area: " + vars.TimeSpentInPreviousArea);
    // }

    // if (current.isGameplay && !old.isGameplay && current.areaCode != vars.AreaWhenTransitionStarted)
    // {
    //     print("IGT When Area Started: " + current.igt.ToString());
    //     vars.IgtWhenAreaStarted = current.igt;
    // }

    // if (!current.isGameplay && old.isGameplay)
    // {
    //     print("IGT When Loading Started: " + current.igt.ToString());
    //     vars.AreaWhenLoadingStarted = current.areaCode;
    // }
}

shutdown
{
    // reset exit to title screen code
    if (settings["quick_dev_menu"] && vars.QuickDevMenuModAddress != null && vars.ExitToTitleScreenAssemblyCode != null)
    {
        game.WriteValue<int>((IntPtr)vars.QuickDevMenuModAddress, (int)vars.ExitToTitleScreenAssemblyCode); // lea rdx, "title"
    }
}

gameTime
{
    if (settings["igt"])
    {
        return TimeSpan.FromSeconds(current.igt / 60.0);
    }
}

isLoading
{
    if (settings["rta_without_loads"])
    {
        return !current.isGameplay;
    }

    return settings["igt"];
}

start 
{
    return current.areaCode == "v000a_0" && current.isGameplay && current.vmStoryFlags == 0x0;
}

reset
{
    return old.areaCode != "title" && current.areaCode == "title";
}

split
{
    if (old.seStoryFlags == 0x25 && current.seStoryFlags == 0x26)
    {
        return settings["the_pain_phase_1"];
    }

    if (old.seStoryFlags == 0x27 && current.seStoryFlags == 0x28)
    {
        return settings["the_pain_phase_2"];
    }

    if (current.areaCode == "s033a" && current.seStoryFlags == 0x2A && (current.gameStateFlags & 0x10) == 0x10 && (old.gameStateFlags & 0x10) == 0x0)
    {
        return settings["cave_entrance_cutscene"];
    }

    if ((current.seStoryFlags == 0x41 || current.seStoryFlags == 0x42) && (old.areaCode == "s063a" || old.areaCode == "s064a" || old.areaCode == "s065a") && current.areaCode == "s065a_0")
    {
        return settings["the_end"];
    }

    if (old.areaCode == "s081a" && current.areaCode == "s081a_0")
    {
        return settings["the_fury"] && (current.seStoryFlags == 0x51 || current.seStoryFlags == 0x52);
    }

    if (old.areaCode == "s122a" && current.areaCode == "s121a_1")
    {
        return (settings["volgin_phase_1"] && current.seStoryFlags == 0x9C) || (settings["volgin_phase_2"] && current.seStoryFlags == 0x9E);
    }

    if (old.areaCode == "s191a" && current.areaCode == "s191a_0")
    {
        return (settings["cure_eva"] && (current.seStoryFlags == 0xB9 || current.seStoryFlags == 0xBA)) || (settings["s191a"] && (current.seStoryFlags == 0xBB || current.seStoryFlags == 0xBC));
    }

    if (current.seStoryFlags == 0xF8 && old.seStoryFlags < 0xF8)
    {
        return settings["stats_screen"];
    }

    if (old.areaCode != current.areaCode)
    {
        var transition = old.areaCode + " -> " + current.areaCode;
        if (settings.ContainsKey(transition))
        {
            print("Try split transition: " + transition);
            return settings[old.areaCode + " -> " + current.areaCode];
        }
        else if (settings.ContainsKey(old.areaCode))
        {
            print("Try split area exit: " + old.areaCode);
            return settings[old.areaCode];
        }
    }

    return false;
}

// Metal Gear Solid 3: Snake Eater - MC Version - Autosplitter v0.6
// By apel

state("METAL GEAR SOLID3") 
{
}

startup 
{
    settings.Add("metadata", true, "Metal Gear Solid 3: Snake Eater - MC Version - Autosplitter v0.6");
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
}

init
{
    var moduleMemorySize = modules.First().ModuleMemorySize;
    var baseAddress = modules.First().BaseAddress;

    // steam or steamless exe
    if (moduleMemorySize == 0x1F2D000 || moduleMemorySize == 0x1EFA000)
    {
        version = "v1.3.x";
    }
    else if (moduleMemorySize == 0x1F2C000 || moduleMemorySize == 0x1EF9000)
    {
        version = "v1.2.x";
    }
    else
    {
        version = "Unknown - " + moduleMemorySize.ToString("X16");
    }

    vars.QuickDevMenuModAddress = null;
    vars.ExitToTitleScreenAssemblyCode = null;
    vars.QuickDevMenuAssemblyCode = null;

    vars.ForceGameOver = false;
    vars.GoToDevMenu = false;
    vars.GameOverScreenPhase = 0;

    vars.Igt = TimeSpan.FromSeconds(0).ToString(@"hh\:mm\:ss\.fff");

    var scanner = new SignatureScanner(game, baseAddress, moduleMemorySize);
    var scanResult = scanner.Scan(new SigScanTarget(0, "48 8B 0D ?? ?? ?? 00 F7 41 08 00 40 00 00 75 09 8B 05 30 ?? CF 01 01 41 4C")); // Stats Pointer AOB Scan

    vars.StatsPointer = (IntPtr)((long)memory.ReadValue<int>(scanResult + 3) + (long)scanResult + 0x7);
    vars.StoryFlagsPointer = (IntPtr)((long)vars.StatsPointer + 0x10);

    scanResult = scanner.Scan(new SigScanTarget(0, "89 3D ?? ?? ?? 00 E8 B9 23 00 00")); // IsGameplay Flag AOB Scan
    vars.IsGameplayFlagAddress = (IntPtr)((long)memory.ReadValue<int>(scanResult + 0x2) + (long)scanResult + 0x6);
    
    scanResult = scanner.Scan(new SigScanTarget(0, "E8 22 F9 FF FF C7 05 ?? ?? ?? 01 03 00 00 00")); // Skip Intro AOB Scan
    vars.SkipIntroAddress = (IntPtr)((long)memory.ReadValue<int>(scanResult + 0x7) + (long)scanResult + 0xF);

    scanResult = scanner.Scan(new SigScanTarget(0, "48 89 45 27 45 33 F6 48 8D 1D ?? ?? ?? 01 41 8B F6")); // Inputs AOB Scan
    vars.InputsAddress = (IntPtr)((long)memory.ReadValue<int>(scanResult + 0xA) + (long)scanResult + 0xE - 0x34);

    scanResult = scanner.Scan(new SigScanTarget(0, "F3 05 00 48 8B 05 ?? ?? ?? 01 48 8B 5C 24 30 48 83 C4 20 5F C3")); // Game Over Pointer AOB Scan
    vars.GameOverPointer = (IntPtr)((long)memory.ReadValue<int>(scanResult + 0x6) + (long)scanResult + 0xA - 0x10);

    scanResult = scanner.Scan(new SigScanTarget(0, "75 75 8B 0D ?? ?? ?? 01 F6 C1 03 75 6A 85 C9 75 4A")); // Death Flags AOB Scan
    vars.DeathFlagsAddress = (IntPtr)((long)memory.ReadValue<int>(scanResult + 0x4) + (long)scanResult + 0x8);
    vars.DeathTimerAddress = (IntPtr)(vars.DeathFlagsAddress + 0xC);

    scanResult = scanner.Scan(new SigScanTarget(0, "0B 05 ?? ?? ?? 01 0F BA E0 09 72 14 8B CE")); // Game State Flags AOB Scan
    vars.GameStateFlagsAddress = (IntPtr)((long)memory.ReadValue<int>(scanResult + 0x2) + (long)scanResult + 0x6 + 0x3);
    vars.AreaTransitionFlagAddress = (IntPtr)(vars.GameStateFlagsAddress + 0x2);

    vars.Memory = new MemoryWatcherList();
    vars.Memory.Add(new StringWatcher(new DeepPointer(vars.StatsPointer, 0x24), 7) { Name = "AreaCode" });
    vars.Memory.Add(new MemoryWatcher<short>(new DeepPointer(vars.StatsPointer, 0x34)) { Name = "Continues" });
    vars.Memory.Add(new MemoryWatcher<int>(new DeepPointer(vars.StatsPointer, 0x48)) { Name = "AreaIGT" });
    vars.Memory.Add(new MemoryWatcher<int>(new DeepPointer(vars.StatsPointer, 0x4C)) { Name = "IGT" });
    vars.Memory.Add(new MemoryWatcher<short>(new DeepPointer(vars.StoryFlagsPointer, 0x2)) { Name = "VMStoryFlags" });
    vars.Memory.Add(new MemoryWatcher<short>(new DeepPointer(vars.StoryFlagsPointer, 0x4)) { Name = "SEStoryFlags" });
    vars.Memory.Add(new MemoryWatcher<bool>(vars.IsGameplayFlagAddress) { Name = "IsGameplay" });
    vars.Memory.Add(new MemoryWatcher<int>(vars.SkipIntroAddress) { Name = "SplashScreenCheck" });
    vars.Memory.Add(new MemoryWatcher<short>(vars.InputsAddress) { Name = "Inputs" });
    vars.Memory.Add(new MemoryWatcher<long>(vars.GameOverPointer) { Name = "GameOverPointer" });
    vars.Memory.Add(new MemoryWatcher<int>(new DeepPointer(vars.GameOverPointer, 0x5C)) { Name = "GameOverPhase" });
    vars.Memory.Add(new MemoryWatcher<int>(vars.DeathFlagsAddress) { Name = "DeathFlags" });
    vars.Memory.Add(new MemoryWatcher<int>(vars.DeathTimerAddress) { Name = "DeathTimer" });
    vars.Memory.Add(new MemoryWatcher<byte>(vars.GameStateFlagsAddress) { Name = "GameStateFlags" });
    vars.Memory.Add(new MemoryWatcher<byte>(vars.AreaTransitionFlagAddress) { Name = "AreaTransitionFlag" });
}

update
{
    vars.Memory.UpdateAll(game);

    var baseAddress = modules.First().BaseAddress;

    // setting the value in that address to 3 always skips the splash screens
    if (settings["skip_splash_screens"] && (vars.Memory["SplashScreenCheck"].Current == 1 || vars.Memory["SplashScreenCheck"].Current == 2))
    {
        game.WriteValue<int>((IntPtr)vars.SkipIntroAddress, 3);
    }

    if ((settings["area_reset"] || settings["quick_dev_menu"]) && 
        !vars.ForceGameOver &&
        (vars.Memory["GameStateFlags"].Current & 0x76) == 0 && // is not in the menu, cutscenes, codec
        vars.Memory["AreaCode"].Current != "title" && // is not in the title screen
        vars.Memory["AreaCode"].Current != "select" &&  // is not in the dev menu
        vars.Memory["DeathTimer"].Current == 0 &&  // is not dead
        vars.Memory["AreaIGT"].Current > 100) // has entered an area
    {
        // inputs = R1 + L1 + Triangle + Circle
        if (settings["area_reset"] &&
            vars.Memory["Inputs"].Old != 0x3C00 && 
            vars.Memory["Inputs"].Current == 0x3C00)
        {
            vars.ForceGameOver = true;
        }

        // inputs = R2 + L2 + R1 + L1 + Triangle + Circle
        if (settings["quick_dev_menu"] &&
            vars.Memory["Inputs"].Old != 0x3F00 && 
            vars.Memory["Inputs"].Current == 0x3F00)
        {
            vars.ForceGameOver = true;
            vars.GoToDevMenu = true;
        }
    }

    if (vars.GoToDevMenu && vars.QuickDevMenuModAddress == null || vars.ExitToTitleScreenAssemblyCode == null || vars.QuickDevMenuAssemblyCode == null)
    {
        var moduleMemorySize = modules.First().ModuleMemorySize;
        var scanner = new SignatureScanner(game, baseAddress, moduleMemorySize);
        vars.QuickDevMenuModAddress = (IntPtr)((scanner.Scan(new SigScanTarget(0, "E8 6E FA FF FF 48 8D"))) - 4);
        vars.ExitToTitleScreenAssemblyCode = memory.ReadValue<int>((IntPtr)vars.QuickDevMenuModAddress); // this is going to read an address that points to the string "title"
        vars.QuickDevMenuAssemblyCode = vars.ExitToTitleScreenAssemblyCode + 0x1C358; // adding 0x1C358 to the "title" address gives us the string "select"
    }

    if (vars.ForceGameOver)
    {
        if (vars.GameOverScreenPhase == 0)
        {
            print("Triggering game over - Part 1");
            vars.GameOverScreenPhase = 1;

            if (vars.GoToDevMenu)
            {
                game.WriteValue<int>((IntPtr)vars.QuickDevMenuModAddress, (int)vars.QuickDevMenuAssemblyCode); // the game over Exit button will lead you to the dev menu
            }

            int value = vars.Memory["DeathFlags"].Current | 0x00000005;
            game.WriteValue<int>((IntPtr)vars.DeathFlagsAddress, value);

        }

        if (vars.GameOverScreenPhase == 1 && 
            vars.Memory["DeathTimer"].Current < -1 && 
            (vars.Memory["GameOverPhase"].Current >= 2 || vars.Memory["GameOverPhase"].Current < 7))
        {
            print("Triggering game over - Part 2");
            vars.GameOverScreenPhase = 2;

            if (vars.GoToDevMenu)
            {
                game.WriteValue<int>((IntPtr)(vars.Memory["GameOverPointer"].Current + 0x58), 1); // selects the Exit button in the game over screen
            }

            game.WriteValue<int>((IntPtr)(vars.Memory["GameOverPointer"].Current + 0x5C), 7); // presses the button in the game over screen
        }

        if (vars.GameOverScreenPhase == 2 && 
            ((vars.Memory["Continues"].Current > vars.Memory["Continues"].Old) || (vars.Memory["AreaCode"].Current != vars.Memory["AreaCode"].Old)))
        {
            print("Triggering game over - Part 3");
            vars.GameOverScreenPhase = 0;

            if (vars.GoToDevMenu)
            {
                game.WriteValue<int>((IntPtr)vars.QuickDevMenuModAddress, (int)vars.ExitToTitleScreenAssemblyCode); // the game over Exit button will lead you to the title screen
            }

            vars.ForceGameOver = false;
            vars.GoToDevMenu = false;
        }
    }

    vars.Igt = TimeSpan.FromSeconds(vars.Memory["IGT"].Current / 60.0).ToString(@"hh\:mm\:ss\.ff");

    // if (settings["area_practice"])
    // {
    //     if (current.areaTransition == 2 && old.areaTransition != 2)
    //     {
    //         vars.IgtWhenTransitionStarted = vars.Memory["IGT"].Current;
    //     }

    //     var framesSpentInTransition = vars.Memory["IGT"].Current - vars.IgtWhenTransitionStarted;
    //     if (current.areaTransition == 2 && framesSpentInTransition == 118)
    //     {
    //         var value = vars.Memory["DeathFlags"].Current | 0x00000005;
    //         ExtensionMethods.WriteValue<int>(game, baseAddress + 0x1E35A3C, value);
    //         vars.AreaResetTriggered = true;
    //     }
    // }

    // if (current.areaTransition == 2 && old.areaTransition != 2)
    // {
    //     vars.TimeSpentInPreviousArea = TimeSpan.FromSeconds((vars.Memory["IGT"].Current - vars.IgtWhenAreaStarted + 120) / 60.0).ToString(@"hh\:mm\:ss\.ff");
    //     vars.AreaWhenTransitionStarted = vars.Memory["AreaCode"].Current;
    //     print("Time spent in previous area: " + vars.TimeSpentInPreviousArea);
    // }

    // if (vars.Memory["IsGameplay"].Current && !old.isGameplay && vars.Memory["AreaCode"].Current != vars.AreaWhenTransitionStarted)
    // {
    //     print("IGT When Area Started: " + vars.Memory["IGT"].Current.ToString());
    //     vars.IgtWhenAreaStarted = vars.Memory["IGT"].Current;
    // }

    // if (!vars.Memory["IsGameplay"].Current && old.isGameplay)
    // {
    //     print("IGT When Loading Started: " + vars.Memory["IGT"].Current.ToString());
    //     vars.AreaWhenLoadingStarted = vars.Memory["AreaCode"].Current;
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
        return TimeSpan.FromSeconds(vars.Memory["IGT"].Current / 60.0);
    }
}

isLoading
{
    if (settings["rta_without_loads"])
    {
        return !vars.Memory["IsGameplay"].Current;
    }

    return settings["igt"];
}

start 
{
    return vars.Memory["AreaCode"].Current == "v000a_0" && vars.Memory["IsGameplay"].Current && vars.Memory["VMStoryFlags"].Current == 0x0;
}

reset
{
    return vars.Memory["AreaCode"].Old != "title" && vars.Memory["AreaCode"].Current == "title";
}

split
{
    if (vars.Memory["SEStoryFlags"].Old == 0x25 && vars.Memory["SEStoryFlags"].Current == 0x26)
    {
        return settings["the_pain_phase_1"];
    }

    if (vars.Memory["SEStoryFlags"].Old == 0x27 && vars.Memory["SEStoryFlags"].Current == 0x28)
    {
        return settings["the_pain_phase_2"];
    }

    if (vars.Memory["AreaCode"].Current == "s033a" && vars.Memory["SEStoryFlags"].Current == 0x2A && (vars.Memory["GameStateFlags"].Current & 0x10) == 0x10 && (vars.Memory["GameStateFlags"].Old & 0x10) == 0x0)
    {
        return settings["cave_entrance_cutscene"];
    }

    if ((vars.Memory["SEStoryFlags"].Current == 0x41 || vars.Memory["SEStoryFlags"].Current == 0x42) && (vars.Memory["AreaCode"].Old == "s063a" || vars.Memory["AreaCode"].Old == "s064a" || vars.Memory["AreaCode"].Old == "s065a") && vars.Memory["AreaCode"].Current == "s065a_0")
    {
        return settings["the_end"];
    }

    if (vars.Memory["AreaCode"].Old == "s081a" && vars.Memory["AreaCode"].Current == "s081a_0")
    {
        return settings["the_fury"] && (vars.Memory["SEStoryFlags"].Current == 0x51 || vars.Memory["SEStoryFlags"].Current == 0x52);
    }

    if (vars.Memory["AreaCode"].Old == "s122a" && vars.Memory["AreaCode"].Current == "s121a_1")
    {
        return (settings["volgin_phase_1"] && vars.Memory["SEStoryFlags"].Current == 0x9C) || (settings["volgin_phase_2"] && vars.Memory["SEStoryFlags"].Current == 0x9E);
    }

    if (vars.Memory["AreaCode"].Old == "s191a" && vars.Memory["AreaCode"].Current == "s191a_0")
    {
        return (settings["cure_eva"] && (vars.Memory["SEStoryFlags"].Current == 0xB9 || vars.Memory["SEStoryFlags"].Current == 0xBA)) || (settings["s191a"] && (vars.Memory["SEStoryFlags"].Current == 0xBB || vars.Memory["SEStoryFlags"].Current == 0xBC));
    }

    if (vars.Memory["SEStoryFlags"].Current == 0xF8 && vars.Memory["SEStoryFlags"].Old < 0xF8)
    {
        return settings["stats_screen"];
    }

    if (vars.Memory["AreaCode"].Old != vars.Memory["AreaCode"].Current)
    {
        var transition = vars.Memory["AreaCode"].Old + " -> " + vars.Memory["AreaCode"].Current;
        if (settings.ContainsKey(transition))
        {
            print("Try split transition: " + transition);
            return settings[vars.Memory["AreaCode"].Old + " -> " + vars.Memory["AreaCode"].Current];
        }
        else if (settings.ContainsKey(vars.Memory["AreaCode"].Old))
        {
            print("Try split area exit: " + vars.Memory["AreaCode"].Old);
            return settings[vars.Memory["AreaCode"].Old];
        }
    }

    return false;
}

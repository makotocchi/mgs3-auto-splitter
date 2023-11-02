// Metal Gear Solid 3: Snake Eater - MC Version - Autosplitter v0.2.1
// By apel

state("METAL GEAR SOLID3") 
{
    string7 areaCode : 0xAE39D8, 0x24;
    int igt : 0xAE39D8, 0x4C;
    int areaIgt : 0xAE39D8, 0x48;
    bool isGameplay : 0xADA0B0;
    ushort vmStoryFlags : 0xAE39E8, 0x2;
    ushort seStoryFlags : 0xAE39E8, 0x4;
    int splashScreenCheck : 0x143B160;
    byte timerCode : 0x7256E;
    int deathFlags : 0x1E2B0D8;
    long gameOverPointer : 0x1D4EB08;
    int gameOverPhase : 0x1D4EB08, 0x5C;
    short inputs : 0x1D8E70C;
    byte gameStateFlags : 0x1E35A13;
}

startup 
{
    settings.Add("metadata", true, "Metal Gear Solid 3: Snake Eater - MC Version - Autosplitter v0.2.1");
    settings.SetToolTip("metadata", "This isn't an actual setting. It's just here to show which version you're using so I can tell you to update it if it's outdated.");

    settings.Add("game_mods", false, "Game Mods");
    settings.Add("igt_without_loads", false, "IGT without Loads", "game_mods");
    settings.SetToolTip("igt_without_loads", "The autosplitter will modify the game's memory to change the IGT logic and stop the timer whenever the game is loading. This will affect the stats screen timer.");

    settings.Add("timer_mode", true, "Timer Mode");
    settings.SetToolTip("timer_mode", "The settings below define how the Game Timer in LiveSplit will work. Tick only one of the two options.");
    settings.Add("rta_without_loads", true, "RTA without Loads", "timer_mode");
    settings.SetToolTip("rta_without_loads", "If you tick this, the Game Timer that LiveSplit offers will be the same as RTA, but stopping whenever the game is loading.");
    settings.Add("igt", false, "IGT", "timer_mode");
    settings.SetToolTip("igt", "If you tick this, the Game Timer that LiveSplit offers will be the same as the IGT.");

    settings.Add("area_splits", true, "Area Splits");
    settings.SetToolTip("area_splits", "Automatically split whenever you leave the area ticked. Note: Triggering a cutscene/boss fight usually counts as leaving the area.");

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
    settings.Add("s023a", true, "Bolshaya Past Crevice", "area_splits");
    settings.Add("s031a", true, "Chyornaya Peschera Cave Branch", "area_splits");
    settings.Add("s032a", true, "Chyornaya Peschera Cave", "area_splits");
    settings.Add("s032b", true, "Chyornaya Peschera Cave (The Pain fight)", "area_splits");
    settings.Add("s033a", true, "Chyornaya Peschera Cave Entrance", "area_splits");
    settings.Add("s041a", true, "Ponizovje South", "area_splits");
    settings.Add("s042a", true, "Ponizovje West", "area_splits");
    settings.Add("s043a", true, "Ponizovje Warehouse: Exterior", "area_splits");
    settings.Add("s044a", true, "Ponizovje Warehouse", "area_splits");
    settings.Add("s045a", true, "Svyatogornyj South", "area_splits");
    settings.Add("s051a", true, "Graniny Gorki South", "area_splits");
    settings.Add("s051b", true, "Graniny Gorki South (The Fear fight)", "area_splits");
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
    settings.Add("s122a", true, "Groznyj Grad Weapons Lab: Main Wing B1", "area_splits");
    settings.Add("s141a", true, "??? (The Sorrow fight)", "area_splits");
    settings.Add("s151a", true, "Tikhogornyj", "area_splits");
    settings.Add("s152a", true, "Tikhogornyj: Behind Waterfall", "area_splits");
    settings.Add("s161a", true, "Groznyj Grad", "area_splits");
    settings.Add("s162a", true, "Groznyj Grad Runway South", "area_splits");
    settings.Add("s163a", true, "Groznyj Grad Runway", "area_splits");
    settings.Add("s163b", true, "Groznyj Grad Runway (Shagohod chase)", "area_splits");
    settings.Add("s171a", true, "Groznyj Grad Rail Bridge", "area_splits");
    settings.Add("s171b", true, "Groznyj Grad Rail Bridge (Shagohod fight)", "area_splits");
    settings.Add("s181a", true, "Groznyj Grad Rail Bridge North", "area_splits");
    settings.Add("s182a", true, "Lazorevo South", "area_splits");
    settings.Add("s183a", true, "Lazorevo North", "area_splits");
    settings.Add("s191a", true, "Zaozyorje West", "area_splits");
    settings.Add("s191b", true, "Zaozyorje West (Pursuit)", "area_splits");
    settings.Add("s192a", true, "Zaozyorje East", "area_splits");
    settings.Add("s201a", true, "Rokovoj Bereg", "area_splits");
    settings.Add("s211a", true, "WIG: Interior", "area_splits");

    settings.Add("other_splits", true, "Other Splits");
    settings.Add("stats_screen", true, "Stats Screen", "other_splits");
    settings.SetToolTip("stats_screen", "Automatically split when you reach the stats screen.");

    settings.Add("qol_things", false, "Quality of Life Mods");
    settings.Add("skip_splash_screens", false, "Skip Splash Screens", "qol_things");
    settings.SetToolTip("skip_splash_screens", "Skip the splash screens when you start the game for faster resets.");
    settings.Add("area_reset", false, "Experimental: Enable Area Resets", "qol_things");
    settings.SetToolTip("area_reset", "Trigger an area reset by pressing R1 + L1 + Triangle + Circle.");
}

init
{
    // steam or steamless exe
    if (modules.First().ModuleMemorySize == 0x1F2C000 || modules.First().ModuleMemorySize == 0x1EF9000)
    {
        version = "US/EU v1.2.0";
    }
    else
    {
        version = "Unknown - " + modules.First().ModuleMemorySize.ToString("X16");
    }
}

exit
{
}

update
{
    // setting the value in that address to 3 always skips the splash screens
    if (settings["skip_splash_screens"] && (current.splashScreenCheck == 1 || current.splashScreenCheck == 2))
    {
        game.WriteValue<int>(modules.First().BaseAddress + 0x143B160, 3);
    }

    // use the IsLoading flag to stop the IGT
    if (settings["igt_without_loads"] && current.timerCode == 0x0)
    {
        game.WriteBytes(modules.First().BaseAddress + 0x72568, new byte[] { 0x83, 0x3D, 0x41, 0x7B, 0xA6, 0x00, 0x01 }); // cmp dword ptr [0x140ada0b0],0x1
    }

    // use the original flag to stop the IGT
    if (!settings["igt_without_loads"] && current.timerCode == 0x1)
    {
        game.WriteBytes(modules.First().BaseAddress + 0x72568, new byte[] { 0x83, 0x3D, 0x05, 0xC7, 0xCF, 0x01, 0x00 }); // cmp dword ptr [0x141d6ec74],0x0
    }

    if (settings["area_reset"])
    {
        if ((current.gameStateFlags == 0x1 || current.gameStateFlags == 0x9) && current.areaCode != "title") // is not in the menu, title screen, cutscenes, codec
        {
            if (current.inputs == 0x3C00 && current.gameOverPhase == 0)
            {
                var value = current.deathFlags | 0x00300000;
                ExtensionMethods.WriteValue<int>(game, modules.First().BaseAddress + 0x1E2B0D8, value);
            }

            if (current.inputs == 0x3C00 && (current.gameOverPhase >= 2 || current.gameOverPhase < 7))
            {
                ExtensionMethods.WriteValue<int>(game, (IntPtr)(current.gameOverPointer + 0x5C), 7);
            }
        }
    }
}

shutdown
{
    // reset the timer code
    if (settings["igt_without_loads"] && current.timerCode == 0x1)
    {
        game.WriteBytes(modules.First().BaseAddress + 0x72568, new byte[] { 0x83, 0x3D, 0x05, 0xC7, 0xCF, 0x01, 0x00 }); // cmp dword ptr [0x141d6ec74],0x0
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
    return (old.areaCode != current.areaCode && settings[old.areaCode]/* && !current.areaCode.Contains(old.areaCode)*/) || (settings["stats_screen"] && current.seStoryFlags == 0xF8 && old.seStoryFlags < 0xF8);
}
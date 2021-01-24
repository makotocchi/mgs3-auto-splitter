// MGS3 Emulator Auto Splitter
// By apel
// Based on the Resident Evil CVX Auto Splitter
// https://github.com/kapdap/re-cvx-autosplitter

state("pcsx2") {}
state("rpcs3") {}

startup 
{
    // Swaps 4 byte values
    vars.SwapBytesInt = (Func<uint, uint>)((value) => {
        return ((value & 0x000000ff) << 24) +
            ((value & 0x0000ff00) << 8) +
            ((value & 0x00ff0000) >> 8) +
            ((value & 0xff000000) >> 24);
    });

    settings.Add("v001a", true, "Dremuchij South (VM)");
    settings.Add("v003a", true, "Dremuchij Swampland (VM)");
    settings.Add("v004a", true, "Dremuchij North (VM)");
    settings.Add("v005a", true, "Dolinovodno (VM)");
    settings.Add("v006a", true, "Rassvet (VM)");
    settings.Add("v006b", true, "Rassvet - After Sokolov (VM)");
    settings.Add("v007a", true, "Dolinovodno Riverbank");
    settings.Add("s001a", true, "Dremuchij South");
    settings.Add("s002a", true, "Dremuchij East");
    settings.Add("s003a", true, "Dremuchij Swampland");
    settings.Add("s004a", true, "Dremuchij North");
    settings.Add("s005a", true, "Dolinovodno");
    settings.Add("s006a", true, "Rassvet");
    settings.Add("s006b", true, "Rassvet (after EVA)");
    settings.Add("s012a", true, "Chyornyj Prud");
    settings.Add("s021a", true, "Bolshaya Past South");
    settings.Add("s022a", true, "Bolshaya Past Base");
    settings.Add("s023a", true, "Bolshaya Past Crevice");
    settings.Add("s031a", true, "Chyornaya Peschera Cave Branch");
    settings.Add("s032a", true, "Chyornaya Peschera Cave");
    settings.Add("s032b", true, "Chyornaya Peschera Cave (The Pain fight)");
    settings.Add("s033a", true, "Chyornaya Peschera Cave Entrance");
    settings.Add("s041a", true, "Ponizovje South");
    settings.Add("s042a", true, "Ponizovje West");
    settings.Add("s043a", true, "Ponizovje Warehouse: Exterior");
    settings.Add("s044a", true, "Ponizovje Warehouse");
    settings.Add("s045a", true, "Svyatogornyj South");
    settings.Add("s051a", true, "Graniny Gorki South");
    settings.Add("s051b", true, "Graniny Gorki South (The Fear fight)");
    settings.Add("s052a", true, "Graniny Gorki Lab Exterior: Outside Walls");
    settings.Add("s052b", true, "Graniny Gorki Lab Exterior: Inside Walls");
    settings.Add("s053a", true, "Graniny Gorki Lab 1F");
    settings.Add("s055a", true, "Graniny Gorki Lab B1 East");
    settings.Add("s056a", true, "Graniny Gorki Lab B1 West");
    settings.Add("s061a", true, "Svyatogornyj West");
    settings.Add("s062a", true, "Svyatogornyj East");
    settings.Add("s063a", true, "Sokrovenno South");
    settings.Add("s063b", true, "Sokrovenno South (Ocelot Unit)");
    settings.Add("s064a", true, "Sokrovenno West");
    settings.Add("s064b", true, "Sokrovenno West (Ocelot Unit)");
    settings.Add("s065a", true, "Sokrovenno North");
    settings.Add("s065b", true, "Sokrovenno North (Ocelot Unit)");
    settings.Add("s066a", true, "Krasnogorje Tunnel");
    settings.Add("s071a", true, "Krasnogorje Mountain Base");
    settings.Add("s072a", true, "Krasnogorje Mountainside (Flying Platforms)");
    settings.Add("s072b", true, "Krasnogorje Mountainside (Hind)");
    settings.Add("s073a", true, "Krasnogorje Mountaintop");
    settings.Add("s073b", true, "Krasnogorje Mountaintop (Sunset)");
    settings.Add("s074a", true, "Krasnogorje Mountaintop Ruins");
    settings.Add("s075a", true, "Krasnogorje Mountaintop: Behind Ruins");
    settings.Add("s081a", true, "Groznyj Grad Underground Tunnel");
    settings.Add("s091a", true, "Groznyj Grad Southwest");
    settings.Add("s091b", true, "Groznyj Grad Southwest (After torture)");
    settings.Add("s091c", true, "Groznyj Grad Southwest (After waterfall)");
    settings.Add("s092a", true, "Groznyj Grad Northwest");
    settings.Add("s092b", true, "Groznyj Grad Northwest (After torture)");
    settings.Add("s092c", true, "Groznyj Grad Northwest (After waterfall)");
    settings.Add("s093a", true, "Groznyj Grad Northeast");
    settings.Add("s093b", true, "Groznyj Grad Northeast (After torture)");
    settings.Add("s093c", true, "Groznyj Grad Northeast (After waterfall)");
    settings.Add("s094a", true, "Groznyj Grad Southeast");
    settings.Add("s094b", true, "Groznyj Grad Southeast (After torture)");
    settings.Add("s094c", true, "Groznyj Grad Southeast (After waterfall)");
    settings.Add("s101a", true, "Groznyj Grad Weapons Lab: East Wing");
    settings.Add("s101b", true, "Groznyj Grad Weapons Lab: East Wing (After Raikov)");
    settings.Add("s111a", true, "Groznyj Grad Weapons Lab: West Wing Corridor");
    settings.Add("s112a", true, "Groznyj Grad Torture Room");
    settings.Add("s113a", true, "Groznyj Grad Sewers");
    settings.Add("s121a", true, "Groznyj Grad Weapons Lab: Main Wing");
    settings.Add("s122a", true, "Groznyj Grad Weapons Lab: Main Wing B1");
    settings.Add("s141a", true, "??? (The Sorrow fight)");
    settings.Add("s151a", true, "Tikhogornyj");
    settings.Add("s152a", true, "Tikhogornyj: Behind Waterfall");
    settings.Add("s161a", true, "Groznyj Grad");
    settings.Add("s162a", true, "Groznyj Grad Runway South");
    settings.Add("s163a", true, "Groznyj Grad Runway");
    settings.Add("s163b", true, "Groznyj Grad Runway (Shagohod chase)");
    settings.Add("s171a", true, "Groznyj Grad Rail Bridge");
    settings.Add("s171b", true, "Groznyj Grad Rail Bridge (Shagohod fight)");
    settings.Add("s181a", true, "Groznyj Grad Rail Bridge North");
    settings.Add("s182a", true, "Lazorevo South");
    settings.Add("s183a", true, "Lazorevo North");
    settings.Add("s191a", true, "Zaozyorje West");
    settings.Add("s191b", true, "Zaozyorje West (Pursuit)");
    settings.Add("s192a", true, "Zaozyorje East");
    settings.Add("s201a", true, "Rokovoj Bereg");
    settings.Add("s211a", true, "WIG: Interior");
}

init
{
    switch (game.ProcessName.ToLower())
    {
        case "pcsx2":
            vars.basePointer = 0x20000000;
            vars.isBigEndian = false;
            break;

        case "rpcs3":
            vars.basePointer = 0x300000000;
            vars.isBigEndian = true;
            break;
    }
}

update
{
    string productCode = "";

    switch (game.ProcessName.ToLower())
    {
        case "pcsx2":
            productCode = memory.ReadString(new IntPtr(vars.basePointer + 0x00015B90), 11);
            break;

        case "rpcs3":
            productCode = memory.ReadString(new IntPtr(vars.basePointer + 0x20010251), 9);
            break;
    }

    switch (productCode)
    {
        case "SLUS_213.59": // [PS2] Subsistence NTSC-U
            vars.gameplayFlagAddress = 0x0020C260;
            vars.areaCodeAddress = 0x001D5AC0;
            break;

        case "SLES_820.42": // [PS2] Subsistence PAL-E-F
            vars.gameplayFlagAddress = 0x0020CF60;
            vars.areaCodeAddress = 0x001D67A0;
            break;
            
        case "NPUB30610": // [PS3] HDC NTSC-U
            vars.gameplayFlagAddress = 0x01B3C040;
            vars.areaCodeAddress = 0x011FCD30;
            break;
        
        default:
            vars.gameplayFlagAddress = 0;
            vars.areaCodeAddress = 0;
            break;
    }

    vars.isGameActive = true;

    if (vars.gameplayFlagAddress != 0) 
    {
        uint isGameplay = 0;
        memory.ReadValue<uint>(new IntPtr(vars.basePointer + vars.gameplayFlagAddress), out isGameplay);
        current.isGameplay = (vars.isBigEndian ? vars.SwapBytesInt(isGameplay) : isGameplay) == 1;
    }
    else
    {
        vars.isGameActive = false;
    }

    if (vars.areaCodeAddress != 0)
    {
        current.areaCode = memory.ReadString(new IntPtr(vars.basePointer + vars.areaCodeAddress), 7);
    }
    else
    {
        vars.isGameActive = false;
    }
}

isLoading
{
    return vars.isGameActive && !current.isGameplay;
}

start 
{
    return vars.isGameActive && current.areaCode == "v000a_0" && current.isGameplay;
}

reset
{
    return vars.isGameActive && current.areaCode == "title";
}

split
{
    return vars.isGameActive
        && ((current.areaCode != old.areaCode && settings[old.areaCode]) || (current.areaCode == "ending" && old.isGameplay && !current.isGameplay));
}
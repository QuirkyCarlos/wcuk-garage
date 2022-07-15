Config = {}


Config.Mysql = 'oxmysql' --   mysql-async -- oxmysql  -- pls fxmanifest and open requirement
Config.Framework = "esx" -- newqb, oldqb, esx
Config.Account = 'bank' --- bank , money



----------------------------
Config.SellCar = true --- ture and false
Config.TransferCar = true -- ture and false

Config.Price = 100
Config.impoundPrice = 500
Config.GarageCoords = {
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(213.59,  -809.34,  31.01 ),  npcHeading =0.0,     parking = vector3(215.68,  -792.62, 29.83 ), parkout= vector3(222.45,   -801.44,  30.25 ), vehicleHeading=246.89 , garageName = 'A GARAGE'}, -- Hastane altı
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(-899.275,-153.0,   41.88 ),  npcHeading =121.86,  parking = vector3(-906.28, -154.96, 41.06 ), parkout= vector3(-911.93,  -164.65,  41.45 ), vehicleHeading=27.11  , garageName = 'B GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(275.182, -345.534, 45.173),  npcHeading =0.0,     parking = vector3(272.68,  -337.14, 44.0  ), parkout= vector3(285.34,   -335.65,  44.49 ), vehicleHeading=250.6  , garageName = 'c GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(-833.255,-2351.34, 14.57 ),  npcHeading =284.43,  parking = vector3(-826.95, -2351.44,13.6  ), parkout= vector3(-820.66,  -2361.0,  14.15 ), vehicleHeading=329.02 , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(721.95,  -2016.379,29.43 ),  npcHeading =264.04,  parking = vector3(727.5,   -2017.41,28.25 ), parkout= vector3(728.45,   -2031.35, 28.86 ), vehicleHeading=355.12 , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(-2162.82,-377.15,  13.28 ),  npcHeading =165.99,  parking = vector3(-2165.56,-383.22, 12.19 ), parkout= vector3(-2169.86, -373.34,  12.67 ), vehicleHeading=169.68 , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(-423.85, 1206.11,  325.76),  npcHeading =260.8,   parking = vector3(-418.73, 1206.37, 324.80), parkout= vector3(-422.07,  1198.1,   352.22), vehicleHeading=229.16 , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(112.23,  6619.66,  31.82 ),  npcHeading =237.14,  parking = vector3(116.99,  6613.56, 31.0  ), parkout= vector3(111.88,   6602.95,  31.51 ), vehicleHeading=272.66 , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(2768.34, 3462.92,  55.63 ),  npcHeading =241.17,  parking = vector3(2773.22, 3461.03, 54.60 ), parkout= vector3(2767.28,  3457.05,  55.28 ), vehicleHeading=241.9  , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(1951.79, 3750.95,  32.16 ),  npcHeading =118.06,  parking = vector3(1948.04, 3747.62, 31.22 ), parkout= vector3(1950.16,  3759.21,  31.78 ), vehicleHeading=30.35  , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(1851.43, 2587.75,  45.67 ),  npcHeading =251.45,  parking = vector3(1856.02, 2589.47, 44.80 ), parkout= vector3(1854.8,   2579.11,  45.25 ), vehicleHeading=272.67 , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(916.81,  -15.27,   78.76 ),  npcHeading =146.82,  parking = vector3(913.89,  -19.08,  77.94 ), parkout= vector3(907.01,   -13.41,   78.34 ), vehicleHeading=147.92 , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(99.79,   -1072.98, 29.37 ),  npcHeading =250.0,   parking = vector3(107.32,  -1070.57,28.37 ), parkout= vector3(117.64,   -1082.05, 28.77 ), vehicleHeading=3.1    , garageName = 'A GARAGE'},
          {garageType = 'normal', npcHash ="s_m_y_barman_01", npc = vector3(-468.59, -818.79, 30.52),    npcHeading =264.04,  parking = vector3(-454.08, -814.91, 30.59), parkout= vector3(-472.01, -805.3, 30.54), vehicleHeading=355.12 , garageName = 'A GARAGE'},
          {garageType ='impound', npcHash ="s_m_y_barman_01", npc = vector3(-181.24, -1282.1, 31.2959),  npcHeading =192.07,  parking = vector3(-181.81, -1287.4, 25.271), parkout= vector3(-189.10,  -1290.3,  30.871), vehicleHeading=269.66 , garageName = 'Impound Garage'}, -- under hospital

}

Config.BlacklistVehicles = {
    GetHashKey('bati'),

 
}

Config.Notification = function(message, type, isServer, src)
    print(message, type)
    if isServer then
        if Config.Framework == "esx" then
            TriggerClientEvent("esx:showNotification", src, message)
        else
            TriggerClientEvent('QBCore:Notify', src, message, type, 1500)
        end
    else
        if Config.Framework == "esx" then
            TriggerEvent("esx:showNotification", message)
        else
            print('burdayım')
            TriggerEvent('QBCore:Notify', message, type, tonumber(1500))
        end
    end
end 

Config.Notifications = {
    ['error_transfer'] = {
        message = 'You cant transfer your car to you.',
        type = 'error'
    },
    ['player_transfer'] = {
        message = 'Player not in the game.',
        type = 'error'
    },
    ['player_transfer_error'] = {
        message = 'his is not allowed..',
        type = 'error'
    },
    ['price_error'] = {
        message = 'his is not allowed..',
        type = 'error'
    },
  
     ['carsell'] = {
        message = 'Car sale succesful',
        type = 'success'
    },
    ['parkprice'] = {
        message = 'You have paid £ ',
        type = 'success'
    },
    ['notowner'] = {
        message = 'Car is not yours.',
        type = 'error'
    },
    ['transfer'] = {
        message = 'You have transfered the car',
        type = 'success'
    },
    ['transfer2'] = {
        message = 'The car has been sent to your garage',
        type = 'success'
    },
    ['money'] = {
        message = 'Not enough cash',
        type = 'error'
    },
    ['notvehicle'] = {
        message = 'There is no car in your garage',
        type = 'error'
    },
}
Config.HelpNotfiy = 'Press [E].'
Config.HelpNotfiy1 = 'There is no car in your garage'
---- DİSCORD WEBHOOK --- 
Config.SellWebhook = "CHANGEME"
Config.TransferWebhook = "CHANGEME"
Config.IconURL = "CHANGEME"
Config.Logo = "CHANGEME"
Config.Botname = "Garage Report Log"

-- DrawText Settings 
Config.drawmarkerid = 1
Config.red = 255
Config.green = 10
Config.blue = 20
Config.alpha = 155

function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.3, 0.3)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 90)
end



-- don't touch if qb framework
-- don't touch if qb framework
-- don't touch if qb framework
Config.DefaultManufacturer = "Custom"
Config.VehiclesManufacturer = {
    ["blade"] = "Vapid",
    ["buccaneer"] = "Albany",
    ["buccaneer2"] = "Albany",
    ["chino"] = "Vapid",
    ["chino2"] = "Vapid",
    ["coquette3"] = "Invetero",
    ["dominator"] = "Vapid",
    ["dukes"] = "Imponte",
    ["gauntlet"] = "Bravado",
    ["hotknife"] = "Vapid",
    ["faction"] = "Willard",
    ["faction2"] = "Willard",
    ["faction3"] = "Willard",
    ["nightshade"] = "Imponte",
    ["phoenix"] = "Imponte",
    ["picador"] = "Cheval",
    ["sabregt"] = "Declasse",
    ["sabregt2"] = "Declasse",
    ["slamvan3"] = "Vapid",
    ["tampa"] = "Declasse",
    ["virgo"] = "Albany",
    ["vigero"] = "Declasse",
    ["voodoo"] = "Declasse",
    ["330661258"] = "Dinka",
    ["brioso"] = "Grotti",
    ["issi2"] = "Weeny",
    ["blista"] = "Dinka",
    ["panto"] = "Benefactor",
    ["prairie"] = "Bollokan",
    ["bison"] = "Declasse",
    ["bobcatxl"] = "Vapid",
    ["burrito3"] = "Declasse",
    ["gburrito2"] = "Declasse",
    ["gburrito"] = "Declasse",
    ["camper"] = "Brute",
    ["journey"] = "Zirconium",
    ["minivan"] = "Vapid",
    ["moonbeam"] = "Declasse",
    ["moonbeam2"] = "Declasse",
    ["paradise"] = "Bravado",
    ["rumpo"] = "Bravado",
    ["rumpo3"] = "Bravado",
    ["surfer"] = "BF",
    ["youga"] = "Bravado",
    ["youga2"] = "Bravado",
    ["asea"] = "Declasse",
    ["cognoscenti"] = "Enus",
    ["emperor"] = "Cheval",
    ["glendale"] = "Benefactor",
    ["intruder"] = "Karin",
    ["premier"] = "Declasse",
    ["primo2"] = "Albany",
    ["regina"] = "Dundreary",
    ["cogcabri"] = "Enus",
    ["schafter2"] = "Benefactor",
    ["stretch"] = "Dundreary",
    ["superd"] = "Enus",
    ["tailgater"] = "Obey",
    ["warrener"] = "Vulcar",
    ["washington"] = "Albany",
    ["baller2"] = "Gallivanter",
    ["baller3"] = "Gallivanter",
    ["cavalcade2"] = "Albany",
    ["contender"] = "Vapid",
    ["dubsta"] = "Benefactor",
    ["dubsta2"] = "Benefactor",
    ["fq2"] = "Fathom",
    ["granger"] = "Declasse",
    ["gresley"] = "Bravado",
    ["huntley"] = "Enus",
    ["landstalker"] = "Dundreary",
    ["mesa"] = "Canis",
    ["mesa3"] = "Canis",
    ["patriot"] = "Mammoth",
    ["radi"] = "Vapid",
    ["rocoto"] = "Obey",
    ["seminole"] = "Canis",
    ["xls"] = "Benefactor",
    ["btype"] = "Albany",
    ["btype3"] = "Albany",
    ["btype2"] = "Albany",
    ["casco"] = "Lampadati",
    ["coquette2"] = "Invetero",
    ["manana"] = "Albany",
    ["monroe"] = "Pegassi",
    ["pigalle"] = "Lampadati",
    ["stinger"] = "Grotti",
    ["stingergt"] = "Grotti",
    ["feltzer3"] = "Benefactor",
    ["ztype"] = "Truffade",
    ["bifta"] = "BF",
    ["bfinjection"] = "BF",
    ["blazer"] = "Nagasaki",
    ["blazer4"] = "Nagasaki",
    ["brawler"] = "Coil",
    ["dubsta3"] = "Benefactor",
    ["dune"] = "MTL",
    ["guardian"] = "Vapid",
    ["rebel2"] = "Karin",
    ["sandking"] = "Vapid",
    ["monster"] = "Vapid",
    ["trophytruck"] = "Vapid",
    ["trophytruck2"] = "Vapid",
    ["cogcabrio"] = "Enus",
    ["exemplar"] = "Dewbauchee",
    ["f620"] = "Ocelot",
    ["felon"] = "Lampadati",
    ["felon2"] = "Lampadati",
    ["jackal"] = "Ocelot",
    ["oracle2"] = "Übermacht",
    ["sentinel"] = "Übermacht",
    ["sentinel2"] = "Übermacht",
    ["windsor"] = "Lampadati",
    ["windsor"] = "Enus",
    ["windsor2"] = "Enus",
    ["zion"] = "Übermacht",
    ["zion2"] = "Übermacht",
    ["ninef"] = "Obey",
    ["ninef2"] = "Obey",
    ["alpha"] = "Albany",
    ["banshee"] = "Bravado",
    ["bestiagts"] = "Grotti",
    ["buffalo"] = "Bravado",
    ["buffalo2"] = "Bravado",
    ["carbonizzare"] = "Grotti",
    ["comet2"] = "Pfister",
    ["coquette"] = "Invetero",
    ["tampa2"] = "Declasse",
    ["elegy2"] = "Annis",
    ["feltzer2"] = "Benefactor",
    ["furoregt"] = "Lampadati",
    ["fusilade"] = "Schyster",
    ["jester"] = "Dinka",
    ["jester2"] = "Dinka",
    ["khamelion"] = "Hijak",
    ["kuruma"] = "Karin",
    ["lynx"] = "Ocelot",
    ["mamba"] = "Declasse",
    ["massacro"] = "Dewbauchee",
    ["massacro2"] = "Dewbauchee",

    ["omnis"] = "Obey",
    ["penumbra"] = "Maibatsu",
    ["rapidgt"] = "Dewbauchee",
    ["rapidgt2"] = "Dewbauchee",
    ["schafter3"] = "Benefactor",
    ["seven70"] = "Dewbauchee",
    ["sultan"] = " Karin",
    ["surano"] = "Benefactor",
    ["tropos"] = "Lampadati",
    ["verlierer2"] = "Bravado",
    ["adder"] = "Truffade",
    ["banshee2"] = "Bravado",
    ["bullet"] = "Vapid",
    ["cheetah"] = "Grotti",
    ["entityxf"] = "Överflöd",
    ["sheava"] = "Emperor",
    ["fmj"] = "Vapid",
    ["infernus"] = "Pegassi",
    ["osiris"] = "Pegassi",
    ["pfister811"] = "Pfister",
    ["le7b"] = "Annis",
    ["reaper"] = "Pegassi",
    ["sultanrs"] = "Karin",
    ["t20"] = "Progen",
    ["turismor"] = "Grotti",
    ["tyrus"] = "Progen",
    ["vacca"] = "Pegassi",
    ["voltic"] = "Coil",
    ["prototipo"] = "Grotti",
    ["zentorno"] = "Pegassi",
    ["AKUMA"] = "Dewbauchee",
    ["avarus"] = "Liberty City Cycles",
    ["bagger"] = "Western Motorcycle Company",
    ["bati"] = "Pegassi",
    ["bati2"] = "Pegassi",
    ["bf400"] = "Nagasaki",
   --Custom Cars
    ["widebodyled"] = "Dodge Charger Widebody",
    ["lrrr"] = "1973 Land Rover Range Rover",
    ["maj935"] = "1978 Porsche 935 Moby Dick",
    ["84rx7k"] = "1984 Mazda RX-7 Stanced Version",
    ["miata3"] = "1989 Mazda Miata NA",
    ["na1"] = "1992 Honda NSX-R (NA1)",
    ["sl500"] = "1995 Mercedes-Benz SL500",
    ["gtr96"] = "1996 McLaren F1 GTR",
    ["svx"] = "1996 Subaru Alcyone SVX",
    ["m3e36"] = "1997 BMW M3 E36",
    ["safari97"] = "1997 Nissan Patrol Super Safari Y60",
    ["s14"] = "1998 Nissan Silvia K",
    ["toysupmk4"] = "1998 Toyota Supra Turbo (A80)",
    ["99viper"] = "1999 Dodge Viper GTS ACR",
    ["esprit02"] = "2002 Lotus Esprit V8",
    ["dragfd"] = "2002 Mazda RX-7 FD Drag",
    ["cgt"] = "2003 Porsche Carrera GT (980)",
    ["760li04"] = "2004 BMW 760Li Individual (E66/PFL)",
    ["subwrx"] = "2004 Subaru Impreza WRX STI",
    ["fgt"] = "2005 Ford GT",
    ["m3e92"] = "2008 BMW M3 e92",
    ["logan"] = "2008 Dacia Logan",
    ["subisti08"] = "2008 Subaru WRX STi",
    ["czr1"] = "2009 Chevrolet Corvette ZR1",
    ["09tahoe"] = "2009 Chevrolet Tahoe",
    ["lp670sv"] = "2009 Lamborghini Murcielago LP 670-4 SV",
    ["ttrs"] = "2010 Audi TT RS",
    ["jeep2012"] = "2012 Jeep Wrangler",
    ["mbc63"] = "2012 Mercedes-Benz C63 AMG Coupe Black Series",
    ["ast"] = "2013 Aston Martin Vanquish",
    ["r8ppi"] = "2013 Audi R8 V10",
    ["lp700r"] = "2013 Lamborghini Aventador LP700-4 Roadster",
    ["g65"] = "2013 Mercedes-Benz G65 AMG",
    ["c7"] = "2014 Chevrolet Corvette C7 Stingray",
    ["is350mod"] = "2014 Lexus IS 350",
    ["s500w222"] = "2014 Mercedes-Benz S500 W222",
    ["i8"] = "2015 BMW i8 (I12)",
    ["m3f80"] = "2015 BMW M3 (F80)",
    ["m4f82"] = "2015 BMW M4 F82",
    ["15tahoe"] = "2015 Chevrolet Tahoe",
    ["ram2500"] = "2015 Dodge RAM 2500",
    ["fct"] = "2015 Ferrari California T",
    ["laferrari"] = "2015 Ferrari LaFerrari",
    ["srt8"] = "2015 Jeep SRT-8",
    ["rcf"] = "2015 Lexus RCF",
    ["golfgti7"] = "2015 Volkswagen Golf GTI MK7",
    ["rs6"] = "2016 Audi RS6 C7",
    ["sq72016"] = "2016 Audi SQ7",
    ["m2"] = "2016 BMW M2", 
    ["cats"] = "2016 Cadillac ATS-V Coupe", 
    ["16challenger"] = "2016 Dodge Challenger", 
    ["16charger"] = "2016 Dodge Charger", 
    ["675lt"] = "2016 McLaren 675LT Coupe", 
    ["rsvr16"] = "2016 Range Rover Sport SVR",
    ["dawnonyx"] = "2016 Rolls-Royce Dawn Onyx",
    ["models"] = "2016 Tesla Model S P90D",
    ["teslax"] = "2016 Tesla Model X P90D",
    ["vxr"] = "2016 Toyota Land Cruiser VXR",
    ["passat"] = "2016 Volkswagen Passat B8",
    ["aaq4"] = "2017 Audi A4 Quattro ABT",
    ["camrs17"] = "2017 Chevrolet Camaro RS",
    ["trx"] = "2017 Dodge RAM 1500 Rebel TRX",
    ["gt17"] = "2017 Ford GT",
    ["raptor2017"] = "2017 Ford Raptor",
    ["it18"] = "2017 Italdesign Zerouno",
    ["agerars"] = "2017 Koenigsegg Agera RS",
    ["720s"] = "2017 McLaren 720S",
    ["gtr"] = "2017 Nissan GTR",
    ["nissantitan17"] = "2017 Nissan Titan Warrior",
    ["gtrc"] = "2017 R35 Nissan GTR Convertible",
    ["teslapd"] = "2017 Tesla Model S",
    ["bmci"] = "2018 BMW M5 F90",
    ["demon"] = "2018 Dodge Challenger SRT Demon",
    ["f812"] = "2018 Ferrari 812 Superfast",
    ["fk8"] = "2018 Honda Civic Type-R (FK8)",
    ["trhawk"] = "2018 Jeep Grand Cherokee",
    ["pcs18"] = "2018 Porsche Cayenne S",
    ["rrphantom"] = "2018 Rolls-Royce Phantom VIII",
    ["tmodel"] = "2018 Tesla Model 3",
    ["cam8tun"] = "2018 Toyota Camry XSE",
    ["amarok"] = "2018 Volkswagen Amarok V6",
    ["z419"] = "2019 BMW Z4 M40i",
    ["senna"] = "2019 McLaren Senna",
    ["e400"] = "2019 Mercedes-Benz E400 Coupe 4matic (C238)",
    ["pm19"] = "2019 Porsche Macan Turbo",
    ["gsxr19"] = "2019 Suzuki GSX-R1000R",
    ["katana"] = "2019 Suzuki Katana",
    ["q820"] = "2020 Audi Q8 50TDI",
    ["r820"] = "2020 Audi R8",
    ["rs72020"] = "2020 Bentley Continental GT Convertible",
    ["bolide"] = "2020 Bugatti Bolide",
    ["2020ss"] = "2020 Chevrolet Camaro SS",
    ["stingray"] = "2020 Chevrolet Corvette C8 Stingray",
    ["mcst"] = "2020 McLaren Speedtail",
    ["c6320"] = "2020 Mercedes-AMG C63s",
    ["amggtrr20"] = "2020 Mercedes-Benz AMG GT-R Roadster",
    ["taycan"] = "2020 Porsche Taycan Turbo S",
    ["tr22"] = "2020 Tesla Roadster",
    ["cesc21"] = "2021 Cadillac Escalade",
    ["tahoe21"] = "2021 Chevrolet Tahoe RST",
    ["wildtrak"] = "2021 Ford Bronco Wildtrak",
    ["yFe458i1"] = "458 Italia",
    ["yFe458i2"] = "458 Speciale",
    ["yFe458s2"] = "458 Speciale Aperta",
    ["yFe458s1"] = "458 Spider",
    ["tltypes"] = "Acura TL Type-S",
    ["amdbx"] = "Aston Martin DBX Carbon Edition",
    ["lummaq8"] = "Audi Q8 luuma",
    ["bbentayga"] = "Bentley Bentayga",
    ["vanzwbm3"] = "BMW M3 Widebody",
    ["m6f13"] = "BMW M6 F13 Shadow Line",
    ["x5e53"] = "BMW X5 E53 2005 Sport Package",
    ["x6m"] = "BMW X6M F16",
    ["corvettec5z06"] = "Chevrolet Corvette C5 Z06",
    ["1310"] = "Dacia 1310 2001",
    ["cutlass"] = "Dacia logan pickup",
    ["sandero"] = "Dacia Sandero 2014",
    ["stepway"] = "Dacia Sandero Stepway 2014",
    ["raid"] = "Dodge Challenger Raid",
    ["chr20"] = "Dodge Charger Hellcat Widebody 2021", 
    ["srt4"] = "Dodge Neon SRT-4", 
    ["488"] = "Ferrari 488 Spider", 
    ["mig"] = "Ferrari Enzo", 
    ["yFeF12T"] = "Ferrari F12 TRS Roadster", 
    ["f430s"] = "Ferrari F430 Scuderia", 
    ["yFeF12A"] = "Ferrari F60 America", 
    ["fxxk"] = "Ferrari FXX-K Hybrid Hypercar", 
    ["honcrx91"] = "Honda CRX SiR 1991", 
    ["ap2"] = "Honda S2000 AP2", 
    ["fpacehm"] = "Jaguar F-pace 2017 Hamann Edition",
    ["jeepreneg"] = "Jeep Renegade",  
    ["regera"] = "Koenigsegg Regera", 
    ["svj63"] = "Lamborghini Aventador SVJ", 
    ["huracanst"] = "Lamborghini Huracan Super Trofeo",
    ["lambose"] = "Lamborghini Sesto Elemento",
    ["urus"] = "Lamborghini Urus",
    ["veneno"] = "Lamborghini Veneno",
    ["gs350"] = "Lexus GS 350",
    ["levante"] = "Maserati Levante",
    ["na6"] = "Mazda MX-5 Miata (NA6C)",
    ["majfd"] = "Mazda RX-7 FD",
    ["fc3s"] = "Mazda RX7 FC3S",
    ["650s"] = "McLaren 650S Coupe",
    ["mp412c"] = "McLaren MP4-12C",
    ["gl63"] = "Mercedes-Benz GL63 AMG",
    ["v250"] = "Mercedes-Benz V-class 250 Bluetec LWB",
    ["fto"] = "Mitsubishi FTO GP Version-R",
    ["cp9a"] = "Mitsubishi Lancer Evo VI T.M.E (CP9A)",
    ["180sx"] = "Nissan 180SX Type-X",
    ["z32"] = "Nissan 300ZX Z32",
    ["ns350"] = "Nissan 350z Stardast",
    ["nzp"] = "Nissan 370z Pandem",
    ["maj350"] = "Nissan Fairlady Z Z33",
    ["nis15"] = "Nissan Silvia S15 Spec-R",
    ["skyline"] = "Nissan Skyline GT-R (BNR34)",
    ["yPG205t16A"] = "Peugeot 205 Rally",
    ["yPG205t16B"] = "Peugeot 205 Turbo 16",
    ["718caymans"] = "Porsche 718 Cayman S",
    ["regalia"] = "Quartz Regalia 723",
    ["rrevoque"] = "Range Rover Evoque",
    ["rrst"] = "Range Rover Vogue Startech",
    ["twingo"] = "Renault Twingo I",
    ["rculi"] = "Rolls Royce Cullinan",
    ["wraith"] = "Rolls-Royce Wraith",
    ["p90d"] = "Tesla Model X Performance",
    ["mk2100"] = "Toyota Mark II JZX100",
    ["vwcaddy"] = "Volkswagen Caddy",
    ["vwr"] = "Volkswagen Scirocco R 2011",
    ["wmfenyr"] = "W-Motors Fenyr Supersport",
    ["lykan"] = "W-Motors Lykan HyperSport",
    ["dredurango"] = "Durango Widebody",
    ["trophyxurus"] = "Lamborghini Urus Widebody",
    ["m5per"] = "BMW M5 Animated",
    ["m4comp"] = "BMW M4 Animated",
    ["lc500"] = "Lexus LC500 Liberty Walk",
    ["agtr35"] = "GTR R35 - RICK AND MORTY Edition", 
    ["bbdawn"] = "Rolls Royce Dawn Mansory Animated", 
    ["rmodg65"] = "Mercedes-Benz G65",
    ["brabus500"] = "Mercedes-Benz Brabus 500",
    ["baller6"] = "Mansory Range Rover",
    ["rmodrover"] = "Mansory Range Rover",
    ["rrab"] = "Mansory Range Rover",
} 
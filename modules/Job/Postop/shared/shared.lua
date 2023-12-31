Config = {}

Config.PostOP = {

	PositionVestiaire = {
        {coords = vector3(65.435775756836,127.50398254395,79.188117980957-0.9)},
    },
}

config = {

    clothsgopost = {
        men = {
            {
                grade = "Tenue de postier",
                cloths = {
                    ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                    ['torso_1'] = 401,   ['torso_2'] = 1,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 19,
                    ['pants_1'] = 0,   ['pants_2'] = 2,
                    ['shoes_1'] = 2,   ['shoes_2'] = 0,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['ears_1'] = 2,     ['ears_2'] = 0,
                    ['mask_1'] = 0,     ['mask_2'] = 0,
                    ['bproof_1'] = 0,     ['bproof_2'] = 0
                },
            },
        },
        women = {

            {
                grade = "Tenue de postière",
                cloths = {
                    ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
                    ['torso_1'] = 432,   ['torso_2'] = 8,
                    ['decals_1'] = 0,   ['decals_2'] = 0,
                    ['arms'] = 3,
                    ['pants_1'] = 41,   ['pants_2'] = 0,
                    ['shoes_1'] = 52,   ['shoes_2'] = 0,
                    ['chain_1'] = 0,    ['chain_2'] = 0,
                    ['ears_1'] = -1,     ['ears_2'] = 0,
                    ['mask_1'] = 0,     ['mask_2'] = 0,
                    ['bproof_1'] = 0,     ['bproof_2'] = 0
                },
            },
        },
    }
}


-- Delivery Base Location
Config.Base = {
	-- Blip coords
	coords  = {x = 65.700263977051, y = 123.47109222412, z = 79.1572265625},
	-- Van mark 
	van     = {x = 62.916690826416, y = 127.07610321045, z = 79.205413818359},
	-- Truck mark 
	truck   = {x = 61.223461151123, y = 125.54199981689, z = 79.230377197266},
	-- Return vehicle mark 
	retveh  = {x = 63.127452850342, y = 117.20336914062, z = 79.096061706543},
	-- Return vehicle mark 
	retveh2  = {x = 60.835571289062, y = 118.19759368896, z = 79.101066589355},
	-- Delete vehicle mark 
	deleter = {x = 64.832908630371, y = 121.01400756836, z = 79.126708984375},
	-- Heading
	heading = 245.0,
}
Config.DecorCode = 0

-- Min and max deliveries jobs
Config.Deliveries = {
	min = 5,
	max = 7,
}

Config.Rewards = {
	van     = 150,
	truck   = 180,
}

Config.Models = {
	van     = 'nspeedo',      -- Chinese car Wuling hong guang S1
	truck   = 'boxville2',
	vehDoor = {
		-- If this value is true, it will open the vehicle trunk when player remove the goods from the vehicle.
		usingTrunkForVan   = true,  -- If you using original game vehicle, set this to false
		usingTrunkForTruck = false,
	},
}

-- Scale of the arrow, usually not modified it
Config.Scales = {
	van     = 3.0,
	truck   = 4.5,
}

-- Rental money of the vehicles
Config.Safe = {
	van     = 250,
	truck   = 350,
}

-- Random parking locations
Config.ParkingSpawns = {

	{x = 75.318893432617, y = 121.94622802734, z = 78.982261657715, h = 159.99},
	{x = 71.904747009277, y = 123.05207061768, z = 78.972038269043, h = 160.750},
}

Config.DeliveryLocationsVan = {
	{Item1 = {x = -51.95, y = -1761.67, z = 28.89},		Item2 = {x = -41.15, y = -1751.66, z = 29.42}},
	{Item1 = {x = 369.38, y = 317.44, z = 103.21},		Item2 = {x = 375.08, y = 333.65, z = 103.57}},
	{Item1 = {x = -702.38, y = -920.38, z = 18.8},		Item2 = {x = -705.7, y = -905.46, z = 19.22}},
	{Item1 = {x = -1225.49, y = -893.3, z = 12.13},		Item2 = {x = -1223.77, y = -912.26, z = 12.33}},
	{Item1 = {x = -1506.82, y = -383.06, z = 40.64},	Item2 = {x = -1482.29, y = -378.95, z = 40.16}},
	{Item1 = {x = 1149.13, y = -985.08, z = 45.64},		Item2 = {x = 1131.86, y = -979.32, z = 46.42}},
	{Item1 = {x = 1157.19, y = -331.77, z = 68.64},		Item2 = {x = 1163.79, y = -314.6, z = 69.21}},
	{Item1 = {x = -1145.42, y = -1590.97, z = 4.06},	Item2 = {x = -1150.31, y = -1601.7, z = 4.39}},
	{Item1 = {x = 48.18, y = -992.62, z = 29.03},		Item2 = {x = 38.41, y = -1005.3, z = 29.48}},
	{Item1 = {x = 370.05, y = -1036.4, z = 28.99},		Item2 = {x = 376.7, y = -1028.82, z = 29.34}},
	{Item1 = {x = 785.95, y = -761.67, z = 26.33},		Item2 = {x = 797.0, y = -757.31, z = 26.89}},
	{Item1 = {x = 41.53, y = -138.21, z = 55.08},		Item2 = {x = 50.96, y = -135.49, z = 55.2}},
	{Item1 = {x = 106.8, y = 304.21, z = 109.81},		Item2 = {x = 90.86, y = 298.51, z = 110.21}},
	{Item1 = {x = -565.73, y = 268.54, z = 82.55},		Item2 = {x = -562.25, y = 283.98, z = 82.18}},
}

-- Random delivery locations of truck
Config.DeliveryLocationsTruck = {
	{Item1 = {x = -1395.82, y = -653.76, z = 28.91},	Item2 = {x = -1413.43, y = -635.47, z = 28.67}},
	{Item1 = {x = 164.18, y = -1280.21, z = 29.38},		Item2 = {x = 136.5, y = -1278.69, z = 29.36}},
	{Item1 = {x = 75.71, y = 164.41, z = 104.93},		Item2 = {x = 78.55, y = 180.44, z = 104.63}},
	{Item1 = {x = -226.62, y = 308.87, z = 92.4},		Item2 = {x = -229.54, y = 293.59, z = 92.19}},
	{Item1 = {x = -365.87, y = 297.27, z = 85.04},		Item2 = {x = -370.5, y = 277.98, z = 86.42}},
	{Item1 = {x = -403.95, y = 196.11, z = 82.67},		Item2 = {x = -395.17, y = 208.6, z = 83.59}},
	{Item1 = {x = -412.26, y = 297.95, z = 83.46},		Item2 = {x = -427.08, y = 294.19, z = 83.23}},
	{Item1 = {x = -606.23, y = -901.52, z = 25.39},		Item2 = {x = -592.48, y = -892.76, z = 25.93}},
	{Item1 = {x = -837.03, y = -1142.46, z = 7.44},		Item2 = {x = -841.89, y = -1127.91, z = 6.97}},
	{Item1 = {x = -1061.56, y = -1382.19, z = 5.44},	Item2 = {x = -1039.38, y = -1396.88, z = 5.55}},
	{Item1 = {x = 156.41, y = -1651.21, z = 29.53},		Item2 = {x = 169.11, y = -1633.38, z = 29.29}},
	{Item1 = {x = 168.13, y = -1470.07, z = 29.37},		Item2 = {x = 175.78, y = -1461.16, z = 29.24}},
	{Item1 = {x = 118.99, y = -1486.21, z = 29.38},		Item2 = {x = 143.54, y = -1481.18, z = 29.36}},
	{Item1 = {x = -548.34, y = 308.19, z = 83.34},		Item2 = {x = -546.6, y = 291.46, z = 83.02}},
	{Item1 = {x = -232.86643981934, y = -1162.6334228516, z = 22.798751831055},	Item2 = {x = -219.16247558594, y = -1162.3824462891, z =23.022256851196}},
	{Item1 = {x = -581.94671630859, y = -1126.6319580078, z = 22.000988006592},	Item2 = {x = -596.96026611328, y = -1146.2795410156, z = 22.324245452881}},
	{Item1 = {x = -1398.8270263672, y = -1029.4792480469, z = 4.1798520088196},	Item2 = {x = -1384.6279296875, y = -1058.0469970703, z = 4.3515768051147}},
	{Item1 = {x = -1560.2521972656, y = -900.65649414062, z = 9.9447574615479},	Item2 = {x = -1534.2557373047, y = -905.70928955078, z = 10.161512374878}},
	{Item1 = {x = -1736.7337646484, y = -731.9873657226, z = 10.240425109863},	Item2 = {x = -1753.3856201172, y = -724.41314697266, z = 10.382031440735}},
	{Item1 = {x = -2080.2980957031, y = -334.9362487793, z = 12.94113445282},	Item2 = {x = -2073.361328125, y = -326.58828735352, z = 13.315786361694}},
	{Item1 = {x = -2166.8791503906, y = -385.9045715332, z = 13.079325675964},	Item2 = {x = -2194.3098144531, y = -388.27545166016, z = 13.470415115356}},
	{Item1 = {x = -1251.1895751953, y = -864.59051513672, z = 12.228151321411},	Item2 = {x = -1201.3919677734, y = -884.64208984375, z = 13.257717132568}},
	{Item1 = {x = -601.93640136719, y = -672.22869873047, z = 31.667350769043},	Item2 = {x = -655.61944580078, y = -677.29516601562, z = 31.523031234741}},
	{Item1 = {x = -495.47439575195, y = -674.80108642578, z = 32.797500610352},	Item2 = {x = -512.53814697266, y = -682.24078369141, z = 33.184474945068}},
	{Item1 = {x = -1006.0909423828, y = -2735.8205566406, z = 13.592992782593},	Item2 = {x = -1034.9705810547, y = -2751.5270996094, z = 14.597829818726}},
	{Item1 = {x = -694.833984375, y = -2317.4104003906, z = 12.847060203552},	Item2 = {x = -703.78985595703, y = -2277.6003417969, z = 13.455382347107}},
	{Item1 = {x = -554.88385009766, y = -2233.3002929688, z = 5.9711365699768},	Item2 = {x = -538.34741210938, y = -2228.9145507812, z = 6.394024848938}},
	{Item1 = {x = -388.31066894531, y = -2165.2373046875, z = 10.141456604004},	Item2 = {x = -421.80889892578, y = -2170.1564941406, z = 11.338561058044}},
	{Item1 = {x = -240.73536682129, y = -1864.568359375, z = 28.603691101074},	Item2 = {x = -276.76135253906, y = -1917.0496826172, z = 29.946046829224}},
	{Item1 = {x = 148.57360839844, y = -1549.8546142578, z = 28.965814590454},	Item2 = {x = 146.57450866699, y = -1522.2766113281, z = 29.141620635986}},
	{Item1 = {x = 153.67448425293, y = -1641.5520019531, z = 29.114820480347},	Item2 = {x = 168.11630249023, y = -1632.0659179688, z = 29.29167175293}},
	{Item1 = {x = 227.19163513184, y = -1517.7825927734, z = 28.965444564819},	Item2 = {x = 226.1079864502, y = -1538.7801513672, z = 29.340042114258}},
	{Item1 = {x = 278.1389465332, y = -1241.9299316406, z = 29.01831817627},	Item2 = {x = 287.87573242188, y = -1268.4361572266, z = 29.440746307373}},
	{Item1 = {x = 347.20803833008, y = -1111.3200683594, z = 29.229820251465},	Item2 = {x = 359.54888916016, y = -1108.6840820312, z = 29.406433105469}},
	{Item1 = {x = 29.627214431763, y = -1111.1673583984, z = 29.127639770508},	Item2 = {x = 15.485757827759, y = -1104.6293945312, z = 29.797031402588}},
	{Item1 = {x = -62.208095550537, y = -1116.61328125, z = 26.256366729736},	Item2 = {x = -43.428146362305, y = -1109.6750488281, z = 26.438089370728}},
	{Item1 = {x = 20.965995788574, y = -743.48217773438, z = 44.021518707275},	Item2 = {x = 5.9168243408203, y = -707.26452636719, z = 45.973041534424}},
	{Item1 = {x = 277.36853027344, y = -608.28637695312, z = 42.819259643555},	Item2 = {x = 313.01232910156, y = -584.82843017578, z = 43.261219024658}},                   
	{Item1 = {x = 330.46643066406, y = -244.48071289062, z = 53.707714080811},	Item2 = {x = 325.00033569336, y = -229.93984985352, z = 54.221172332764}},
	{Item1 = {x = 611.40521240234, y = 30.631282806396, z = 89.286499023438},	Item2 = {x = 620.16400146484, y = 18.134574890137, z = 87.906623840332}},
	{Item1 = {x = 789.17834472656, y = -70.358963012695, z = 80.416709899902},	Item2 = {x = 814.38916015625, y = -92.943000793457, z = 80.599113464355}},
	{Item1 = {x = 1155.7963867188, y = -284.65414428711, z = 68.698684692383},	Item2 = {x = 1170.1962890625, y = -290.35620117188, z = 69.021766662598}},
	{Item1 = {x = 1248.9682617188, y = -335.51351928711, z = 68.904396057129},	Item2 = {x = 1240.7478027344, y = -367.55645751953, z = 69.082221984863}},
	{Item1 = {x = 820.73150634766, y = 567.86822509766, z = 125.60359191895},	Item2 = {x = 819.00390625, y = 541.49975585938, z = 125.92021942139}},
	{Item1 = {x = 1211.0832519531, y = 1834.1678466797, z = 78.873039245605},	Item2 = {x = 1216.2556152344, y = 1845.6550292969, z = 78.907112121582}},
	{Item1 = {x = 821.76684570312, y = 2195.5732421875, z = 51.992202758789},	Item2 = {x = 803.93304443359, y = 2174.9477539062, z = 53.076499938965}},
	{Item1 = {x = 333.44396972656, y = 2585.9973144531, z = 43.585098266602},	Item2 = {x = 365.60614013672, y = 2570.9050292969, z = 43.526355743408}},
	{Item1 = {x = 207.8286895752, y = 3034.6645507812, z = 42.779628753662},	Item2 = {x = 195.67964172363, y = 3030.9736328125, z = 43.886657714844}},
	{Item1 = {x = 1699.064453125, y = 3581.7055664062, z = 35.332092285156},	Item2 = {x = 1695.3753662109, y = 3594.0102539062, z = 35.620964050293}},
	{Item1 = {x = 1829.9089355469, y = 3657.1372070312, z = 33.926582336426},	Item2 = {x = 1839.6654052734, y = 3672.8356933594, z = 34.276721954346}},
	{Item1 = {x = 1940.0291748047, y = 3718.7827148438, z = 32.137275695801},	Item2 = {x = 1934.0639648438, y = 3727.8908691406, z = 32.844421386719}},
	{Item1 = {x = 1847.7707519531, y = 3884.619140625, z = 33.064651489258},	Item2 = {x = 1862.5124511719, y = 3858.7822265625, z = 36.271591186523}},
	{Item1 = {x = 2465.8088378906, y = 4059.7939453125, z = 37.510269165039},	Item2 = {x = 2456.8742675781, y = 4058.2021484375, z = 38.064723968506}},
	{Item1 = {x = 2582.5085449219, y = 4275.32421875, z = 41.758014678955},		Item2 = {x = 2566.9172363281, y = 4273.2548828125, z = 41.988971710205}},
	{Item1 = {x = 1729.7741699219, y = 6403.9150390625, z = 34.364448547363},	Item2 = {x = 1732.2867431641, y = 6408.8671875,z = 35.000602722168}},
	{Item1 = {x = 427.23092651367, y = 6540.4760742188, z = 27.576591491699},	Item2 = {x = 413.11370849609, y = 6539.9350585938, z = 27.72611618042}},
	{Item1 = {x = 142.10076904297, y = 6629.1748046875, z = 31.504835128784},	Item2 = {x = 161.69148254395, y = 6636.4399414062, z = 31.566635131836}},
	{Item1 = {x = 104.94412994385, y = 6378.033203125, z = 31.04907989502},		Item2 = {x = 93.414855957031, y = 6356.775390625, z = 31.375864028931}},
	{Item1 = {x = -140.15948486328, y = 6313.5004882812, z = 31.341808319092},	Item2 = {x = -156.47805786133, y = 6328.9619140625, z = 31.580389022827}},
	{Item1 = {x = -312.38314819336, y = 6092.2329101562, z = 31.267797470093},	Item2 = {x = -324.07293701172, y = 6075.1557617188, z = 31.237003326416}},
	{Item1 = {x = -564.64324951172, y = 5362.751953125, z = 70.038017272949},	Item2 = {x = -553.13323974609, y = 5348.7221679688, z = 74.743064880371}},
	{Item1 = {x = -2209.9401855469, y = 4280.7231445312, z = 47.880935668945},	Item2 = {x = -2188.0729980469, y = 4250.7822265625, z = 48.939796447754}},
	{Item1 = {x = -2564.9208984375, y = 2320.2824707031, z = 32.882362365723},	Item2 = {x = -2544.5537109375, y = 2316.8032226562, z = 33.21586227417}},                   
	{Item1 = {x = -3171.9030761719, y = 1296.9981689453, z = 14.327160835266},	Item2 = {x = -3190.498046875, y = 1297.5681152344, z = 19.071857452393}},
	{Item1 = {x = -3226.0053710938, y = 1085.5240478516, z = 10.513790130615},	Item2 = {x = -3246.8781738281, y = 1069.1644287109, z = 11.028949737549}},
	{Item1 = {x = -3031.7158203125, y = 737.60150146484, z = 23.880704879761},	Item2 = {x = -3019.1298828125, y = 746.18969726562, z = 27.587623596191}},
	{Item1 = {x = -2983.0593261719, y = 611.99255371094, z = 19.88459777832},	Item2 = {x = -2977.5849609375, y = 609.31317138672, z = 20.244514465332}},
	{Item1 = {x = -2968.2243652344, y = 443.45938110352, z = 15.05033493042},	Item2 = {x = -2965.4924316406, y = 426.83026123047, z = 15.243488311768}},
	{Item1 = {x = -3030.5676269531, y = 100.33959197998, z = 11.435803413391},	Item2 = {x = -3023.0178222656, y = 82.00479888916, z = 11.608058929443}},
	{Item1 = {x = -1535.7731933594, y = -182.66734313965, z = 55.071186065674},	Item2 = {x = -1560.2016601562, y = -207.75024414062, z = 55.505867004395}},
	{Item1 = {x = -1293.7825927734, y = 284.19024658203, z = 64.623046875},		Item2 = {x = -1275.3416748047, y = 313.15048217773, z = 65.511779785156}},
	{Item1 = {x = -1077.7659912109, y = 459.21868896484, z = 77.33805847168},	Item2 = {x = -1088.2014160156, y = 479.705078125, z = 81.320648193359}},
	{Item1 = {x = -1239.2652587891, y = 484.48815917969, z = 92.891326904297},	Item2 = {x = -1234.1518554688, y = 491.46475219727, z = 93.255668640137}},
	{Item1 = {x = -1154.9849853516, y = 550.02221679688, z = 100.93518066406},	Item2 = {x = -1146.6314697266, y = 546.37951660156, z = 101.50820159912}},
	{Item1 = {x = -919.4169921875, y = 579.27551269531, z = 99.365127563477},	Item2 = {x = -905.73376464844, y = 586.45208740234, z = 100.99086761475}},
	{Item1 = {x = -528.15161132812, y = 528.74780273438, z = 111.66181182861},	Item2 = {x = -527.57684326172, y = 518.84124755859, z = 112.93557739258}},
	{Item1 = {x = -560.111328125, y = 681.64624023438, z = 145.23709106445},	Item2 = {x = -551.92193603516, y = 686.64935302734, z = 146.07446289062}},
	{Item1 = {x = -609.68536376953, y = 867.90216064453, z = 213.58085632324},	Item2 = {x = -597.75305175781, y = 852.14349365234, z = 211.37911987305}},
	{Item1 = {x = 896.0146484375, y = -3182.4370117188, z = 5.7237639427185},	Item2 = {x = 861.56182861328, y = -3184.4204101562, z = 6.0349555015564}},
	{Item1 = {x = 220.62992858887, y = 174.86604309082, z = 105.09813690186},	Item2 = {x = 227.6083984375, y = 165.14645385742, z = 105.29061126709}},
	{Item1 = {x = 416.95111083984, y = 309.90539550781, z = 102.8187789917},	Item2 = {x = 412.35568237305, y = 314.05172729492, z = 103.02073669434}},
	{Item1 = {x = 1146.0288085938, y = -375.900390625, z = 66.872123718262},	Item2 = {x = 1153.8801269531, y = -386.04461669922, z = 67.333679199219}},
	{Item1 = {x = 1153.8157958984, y = -333.28384399414, z = 68.531326293945},	Item2 = {x = 1159.7822265625, y = -320.85321044922, z = 69.205139160156}},
	{Item1 = {x = -1244.578125, y = -1035.3779296875, z = 8.4136190414429},		Item2 = {x = -1234.9919433594, y = -1056.4206542969, z = 8.4182929992676}},
	{Item1 = {x = -1349.6864013672, y = -1203.1223144531, z = 4.2835898399353},	Item2 = {x = -1348.9573974609, y = -1222.251953125, z = 5.9427213668823}},
	{Item1 = {x = -1610.5675048828, y = -1053.8615722656, z = 12.876194000244},	Item2 = {x = -1608.2292480469, y = -1072.1173095703, z = 13.018492698669}},
}

Config.VanGoodsPropNames = {
	"prop_cs_cardbox_01",
    "prop_cardbordbox_02a",
}

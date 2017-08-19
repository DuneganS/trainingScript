--Mission script by Marc "MBot" Marbot - 08Nov2013


do

	local Target = {
		type = "MiG-29A",
		number = 1,
		skill = "Average",
		altitude = 5000,
		armament = "gun"
	}

	local startWP = trigger.misc.getZone("WP1")
	local endWP = trigger.misc.getZone("WP2")

	local TargetDB = {
		["Mirage 2000-5"] = {
			skin = "ec1_2  spa103 `cigogne de fonck`",
			["gun"] = {
				["fuel"] = "3160",
                ["flare"] = 16,
                ["chaff"] = 112,
                ["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = {},
				["fuel"] = "3160",
                ["flare"] = 16,
                ["chaff"] = 112,
                ["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = {
					[1] = 
					{
						["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
					}, -- end of [1]
					[9] = 
					{
						["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
					}, -- end of [9]
				},
				["fuel"] = "3160",
                ["flare"] = 16,
                ["chaff"] = 112,
                ["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = {
					[1] = 
					{
						["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}",
					}, -- end of [2]
					[9] = 
					{
						["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
					}, -- end of [9]
					[8] = 
					{
						["CLSID"] = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}",
					}, -- end of [8]
				},
				["fuel"] = "3160",
                ["flare"] = 16,
                ["chaff"] = 112,
                ["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = {
					[1] = 
					{
						["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}",
					}, -- end of [4]
					[6] = 
					{
						["CLSID"] = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
					}, -- end of [9]
				},
				["fuel"] = "3160",
                ["flare"] = 16,
                ["chaff"] = 112,
                ["gun"] = 100,
			}
		},
		["F-4E"] = {
			skin = "",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "4864",
				["flare"] = 30,
				["chaff"] = 60,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[8] = 
					{
						["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
					}, -- end of [8]
					[2] = 
					{
						["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
					}, -- end of [2]
				}, -- end of ["pylons"]
				["fuel"] = "4864",
				["flare"] = 30,
				["chaff"] = 60,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[8] = 
					{
						["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
					}, -- end of [8]
					[2] = 
					{
						["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
					}, -- end of [2]
				}, -- end of ["pylons"]
				["fuel"] = "4864",
				["flare"] = 30,
				["chaff"] = 60,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[2] = 
					{
						["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [4]
					[6] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
					}, -- end of [8]
				}, -- end of ["pylons"]
				["fuel"] = "4864",
				["flare"] = 30,
				["chaff"] = 60,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[2] = 
					{
						["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [4]
					[6] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
					}, -- end of [8]
				}, -- end of ["pylons"]
				["fuel"] = "4864",
				["flare"] = 30,
				["chaff"] = 60,
				["gun"] = 100,
			}
		},
		["L-39ZA"] = {
			skin = "Russian Air Force 1",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = 980,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [4]
				}, -- end of ["pylons"]
				["fuel"] = 980,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = 980,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = 980,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = 980,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			}
		},
		["MiG-23MLD"] = {
			skin = "af standard-1",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "3800",
				["flare"] = 60,
				["chaff"] = 60,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[5] = 
					{
						["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					}, -- end of [5]
					[3] = 
					{
						["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = "3800",
				["flare"] = 60,
				["chaff"] = 60,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[5] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [5]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = "3800",
				["flare"] = 60,
				["chaff"] = 60,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[3] = 
					{
						["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					}, -- end of [3]
					[2] = 
					{
						["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
					}, -- end of [2]
					[6] = 
					{
						["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
					}, -- end of [6]
					[5] = 
					{
						["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					}, -- end of [5]
				}, -- end of ["pylons"]
				["fuel"] = "3800",
				["flare"] = 60,
				["chaff"] = 60,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
					[2] = 
					{
						["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
					}, -- end of [2]
					[6] = 
					{
						["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
					}, -- end of [6]
					[5] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [5]
				}, -- end of ["pylons"]
				["fuel"] = "3800",
				["flare"] = 60,
				["chaff"] = 60,
				["gun"] = 100,
			}
		},
		["MiG-25PD"] = {
			skin = "af standard",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "15245",
				["flare"] = 64,
				["chaff"] = 64,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[4] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [4]
				}, -- end of ["pylons"]
				["fuel"] = "15245",
				["flare"] = 64,
				["chaff"] = 64,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[4] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [4]
				}, -- end of ["pylons"]
				["fuel"] = "15245",
				["flare"] = 64,
				["chaff"] = 64,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
					}, -- end of [4]
				}, -- end of ["pylons"]
				["fuel"] = "15245",
				["flare"] = 64,
				["chaff"] = 64,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
					}, -- end of [4]
				}, -- end of ["pylons"]
				["fuel"] = "15245",
				["flare"] = 64,
				["chaff"] = 64,
				["gun"] = 100,
			}
		},
		["MiG-29A"] = {
			skin = "968th iap altenburg ab (germany)",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [3]
					[5] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
					[5] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [3]
					[5] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [3]
					[5] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			}
		},
		["MiG-29S"] = {
			skin = "733th guards regiment, damgarten ab (gdr)",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "3500",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [3]
					[5] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3500",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
					[5] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3500",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [3]
					[5] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3500",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [3]
					[5] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3500",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
			},
		},
		["MiG-31"] = {
			skin = "af standard",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "15500",
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					}, -- end of [1]
					[6] = 
					{
						["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = "15500",
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					}, -- end of [1]
					[6] = 
					{
						["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = "15500",
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
					}, -- end of [1]
					[6] = 
					{
						["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = "15500",
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = "15500",
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
		},
		["Su-27"] = {
			skin = "Air Force Standard old",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = 5217,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
					[8] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [8]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
					[9] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = 5217,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
					[8] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [8]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
					[9] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = 5217,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
				}, -- end of ["pylons"]
				["fuel"] = 5217,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
				}, -- end of ["pylons"]
				["fuel"] = 5217,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			}
		},
		["Su-30"] = {
			skin = "af standard early",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "9400",
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[8] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [8]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
					[9] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [9]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = "9400",
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[8] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [8]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
					[9] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [9]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = "9400",
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
				}, -- end of ["pylons"]
				["fuel"] = "9400",
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
				}, -- end of ["pylons"]
				["fuel"] = "9400",
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
			}
		},
		["Su-33"] = {
			skin = "standard-1 navy",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "9400",
				["flare"] = 48,
				["chaff"] = 48,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[11] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [11]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
					[12] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [12]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = "9400",
				["flare"] = 48,
				["chaff"] = 48,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[11] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [11]
					[10] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
					[12] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [12]
					[3] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = "9400",
				["flare"] = 48,
				["chaff"] = 48,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [10]
					[11] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [11]
					[12] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [12]
				}, -- end of ["pylons"]
				["fuel"] = "9400",
				["flare"] = 48,
				["chaff"] = 48,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					}, -- end of [10]
					[11] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [11]
					[12] = 
					{
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [12]
				}, -- end of ["pylons"]
				["fuel"] = "9400",
				["flare"] = 48,
				["chaff"] = 48,
				["gun"] = 100,
			}
		},
		["F-14A"] = {
			skin = "vf-84 `jolly rogers`",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "7348",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [1]
					[12] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [12]
				}, -- end of ["pylons"]
				["fuel"] = "7348",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[12] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [12]
				}, -- end of ["pylons"]
				["fuel"] = "7348",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [2]
					[11] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [11]
					[6] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [7]
					[12] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [12]
				}, -- end of ["pylons"]
				["fuel"] = "7348",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [2]
					[4] = 
					{
						["CLSID"] = "{7575BA0B-7294-4844-857B-031A144B2595}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{7575BA0B-7294-4844-857B-031A144B2595}",
					}, -- end of [5]
					[8] = 
					{
						["CLSID"] = "{7575BA0B-7294-4844-857B-031A144B2595}",
					}, -- end of [8]
					[11] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [11]
					[9] = 
					{
						["CLSID"] = "{7575BA0B-7294-4844-857B-031A144B2595}",
					}, -- end of [9]
					[12] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [12]
				}, -- end of ["pylons"]
				["fuel"] = "7348",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
		},
		["F-15C"] = {
			skin = "58th Fighter SQN (EG)",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [1]
					[3] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [3]
					[9] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [9]
					[11] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
					[11] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [5]
					[7] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [8]
					[11] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [11]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{D078E3E5-30C1-444e-A09E-6EEDCD334582}",
					}, -- end of [1]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{446E122B-8E9D-457e-AE8E-7AE88E3E566B}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{446E122B-8E9D-457e-AE8E-7AE88E3E566B}",
					}, -- end of [5]
					[7] = 
					{
						["CLSID"] = "{DA8F810A-EA40-4091-8127-CC2E026041E7}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{DA8F810A-EA40-4091-8127-CC2E026041E7}",
					}, -- end of [8]
					[11] = 
					{
						["CLSID"] = "{34271A1E-477E-4754-8C72-DF7C1855A782}",
					}, -- end of [11]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
			}
		},
		["F-16C bl.52d"] = {
			skin = "usafe 22nd fs (sp) spangdahlem afb",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "3104",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [3]
					[8] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [8]
					[10] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [10]
					[9] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "3104",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[8] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [8]
					[10] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [10]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "3104",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[8] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [8]
					[10] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [10]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "3104",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					}, -- end of [3]
					[8] = 
					{
						["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					}, -- end of [8]
					[10] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [10]
					[9] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "3104",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
		},
		["F-5E"] = {
			skin = "aggressor `desert` scheme",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "2000",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [2]
					[7] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [7]
					[6] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = "2000",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [2]
					[7] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [7]
					[6] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = "2000",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [2]
					[7] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [7]
					[6] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = "2000",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [2]
					[7] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [7]
					[6] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = "2000",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			}
		},
		["F/A-18C"] = {
			skin = "VFA-94",
			["gun"] = {
				["pylons"] = {},
				["fuel"] = "6531",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [1]
					[9] = 
					{
						["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "6531",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "6531",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[6] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [6]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
					[4] = 
					{
						["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
					}, -- end of [4]
				},
				["fuel"] = "6531",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [4]
					[6] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
				}, -- end of ["pylons"]
				["fuel"] = "6531",
				["flare"] = 15,
				["chaff"] = 30,
				["gun"] = 100,
			}
		},
		["A-10A"] = {
			skin = "23rd TFW England AFB (EL)",
			["gun"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = 5029,
				["flare"] = 120,
				["ammo_type"] = 1,
				["chaff"] = 240,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[11] = 
					{
						["CLSID"] = "{3C0745ED-8B0B-42eb-B907-5BD5C1717447}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = 5029,
				["flare"] = 120,
				["ammo_type"] = 1,
				["chaff"] = 240,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[11] = 
					{
						["CLSID"] = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = 5029,
				["flare"] = 120,
				["ammo_type"] = 1,
				["chaff"] = 240,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
					}, -- end of [1]
					[11] = 
					{
						["CLSID"] = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = 5029,
				["flare"] = 120,
				["ammo_type"] = 1,
				["chaff"] = 240,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
					}, -- end of [1]
					[11] = 
					{
						["CLSID"] = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = 5029,
				["flare"] = 120,
				["ammo_type"] = 1,
				["chaff"] = 240,
				["gun"] = 100,
			}
		},
		["Tornado IDS"] = {
			skin = "marinefliegergeschwader 2 eggebek ab marineflieger",
			["gun"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = "4663",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = "4663",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[10] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [10]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
				}, -- end of ["pylons"]
				["fuel"] = "4663",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
					}, -- end of [1]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[10] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [10]
					[12] = 
					{
						["CLSID"] = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}",
					}, -- end of [12]
				}, -- end of ["pylons"]
				["fuel"] = "4663",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
					}, -- end of [1]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[10] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [10]
					[12] = 
					{
						["CLSID"] = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}",
					}, -- end of [12]
				}, -- end of ["pylons"]
				["fuel"] = "4663",
				["flare"] = 45,
				["chaff"] = 90,
				["gun"] = 100,
			}
		},
		["MiG-21Bis"] = {
			skin = "VVS Camo",
			["gun"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = 2280,
				["flare"] = 32,
				["ammo_type"] = 1,
				["chaff"] = 32,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{PTB_490_MIG21}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{R-3S}",
					}, -- end of [2]
					[4] = 
					{
						["CLSID"] = "{R-3S}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{PTB_490_MIG21}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{ASO-2}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = 2280,
				["flare"] = 32,
				["ammo_type"] = 1,
				["chaff"] = 32,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{PTB_490_MIG21}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{R-13M}",
					}, -- end of [2]
					[4] = 
					{
						["CLSID"] = "{R-13M}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{PTB_490_MIG21}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{ASO-2}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = 2280,
				["flare"] = 32,
				["ammo_type"] = 1,
				["chaff"] = 32,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{PTB_490_MIG21}",
					}, -- end of [1]
					[5] = 
					{
						["CLSID"] = "{PTB_490_MIG21}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{ASO-2}",
					}, -- end of [6]
					[4] = 
					{
						["CLSID"] = "{R-13M1}",
					}, -- end of [4]
					[2] = 
					{
						["CLSID"] = "{R-13M1}",
					}, -- end of [2]
				}, -- end of ["pylons"]
				["fuel"] = 2280,
				["flare"] = 32,
				["ammo_type"] = 1,
				["chaff"] = 32,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{R-60M}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{R-60M}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{PTB_800_MIG21}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{R-60M}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{R-60M}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{ASO-2}",
					}, -- end of [6]
				}, -- end of ["pylons"]
				["fuel"] = 2280,
				["flare"] = 32,
				["ammo_type"] = 1,
				["chaff"] = 32,
				["gun"] = 100,
			}
		},
		["Su-25"] = {
			skin = "field camo scheme #1 (native)",
			["gun"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = "2835",
				["flare"] = 128,
				["chaff"] = 128,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[10] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [10]
				}, -- end of ["pylons"]
				["fuel"] = "2835",
				["flare"] = 128,
				["chaff"] = 128,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[10] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [10]
				}, -- end of ["pylons"]
				["fuel"] = "2835",
				["flare"] = 128,
				["chaff"] = 128,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[10] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [10]
				}, -- end of ["pylons"]
				["fuel"] = "2835",
				["flare"] = 128,
				["chaff"] = 128,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[10] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [10]
				}, -- end of ["pylons"]
				["fuel"] = "2835",
				["flare"] = 128,
				["chaff"] = 128,
				["gun"] = 100,
			}
		},
		["MiG-15bis"] = {
			skin = nil,
			["gun"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = 1120,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = 1120,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,	
			},
			["allIR"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = 1120,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = 1120,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = 1120,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			}
		},
		["F-86F Sabre"] = {
			skin = nil,
			["gun"] = {
				["pylons"] = 
				{
				}, -- end of ["pylons"]
				["fuel"] = 1282,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["rearIR"] = {
				["pylons"] = 
				{
					[6] = 
					{
						["CLSID"] = "{GAR-8}",
					}, -- end of [6]
					[5] = 
					{
						["CLSID"] = "{GAR-8}",
					}, -- end of [5]
				}, -- end of ["pylons"]
				["fuel"] = 1282,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["allIR"] = {
				["pylons"] = 
				{
					[6] = 
					{
						["CLSID"] = "{GAR-8}",
					}, -- end of [6]
					[5] = 
					{
						["CLSID"] = "{GAR-8}",
					}, -- end of [5]
				}, -- end of ["pylons"]
				["fuel"] = 1282,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["SARH"] = {
				["pylons"] = 
				{
					[6] = 
					{
						["CLSID"] = "{GAR-8}",
					}, -- end of [6]
					[5] = 
					{
						["CLSID"] = "{GAR-8}",
					}, -- end of [5]
				}, -- end of ["pylons"]
				["fuel"] = 1282,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			},
			["ARH"] = {
				["pylons"] = 
				{
					[6] = 
					{
						["CLSID"] = "{GAR-8}",
					}, -- end of [6]
					[5] = 
					{
						["CLSID"] = "{GAR-8}",
					}, -- end of [5]
				}, -- end of ["pylons"]
				["fuel"] = 1282,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
			}
		}
	}
	
	local function SpawnEnemy()
		local grp = Group.getByName("Bandit")
		if grp ~= nil then
			grp:destroy()
		end
		
		local StartBearing = math.random(1, 360)
		local StartDist = math.random(1, startWP.radius)
		Target.startWP = {
			x = startWP.point.x + math.cos(math.rad(StartBearing)) * StartDist,
			z = startWP.point.z + math.sin(math.rad(StartBearing)) * StartDist
		}
		
		local EndBearing = math.random(1, 360)
		local EndDist = math.random(1, endWP.radius)
		Target.endWP = {
			x = endWP.point.x + math.cos(math.rad(EndBearing)) * EndDist,
			z = endWP.point.z + math.sin(math.rad(EndBearing)) * EndDist
		}
		
		local altitude
		if Target.altitude == "Random" then
			altitude = math.random(1000, 12000)
		else
			altitude = Target.altitude
		end
		
		local number 
		if Target.number == "Random" then
			number = math.random(1, 4)
		else 
			number = Target.number
		end
		
		local unitsTable = {}
		for n = 1, number do
			unitsTable[n] = {
				["alt"] = altitude,
				["heading"] = 0,
				["callsign"] = 100 + n,
				["psi"] = 0,
				["livery_id"] = TargetDB[Target.type].skin,
				["onboard_num"] = "0" .. n,
				["type"] = Target.type,
				["y"] = Target.startWP.z + ((n - 1) * 100),
				["x"] = Target.startWP.x + ((n - 1) * 100),
				["name"] = "Bandit " .. n,
				["payload"] = TargetDB[Target.type][Target.armament],
				["speed"] = 240,
				["unitId"] = 99999 + n,
				["alt_type"] = "BARO",
				["skill"] = Target.skill,
			}
		end
	
		local group = {
			["modulation"] = 0,
			["tasks"] = 
			{
			}, -- end of ["tasks"]
			["radioSet"] = false,
			["task"] = "Fighter Sweep",
			["uncontrolled"] = false,
			["taskSelected"] = true,
			["route"] = 
			{
				["points"] = 
				{
					[1] = 
					{
						["alt"] = altitude,
						["type"] = "Turning Point",
						["action"] = "Turning Point",
						["alt_type"] = "BARO",
						["formation_template"] = "",
						["properties"] = 
						{
							["vnav"] = 1,
							["scale"] = 0,
							["angle"] = 0,
							["vangle"] = 0,
							["steer"] = 2,
						}, -- end of ["properties"]
						["ETA"] = 0,
						["y"] = Target.startWP.z,
						["x"] = Target.startWP.x,
						["speed"] = 240,
						["ETA_locked"] = true,
						["task"] = 
						{
							["id"] = "ComboTask",
							["params"] = 
							{
								["tasks"] = 
								{
									[1] = 
									{
										["number"] = 1,
										["key"] = "FighterSweep",
										["id"] = "EngageTargets",
										["enabled"] = true,
										["auto"] = true,
										["params"] = 
										{
											["targetTypes"] = 
											{
												[1] = "Planes",
											}, -- end of ["targetTypes"]
											["priority"] = 0,
										}, -- end of ["params"]
									}, -- end of [1]
								}, -- end of ["tasks"]
							}, -- end of ["params"]
						}, -- end of ["task"]
						["speed_locked"] = true,
					}, -- end of [1]
					[2] = 
					{
						["alt"] = altitude,
						["type"] = "Turning Point",
						["action"] = "Turning Point",
						["alt_type"] = "BARO",
						["formation_template"] = "",
						["properties"] = 
						{
							["vnav"] = 1,
							["scale"] = 0,
							["angle"] = 0,
							["vangle"] = 0,
							["steer"] = 2,
						}, -- end of ["properties"]
						["ETA"] = 447.42975369302,
						["y"] = Target.endWP.z,
						["x"] = Target.endWP.x,
						["speed"] = 240,
						["ETA_locked"] = false,
						["task"] = 
						{
							["id"] = "ComboTask",
							["params"] = 
							{
								["tasks"] = 
								{
								}, -- end of ["tasks"]
							}, -- end of ["params"]
						}, -- end of ["task"]
						["speed_locked"] = true,
					}, -- end of [2]
				}, -- end of ["points"]
			}, -- end of ["route"]
			["groupId"] = 999,
			["hidden"] = false,
			["units"] = unitsTable,
			["y"] = Target.startWP.z,
			["x"] = Target.startWP.x,
			["name"] = "Bandit",
			["communication"] = true,
			["start_time"] = 0,
			["frequency"] = 124,
		}
		coalition.addGroup(country.id.USA, Group.Category.AIRPLANE, group)
		trigger.action.outText("Targets spawned", 5)
	end

	
	local function RemoveEnemy()
		local grp = Group.getByName("Bandit")
		grp:destroy()
		trigger.action.outText("Targets removed", 5)
	end
	
	local function SetType(arg)
		Target.type = arg
		trigger.action.outText("Target Properties\nType: " .. Target.type .. "\nNumber: " .. Target.number .. "\nSkill: " .. Target.skill .. "\nAltitude: " .. Target.altitude .. "\nArmament: " .. Target.armament, 10)
	end
	
	local function SetNumber(arg)
		Target.number = arg
		trigger.action.outText("Target Properties\nType: " .. Target.type .. "\nNumber: " .. Target.number .. "\nSkill: " .. Target.skill .. "\nAltitude: " .. Target.altitude .. "\nArmament: " .. Target.armament, 10)
	end
	
	local function SetSkill(arg)
		Target.skill = arg
		trigger.action.outText("Target Properties\nType: " .. Target.type .. "\nNumber: " .. Target.number .. "\nSkill: " .. Target.skill .. "\nAltitude: " .. Target.altitude .. "\nArmament: " .. Target.armament, 10)
	end
	
	local function SetArmament(arg)
		Target.armament = arg
		trigger.action.outText("Target Properties\nType: " .. Target.type .. "\nNumber: " .. Target.number .. "\nSkill: " .. Target.skill .. "\nAltitude: " .. Target.altitude .. "\nArmament: " .. Target.armament, 10)
	end
	
	local function SetAltitude(arg)
		Target.altitude = arg
		trigger.action.outText("Target Properties\nType: " .. Target.type .. "\nNumber: " .. Target.number .. "\nSkill: " .. Target.skill .. "\nAltitude: " .. Target.altitude .. "\nArmament: " .. Target.armament, 10)
	end
	
	local function PopulateRadiomenu()
		missionCommands.removeItem()
		missionCommands.addCommand("Spawn Enemy", nil, SpawnEnemy)
		missionCommands.addCommand("Remove Enemy", nil, RemoveEnemy)
		
		missionCommands.addSubMenu("Set Type")
		
		missionCommands.addSubMenu("West", {"Set Type"})
		missionCommands.addCommand("F-4E", {"Set Type", "West"}, SetType, "F-4E")
		missionCommands.addCommand("F-5E", {"Set Type", "West"}, SetType, "F-5E")
		missionCommands.addCommand("F-14A", {"Set Type", "West"}, SetType, "F-14A")
		missionCommands.addCommand("F-15C", {"Set Type", "West"}, SetType, "F-15C")
		missionCommands.addCommand("F-16C", {"Set Type", "West"}, SetType, "F-16C bl.52d")
		missionCommands.addCommand("F/A-18C", {"Set Type", "West"}, SetType, "F/A-18C")
		missionCommands.addCommand("Mirage 2000-5", {"Set Type", "West"}, SetType, "Mirage 2000-5")
		missionCommands.addCommand("A-10A", {"Set Type", "West"}, SetType, "A-10A")
		missionCommands.addCommand("Tornado IDS", {"Set Type", "West"}, SetType, "Tornado IDS")
		missionCommands.addCommand("F-86F", {"Set Type", "West"}, SetType, "F-86F Sabre")
		
		missionCommands.addSubMenu("East", {"Set Type"})
		missionCommands.addCommand("L-39ZA", {"Set Type", "East"}, SetType, "L-39ZA")
		missionCommands.addCommand("MiG-15Bis", {"Set Type", "East"}, SetType, "MiG-15bis")
		missionCommands.addCommand("MiG-21Bis", {"Set Type", "East"}, SetType, "MiG-21Bis")
		missionCommands.addCommand("MiG-23MLD", {"Set Type", "East"}, SetType, "MiG-23MLD")
		missionCommands.addCommand("MiG-25PD", {"Set Type", "East"}, SetType, "MiG-25PD")
		missionCommands.addCommand("MiG-29A", {"Set Type", "East"}, SetType, "MiG-29A")
		missionCommands.addCommand("MiG-29S", {"Set Type", "East"}, SetType, "MiG-29S")
		missionCommands.addCommand("MiG-31", {"Set Type", "East"}, SetType, "MiG-31")
		missionCommands.addCommand("Su-25", {"Set Type", "East"}, SetType, "Su-25")
		missionCommands.addCommand("Su-27", {"Set Type", "East"}, SetType, "Su-27")
		--missionCommands.addCommand("Su-30", {"Set Type", "East"}, SetType, "Su-30")
		--missionCommands.addCommand("Su-33", {"Set Type", "East"}, SetType, "Su-33")
			
		missionCommands.addSubMenu("Set Number")
		missionCommands.addCommand("1", {"Set Number"}, SetNumber, 1)
		missionCommands.addCommand("2", {"Set Number"}, SetNumber, 2)
		missionCommands.addCommand("3", {"Set Number"}, SetNumber, 3)
		missionCommands.addCommand("4", {"Set Number"}, SetNumber, 4)
		missionCommands.addCommand("Random", {"Set Number"}, SetNumber, "Random")

		missionCommands.addSubMenu("Set Skill")
		missionCommands.addCommand("Average", {"Set Skill"}, SetSkill, "Average")
		missionCommands.addCommand("Good", {"Set Skill"}, SetSkill, "Good")
		missionCommands.addCommand("High", {"Set Skill"}, SetSkill, "High")
		missionCommands.addCommand("Excellent", {"Set Skill"}, SetSkill, "Excellent")
		missionCommands.addCommand("Random", {"Set Skill"}, SetSkill, "Random")
		
		missionCommands.addSubMenu("Set Armament")
		missionCommands.addCommand("Gun", {"Set Armament"}, SetArmament, "gun")
		missionCommands.addCommand("Rear-Aspect IR", {"Set Armament"}, SetArmament, "rearIR")
		missionCommands.addCommand("All-Aspect IR", {"Set Armament"}, SetArmament, "allIR")
		missionCommands.addCommand("SARH", {"Set Armament"}, SetArmament, "SARH")
		missionCommands.addCommand("ARH", {"Set Armament"}, SetArmament, "ARH")
		
		missionCommands.addSubMenu("Set Altitude")
		missionCommands.addCommand("1000 m", {"Set Altitude"}, SetAltitude, 1000)
		missionCommands.addCommand("5000 m", {"Set Altitude"}, SetAltitude, 5000)
		missionCommands.addCommand("9000 m", {"Set Altitude"}, SetAltitude, 9000)
		missionCommands.addCommand("Random", {"Set Altitude"}, SetAltitude, "Random")

	end
	timer.scheduleFunction(PopulateRadiomenu, nil, timer.getTime() + 1)

end

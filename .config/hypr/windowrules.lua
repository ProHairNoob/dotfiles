-- ==================== Game TAGS ====================
--
hl.window_rule({
	name = "match_class_org_pris",
	match = { class = "org.prismlauncher.PrismLauncher" },
	tag = "+gamestore",
})

hl.window_rule({
	name = "match_class_heroic",
	match = { class = "heroic" },
	tag = "+gamestore",
})

hl.window_rule({
	name = "match_class_steam",
	match = { class = "steam" },
	tag = "+steam",
})

hl.window_rule({
	name = "match_class___steam_",
	match = { class = "^(steam_app_).*$" },
	tag = "+game",
})

hl.window_rule({
	name = "match_title___minecr",
	match = { title = "^(Minecraft).*$" }, -- Note: Changed to title
	tag = "+game",
})

hl.window_rule({
	name = "match_class_rocketle",
	match = { class = "rocketleague.exe" },
	tag = "+game",
})

-- ==================== App Tags ====================
hl.window_rule({
	name = "match_class_discord",
	match = { class = "discord" },
	tag = "+message",
})

hl.window_rule({
	name = "match_class_firefox",
	match = { class = "firefox" },
	tag = "+browser",
})

hl.window_rule({
	name = "match_class_com_obsp",
	match = { class = "com.obsproject.Studio" },
	tag = "+record",
})

hl.window_rule({
	name = "match_class_mpv",
	match = { class = "mpv" },
	tag = "+video",
})

hl.window_rule({
	name = "match_class_kitty",
	match = { class = "kitty" },
	tag = "+term",
})

-- ==================== Workspaces ====================
hl.window_rule({
	name = "match_tag_record",
	match = { tag = "record" }, -- Note: Changed to tag
	workspace = 1,
})

hl.window_rule({
	name = "match_tag_term",
	match = { tag = "term" },
	workspace = 2,
})

hl.window_rule({
	name = "match_tag_browser",
	match = { tag = "browser" },
	workspace = 3,
})

hl.window_rule({
	name = "match_tag_gamestore",
	match = { tag = "gamestore" },
	workspace = 4,
})

hl.window_rule({
	name = "match_tag_steam",
	match = { tag = "steam" },
	workspace = 4,
})

hl.window_rule({
	name = "match_tag_message",
	match = { tag = "message" },
	workspace = 5,
})

hl.window_rule({
	name = "match_tag_video",
	match = { tag = "video" },
	workspace = 6,
})

hl.window_rule({
	name = "match_tag_game",
	match = { tag = "game" },
	workspace = 7,
})

-- ==================== Popup windows ====================
hl.window_rule({
	name = "match_title_steam_se",
	match = { title = "Steam Settings" },
	tag = "popup",
})

hl.window_rule({
	name = "match_title_friends_",
	match = { title = "Friends List" },
	tag = "popup",
})

hl.window_rule({
	name = "match_title___consol",
	match = { title = "^(Console window).*$" },
	tag = "popup",
})

-- ==================== Float windows ====================
hl.window_rule({
	name = "match_class_steam",
	match = { class = "steam" },
	float = true,
})

hl.window_rule({
	name = "match_class_nemo",
	match = { class = "nemo" },
	float = true,
})

hl.window_rule({
	name = "match_tag_popup",
	match = { tag = "popup" },
	float = true,
})

hl.window_rule({
	name = "match_title_bakkesmo",
	match = { title = "BakkesModInjectorCpp" },
	float = true,
})

-- ==================== Exceptions ====================
hl.window_rule({
	name = "match_title_steam",
	match = { title = "Steam" },
	tile = true,
})

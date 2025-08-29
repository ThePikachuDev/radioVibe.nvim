local M = {}

local config = {
	music_path = "~/Music/cozy beats.mp3",
	mpv_player = "mpv",

	ascii_frames = {
		{
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣋⣉⡙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠮⡞⠁⠀⠈⢢⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⢠⢤⣇⠀⡇⠀⠀⠀⢸⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⡏⢰⠙⠚⢧⣀⢀⣠⠞⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⡸⠀⡎⠀⣀⡤⠏⠉⠧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢠⠃⢰⡵⠊⠁⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢸⡀⠀⣀⡠⡆⠀⠀⠀⠀⠀⣆⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⡇⠀⠀⠀⠀⠀⡏⢣⡀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⢸⠀⠙⢤⡈⢦⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⢠⠖⣒⣶⠖⠒⠒⠒⠲⠷⣒⠒⠒⠒⠒⣺⣶⠖⠒⠓⢤⣹⠶⣒⠲⡄⠀⠀",
			"⠀⢠⠏⣞⣟⠉⠀⣖⠒⣲⠀⠀⠈⣳⠀⠀⡎⡞⠉⠀⣖⢒⣢⠀⠀⠈⡇⠹⡄⠀",
			"⢠⠏⠀⠘⠪⢅⣀⣀⠉⣀⣀⡠⠔⠁⠀⠀⠙⠮⣇⣀⣀⠉⣀⣀⡤⠖⠁⠀⠹⡄",
			"⡟⠒⠒⠒⠒⠒⠒⠓⠛⠚⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠛⠛⠒⠒⠒⠒⠒⠒⢻",
			"⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸",
		},
		{
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣋⣉⡙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠮⡞⠁⠀⠐⢠⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⢠⢤⣇⠀⡇⠀⠐⠋⠸⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⡏⢰⠙⠚⢧⣀⢀⣠⠞⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⡸⠀⡎⠀⣀⡤⠏⠉⠧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢠⠃⢰⡵⠊⠁⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢸⡀⠀⣀⡠⡆⠀⠀⠀⠀⠀⣆⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⡇⠀⠀⠀⠀⠀⡏⢣⡀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⢸⠀⠙⢤⡈⢦⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⢠⠖⣒⣶⠖⠒⠒⠒⠲⠷⣒⠒⠒⠒⠒⣺⣶⠖⠒⠓⢤⣹⠶⣒⠲⡄⠀⠀",
			"⠀⢠⠏⣞⣟⠉⠀⣖⠒⣲⠀⠀⠈⣳⠀⠀⡎⡞⠉⠀⣖⢒⣢⠀⠀⠈⡇⠹⡄⠀",
			"⢠⠏⠀⠘⠪⢅⣀⣀⠉⣀⣀⡠⠔⠁⠀⠀⠙⠮⣇⣀⣀⠉⣀⣀⡤⠖⠁⠀⠹⡄",
			"⡟⠒⠒⠒⠒⠒⠒⠓⠛⠚⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠛⠛⠒⠒⠒⠒⠒⠒⢻",
			"⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸",
		},
		{
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣋⣉⡙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠮⡞⠁⠀⢠⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⢠⢤⣇⠀⡇⠀⠀⠐⠸⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⡏⢰⠙⠚⢧⣀⢀⣠⠞⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⡸⠀⡎⠀⣀⡤⠏⠉⠧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢠⠃⢰⡵⠊⠁⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢸⡀⠀⣀⡠⡆⠀⠀⠀⠀⠀⣆⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⡇⠀⠀⠀⠀⠀⡏⢣⡀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⢸⠀⠙⢤⡈⢦⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⢠⠖⣒⣶⠖⠒⠒⠒⠲⠷⣒⠒⠒⠒⠒⣺⣶⠖⠒⠓⢤⣹⠶⣒⠲⡄⠀⠀",
			"⠀⢠⠏⣞⣟⠉⠀⣖⠒⣲⠀⠀⠈⣳⠀⠀⡎⡞⠉⠀⣖⢒⣢⠀⠀⠈⡇⠹⡄⠀",
			"⢠⠏⠀⠘⠪⢅⣀⣀⠉⣀⣀⡠⠔⠁⠀⠀⠙⠮⣇⣀⣀⠉⣀⣀⡤⠖⠁⠀⠹⡄",
			"⡟⠒⠒⠒⠒⠒⠒⠓⠛⠚⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠛⠛⠒⠒⠒⠒⠒⠒⢻",
			"⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸",
		},
		{
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣋⣉⡙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠮⡞⠁⠀⠐⢠⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⢠⢤⣇⠀⡇⠀⠐⠋⠸⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⡏⢰⠙⠚⢧⣀⢀⣠⠞⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⡸⠀⡎⠀⣀⡤⠏⠉⠧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢠⠃⢰⡵⠊⠁⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢸⡀⠀⣀⡠⡆⠀⠀⠀⠀⠀⣆⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⡇⠀⠀⠀⠀⠀⡏⢣⡀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⢸⠀⠙⢤⡈⢦⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⢠⠖⣒⣶⠖⠒⠒⠒⠲⠷⣒⠒⠒⠒⠒⣺⣶⠖⠒⠓⢤⣹⠶⣒⠲⡄⠀⠀",
			"⠀⢠⠏⣞⣟⠉⠀⣖⠒⣲⠀⠀⠈⣳⠀⠀⡎⡞⠉⠀⣖⢒⣢⠀⠀⠈⡇⠹⡄⠀",
			"⢠⠏⠀⠘⠪⢅⣀⣀⠉⣀⣀⡠⠔⠁⠀⠀⠙⠮⣇⣀⣀⠉⣀⣀⡤⠖⠁⠀⠹⡄",
			"⡟⠒⠒⠒⠒⠒⠒⠓⠛⠚⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠛⠛⠒⠒⠒⠒⠒⠒⢻",
			"⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸",
		},
		{
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣋⣉⡙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠮⡞⠁⠀⠈⢢⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⢠⢤⣇⠀⡇⠀⠀⠀⢸⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⡏⢰⠙⠚⢧⣀⢀⣠⠞⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⡸⠀⡎⠀⣀⡤⠏⠉⠧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢠⠃⢰⡵⠊⠁⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢸⡀⠀⣀⡠⡆⠀⠀⠀⠀⠀⣆⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⡇⠀⠀⠀⠀⠀⡏⢣⡀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⢸⠀⠙⢤⡈⢦⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⢠⠖⣒⣶⠖⠒⠒⠒⠲⠷⣒⠒⠒⠒⠒⣺⣶⠖⠒⠓⢤⣹⠶⣒⠲⡄⠀⠀",
			"⠀⢠⠏⣞⣟⠉⠀⣖⠒⣲⠀⠀⠈⣳⠀⠀⡎⡞⠉⠀⣖⢒⣢⠀⠀⠈⡇⠹⡄⠀",
			"⢠⠏⠀⠘⠪⢅⣀⣀⠉⣀⣀⡠⠔⠁⠀⠀⠙⠮⣇⣀⣀⠉⣀⣀⡤⠖⠁⠀⠹⡄",
			"⡟⠒⠒⠒⠒⠒⠒⠓⠛⠚⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠛⠛⠒⠒⠒⠒⠒⠒⢻",
			"⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸",
		},
		{
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣋⣉⡙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠮⡞⠁⠀⢠⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⢠⢤⣇⠀⡇⠀⠀⠐⠸⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⡏⢰⠙⠚⢧⣀⢀⣠⠞⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⡸⠀⡎⠀⣀⡤⠏⠉⠧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢠⠃⢰⡵⠊⠁⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢸⡀⠀⣀⡠⡆⠀⠀⠀⠀⠀⣆⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⡇⠀⠀⠀⠀⠀⡏⢣⡀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⢸⠀⠙⢤⡈⢦⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⢠⠖⣒⣶⠖⠒⠒⠒⠲⠷⣒⠒⠒⠒⠒⣺⣶⠖⠒⠓⢤⣹⠶⣒⠲⡄⠀⠀",
			"⠀⢠⠏⣞⣟⠉⠀⣖⠒⣲⠀⠀⠈⣳⠀⠀⡎⡞⠉⠀⣖⢒⣢⠀⠀⠈⡇⠹⡄⠀",
			"⢠⠏⠀⠘⠪⢅⣀⣀⠉⣀⣀⡠⠔⠁⠀⠀⠙⠮⣇⣀⣀⠉⣀⣀⡤⠖⠁⠀⠹⡄",
			"⡟⠒⠒⠒⠒⠒⠒⠓⠛⠚⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠛⠛⠒⠒⠒⠒⠒⠒⢻",
			"⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸",
		},
	},
}

local state = {
	win_id = nil,
	buf_id = nil,
	timer = nil,
	frame_index = 1,
	mpv_job = nil,
	music_name = nil,
	current_volume = 100,
	loop_enabled = true,
}

local function string_trim(s)
	return s:match("^%s*(.*%S)") or ""
end

local function check_mpv_available()
	return vim.fn.executable(config.mpv_player) == 1
end

local function send_mpv_command(command)
	if state.mpv_job and state.mpv_job > 0 then
		vim.fn.jobsend(state.mpv_job, command .. "\n")
	else
		vim.notify("MPV is not running.", vim.log.levels.WARN, { title = "RadioVibe" })
	end
end

local function stop_audio()
	if state.mpv_job and state.mpv_job > 0 then
		vim.fn.jobstop(state.mpv_job)
		state.mpv_job = nil
		state.music_name = nil
		vim.notify("Music playback stopped.", vim.log.levels.INFO, { title = "RadioVibe" })
	else
		vim.notify("No music is currently playing.", vim.log.levels.INFO, { title = "RadioVibe" })
	end
end

local function play_audio()
	if not check_mpv_available() then
		vim.notify("MPV is not installed or not in your PATH!", vim.log.levels.ERROR, { title = "RadioVibe" })
		return
	end

	local final_path = config.music_path
	if not final_path then
		vim.notify("No music path configured.", vim.log.levels.WARN, { title = "RadioVibe" })
		return
	end

	local expanded_path = vim.fn.expand(final_path)
	if vim.fn.filereadable(expanded_path) == 0 then
		vim.notify("Music file not found: " .. expanded_path, vim.log.levels.WARN, { title = "RadioVibe" })
		return
	end

	if state.mpv_job then
		vim.notify("Music is already playing, stopping old track...", vim.log.levels.INFO, { title = "RadioVibe" })
		stop_audio()
	end

	vim.notify("Starting music playback...", vim.log.levels.INFO, { title = "RadioVibe" })

	local mpv_args = {
		config.mpv_player,
		"--no-video",
		expanded_path,
		"--input-ipc-server=/tmp/nvim-mpv-ipc",
	}
	if state.loop_enabled then
		table.insert(mpv_args, "--loop-playlist=inf")
	end

	state.mpv_job = vim.fn.jobstart(mpv_args, {
		on_exit = function(_, code, _)
			state.mpv_job = nil
			state.music_name = nil
			if code ~= 0 then
				vim.notify("MPV playback failed.", vim.log.levels.WARN, { title = "RadioVibe" })
			else
				vim.notify("Music playback stopped.", vim.log.levels.INFO, { title = "RadioVibe" })
			end
		end,
	})

	if state.mpv_job > 0 then
		state.music_name = vim.fn.fnamemodify(expanded_path, ":t")
		vim.defer_fn(function()
			send_mpv_command("set volume " .. state.current_volume)
		end, 500)
	else
		vim.notify("Failed to start MPV job.", vim.log.levels.ERROR, { title = "RadioVibe" })
	end
end

local function toggle_music()
	if state.mpv_job and state.mpv_job > 0 then
		stop_audio()
	else
		play_audio()
	end
end

local function increase_volume()
	if state.mpv_job and state.mpv_job > 0 then
		state.current_volume = math.min(state.current_volume + 5, 100)
		send_mpv_command("set volume " .. state.current_volume)
		vim.notify("Volume: " .. state.current_volume .. "%", vim.log.levels.INFO, { title = "RadioVibe" })
	else
		vim.notify("Music is not playing.", vim.log.levels.INFO, { title = "RadioVibe" })
	end
end

local function decrease_volume()
	if state.mpv_job and state.mpv_job > 0 then
		state.current_volume = math.max(state.current_volume - 5, 0)
		send_mpv_command("set volume " .. state.current_volume)
		vim.notify("Volume: " .. state.current_volume .. "%", vim.log.levels.INFO, { title = "RadioVibe" })
	else
		vim.notify("Music is not playing.", vim.log.levels.INFO, { title = "RadioVibe" })
	end
end

local function toggle_loop()
	state.loop_enabled = not state.loop_enabled
	local status = state.loop_enabled and "enabled" or "disabled"
	if state.mpv_job and state.mpv_job > 0 then
		send_mpv_command("set loop-playlist " .. (state.loop_enabled and "inf" or "no"))
	end
	vim.notify("Looping " .. status, vim.log.levels.INFO, { title = "RadioVibe" })
end

local function make_window()
	if state.win_id and vim.api.nvim_win_is_valid(state.win_id) then
		vim.notify("Window is already open!", vim.log.levels.INFO, { title = "RadioVibe" })
		return
	end

	local width = math.floor(vim.o.columns * 0.2)
	local height = math.floor(vim.o.lines * 0.4)
	local col = math.floor(vim.o.columns - width - 1)
	local row = 1

	state.buf_id = vim.api.nvim_create_buf(false, true)

	local win_config = {
		relative = "editor",
		width = width,
		height = height,
		col = col,
		row = row,
		style = "minimal",
		border = "rounded",
	}
	state.win_id = vim.api.nvim_open_win(state.buf_id, false, win_config)

	vim.api.nvim_buf_set_option(state.buf_id, "bufhidden", "wipe")

	vim.api.nvim_win_set_option(state.win_id, "winhl", "NormalFloat:RadioVibeFloat,Normal:NormalFloat")
	vim.api.nvim_win_set_option(state.win_id, "winblend", 30)

	if not state.timer then
		state.timer = vim.loop.new_timer()
		state.timer:start(
			0,
			150,
			vim.schedule_wrap(function()
				if not vim.api.nvim_win_is_valid(state.win_id) or not vim.api.nvim_buf_is_valid(state.buf_id) then
					state.timer:stop()
					state.timer = nil
					state.win_id = nil
					state.buf_id = nil
					return
				end

				state.frame_index = (state.frame_index % #config.ascii_frames) + 1
				local ascii_lines = config.ascii_frames[state.frame_index]
				local combined_lines = vim.tbl_deep_extend("force", {}, ascii_lines)

				local music_text = "Not playing..."
				if state.music_name then
					local words = vim.split(state.music_name, "[ _%-.()]+")
					local truncated_name = ""
					for i = 1, math.min(#words, 4) do
						truncated_name = truncated_name .. words[i] .. " "
					end
					music_text = "Playing: " .. string_trim(truncated_name) .. "..."
				end

				local max_ascii_width = 0
				for _, line in ipairs(ascii_lines) do
					max_ascii_width = math.max(max_ascii_width, vim.fn.strdisplaywidth(line))
				end

				local text_width = vim.fn.strdisplaywidth(music_text)
				local padding = math.max(0, math.floor((max_ascii_width - text_width) / 2))
				local centered_text = string.rep(" ", padding) .. music_text

				table.insert(combined_lines, centered_text)
				table.insert(combined_lines, "")

				local volume_text = "Volume: " .. state.current_volume .. "%"
				local volume_padding = math.max(0, math.floor((max_ascii_width - #volume_text) / 2))
				table.insert(combined_lines, string.rep(" ", volume_padding) .. volume_text)

				vim.api.nvim_buf_set_lines(state.buf_id, 0, -1, false, combined_lines)
			end)
		)
	end
end

local function close_window()
	if state.win_id and vim.api.nvim_win_is_valid(state.win_id) then
		vim.api.nvim_win_close(state.win_id, true)
		state.win_id = nil
		if state.timer then
			state.timer:stop()
			state.timer = nil
		end
	else
		vim.notify("Window is not open.", vim.log.levels.INFO, { title = "RadioVibe" })
	end
end

local function toggle_window()
	if state.win_id and vim.api.nvim_win_is_valid(state.win_id) then
		close_window()
	else
		make_window()
	end
end

function M.setup(opts)
	opts = opts or {}
	config = vim.tbl_deep_extend("force", config, opts)

	vim.api.nvim_create_user_command("RadioVibePlay", play_audio, {
		desc = "Start playing music",
	})
	vim.api.nvim_create_user_command("RadioVibeStop", stop_audio, {
		desc = "Stop playing music",
	})
	vim.api.nvim_create_user_command("RadioVibeToggleMusic", toggle_music, {
		desc = "Toggle music playback",
	})
	vim.api.nvim_create_user_command("RadioVibePlayFile", function(args)
		play_audio(args.fargs[1])
	end, {
		nargs = 1,
		desc = "Play a specific music file",
	})
	vim.api.nvim_create_user_command("RadioVibeVolumeUp", increase_volume, {
		desc = "Increase volume by 5%",
	})
	vim.api.nvim_create_user_command("RadioVibeVolumeDown", decrease_volume, {
		desc = "Decrease volume by 5%",
	})
	vim.api.nvim_create_user_command("RadioVibeToggleLoop", toggle_loop, {
		desc = "Toggle music loop",
	})
	vim.api.nvim_create_user_command("RadioVibeShow", make_window, {
		desc = "Show the ASCII art window",
	})
	vim.api.nvim_create_user_command("RadioVibeHide", close_window, {
		desc = "Hide the ASCII art window",
	})
	vim.api.nvim_create_user_command("RadioVibeToggle", toggle_window, {
		desc = "Toggle the ASCII art window",
	})

	vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
		group = vim.api.nvim_create_augroup("RadioVibeCleanup", { clear = true }),
		callback = function()
			stop_audio()
		end,
	})
end

return M

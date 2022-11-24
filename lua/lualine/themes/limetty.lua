local colors = {
	lime = '#d9ed00',
	cyan = '#2ec2e6',
	black = '#292640',
	white = '#eeff96',
	red = '#f2545b',
	eucalyptus = '{color "eucalyptus"}',
	grey = '#594671',
	pearl = '#a5a5a9',
}

local limetty = {
	normal = {
		a = { fg = '#2a2136', bg = colors.pearl },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.black, bg = colors.black },
	},

	insert = { a = { fg = colors.black, bg = colors.eucalyptus } },
	visual = { a = { fg = colors.black, bg = colors.cyan } },
	replace = { a = { fg = colors.black, bg = colors.red } },

	command = {
		a = { fg = colors.black, bg = colors.lime },
	},

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.black, bg = colors.black },
	},
}

return limetty

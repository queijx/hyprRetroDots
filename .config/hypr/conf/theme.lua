hl.config({

    general = {

        gaps_out = 5,
        gaps_in  = 3,
        border_size = 2,

        col = {
          
		active_border	= "rgba(bbbbbbff)",
		inactive_border = "rgba(bbbbbbff)",

	        -- active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            -- inactive_border = "rgba(595959aa)",
        },

        resize_on_border = true,

        allow_tearing = false,

        layout = "dwindle",

    },

    decoration = {

        rounding       = 0,
        rounding_power = 0,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {

            enabled      = true,
            range        = 3,
            render_power = 1,
            color        = 0xff000000,

        },

        blur = {

            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,

        },

    },

    animations = {

        enabled = true,

    },

})

hl.config({
    dwindle = {
        preserve_split = true,
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
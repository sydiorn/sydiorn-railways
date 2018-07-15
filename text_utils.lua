-- Module namespace.
local text_utils = {};

-- Pure function to display a centered text to the terminal.
function text_utils.center_text(term_API, text)

    -- Width and height of the terminal.
    local w, h = term_API.getViewport();

    -- Center of the terminal.
    local center = {
        x = w/2,
        y = h/2,
    };

    -- Text margins.
    local margins = {
        x = center.x - string.len(text)/2,
        y = center.y,
    };

    -- Display the centered text.
    term_API.setCursor(margins.x, margins.y);
    term_API.write(text);

end

-- Exporting the module.
return text_utils;
